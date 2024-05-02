{ ... }:
res: pkgs: super:

with pkgs;
{
  catch2 = callPackage ./. { };
  catch2_3 = callPackage ./3.nix { };
}
