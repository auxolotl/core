{ ... }:
res: pkgs: super:

with pkgs;
{
  imagemagick6_light = imagemagick6.override {
    bzip2Support = false;
    zlibSupport = false;
    libX11Support = false;
    libXtSupport = false;
    fontconfigSupport = false;
    freetypeSupport = false;
    ghostscriptSupport = false;
    libjpegSupport = false;
    djvulibreSupport = false;
    lcms2Support = false;
    openexrSupport = false;
    libpngSupport = false;
    liblqr1Support = false;
    librsvgSupport = false;
    libtiffSupport = false;
    libxml2Support = false;
    openjpegSupport = false;
    libwebpSupport = false;
    libheifSupport = false;
    libde265Support = false;
  };

  imagemagick6 = callPackage ./6.x.nix {
    inherit (darwin.apple_sdk.frameworks) ApplicationServices Foundation;
  };

  imagemagick6Big = imagemagick6.override {
    ghostscriptSupport = true;
  };

  imagemagick_light = lowPrio (imagemagick.override {
    bzip2Support = false;
    zlibSupport = false;
    libX11Support = false;
    libXtSupport = false;
    fontconfigSupport = false;
    freetypeSupport = false;
    libjpegSupport = false;
    djvulibreSupport = false;
    lcms2Support = false;
    openexrSupport = false;
    libjxlSupport = false;
    libpngSupport = false;
    liblqr1Support = false;
    librsvgSupport = false;
    libtiffSupport = false;
    libxml2Support = false;
    openjpegSupport = false;
    libwebpSupport = false;
    libheifSupport = false;
  });

  imagemagick = lowPrio (callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) ApplicationServices Foundation;
  });

  imagemagickBig = lowPrio (imagemagick.override {
    ghostscriptSupport = true;
  });
}
