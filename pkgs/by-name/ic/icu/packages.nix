{ ... }:
res: pkgs: super:

with pkgs;
{
  icu-versions = callPackages ./. { };
  inherit (icu-versions)
    icu58
    icu60
    icu63
    icu64
    icu66
    icu67
    icu68
    icu69
    icu70
    icu71
    icu72
    icu73
    icu74
  ;

  icu = icu73;
}
