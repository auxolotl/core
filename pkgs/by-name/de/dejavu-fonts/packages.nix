{ ... }:
res: pkgs: super:

with pkgs;
{
  dejavu_fonts = lowPrio (callPackage ./. {});

  # solve collision for nix-env before https://github.com/NixOS/nix/pull/815
  dejavu_fontsEnv = buildEnv {
    name = dejavu_fonts.name;
    paths = [ dejavu_fonts.out ];
  };
}
