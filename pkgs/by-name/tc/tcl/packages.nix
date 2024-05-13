{ ... }:
res: pkgs: super:

with pkgs;
{
  tcl = tcl-8_6;
  tcl-8_5 = callPackage ./8.5.nix { };
  tcl-8_6 = callPackage ./8.6.nix { };
}
