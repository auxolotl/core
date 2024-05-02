{ ... }:
res: pkgs: super:

with pkgs;
{
  libunwind =
    if stdenv.isDarwin then darwin.libunwind
    else if stdenv.hostPlatform.system == "riscv32-linux" then llvmPackages_14.libunwind
    else callPackage ./. { };
}
