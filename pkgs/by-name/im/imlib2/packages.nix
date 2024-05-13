{ ... }:
res: pkgs: super:

with pkgs;
{
  imlib2 = callPackage ./. { };
  imlib2Full = imlib2.override {
    # Compilation error on Darwin with librsvg. For more information see:
    # https://github.com/NixOS/nixpkgs/pull/166452#issuecomment-1090725613
    svgSupport = !stdenv.isDarwin;
    heifSupport = !stdenv.isDarwin;
    webpSupport = true;
    jxlSupport = true;
    psSupport = true;
  };
  imlib2-nox = imlib2.override {
    x11Support = false;
  };
}
