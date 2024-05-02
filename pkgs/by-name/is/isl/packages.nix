{ ... }:
res: pkgs: super:

with pkgs;
{
  isl = isl_0_20;
  isl_0_11 = callPackage ./0.11.1.nix { };
  isl_0_14 = callPackage ./0.14.1.nix { };
  isl_0_17 = callPackage ./0.17.1.nix { };
  isl_0_20 = callPackage ./0.20.0.nix { };
  isl_0_24 = callPackage ./0.24.0.nix { };
}
