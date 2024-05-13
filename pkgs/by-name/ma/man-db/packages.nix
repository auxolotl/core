{ ... }:
res: pkgs: super:

with pkgs;
{
  man = man-db;
  man-db = callPackage ./. { };
}
