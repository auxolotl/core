{ ... }:
res: pkgs: super:

with pkgs;
{
  libuv = darwin.apple_sdk_11_0.callPackage ./. { };
}
