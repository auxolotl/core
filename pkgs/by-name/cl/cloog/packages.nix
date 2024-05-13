{ ... }:
res: pkgs: super:

with pkgs;
{
  cloog = callPackage ./. {
    isl = isl_0_14;
  };

  cloog_0_18_0 = callPackage ./0.18.0.nix {
    isl = isl_0_11;
  };
}
