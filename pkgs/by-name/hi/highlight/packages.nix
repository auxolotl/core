{ ... }:
res: pkgs: super:

with pkgs;
{
  highlight = callPackage ./. ({
    lua = lua5;
  });
}
