{ ... }:
res: pkgs: super:

with pkgs;
{
  haskell = callPackage ./haskell-packages.nix { };

  haskellPackages = dontRecurseIntoAttrs
    # Prefer native-bignum to avoid linking issues with gmp
    # GHC 9.6 rts can't be built statically with hadrian, so we need to use 9.4
    # until 9.8 is ready
    (if stdenv.hostPlatform.isStatic then haskell.packages.native-bignum.ghc94
    # JS backend can't use gmp
    else if stdenv.hostPlatform.isGhcjs then haskell.packages.native-bignum.ghc96
    else haskell.packages.ghc96)
  // { __recurseIntoDerivationForReleaseJobs = true; };

  # haskellPackages.ghc is build->host (it exposes the compiler used to build the
  # set, similarly to stdenv.cc), but pkgs.ghc should be host->target to be more
  # consistent with the gcc, gnat, clang etc. derivations
  #
  # We use targetPackages.haskellPackages.ghc if available since this also has
  # the withPackages wrapper available. In the final cross-compiled package set
  # however, targetPackages won't be populated, so we need to fall back to the
  # plain, cross-compiled compiler (which is only theoretical at the moment).
  ghc = targetPackages.haskellPackages.ghc or
    # Prefer native-bignum to avoid linking issues with gmp
    # Use 9.4 for static over broken 9.6
    (if stdenv.targetPlatform.isStatic then haskell.compiler.native-bignum.ghc94
    # JS backend can't use GMP
    else if stdenv.targetPlatform.isGhcjs then haskell.compiler.native-bignum.ghc96
    else haskell.compiler.ghc96);

  nixfmt = haskellPackages.nixfmt.bin;
}
