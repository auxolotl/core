{
  inputs = {
    nixpkgs.url = "github:auxolotl/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      lib = import ./lib;
      forAllSystems = lib.genAttrs lib.systems.flakeExposed;
    in
    {
      nixPackages = forAllSystems (system:
        nixpkgs.legacyPackages.${system}
      );

      # auxPackages = forAllSystems (system:
      #   (import ./. { inherit system; })
      # );

      # To test, run nix build .#tests.x86_64-linux.release
      tests = forAllSystems (system:
        ({
          systems = import ./lib/tests/systems.nix;
          release = import ./lib/tests/release.nix { pkgs = self.nixPackages.${system}; };
        })
      );
    };
}
