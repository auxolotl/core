{ ... }:
res: pkgs: super:

with pkgs;
{
  procps =
    if stdenv.isLinux
    then callPackage ./. { }
    else unixtools.procps;
}
