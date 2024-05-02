
{ ... }:
res: pkgs: super:

with pkgs;
{
  ghostscript = callPackage ./. { };
  ghostscriptX = ghostscript.override {
    cupsSupport = true;
    x11Support = true;
  };
  ghostscript_headless = ghostscript.override {
    cupsSupport = false;
    x11Support = false;
  };
}
