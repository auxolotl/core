{ ... }:
res: pkgs: super:

with pkgs;
{
  bind = callPackage ./. { };
  dnsutils = bind.dnsutils;
  dig = lib.addMetaAttrs { mainProgram = "dig"; } bind.dnsutils;
}
