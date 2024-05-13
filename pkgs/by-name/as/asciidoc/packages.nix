{ ... }:
res: pkgs: super:

with pkgs;
{
  asciidoc = callPackage ./. {
    inherit (python3.pkgs) pygments matplotlib numpy aafigure recursive-pth-loader;
    w3m = w3m-batch;
    enableStandardFeatures = false;
  };

  asciidoc-full = asciidoc.override {
    enableStandardFeatures = true;
  };

  asciidoc-full-with-plugins = asciidoc.override {
    enableStandardFeatures = true;
    enableExtraPlugins = true;
  };
}
