{ ... }:
res: pkgs: super:

with pkgs;
{
  doxygen = darwin.apple_sdk_11_0.callPackage ./. {
    qt5 = null;
    inherit (darwin.apple_sdk_11_0.frameworks) CoreServices;
  };

  doxygen_gui = lowPrio (doxygen.override { inherit qt5; });
}
