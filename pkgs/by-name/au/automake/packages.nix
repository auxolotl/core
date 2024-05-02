{ ... }:
res: pkgs: super:

with pkgs;
{
  automake = automake116x;
  automake111x = callPackage ./automake-1.11.x.nix { };
  automake115x = callPackage ./automake-1.15.x.nix { };
  automake116x = callPackage ./automake-1.16.x.nix { };
}
