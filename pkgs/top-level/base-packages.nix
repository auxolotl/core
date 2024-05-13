/* The top-level package collection of nixpkgs.
 * It is sorted by categories corresponding to the folder names in the /pkgs
 * folder. Inside the categories packages are roughly sorted by alphabet, but
 * strict sorting has been long lost due to merges. Please use the full-text
 * search of your editor. ;)
 * Hint: ### starts category names.
 */
{ lib, noSysDirs, config, overlays }:
res: pkgs: super:

with pkgs;

{
  # A module system style type tag
  #
  # Allows the nixpkgs fixpoint, usually known as `pkgs` to be distinguished
  # nominally.
  #
  #     pkgs._type == "pkgs"
  #     pkgs.pkgsStatic._type == "pkgs"
  #
  # Design note:
  # While earlier stages of nixpkgs fixpoint construction are supertypes of this
  # stage, they're generally not usable in places where a `pkgs` is expected.
  # (earlier stages being the various `super` variables that precede
  # all-packages.nix)
  _type = "pkgs";

  # A stdenv capable of building 32-bit binaries.
  # On x86_64-linux, it uses GCC compiled with multilib support; on i686-linux,
  # it's just the plain stdenv.
  stdenv_32bit = lowPrio (if stdenv.hostPlatform.is32bit then stdenv else multiStdenv);

  stdenvNoCC = stdenv.override (
    { cc = null; hasCC = false; }

    // lib.optionalAttrs (stdenv.hostPlatform.isDarwin && (stdenv.hostPlatform != stdenv.buildPlatform)) {
      # TODO: This is a hack to use stdenvNoCC to produce a CF when cross
      # compiling. It's not very sound. The cross stdenv has:
      #   extraBuildInputs = [ targetPackages.darwin.apple_sdks.frameworks.CoreFoundation ]
      # and uses stdenvNoCC. In order to make this not infinitely recursive, we
      # need to exclude this extraBuildInput.
      extraBuildInputs = [ ];
    }
  );

  mkStdenvNoLibs = stdenv:
    let
      bintools = stdenv.cc.bintools.override {
        libc = null;
        noLibc = true;
      };
    in
    stdenv.override {
      cc = stdenv.cc.override {
        libc = null;
        noLibc = true;
        extraPackages = [ ];
        inherit bintools;
      };
      allowedRequisites =
        lib.mapNullable (rs: rs ++ [ bintools ]) (stdenv.allowedRequisites or null);
    };

  stdenvNoLibs =
    if stdenv.hostPlatform != stdenv.buildPlatform && (stdenv.hostPlatform.isDarwin || stdenv.hostPlatform.useLLVM or false)
    then
    # We cannot touch binutils or cc themselves, because that will cause
    # infinite recursion. So instead, we just choose a libc based on the
    # current platform. That means we won't respect whatever compiler was
    # passed in with the stdenv stage argument.
    #
    # TODO It would be much better to pass the `stdenvNoCC` and *unwrapped*
    # cc, bintools, compiler-rt equivalent, etc. and create all final stdenvs
    # as part of the stage. Then we would never be tempted to override a later
    # thing to to create an earlier thing (leading to infinite recursion) and
    # we also would still respect the stage arguments choices for these
    # things.
      overrideCC stdenv buildPackages.llvmPackages.clangNoCompilerRt
    else mkStdenvNoLibs stdenv;

  gccStdenvNoLibs = mkStdenvNoLibs gccStdenv;
  clangStdenvNoLibs = mkStdenvNoLibs clangStdenv;

  # For convenience, allow callers to get the path to Nixpkgs.
  path = ../..;

  ### Helper functions.
  inherit lib config overlays;

  # do not import 'appendToName' to get consistent package-names with the same
  # set of package-parameters: https://github.com/NixOS/nixpkgs/issues/68519
  inherit (lib) lowPrio hiPrio makeOverridable;

  inherit (lib) recurseIntoAttrs;

  # This is intended to be the reverse of recurseIntoAttrs, as it is
  # defined now it exists mainly for documentation purposes, but you
  # can also override this with recurseIntoAttrs to recurseInto all
  # the Attrs which is useful for testing massive changes. Ideally,
  # every package subset not marked with recurseIntoAttrs should be
  # marked with this.
  inherit (lib) dontRecurseIntoAttrs;

  stringsWithDeps = lib.stringsWithDeps;

  ### Evaluating the entire Nixpkgs naively will fail, make failure fast
  AAAAAASomeThingsFailToEvaluate = throw ''
    Please be informed that this pseudo-package is not the only part
    of Nixpkgs that fails to evaluate. You should not evaluate
    entire Nixpkgs without some special measures to handle failing
    packages, like using pkgs/top-level/release-attrpaths-superset.nix.
  '';

  tests = callPackages ../test { };

  # These are used when buiding compiler-rt / libgcc, prior to building libc.
  preLibcCrossHeaders =
    let
      inherit (stdenv.targetPlatform) libc;
    in
    if stdenv.targetPlatform.isMinGW then targetPackages.windows.mingw_w64_headers or windows.mingw_w64_headers
    else if libc == "nblibc" then targetPackages.netbsdCross.headers or netbsdCross.headers
    else if libc == "libSystem" && stdenv.targetPlatform.isAarch64 then targetPackages.darwin.LibsystemCross or darwin.LibsystemCross
    else null;

  # We can choose:
  libcCrossChooser = name:
    # libc is hackily often used from the previous stage. This `or`
    # hack fixes the hack, *sigh*.
    /**/
    if name == null then null
    else if name == "glibc" then targetPackages.glibcCross or glibcCross
    else if name == "bionic" then targetPackages.bionic or bionic
    else if name == "uclibc" then targetPackages.uclibcCross or uclibcCross
    else if name == "avrlibc" then targetPackages.avrlibcCross or avrlibcCross
    else if name == "newlib" && stdenv.targetPlatform.isMsp430 then targetPackages.msp430NewlibCross or msp430NewlibCross
    else if name == "newlib" && stdenv.targetPlatform.isVc4 then targetPackages.vc4-newlib or vc4-newlib
    else if name == "newlib" && stdenv.targetPlatform.isOr1k then targetPackages.or1k-newlib or or1k-newlib
    else if name == "newlib" then targetPackages.newlibCross or newlibCross
    else if name == "newlib-nano" then targetPackages.newlib-nanoCross or newlib-nanoCross
    else if name == "musl" then targetPackages.muslCross or muslCross
    else if name == "msvcrt" then targetPackages.windows.mingw_w64 or windows.mingw_w64
    else if name == "ucrt" then targetPackages.windows.mingw_w64 or windows.mingw_w64
    else if name == "libSystem" then
      if stdenv.targetPlatform.useiOSPrebuilt
      then targetPackages.darwin.iosSdkPkgs.libraries or darwin.iosSdkPkgs.libraries
      else targetPackages.darwin.LibsystemCross or (throw "don't yet have a `targetPackages.darwin.LibsystemCross for ${stdenv.targetPlatform.config}`")
    else if name == "fblibc" then targetPackages.freebsdCross.libc or freebsdCross.libc
    else if name == "nblibc" then targetPackages.netbsdCross.libc or netbsdCross.libc
    else if name == "wasilibc" then targetPackages.wasilibc or wasilibc
    else if name == "relibc" then targetPackages.relibc or relibc
    else throw "Unknown libc ${name}";

  libcCross = assert stdenv.targetPlatform != stdenv.buildPlatform; libcCrossChooser stdenv.targetPlatform.libc;

  threadsCross = threadsCrossFor null;
  threadsCrossFor = cc_version:
    lib.optionalAttrs (stdenv.targetPlatform.isMinGW && !(stdenv.targetPlatform.useLLVM or false)) {
      # other possible values: win32 or posix
      model = "mcf";
      # For win32 or posix set this to null
      package =
        if cc_version == null || lib.versionAtLeast cc_version "13"
        then targetPackages.windows.mcfgthreads or windows.mcfgthreads
        else targetPackages.windows.mcfgthreads_pre_gcc_13 or windows.mcfgthreads_pre_gcc_13;
    };

  multiStdenv = if stdenv.cc.isClang then clangMultiStdenv else gccMultiStdenv;

  crossLibcStdenv =
    if stdenv.hostPlatform.useLLVM or false || stdenv.hostPlatform.isDarwin
    then overrideCC stdenv buildPackages.llvmPackages.clangNoLibc
    else gccCrossLibcStdenv;

  runtimeShell = "${runtimeShellPackage}${runtimeShellPackage.shellPath}";
  runtimeShellPackage = bash;
}
