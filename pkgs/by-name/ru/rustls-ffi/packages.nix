{ ... }:
res: pkgs: super:

with pkgs;
{
  rustls-ffi = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) Security;
  };
}
