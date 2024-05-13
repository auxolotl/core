{ ... }:
res: pkgs: super:

with pkgs;
{
  libpkgconf = callPackage ./. { };
  
  pkgconf-unwrapped = libpkgconf;

  pkgconf = callPackage (path + "/pkgs/build-support/pkg-config-wrapper") {
    pkg-config = pkgconf-unwrapped;
    baseBinName = "pkgconf";
  };
}
