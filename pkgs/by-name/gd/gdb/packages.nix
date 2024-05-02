{ ... }:
res: pkgs: super:

with pkgs;
{
  gdb = callPackage ./. {
    guile = null;
  };
  gdbHostCpuOnly = gdb.override { hostCpuOnly = true; };
}
