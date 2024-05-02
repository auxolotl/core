{ ... }:
res: pkgs: super:

with pkgs;
{
  inherit (callPackages ./. { inherit (pkgsBuildBuild) elf-header; })
    linuxHeaders makeLinuxHeaders;
}
