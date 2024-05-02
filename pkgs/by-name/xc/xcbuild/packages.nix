{ ... }:
res: pkgs: super:

with pkgs;
{
  xcodebuild = callPackage ./wrapper.nix {
    inherit (darwin.apple_sdk.frameworks) CoreServices CoreGraphics ImageIO;
  };
  xcbuild = xcodebuild;
  xcbuildHook = makeSetupHook {
    name = "xcbuild-hook";
    propagatedBuildInputs = [ xcbuild ];
  } ./setup-hook.sh  ;
}
