{ ... }:
res: pkgs: super:

with pkgs;
{
  librsvg = callPackage ../development/libraries/librsvg {
    inherit (darwin) libobjc;
    inherit (darwin.apple_sdk.frameworks) ApplicationServices Foundation;
  };
}
