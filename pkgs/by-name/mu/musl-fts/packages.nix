{ ... }:
res: pkgs: super:

with pkgs;
{
  musl-fts = callPackage ./. { };
  fts = if stdenv.hostPlatform.isMusl then musl-fts else null;
}
