{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs, ... }:
    let
      forAllSystems = self.lib.genAttrs self.lib.systems.flakeExposed;
    in
    {
      lib = import ./lib;

      nixPackages = forAllSystems (system: nixpkgs.legacyPackages.${system});

      auxPackages = forAllSystems (system:
        (
          let requiredVersion = import ./lib/minver.nix; in

          if ! builtins ? nixVersion || builtins.compareVersions requiredVersion builtins.nixVersion == 1 then
            abort ''
              This version of Nixpkgs requires Nix >= ${requiredVersion}, please upgrade:

              - If you are running NixOS, `nixos-rebuild' can be used to upgrade your system.

              - Alternatively, with Nix > 2.0 `nix upgrade-nix' can be used to imperatively
                upgrade Nix. You may use `nix-env --version' to check which version you have.

              - If you installed Nix using the install script (https://nixos.org/nix/install),
                it is safe to upgrade by running it again:

                    curl -L https://nixos.org/nix/install | sh

              For more information, please see the NixOS release notes at
              https://nixos.org/nixos/manual or locally at
              ${toString ./nixos/doc/manual/release-notes}.

              If you need further help, see https://nixos.org/nixos/support.html
            ''
          else
            import ./pkgs/top-level/default.nix { localSystem = system; }
        )
      );

      # To test, run nix build .#tests.x86_64-linux.release
      tests = forAllSystems (system: {
        systems = import ./lib/tests/systems.nix;
        release = import ./lib/tests/release.nix { pkgs = self.auxPackages.${system}; };
      });
    };
}
