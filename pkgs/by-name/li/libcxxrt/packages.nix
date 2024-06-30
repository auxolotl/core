{ ... }:
res: pkgs: super:

with pkgs;
{
  libcxxrt = callPackage ./. {
    stdenv = if stdenv.hostPlatform.useLLVM or false
             then overrideCC stdenv buildPackages.llvmPackages.tools.clangNoLibcxx
             else stdenv;
  };
}
