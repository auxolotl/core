{ ... }:
res: pkgs: super:

with pkgs;
{
  gawk = callPackage ./. {
    inherit (darwin) locale;
  };

  gawk-with-extensions = callPackage ./gawk-with-extensions.nix {
    extensions = gawkextlib.full;
  };
  gawkextlib = callPackage ./gawkextlib.nix { };

  gawkInteractive = gawk.override { interactive = true; };
}
