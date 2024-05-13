{ ... }:
res: pkgs: super:

with pkgs;
{
  libtool = libtool_2;
  libtool_1_5 = callPackage ./. { };
  libtool_2 = callPackage ./libtool2.nix { };
}
