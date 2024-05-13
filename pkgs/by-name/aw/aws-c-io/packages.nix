{ ... }:
res: pkgs: super:

with pkgs;
{
  aws-c-io = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) Security;
  };
}
