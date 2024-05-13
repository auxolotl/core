{ ... }:
res: pkgs: super:

with pkgs;
{
  wolfssl = darwin.apple_sdk_11_0.callPackage ./. {
    inherit (darwin.apple_sdk_11_0.frameworks) Security;
  };
}
