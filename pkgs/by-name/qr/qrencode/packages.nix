{ ... }:
res: pkgs: super:

with pkgs;
{
  qrencode = callPackage ./. {
    inherit (darwin) libobjc;
  };
}
