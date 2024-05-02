{ ... }:
res: pkgs: super:

with pkgs;
{
  libxcrypt = callPackage ./. {
    fetchurl = stdenv.fetchurlBoot;
    perl = buildPackages.perl.override {
      enableCrypt = false;
      fetchurl = stdenv.fetchurlBoot;
    };
  };
  libxcrypt-legacy = libxcrypt.override { enableHashes = "all"; };
}
