{ ... }:
res: pkgs: super:

with pkgs;
{
  c-ares = callPackage ./. { };
  c-aresMinimal = callPackage ./. {
    withCMake = false;
  };
}
