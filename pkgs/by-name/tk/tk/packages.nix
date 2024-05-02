{ ... }:
res: pkgs: super:

with pkgs;
{
  tk = tk-8_6;
  tk-8_6 = callPackage ./8.6.nix { };
  tk-8_5 = callPackage ./8.5.nix { tcl = tcl-8_5; };
}
