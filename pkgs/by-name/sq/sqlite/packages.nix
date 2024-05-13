{ ... }:
res: pkgs: super:

with pkgs;
{
  sqlite = lowPrio (callPackage ./. { });

  inherit (callPackage ./tools.nix {
    inherit (darwin.apple_sdk.frameworks) Foundation;
  }) sqlite-analyzer sqldiff;

  sqlar = callPackage ./sqlar.nix { };

  sqlite-interactive = (sqlite.override { interactive = true; }).bin;
}
