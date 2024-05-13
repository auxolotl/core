{ ... }:
res: pkgs: super:

with pkgs;
{
  gd = callPackage ../development/libraries/gd {
    automake = automake115x;
  };
}
