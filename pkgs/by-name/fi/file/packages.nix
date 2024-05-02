{ ... }:
res: pkgs: super:

with pkgs;
{
  file = callPackage ./. {
    inherit (windows) libgnurx;
  };
}
