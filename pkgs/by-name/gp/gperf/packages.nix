{ ... }:
res: pkgs: super:

with pkgs;
{
  gperf = callPackage ./. { };
  # 3.1 changed some parameters from int to size_t, leading to mismatches.
  gperf_3_0 = callPackage ./3.0.x.nix { };
}
