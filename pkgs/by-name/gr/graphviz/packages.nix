{ ... }:
res: pkgs: super:

with pkgs;
{
  graphviz = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) ApplicationServices Foundation;
  };

  graphviz-nox = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) ApplicationServices Foundation;
    withXorg = false;
  };
}
