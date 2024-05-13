{ ... }:
res: pkgs: super:

with pkgs;
{
  libpng = callPackage ./. { };
  libpng12 = callPackage ./12.nix { };
}
