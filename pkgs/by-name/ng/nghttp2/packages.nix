{ ... }:
res: pkgs: super:

with pkgs;
{
  nghttp2 = callPackage ./. { };
  libnghttp2 = nghttp2.lib;
}
