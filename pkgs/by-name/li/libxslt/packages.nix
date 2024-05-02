{ ... }:
res: pkgs: super:

with pkgs;
{
  libxslt = callPackage ./. {
    python = python3;
  };
}
