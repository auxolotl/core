{ ... }:
res: pkgs: super:

with pkgs;
{
  rsync = callPackage ./. (config.rsync or { });
  rrsync = callPackage ./rrsync.nix { };
}
