{ ... }:
res: pkgs: super:

with pkgs;
{
  aws-sdk-cpp = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) CoreAudio AudioToolbox;
  };
}
