{ ... }:
res: pkgs: super:

with pkgs;
{
  gnutls = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) Security;
    util-linux = util-linuxMinimal; # break the cyclic dependency
    autoconf = buildPackages.autoconf269;
  };
}
