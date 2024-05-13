{ ... }:
res: pkgs: super:

with pkgs;
{
  maturin = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) Security;
  };
}
