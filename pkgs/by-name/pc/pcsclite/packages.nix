{ ... }:
res: pkgs: super:

with pkgs;
{
  pcsclite = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) IOKit;
  };
}
