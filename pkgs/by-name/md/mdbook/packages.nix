{ ... }:
res: pkgs: super:

with pkgs;
{
  mdbook = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) CoreServices;
  };
}
