{ ... }:
res: pkgs: super:

with pkgs;
{
  inherit (callPackage ./. { inherit (buildPackages) boost-build; })
    boost175
    boost177
    boost178
    boost179
    boost180
    boost181
    boost182
    boost183
    boost184
    boost185
  ;

  boost = boost181;
}
