{ ... }:
res: pkgs: super:

with pkgs;
{
  openexr = openexr_2;
  openexr_2 = callPackage ./. { };
  openexr_3 = callPackage ./3.nix { };
}
