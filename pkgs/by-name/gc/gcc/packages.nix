{ noSysDirs, ... }:
res: pkgs: super:

with pkgs;
{
  default-gcc-version =
    if (with stdenv.targetPlatform; isVc4 || libc == "relibc") then 6
    else 13;
  gcc = pkgs.${"gcc${toString default-gcc-version}"};
  gccFun = callPackage ./.;
  gcc-unwrapped = gcc.cc;

  gccStdenv =
    if stdenv.cc.isGNU
    then stdenv
    else
      stdenv.override {
        cc = buildPackages.gcc;
        allowedRequisites = null;
        # Remove libcxx/libcxxabi, and add clang for AS if on darwin (it uses
        # clang's internal assembler).
        extraBuildInputs = lib.optional stdenv.hostPlatform.isDarwin clang.cc;
      };

  gcc49Stdenv = overrideCC gccStdenv buildPackages.gcc49;
  gcc6Stdenv = overrideCC gccStdenv buildPackages.gcc6;
  gcc7Stdenv = overrideCC gccStdenv buildPackages.gcc7;
  gcc8Stdenv = overrideCC gccStdenv buildPackages.gcc8;
  gcc9Stdenv = overrideCC gccStdenv buildPackages.gcc9;
  gcc10Stdenv = overrideCC gccStdenv buildPackages.gcc10;
  gcc11Stdenv = overrideCC gccStdenv buildPackages.gcc11;
  gcc12Stdenv = overrideCC gccStdenv buildPackages.gcc12;
  gcc13Stdenv = overrideCC gccStdenv buildPackages.gcc13;

  # This is not intended for use in nixpkgs but for providing a faster-running
  # compiler to nixpkgs users by building gcc with reproducibility-breaking
  # profile-guided optimizations
  fastStdenv = overrideCC gccStdenv (wrapNonDeterministicGcc gccStdenv buildPackages.gcc_latest);

  wrapCCMulti = cc:
    if stdenv.targetPlatform.system == "x86_64-linux" then
      let
        # Binutils with glibc multi
        bintools = cc.bintools.override {
          libc = glibc_multi;
        };
      in
      lowPrio (wrapCCWith {
        cc = cc.cc.override {
          stdenv = overrideCC stdenv (wrapCCWith {
            cc = cc.cc;
            inherit bintools;
            libc = glibc_multi;
          });
          profiledCompiler = false;
          enableMultilib = true;
        };
        libc = glibc_multi;
        inherit bintools;
        extraBuildCommands = ''
          echo "dontMoveLib64=1" >> $out/nix-support/setup-hook
        '';
      }) else throw "Multilib ${cc.name} not supported for ‘${stdenv.targetPlatform.system}’";

  gcc_multi = wrapCCMulti gcc;

  gccMultiStdenv = overrideCC stdenv buildPackages.gcc_multi;

  gcc_debug = lowPrio (wrapCC (gcc.cc.overrideAttrs {
    dontStrip = true;
  }));

  gccCrossLibcStdenv = overrideCC stdenv buildPackages.gccWithoutTargetLibc;


  # The GCC used to build libc for the target platform. Normal gccs will be
  # built with, and use, that cross-compiled libc.
  gccWithoutTargetLibc = assert stdenv.targetPlatform != stdenv.hostPlatform; let
    libcCross1 = binutilsNoLibc.libc;
  in
  wrapCCWith {
    cc = gccFun {
      # copy-pasted
      inherit noSysDirs;
      majorMinorVersion = toString default-gcc-version;

      reproducibleBuild = true;
      profiledCompiler = false;

      isl = if !stdenv.isDarwin then isl_0_20 else null;

      withoutTargetLibc = true;
      langCC = false;
      libcCross = libcCross1;
      targetPackages.stdenv.cc.bintools = binutilsNoLibc;
      enableShared =
        stdenv.targetPlatform.hasSharedLibraries

        # temporarily disabled due to breakage;
        # see https://github.com/NixOS/nixpkgs/pull/243249
        && !stdenv.targetPlatform.isWindows
        && !(stdenv.targetPlatform.useLLVM or false)
      ;
    };
    bintools = binutilsNoLibc;
    libc = libcCross1;
    extraPackages = [ ];
  };

  inherit (callPackage ./all.nix { inherit noSysDirs; })
    gcc48 gcc49 gcc6 gcc7 gcc8 gcc9 gcc10 gcc11 gcc12 gcc13;

  gcc_latest = gcc13;

  libgcc = stdenv.cc.cc.libgcc or null;

  # This is for e.g. LLVM libraries on linux.
  gccForLibs =
    if stdenv.targetPlatform == stdenv.hostPlatform && targetPackages.stdenv.cc.isGNU
    # Can only do this is in the native case, otherwise we might get infinite
    # recursion if `targetPackages.stdenv.cc.cc` itself uses `gccForLibs`.
    then targetPackages.stdenv.cc.cc
    else gcc.cc;

  wrapNonDeterministicGcc = stdenv: ccWrapper:
    if ccWrapper.isGNU then
      ccWrapper.overrideAttrs
        (old: {
          env = old.env // {
            cc = old.env.cc.override {
              reproducibleBuild = false;
              profiledCompiler = with stdenv; (!isDarwin && hostPlatform.isx86);
            };
          };
        }) else ccWrapper;


  # Use the same GCC version as the one from stdenv by default
  gfortran = wrapCC (gcc.cc.override {
    name = "gfortran";
    langFortran = true;
    langCC = false;
    langC = false;
    profiledCompiler = false;
  });

  gfortran48 = wrapCC (gcc48.cc.override {
    name = "gfortran";
    langFortran = true;
    langCC = false;
    langC = false;
    profiledCompiler = false;
  });

  gfortran49 = wrapCC (gcc49.cc.override {
    name = "gfortran";
    langFortran = true;
    langCC = false;
    langC = false;
    profiledCompiler = false;
  });

  gfortran6 = wrapCC (gcc6.cc.override {
    name = "gfortran";
    langFortran = true;
    langCC = false;
    langC = false;
    profiledCompiler = false;
  });

  gfortran7 = wrapCC (gcc7.cc.override {
    name = "gfortran";
    langFortran = true;
    langCC = false;
    langC = false;
    profiledCompiler = false;
  });

  gfortran8 = wrapCC (gcc8.cc.override {
    name = "gfortran";
    langFortran = true;
    langCC = false;
    langC = false;
    profiledCompiler = false;
  });

  gfortran9 = wrapCC (gcc9.cc.override {
    name = "gfortran";
    langFortran = true;
    langCC = false;
    langC = false;
    profiledCompiler = false;
  });

  gfortran10 = wrapCC (gcc10.cc.override {
    name = "gfortran";
    langFortran = true;
    langCC = false;
    langC = false;
    profiledCompiler = false;
  });

  gfortran11 = wrapCC (gcc11.cc.override {
    name = "gfortran";
    langFortran = true;
    langCC = false;
    langC = false;
    profiledCompiler = false;
  });

  gfortran12 = wrapCC (gcc12.cc.override {
    name = "gfortran";
    langFortran = true;
    langCC = false;
    langC = false;
    profiledCompiler = false;
  });

  gfortran13 = wrapCC (gcc13.cc.override {
    name = "gfortran";
    langFortran = true;
    langCC = false;
    langC = false;
    profiledCompiler = false;
  });

  libgccjit = gcc.cc.override {
    name = "libgccjit";
    langFortran = false;
    langCC = false;
    langC = false;
    profiledCompiler = false;
    langJit = true;
    enableLTO = false;
  };

  gcj = gcj6;
  gcj6 = wrapCC (gcc6.cc.override {
    name = "gcj";
    langJava = true;
    langFortran = false;
    langCC = false;
    langC = false;
    profiledCompiler = false;
    inherit zip unzip zlib boehmgc gettext pkg-config perl;
    inherit (gnome2) libart_lgpl;
  });

  gnat = gnat12; # When changing this, update also gnatPackages

  gnat11 = wrapCC (gcc11.cc.override {
    name = "gnat";
    langC = true;
    langCC = false;
    langAda = true;
    profiledCompiler = false;
    # As per upstream instructions building a cross compiler
    # should be done with a (native) compiler of the same version.
    # If we are cross-compiling GNAT, we may as well do the same.
    gnat-bootstrap =
      if stdenv.hostPlatform == stdenv.targetPlatform
        && stdenv.buildPlatform == stdenv.hostPlatform
      then buildPackages.gnat-bootstrap11
      else buildPackages.gnat11;
  });

  gnat12 = wrapCC (gcc12.cc.override {
    name = "gnat";
    langC = true;
    langCC = false;
    langAda = true;
    profiledCompiler = false;
    # As per upstream instructions building a cross compiler
    # should be done with a (native) compiler of the same version.
    # If we are cross-compiling GNAT, we may as well do the same.
    gnat-bootstrap =
      if stdenv.hostPlatform == stdenv.targetPlatform
        && stdenv.buildPlatform == stdenv.hostPlatform
      then buildPackages.gnat-bootstrap12
      else buildPackages.gnat12;
    stdenv =
      if stdenv.hostPlatform == stdenv.targetPlatform
        && stdenv.buildPlatform == stdenv.hostPlatform
        && stdenv.buildPlatform.isDarwin
        && stdenv.buildPlatform.isx86_64
      then overrideCC stdenv gnat-bootstrap12
      else stdenv;
  });

  gnat13 = wrapCC (gcc13.cc.override {
    name = "gnat";
    langC = true;
    langCC = false;
    langAda = true;
    profiledCompiler = false;
    # As per upstream instructions building a cross compiler
    # should be done with a (native) compiler of the same version.
    # If we are cross-compiling GNAT, we may as well do the same.
    gnat-bootstrap =
      if stdenv.hostPlatform == stdenv.targetPlatform
        && stdenv.buildPlatform == stdenv.hostPlatform
      then buildPackages.gnat-bootstrap12
      else buildPackages.gnat13;
    stdenv =
      if stdenv.hostPlatform == stdenv.targetPlatform
        && stdenv.buildPlatform == stdenv.hostPlatform
        && stdenv.buildPlatform.isDarwin
        && stdenv.buildPlatform.isx86_64
      then overrideCC stdenv gnat-bootstrap12
      else stdenv;
  });

  gnat-bootstrap = gnat-bootstrap12;
  gnat-bootstrap11 = wrapCC (callPackage ../development/compilers/gnat-bootstrap { majorVersion = "11"; });
  gnat-bootstrap12 = wrapCCWith ({
    cc = callPackage ../development/compilers/gnat-bootstrap { majorVersion = "12"; };
  } // lib.optionalAttrs (stdenv.hostPlatform.isDarwin) {
    bintools = bintoolsDualAs;
  });

  gnat12Packages = recurseIntoAttrs (callPackage ./ada-packages.nix { gnat = buildPackages.gnat12; });
  gnat13Packages = recurseIntoAttrs (callPackage ./ada-packages.nix { gnat = buildPackages.gnat13; });
  gnatPackages = gnat12Packages;

  inherit (gnatPackages)
    gprbuild
    gnatprove;

  gccgo = wrapCC (gcc.cc.override
    {
      name = "gccgo";
      langCC = true; #required for go.
      langC = true;
      langGo = true;
      langJit = true;
      profiledCompiler = false;
    } // {
    # not supported on darwin: https://github.com/golang/go/issues/463
    meta.broken = stdenv.hostPlatform.isDarwin;
  });

  gccgo12 = wrapCC (gcc12.cc.override
    {
      name = "gccgo";
      langCC = true; #required for go.
      langC = true;
      langGo = true;
      langJit = true;
      profiledCompiler = false;
    } // {
    # not supported on darwin: https://github.com/golang/go/issues/463
    meta.broken = stdenv.hostPlatform.isDarwin;
  });

  gccgo13 = wrapCC (gcc13.cc.override
    {
      name = "gccgo";
      langCC = true; #required for go.
      langC = true;
      langGo = true;
      langJit = true;
      profiledCompiler = false;
    } // {
    # not supported on darwin: https://github.com/golang/go/issues/463
    meta.broken = stdenv.hostPlatform.isDarwin;
  });


  # It would be better to match the default gcc so that there are no linking errors
  # when using C/C++ libraries in D packages, but right now versions >= 12 are broken.
  gdc = gdc11;
  gdc11 = wrapCC (gcc11.cc.override {
    name = "gdc";
    langCC = false;
    langC = false;
    langD = true;
    profiledCompiler = false;
  });
}
