{ ... }:
res: pkgs: super:

with pkgs;
{
  # also known as libturbojpeg
  libjpeg_turbo = callPackage ./. { };
  libjpeg = libjpeg_turbo;
  libjpeg8 = libjpeg_turbo.override { enableJpeg8 = true; };
}
