{ ... }:
res: pkgs: super:

with pkgs;
{
  xmlto = callPackage ./. {
    w3m = w3m-batch;
  };
}
