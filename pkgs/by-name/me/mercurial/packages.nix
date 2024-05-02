{ ... }:
res: pkgs: super:

with pkgs;
{
  mercurial = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) ApplicationServices;
  };
}
