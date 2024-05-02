{ ... }:
res: pkgs: super:

with pkgs;
{
  gpm = callPackage ./. {
    withNcurses = false; # Keep curses disabled for lack of value

    # latest 6.8 mysteriously fails to parse '@headings single':
    #   https://lists.gnu.org/archive/html/bug-texinfo/2021-09/msg00011.html
    texinfo = buildPackages.texinfo6_7;
  };
  gpm-ncurses = gpm.override { withNcurses = true; };
}
