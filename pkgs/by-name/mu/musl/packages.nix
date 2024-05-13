{ ... }:
res: pkgs: super:

with pkgs;
{
  musl = callPackage ./. { };
  muslCross = musl.override {
    stdenv = crossLibcStdenv;
  };
}
