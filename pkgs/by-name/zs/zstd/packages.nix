{ ... }:
res: pkgs: super:

with pkgs;
{
  zstd = callPackage ./. {
    cmake = buildPackages.cmakeMinimal;
  };
}
