{ ... }:
res: pkgs: super:

with pkgs;
{
  hidapi = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) Cocoa IOKit;
  };
}
