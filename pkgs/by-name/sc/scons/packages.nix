{ ... }:
res: pkgs: super:

with pkgs;
{
  scons = scons_4_5_2;
  scons_3_1_2 = callPackage ./3.1.2.nix { };
  scons_4_1_0 = callPackage ./4.1.0.nix { };
  scons_4_5_2 = callPackage ./4.5.2.nix { };
}
