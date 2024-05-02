{ ... }:
res: pkgs: super:

with pkgs;
{
  # Provided by libc on Operating Systems that use the Extensible Linker Format.
  elf-header = if stdenv.hostPlatform.isElf then null else elf-header-real;

  elf-header-real = callPackage ./. { };
}
