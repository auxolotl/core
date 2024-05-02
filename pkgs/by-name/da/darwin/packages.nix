{ ... }:
res: pkgs: super:

with pkgs;
{
  # Darwin package set
  #
  # Even though this is a set of packages not single package, use `callPackage`
  # not `callPackages` so the per-package callPackages don't have their
  # `.override` clobbered. C.F. `llvmPackages` which does the same.
  darwin = recurseIntoAttrs (callPackage ./darwin-packages.nix { });
}
