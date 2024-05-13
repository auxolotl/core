{ ... }:
res: pkgs: super:

with pkgs;
{
  perlInterpreters = import ./. { inherit callPackage; };
  inherit (perlInterpreters) perl536 perl538;

  perl536Packages = recurseIntoAttrs perl536.pkgs;
  perl538Packages = recurseIntoAttrs perl538.pkgs;

  perl = perl538;
  perlPackages = perl538Packages;

  ack = perlPackages.ack;
  po4a = perlPackages.Po4a;
}
