{ ... }:
res: pkgs: super:

with pkgs;
{
  bluez = callPackage ./. { };
  bluez5 = bluez;
  bluez5-experimental = bluez-experimental;
  bluez-experimental = bluez.override {
    enableExperimental = true;
  };
}
