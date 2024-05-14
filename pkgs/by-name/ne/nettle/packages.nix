{ ... }:
res: pkgs: super:

with pkgs;
{
  nettle = import ./. { inherit callPackage fetchurl; };
}
