{ ... }:
res: pkgs: super:

with pkgs;
{
  libffi = callPackage ./. { };
  libffi_3_3 = callPackage ./3.3.nix { };
  libffiBoot = libffi.override {
    doCheck = false;
  };
}
