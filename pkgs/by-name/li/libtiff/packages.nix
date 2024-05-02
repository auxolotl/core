{ ... }:
res: pkgs: super:

with pkgs;
{
  inherit
    ({
      libtiff = callPackage ./. { };
      libtiff_t = callPackage ./libtiff_t.nix { };
    })
    libtiff
    libtiff_t
    ;
}
