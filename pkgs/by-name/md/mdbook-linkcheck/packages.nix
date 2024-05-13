{ ... }:
res: pkgs: super:

with pkgs;
{
  mdbook-linkcheck = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) Security;
  };
}
