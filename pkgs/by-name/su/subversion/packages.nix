{ ... }:
res: pkgs: super:

with pkgs;
{
  inherit (callPackages ./. {
    sasl = cyrus_sasl;
    inherit (darwin.apple_sdk.frameworks) CoreServices Security;
  }) subversion;

  subversionClient = subversion.override {
    bdbSupport = false;
    perlBindings = true;
    pythonBindings = true;
  };
}
