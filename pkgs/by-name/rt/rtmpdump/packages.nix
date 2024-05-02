{ ... }:
res: pkgs: super:

with pkgs;
{
  rtmpdump = callPackage ./. { };
  rtmpdump_gnutls = rtmpdump.override { gnutlsSupport = true; opensslSupport = false; };
}
