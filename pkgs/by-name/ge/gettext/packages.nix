{ ... }:
res: pkgs: super:

with pkgs;
{
  gettext = callPackage ./. { };
  # On non-GNU systems we need GNU Gettext for libintl.
  libintl = if stdenv.hostPlatform.libc != "glibc" then gettext else null;
}
