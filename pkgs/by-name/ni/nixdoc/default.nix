{
  lib,
  stdenv,
  fetchFromGitHub,
  rustPlatform,
  darwin,
}: let
  version = "3.0.2";
in
  rustPlatform.buildRustPackage {
    pname = "nixdoc";
    inherit version;

    src = fetchFromGitHub {
      owner = "nix-community";
      repo = "nixdoc";
      rev = "v${version}";
      sha256 = "sha256-V3MAvbdYk3DL064UYcJE9HmwfQBwpMxVXWiAKX6honA=";
    };

    cargoHash = "sha256-RFxTjLiJCEc42Mb8rcayOFHkYk2GfpgsO3+hAaRwHgs=";

    buildInputs = lib.optionals stdenv.isDarwin [darwin.Security];

    meta = {
      description = "Generate documentation for Nix functions";
      mainProgram = "nixdoc";
      homepage = "https://github.com/nix-community/nixdoc";
      license = lib.licenses.gpl3;
      # maintainers = with lib.maintainers; [ infinisil hsjobeki ];
      platforms = lib.platforms.unix;
    };
  }
