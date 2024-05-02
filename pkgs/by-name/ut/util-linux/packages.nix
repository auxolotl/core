{ ... }:
res: pkgs: super:

with pkgs;
{
  util-linux = callPackage ./. { };
  util-linuxMinimal = util-linux.override {
    nlsSupport = false;
    ncursesSupport = false;
    systemdSupport = false;
    translateManpages = false;
  };

  libuuid =
    if stdenv.isLinux
    then util-linuxMinimal
    else null;
}
