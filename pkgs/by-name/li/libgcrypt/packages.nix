{ ... }:
res: pkgs: super:

with pkgs;
{
  libgcrypt = callPackage ./. { };
  libgcrypt_1_8 = callPackage ./1.8.nix { };
}
