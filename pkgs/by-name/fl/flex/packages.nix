{ ... }:
res: pkgs: super:

with pkgs;
{
  flex_2_5_35 = callPackage ./2.5.35.nix { };
  flex = callPackage ./. { };
}
