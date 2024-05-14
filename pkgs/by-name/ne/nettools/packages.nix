{ ... }:
res: pkgs: super:

with pkgs;
{
  nettools = if stdenv.isLinux
    then callPackage ./. { }
    else unixtools.nettools;
}
