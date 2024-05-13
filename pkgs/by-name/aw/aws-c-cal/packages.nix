{ ... }:
res: pkgs: super:

with pkgs;
{
  aws-c-cal = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) Security;
  };
}
