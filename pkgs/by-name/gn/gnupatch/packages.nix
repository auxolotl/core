{ ... }:
res: pkgs: super:

with pkgs;
{
  gnupatch = callPackage ./. { };
  patch = gnupatch;
}
