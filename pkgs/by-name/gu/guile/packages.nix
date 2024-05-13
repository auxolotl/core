{ ... }:
res: pkgs: super:

with pkgs;
{
  # Needed for autogen
  guile_2_0 = callPackage ./2.0.nix { };
  guile_2_2 = callPackage ./2.2.nix { };
  guile_3_0 = callPackage ./3.0.nix { };
  guile = guile_3_0;
}
