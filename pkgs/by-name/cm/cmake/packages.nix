{ ... }:
res: pkgs: super:

with pkgs;
{
  cmake = callPackage ./. { };

  # can't use override - it triggers infinite recursion
  cmakeMinimal = callPackage ./. {
    isMinimalBuild = true;
  };

  cmakeCurses = cmake.override {
    uiToolkits = [ "ncurses" ];
  };

  cmakeWithGui = cmake.override {
    uiToolkits = [ "ncurses" "qt5" ];
  };
}
