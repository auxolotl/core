{ ... }:
res: pkgs: super:

with pkgs;
{
  # GNU libc provides libiconv so systems with glibc don't need to
  # build libiconv separately. Additionally, Apple forked/repackaged
  # libiconv so we use that instead of the vanilla version on that OS,
  # and BSDs include libiconv in libc.
  #
  # We also provide `libiconvReal`, which will always be a standalone libiconv,
  # just in case you want it regardless of platform.
  libiconv =
    if lib.elem stdenv.hostPlatform.libc [ "glibc" "musl" "nblibc" "wasilibc" ]
    then
      libcIconv
        (if stdenv.hostPlatform != stdenv.buildPlatform
        then libcCross
        else stdenv.cc.libc)
    # else if stdenv.hostPlatform.isDarwin
    #   then darwin.libiconv
    else libiconvReal;

  libcIconv = libc:
    let
      inherit (libc) pname version;
      libcDev = lib.getDev libc;
    in
    runCommand "${pname}-iconv-${version}" { strictDeps = true; } ''
      mkdir -p $out/include
      ln -sv ${libcDev}/include/iconv.h $out/include
    '';

  libiconvReal = callPackage ./. { };

  iconv =
    if lib.elem stdenv.hostPlatform.libc [ "glibc" "musl" ] then
      lib.getBin stdenv.cc.libc
    else if stdenv.hostPlatform.isDarwin then
      lib.getBin darwin.libiconv
    else
      lib.getBin libiconvReal;
}
