{ ... }:
res: pkgs: super:

with pkgs;
{
  libxml2 = callPackage ./. {
    python = python3;
  };
}
