{ ... }:
res: pkgs: super:

with pkgs;
{
  nghttp3 = callPackage ./. { inherit (darwin.apple_sdk.frameworks) CoreServices; };
}
