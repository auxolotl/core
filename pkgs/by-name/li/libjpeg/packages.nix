
{ ... }:
res: pkgs: super:

with pkgs;
{
  libjpeg_original = callPackage ./. { };
}
