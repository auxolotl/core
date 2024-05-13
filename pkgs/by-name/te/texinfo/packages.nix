{ ... }:
res: pkgs: super:

with pkgs;
{
  texinfo413 = callPackage ./4.13a.nix { };
  texinfo4 = texinfo413;
  texinfo5 = callPackage ./5.2.nix { };
  texinfo6_5 = callPackage ./6.5.nix { }; # needed for allegro
  texinfo6_7 = callPackage ./6.7.nix { }; # needed for gpm, iksemel and fwknop
  texinfo6 = callPackage ./6.8.nix { };
  texinfo7 = callPackage ./7.0.nix { };
  texinfo = texinfo7;
  texinfoInteractive = texinfo.override { interactive = true; };
}
