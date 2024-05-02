{ ... }:
res: pkgs: super:

with pkgs;
{
  gmp4 = callPackage ./4.3.2.nix { }; # required by older GHC versions
  gmp5 = callPackage ./5.1.x.nix { };
  gmp6 = callPackage ./6.x.nix { };
  gmp = gmp6;
  gmpxx = gmp.override { cxx = true; };
}
