{ ... }:
res: pkgs: super:

with pkgs;
{
  fontforge = lowPrio (callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) Carbon Cocoa;
    python = python3;
  });
  fontforge-gtk = fontforge.override {
    withSpiro = true;
    withGTK = true;
    gtk3 = gtk3-x11;
    inherit (darwin.apple_sdk.frameworks) Carbon Cocoa;
  };

  fontforge-fonttools = callPackage ./fontforge-fonttools.nix { };
}
