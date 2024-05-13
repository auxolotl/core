{ ... }:
res: pkgs: super:

with pkgs;
{
  dblatex = callPackage ./. { };
  dblatexFull = dblatex.override { enableAllFeatures = true; };
}
