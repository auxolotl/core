{ ... }:
res: pkgs: super:

with pkgs;
{
  pango = callPackage ./. {
    harfbuzz = harfbuzz.override { withCoreText = stdenv.isDarwin; };
  };
}
