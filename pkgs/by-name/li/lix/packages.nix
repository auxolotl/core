{ ... }:
res: pkgs: super:

with pkgs;
{
  lixVersions = recurseIntoAttrs (callPackage ./. {
    storeDir = config.nix.storeDir or "/nix/store";
    stateDir = config.nix.stateDir or "/nix/var";
    inherit (darwin.apple_sdk.frameworks) Security;
  });

  lix = lixVersions.stable;

  lixStatic = pkgsStatic.lix;
}
