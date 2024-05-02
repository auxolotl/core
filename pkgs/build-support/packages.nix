{ ... }:
res: pkgs: super:

with pkgs;
{
  autoreconfHook = callPackage
    (
      { makeSetupHook, autoconf, automake, gettext, libtool }:
      makeSetupHook
        {
          name = "autoreconf-hook";
          propagatedBuildInputs = [ autoconf automake gettext libtool ];
        } ./setup-hooks/autoreconf.sh
    )
    { };

  autoreconfHook264 = autoreconfHook.override {
    autoconf = autoconf264;
    automake = automake111x;
  };

  autoreconfHook269 = autoreconfHook.override {
    autoconf = autoconf269;
  };
  autoreconfHook271 = autoreconfHook.override {
    autoconf = autoconf271;
  };

  autoPatchelfHook = makeSetupHook
    {
      name = "auto-patchelf-hook";
      propagatedBuildInputs = [ bintools ];
      substitutions = {
        pythonInterpreter = "${python3.withPackages (ps: [ ps.pyelftools ])}/bin/python";
        autoPatchelfScript = ./setup-hooks/auto-patchelf.py;
      };
      meta.platforms = lib.platforms.linux;
    } ./setup-hooks/auto-patchelf.sh;

  # tomato-c = callPackage ../applications/misc/tomato-c { };

  # appflowy = callPackage ../applications/office/appflowy { };

  # appimageTools = callPackage ./appimage { };

  # appindicator-sharp = callPackage ../development/libraries/appindicator-sharp { };

  # bindle = callPackage ../servers/bindle {
  #   inherit (darwin.apple_sdk.frameworks) Security;
  # };

  stripJavaArchivesHook = makeSetupHook
    {
      name = "strip-java-archives-hook";
      propagatedBuildInputs = [ strip-nondeterminism ];
    } ./setup-hooks/strip-java-archives.sh;

  ensureNewerSourcesHook = { year }: makeSetupHook
    {
      name = "ensure-newer-sources-hook";
    }
    (writeScript "ensure-newer-sources-hook.sh" ''
      postUnpackHooks+=(_ensureNewerSources)
      _ensureNewerSources() {
        '${findutils}/bin/find' "$sourceRoot" \
          '!' -newermt '${year}-01-01' -exec touch -h -d '${year}-01-02' '{}' '+'
      }
    '');

  # Zip file format only allows times after year 1980, which makes e.g. Python
  # wheel building fail with:
  # ValueError: ZIP does not support timestamps before 1980
  ensureNewerSourcesForZipFilesHook = ensureNewerSourcesHook { year = "1980"; };

  # addDriverRunpath is the preferred package name, as this enables
  # many more scenarios than just opengl now.
  addDriverRunpath = callPackage ./add-driver-runpath { };

  # addOpenGLRunpath should be added to aliases.nix after the 24.05 branch-off.
  # Post 24.11 branch-off, this should throw an error in aliases.nix.
  addOpenGLRunpath = callPackage ./add-opengl-runpath { };

  updateAutotoolsGnuConfigScriptsHook = makeSetupHook
    {
      name = "update-autotools-gnu-config-scripts-hook";
      substitutions = { gnu_config = gnu-config; };
    } ./setup-hooks/update-autotools-gnu-config-scripts.sh;

  # gogUnpackHook = makeSetupHook
  #   {
  #     name = "gog-unpack-hook";
  #     propagatedBuildInputs = [ innoextract file-rename ];
  #   }
  #   ./setup-hooks/gog-unpack.sh;

  buildEnv = callPackage ./buildenv { }; # not actually a package

  buildFHSEnv = buildFHSEnvBubblewrap;
  buildFHSEnvChroot = callPackage ./build-fhsenv-chroot { }; # Deprecated; use buildFHSEnv/buildFHSEnvBubblewrap
  buildFHSEnvBubblewrap = callPackage ./build-fhsenv-bubblewrap { };

  # buildMaven = callPackage ./build-maven.nix { };

  checkpointBuildTools = callPackage ./checkpoint-build.nix { };

  dhallDirectoryToNix = callPackage ./dhall/directory-to-nix.nix { };

  dhallPackageToNix = callPackage ./dhall/package-to-nix.nix { };

  dhallToNix = callPackage ./dhall/to-nix.nix { };

  expand-response-params = callPackage ./expand-response-params { };

  diffPlugins = (callPackage ./plugins.nix { }).diffPlugins;

  dieHook = makeSetupHook
    {
      name = "die-hook";
    } ./setup-hooks/die.sh;


  # dockerTools = callPackage ./docker
  #   {
  #     writePython3 = buildPackages.writers.writePython3;
  #   } // { __attrsFailEvaluation = true; };

  fakeNss = callPackage ./fake-nss { };

  tarsum = callPackage ./docker/tarsum.nix { };

  # nix-prefetch-docker = callPackage ./docker/nix-prefetch-docker.nix { };

  # buildDotnetModule = callPackage ./dotnet/build-dotnet-module { };
  # nuget-to-nix = callPackage ./dotnet/nuget-to-nix { };
  # mkNugetSource = callPackage ./dotnet/make-nuget-source { };
  # mkNugetDeps = callPackage ./dotnet/make-nuget-deps { };

  # buildDotnetGlobalTool = callPackage ./dotnet/build-dotnet-global-tool { };

  # dotnetenv = callPackage ./dotnet/dotnetenv {
  #   dotnetfx = dotnetfx40;
  # };

  # buildDotnetPackage = callPackage ./dotnet/build-dotnet-package { };
  # fetchNuGet = callPackage ./dotnet/fetchnuget { };
  # dotnetbuildhelpers = callPackage ./dotnet/dotnetbuildhelpers { };

  # fetchbower = callPackage ./fetchbower {
  #   inherit (nodePackages) bower2nix;
  # };

  # fetchbzr = callPackage ./fetchbzr { };

  fetchcvs =
    if stdenv.buildPlatform != stdenv.hostPlatform
    # hack around splicing being crummy with things that (correctly) don't eval.
    then buildPackages.fetchcvs
    else callPackage ./fetchcvs { };

  fetchdarcs = callPackage ./fetchdarcs { };

  fetchdocker = callPackage ./fetchdocker { };

  fetchDockerConfig = callPackage ./fetchdocker/fetchDockerConfig.nix { };

  fetchDockerLayer = callPackage ./fetchdocker/fetchDockerLayer.nix { };

  fetchfossil = callPackage ./fetchfossil { };

  fetchgit = (callPackage ./fetchgit {
    git = buildPackages.gitMinimal;
    cacert = buildPackages.cacert;
    git-lfs = buildPackages.git-lfs;
  }) // {
    # fetchgit is a function, so we use // instead of passthru.
    tests = pkgs.tests.fetchgit;
  };

  fetchgitLocal = callPackage ./fetchgitlocal { };

  fetchmtn = callPackage ./fetchmtn (config.fetchmtn or { });

  fetchMavenArtifact = callPackage ./fetchmavenartifact { };

  fetchpijul = callPackage ./fetchpijul { };

  inherit (callPackages ./node/fetch-yarn-deps { })
    fixup-yarn-lock
    prefetch-yarn-deps
    fetchYarnDeps;

  prefer-remote-fetch = import ./prefer-remote-fetch;

  fetchpatch = callPackage ./fetchpatch
    {
      # 0.3.4 would change hashes: https://github.com/NixOS/nixpkgs/issues/25154
      patchutils = buildPackages.patchutils_0_3_3;
    } // {
    tests = pkgs.tests.fetchpatch;
    version = 1;
  };

  fetchpatch2 = callPackage ./fetchpatch
    {
      patchutils = buildPackages.patchutils_0_4_2;
    } // {
    tests = pkgs.tests.fetchpatch2;
    version = 2;
  };

  fetchs3 = callPackage ./fetchs3 { };

  fetchtorrent = callPackage ./fetchtorrent { };

  fetchsvn =
    if stdenv.buildPlatform != stdenv.hostPlatform
    # hack around splicing being crummy with things that (correctly) don't eval.
    then buildPackages.fetchsvn
    else callPackage ./fetchsvn { };

  fetchsvnrevision = import ./fetchsvnrevision runCommand subversion;

  fetchsvnssh = callPackage ./fetchsvnssh { };

  fetchhg = callPackage ./fetchhg { };

  fetchFirefoxAddon = callPackage ./fetchfirefoxaddon { }
    // {
    tests = pkgs.tests.fetchFirefoxAddon;
  };

  fetchNextcloudApp = callPackage ./fetchnextcloudapp { };

  # `fetchurl' downloads a file from the network.
  fetchurl =
    if stdenv.buildPlatform != stdenv.hostPlatform
    then buildPackages.fetchurl # No need to do special overrides twice,
    else
      makeOverridable (import ./fetchurl) {
        inherit lib stdenvNoCC buildPackages;
        inherit cacert;
        curl = buildPackages.curlMinimal.override (old: rec {
          # break dependency cycles
          fetchurl = stdenv.fetchurlBoot;
          zlib = buildPackages.zlib.override { fetchurl = stdenv.fetchurlBoot; };
          pkg-config = buildPackages.pkg-config.override (old: {
            pkg-config = old.pkg-config.override {
              fetchurl = stdenv.fetchurlBoot;
            };
          });
          perl = buildPackages.perl.override { fetchurl = stdenv.fetchurlBoot; };
          openssl = buildPackages.openssl.override {
            fetchurl = stdenv.fetchurlBoot;
            buildPackages = {
              coreutils = buildPackages.coreutils.override {
                fetchurl = stdenv.fetchurlBoot;
                inherit perl;
                xz = buildPackages.xz.override { fetchurl = stdenv.fetchurlBoot; };
                gmp = null;
                aclSupport = false;
                attrSupport = false;
              };
              inherit perl;
            };
            inherit perl;
          };
          libssh2 = buildPackages.libssh2.override {
            fetchurl = stdenv.fetchurlBoot;
            inherit zlib openssl;
          };
          # On darwin, libkrb5 needs bootstrap_cmds which would require
          # converting many packages to fetchurl_boot to avoid evaluation cycles.
          # So turn gssSupport off there, and on Windows.
          # On other platforms, keep the previous value.
          gssSupport =
            if stdenv.isDarwin || stdenv.hostPlatform.isWindows
            then false
            else old.gssSupport or true; # `? true` is the default
          libkrb5 = buildPackages.libkrb5.override {
            fetchurl = stdenv.fetchurlBoot;
            inherit pkg-config perl openssl;
            keyutils = buildPackages.keyutils.override { fetchurl = stdenv.fetchurlBoot; };
          };
          nghttp2 = buildPackages.nghttp2.override {
            fetchurl = stdenv.fetchurlBoot;
            inherit pkg-config;
            enableApp = false; # curl just needs libnghttp2
            enableTests = false; # avoids bringing `cunit` and `tzdata` into scope
          };
        });
      };

  # fetchRepoProject = callPackage ./fetchrepoproject { };

  # fetchipfs = import ./fetchipfs {
  #   inherit curl stdenv;
  # };

  fetchzip = callPackage ./fetchzip { }
    // {
    tests = pkgs.tests.fetchzip;
  };

  # fetchDebianPatch = callPackage ./fetchdebianpatch { }
  #   // {
  #     tests = pkgs.tests.fetchDebianPatch;
  #   };

  fetchCrate = callPackage ./rust/fetchcrate.nix { };

  # fetchFromGitea = callPackage ./fetchgitea { };

  fetchFromGitHub = callPackage ./fetchgithub { };

  # fetchFromBitbucket = callPackage ./fetchbitbucket { };

  fetchFromSavannah = callPackage ./fetchsavannah { };

  # fetchFromSourcehut = callPackage ./fetchsourcehut { };

  fetchFromGitLab = callPackage ./fetchgitlab { };

  # fetchFromGitiles = callPackage ./fetchgitiles { };

  # fetchFrom9Front = callPackage ./fetch9front { };

  # fetchFromRepoOrCz = callPackage ./fetchrepoorcz { };

  # fetchgx = callPackage ./fetchgx { };

  fetchPypi = callPackage ./fetchpypi { };

  # fetchPypiLegacy = callPackage ./fetchpypilegacy { };

  # resolveMirrorURLs = {url}: fetchurl {
  #   showURLs = true;
  #   inherit url;
  # };

  installShellFiles = callPackage ./install-shell-files { };

  # ld-is-cc-hook = makeSetupHook { name = "ld-is-cc-hook"; }
  #   ./setup-hooks/ld-is-cc-hook.sh;

  libredirect = callPackage ./libredirect { };

  # copyDesktopItems = makeSetupHook {
  #   name = "copy-desktop-items-hook";
  # } ./setup-hooks/copy-desktop-items.sh;

  # makeDesktopItem = callPackage ./make-desktopitem { };

  # copyPkgconfigItems = makeSetupHook {
  #   name = "copy-pkg-config-items-hook";
  # } ./setup-hooks/copy-pkgconfig-items.sh;

  # makePkgconfigItem = callPackage ./make-pkgconfigitem { };

  # makeDarwinBundle = callPackage ./make-darwin-bundle { };

  # makeAutostartItem = callPackage ./make-startupitem { };

  # makeImpureTest = callPackage ./make-impure-test.nix;

  # makeInitrd = callPackage ./kernel/make-initrd.nix; # Args intentionally left out

  # makeInitrdNG = callPackage ./kernel/make-initrd-ng.nix;
  # makeInitrdNGTool = callPackage ./kernel/make-initrd-ng-tool.nix { };

  makeWrapper = makeShellWrapper;

  makeShellWrapper = makeSetupHook
    {
      name = "make-shell-wrapper-hook";
      propagatedBuildInputs = [ dieHook ];
      substitutions = {
        # targetPackages.runtimeShell only exists when pkgs == targetPackages (when targetPackages is not  __raw)
        shell = if targetPackages ? runtimeShell then targetPackages.runtimeShell else throw "makeWrapper/makeShellWrapper must be in nativeBuildInputs";
      };
      passthru = {
        tests = tests.makeWrapper;
      };
    } ./setup-hooks/make-wrapper.sh;

  makeBinaryWrapper = callPackage ./setup-hooks/make-binary-wrapper { };

  # compressFirmwareXz = callPackage ./kernel/compress-firmware-xz.nix { };

  # makeModulesClosure = { kernel, firmware, rootModules, allowMissing ? false }:
  #   callPackage ./kernel/modules-closure.nix {
  #     inherit kernel firmware rootModules allowMissing;
  #   };

  # mkBinaryCache = callPackage ./binary-cache { };

  # mkShell = callPackage ./mkshell { };
  # mkShellNoCC = mkShell.override { stdenv = stdenvNoCC; };

  # nixBufferBuilders = import ./emacs/buffer.nix { inherit lib writeText; inherit (emacs.pkgs) inherit-local; };

  # nix-gitignore = callPackage ./nix-gitignore { };

  # ociTools = callPackage ./oci-tools { };

  # inherit (
  #   callPackages ./setup-hooks/patch-rc-path-hooks { }
  # ) patchRcPathBash patchRcPathCsh patchRcPathFish patchRcPathPosix;

  # pathsFromGraph = ./kernel/paths-from-graph.pl;

  pruneLibtoolFiles = makeSetupHook { name = "prune-libtool-files"; }
    ./setup-hooks/prune-libtool-files.sh;

  # closureInfo = callPackage ./closure-info.nix { };

  # setupSystemdUnits = callPackage ./setup-systemd-units.nix { };

  shortenPerlShebang = makeSetupHook
    {
      name = "shorten-perl-shebang-hook";
      propagatedBuildInputs = [ dieHook ];
    } ./setup-hooks/shorten-perl-shebang.sh;

  # singularity-tools = callPackage ./singularity-tools { };

  # srcOnly = callPackage ./src-only { };

  substitute = callPackage ./substitute/substitute.nix { };

  substituteAll = callPackage ./substitute/substitute-all.nix { };

  # substituteAllFiles = callPackage ./substitute-files/substitute-all-files.nix { };

  # replaceDependency = callPackage ./replace-dependency.nix { };

  nukeReferences = callPackage ./nuke-references {
    inherit (darwin) signingUtils;
  };

  # referencesByPopularity = callPackage ./references-by-popularity { };

  removeReferencesTo = callPackage ./remove-references-to {
    inherit (darwin) signingUtils;
  };

  # # No callPackage.  In particular, we don't want `img` *package* in parameters.
  # vmTools = makeOverridable (import ./vm) { inherit pkgs lib; };

  # releaseTools = callPackage ./release { };

  # inherit (lib.systems) platforms;

  # setJavaClassPath = makeSetupHook {
  #   name = "set-java-classpath-hook";
  # } ./setup-hooks/set-java-classpath.sh;

  fixDarwinDylibNames = makeSetupHook
    {
      name = "fix-darwin-dylib-names-hook";
      substitutions = { inherit (binutils) targetPrefix; };
      meta.platforms = lib.platforms.darwin;
    } ./setup-hooks/fix-darwin-dylib-names.sh;

  # writeDarwinBundle = callPackage ./make-darwin-bundle/write-darwin-bundle.nix { };

  # desktopToDarwinBundle = makeSetupHook {
  #   name = "desktop-to-darwin-bundle-hook";
  #   propagatedBuildInputs = [ writeDarwinBundle librsvg imagemagick python3Packages.icnsutil ];
  # } ./setup-hooks/desktop-to-darwin-bundle.sh;

  # keepBuildTree = makeSetupHook {
  #   name = "keep-build-tree-hook";
  # } ./setup-hooks/keep-build-tree.sh;

  # moveBuildTree = makeSetupHook {
  #   name = "move-build-tree-hook";
  # } ./setup-hooks/move-build-tree.sh;

  # enableGCOVInstrumentation = makeSetupHook {
  #   name = "enable-gcov-instrumentation-hook";
  # } ./setup-hooks/enable-coverage-instrumentation.sh;

  # makeGCOVReport = makeSetupHook {
  #   name = "make-gcov-report-hook";
  #   propagatedBuildInputs = [ lcov enableGCOVInstrumentation ];
  # } ./setup-hooks/make-coverage-analysis-report.sh;

  # makeHardcodeGsettingsPatch = callPackage ./make-hardcode-gsettings-patch { };

  # # intended to be used like nix-build -E 'with import <nixpkgs> { }; enableDebugging fooPackage'
  # enableDebugging = pkg: pkg.override { stdenv = stdenvAdapters.keepDebugInfo pkg.stdenv; };

  findXMLCatalogs = makeSetupHook
    {
      name = "find-xml-catalogs-hook";
    } ./setup-hooks/find-xml-catalogs.sh;

  # wrapGAppsHook = callPackage ./setup-hooks/wrap-gapps-hook {
  #   makeWrapper = makeBinaryWrapper;
  # };

  # wrapGAppsHook4 = wrapGAppsHook.override { gtk3 = __splicedPackages.gtk4; };

  # wrapGAppsNoGuiHook = wrapGAppsHook.override { isGraphical = false; };

  # separateDebugInfo = makeSetupHook {
  #   name = "separate-debug-info-hook";
  # } ./setup-hooks/separate-debug-info.sh;

  setupDebugInfoDirs = makeSetupHook
    {
      name = "setup-debug-info-dirs-hook";
    } ./setup-hooks/setup-debug-info-dirs.sh;

  # useOldCXXAbi = makeSetupHook {
  #   name = "use-old-cxx-abi-hook";
  # } ./setup-hooks/use-old-cxx-abi.sh;

  # iconConvTools = callPackage ./icon-conv-tools { };

  # validatePkgConfig = makeSetupHook
  #   { name = "validate-pkg-config"; propagatedBuildInputs = [ findutils pkg-config ]; }
  #   ./setup-hooks/validate-pkg-config.sh;

  # patchPpdFilesHook = callPackage ./setup-hooks/patch-ppd-files { };

  #package writers
  writers = callPackage ./writers { };

  # # lib functions depending on pkgs
  # inherit (import ../pkgs-lib {
  #   # The `lib` variable in this scope doesn't include any applied lib overlays,
  #   # `pkgs.lib` does.
  #   inherit (pkgs) lib;
  #   inherit pkgs;
  # }) formats;

  testers = callPackage ./testers { };

  # deterministic-uname = callPackage ./deterministic-uname { };

  wrapCCWith =
    { cc
    , # This should be the only bintools runtime dep with this sort of logic. The
      # Others should instead delegate to the next stage's choice with
      # `targetPackages.stdenv.cc.bintools`. This one is different just to
      # provide the default choice, avoiding infinite recursion.
      # See the bintools attribute for the logic and reasoning. We need to provide
      # a default here, since eval will hit this function when bootstrapping
      # stdenv where the bintools attribute doesn't exist, but will never actually
      # be evaluated -- callPackage ends up being too eager.
      bintools ? pkgs.bintools
    , libc ? bintools.libc
    , # libc++ from the default LLVM version is bound at the top level, but we
      # want the C++ library to be explicitly chosen by the caller, and null by
      # default.
      libcxx ? null
    , extraPackages ? lib.optional (cc.isGNU or false && stdenv.targetPlatform.isMinGW) ((threadsCrossFor cc.version).package)
    , nixSupport ? { }
    , ...
    } @ extraArgs:
    callPackage ./cc-wrapper (
      let
        self = {
          nativeTools = stdenv.targetPlatform == stdenv.hostPlatform && stdenv.cc.nativeTools or false;
          nativeLibc = stdenv.targetPlatform == stdenv.hostPlatform && stdenv.cc.nativeLibc or false;
          nativePrefix = stdenv.cc.nativePrefix or "";
          noLibc = !self.nativeLibc && (self.libc == null);

          isGNU = cc.isGNU or false;
          isClang = cc.isClang or false;

          inherit cc bintools libc libcxx extraPackages nixSupport zlib;
        } // extraArgs;
      in
      self
    );

  wrapCC = cc: wrapCCWith {
    inherit cc;
  };

  wrapBintoolsWith =
    { bintools
    , libc ? if stdenv.targetPlatform != stdenv.hostPlatform then libcCross else stdenv.cc.libc
    , ...
    } @ extraArgs:
    callPackage ./bintools-wrapper (
      let
        self = {
          nativeTools = stdenv.targetPlatform == stdenv.hostPlatform && stdenv.cc.nativeTools or false;
          nativeLibc = stdenv.targetPlatform == stdenv.hostPlatform && stdenv.cc.nativeLibc or false;
          nativePrefix = stdenv.cc.nativePrefix or "";

          noLibc = (self.libc == null);

          inherit bintools libc;
          inherit (darwin) postLinkSignHook signingUtils;
        } // extraArgs;
      in
      self
    );

  # sourceFromHead = callPackage ./source-from-head-fun.nix { };

  wrapRustcWith = { rustc-unwrapped, ... } @ args: callPackage ./rust/rustc-wrapper args;
  wrapRustc = rustc-unwrapped: wrapRustcWith { inherit rustc-unwrapped; };
}
