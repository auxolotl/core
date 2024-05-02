{ ... }:
res: pkgs: super:

with pkgs;
{
  krb5 = callPackage ./krb5.nix {
    inherit (buildPackages.darwin) bootstrap_cmds;
  };
  libkrb5 = krb5.override { type = "lib"; };

  heimdal = callPackage ./heimdal.nix {
    inherit (darwin.apple_sdk.frameworks) CoreFoundation Security SystemConfiguration;
    autoreconfHook = buildPackages.autoreconfHook269;
  };
}
