{ ... }:
res: pkgs: super:

with pkgs;
{
  glibc = callPackage ./. {
    stdenv = gccStdenv; # doesn't compile without gcc
  };

  mtrace = callPackage ./mtrace.nix { };

  glibc_memusage = callPackage ./. {
    withGd = true;
  };

  # Being redundant to avoid cycles on boot. TODO: find a better way
  glibcCross = callPackage ./. {
    stdenv = gccCrossLibcStdenv; # doesn't compile without gcc
    libgcc = callPackage ./libgcc {
      gcc = gccCrossLibcStdenv.cc;
      glibc = glibcCross.override { libgcc = null; };
      stdenvNoLibs = gccCrossLibcStdenv;
    };
  };

  # Only supported on Linux and only on glibc
  glibcLocales =
    if stdenv.hostPlatform.isLinux && stdenv.hostPlatform.isGnu
    then callPackage ./locales.nix { }
    else null;
  glibcLocalesUtf8 =
    if stdenv.hostPlatform.isLinux && stdenv.hostPlatform.isGnu
    then callPackage ./locales.nix { allLocales = false; }
    else null;

  glibcInfo = callPackage ./info.nix { };

  glibc_multi = callPackage ./multi.nix {
    # The buildPackages is required for cross-compilation. The pkgsi686Linux set
    # has target and host always set to the same value based on target platform
    # of the current set. We need host to be same as build to correctly get i686
    # variant of glibc.
    glibc32 = pkgsi686Linux.buildPackages.glibc;
  };

}
