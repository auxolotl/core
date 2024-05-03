{
  inputs = {
    nixpkgs.url = "github:auxolotl/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs, ... }:
    let
      forAllSystems = self.lib.genAttrs self.lib.systems.flakeExposed;
    in
    {
      lib = import ./lib;

      nixPackages = forAllSystems (system: nixpkgs.legacyPackages.${system});

      # auxPackages = forAllSystems (system:
      #   (import ./. { inherit system; })
      # );

      # To test, run nix build .#tests.x86_64-linux.release
      tests = forAllSystems (system: {
        systems = import ./lib/tests/systems.nix;
        release = import ./lib/tests/release.nix { pkgs = self.nixPackages.${system}; };
      });
    };
}
