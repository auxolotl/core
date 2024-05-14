{ ... }:
res: pkgs: super:

with pkgs;
{
  macfuse-stubs = callPackage ./. {
    inherit (darwin) libtapi;
    inherit (darwin.apple_sdk.frameworks) DiskArbitration;
  };
}
