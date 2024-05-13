{ ... }:
res: pkgs: super:

with pkgs;
{
  bzip2 = callPackage ./. { };
  bzip2_1_1 = callPackage ./1_1.nix { };
}
