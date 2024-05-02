{ ... }:
res: pkgs: super:

with pkgs;
{
  pcre = callPackage ./. { };
  pcre16 = res.pcre.override { variant = "pcre16"; };
  # pcre32 seems unused
  pcre-cpp = res.pcre.override { variant = "cpp"; };
}
