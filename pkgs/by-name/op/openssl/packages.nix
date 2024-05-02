{ ... }:
res: pkgs: super:

with pkgs;
{
  openssl = openssl_3;

  openssl_legacy = openssl.override {
    conf = ./3.0/legacy.cnf;
  };

  inherit (callPackages ./. { })
    openssl_1_1
    openssl_3
    openssl_3_2
    openssl_3_3;
}
