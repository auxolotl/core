{ ... }:
res: pkgs: super:

with pkgs;
{
  gnum4 = callPackage ./. { };
  m4 = gnum4;
}
