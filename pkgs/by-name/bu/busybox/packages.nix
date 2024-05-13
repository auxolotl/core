{ ... }:
res: pkgs: super:

with pkgs;
{
  busybox = callPackage ./. { };
  busybox-sandbox-shell = callPackage ./sandbox-shell.nix {
    # musl roadmap has RISC-V support projected for 1.1.20
    busybox =
      if !stdenv.hostPlatform.isRiscV && !stdenv.hostPlatform.isLoongArch64 && stdenv.hostPlatform.libc != "bionic"
      then pkgsStatic.busybox
      else busybox;
  };
}
