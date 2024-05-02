{ ... }:
res: pkgs: super:

with pkgs;
{
  glib = callPackage ./. (
    let
      glib-untested = glib.overrideAttrs { doCheck = false; };
    in
    {
      # break dependency cycles
      # these things are only used for tests, they don't get into the closure
      shared-mime-info = shared-mime-info.override { glib = glib-untested; };
      desktop-file-utils = desktop-file-utils.override { glib = glib-untested; };
      dbus = dbus.override { enableSystemd = false; };
    }
  );
}
