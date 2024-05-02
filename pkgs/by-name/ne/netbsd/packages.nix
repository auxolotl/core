{ ... }:
res: pkgs: super:

with pkgs;
{
  netbsd = callPackage ./. { };
  netbsdCross = callPackage ./. {
    stdenv = crossLibcStdenv;
  };
}
