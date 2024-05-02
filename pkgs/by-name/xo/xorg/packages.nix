{ ... }:
res: pkgs: super:

with pkgs;
{
  xorg = let
    # Use `lib.callPackageWith __splicedPackages` rather than plain `callPackage`
    # so as not to have the newly bound xorg items already in scope,  which would
    # have created a cycle.
    overrides = lib.callPackageWith __splicedPackages ./overrides.nix {
      inherit (darwin.apple_sdk.frameworks) ApplicationServices Carbon Cocoa;
      inherit (darwin.apple_sdk.libs) Xplugin;
      inherit (buildPackages.darwin) bootstrap_cmds;
      udev = if stdenv.isLinux then udev else null;
      libdrm = if stdenv.isLinux then libdrm else null;
    };

    generatedPackages = lib.callPackageWith __splicedPackages ./default.nix { };

    xorgPackages = makeScopeWithSplicing' {
      otherSplices = generateSplicesForMkScope "xorg";
      f = lib.extends overrides generatedPackages;
    };

  in recurseIntoAttrs xorgPackages;

  xwayland = callPackage ./xwayland.nix { };

  xcbutilxrm = callPackage ./xcb-util-xrm.nix { };
}
