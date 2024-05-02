{ ... }:
res: pkgs: super:

with pkgs;
{
  linux-pam = callPackage ./. { };

  pam = if stdenv.isLinux then linux-pam else openpam;
}
