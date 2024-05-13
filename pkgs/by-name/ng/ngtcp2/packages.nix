{ ... }:
res: pkgs: super:

with pkgs;
{
  ngtcp2 = callPackage ./ngtcp2 { inherit (darwin.apple_sdk.frameworks) CoreServices; };
  ngtcp2-gnutls = callPackage ./gnutls.nix { };
}
