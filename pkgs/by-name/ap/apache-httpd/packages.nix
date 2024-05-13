{ ... }:
res: pkgs: super:

with pkgs;
{
  apacheHttpd_2_4 = callPackage ./2.4.nix {
    inherit (darwin.apple_sdk.frameworks) Foundation;
  };
  apacheHttpd = apacheHttpd_2_4;
}
