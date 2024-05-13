{ ... }:
res: pkgs: super:

with pkgs;
{
  fontconfig = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) CoreFoundation;
  };
}
