{ ... }:
res: pkgs: super:

with pkgs;
{
  nixVersions = recurseIntoAttrs (callPackage ./. {
    storeDir = config.nix.storeDir or "/nix/store";
    stateDir = config.nix.stateDir or "/nix/var";
    inherit (darwin.apple_sdk.frameworks) Security;
  });

  nix = nixVersions.stable;

  nixStatic = pkgsStatic.nix;
}
