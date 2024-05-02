{ ... }:
res: pkgs: super:

with pkgs;
{
  libgit2 = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) Security;
  };
}
