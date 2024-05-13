{ ... }:
res: pkgs: super:

with pkgs;
{
  patchutils = callPackage ./. { };
  patchutils_0_3_3 = callPackage ./0.3.3.nix { };
  patchutils_0_4_2 = callPackage ./0.4.2.nix { };
}
