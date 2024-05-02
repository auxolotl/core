{ ... }:
res: pkgs: super:

with pkgs;
{
  gnumake = callPackage ./. { };
  gnumake42 = callPackage ./4.2 { };
}
