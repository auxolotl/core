{ ... }:
res: pkgs: super:

with pkgs;
{
  autoconf = callPackage ./. { };
  autoconf213 = callPackage ./2.13.nix { };
  autoconf264 = callPackage ./2.64.nix { };
  autoconf269 = callPackage ./2.69.nix { };
  autoconf271 = callPackage ./2.71.nix { };
}
