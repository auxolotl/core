{ ... }:
res: pkgs: super:

with pkgs;
{
  readline = readline82;
  readline70 = callPackage ./7.0.nix { };
  readline82 = callPackage ./8.2.nix { };
}
