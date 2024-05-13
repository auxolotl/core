{ ... }:
res: pkgs: super:

with pkgs;
{
  liblqr1 = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) Carbon AppKit;
  };
}
