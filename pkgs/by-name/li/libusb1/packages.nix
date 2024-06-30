{ ... }:
res: pkgs: super:

with pkgs;
{
  libusb1 = callPackage ./. {
    inherit (darwin) libobjc;
    inherit (darwin.apple_sdk.frameworks) IOKit Security;
  };
}
