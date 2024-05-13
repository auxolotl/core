{ ... }:
res: pkgs: super:

with pkgs;
{
  ncurses5 = ncurses.override {
    abiVersion = "5";
  };
  ncurses6 = ncurses.override {
    abiVersion = "6";
  };
  ncurses =
    if stdenv.hostPlatform.useiOSPrebuilt
    then null
    else callPackage ./. { };
}
