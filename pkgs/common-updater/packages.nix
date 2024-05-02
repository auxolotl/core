{ ... }:
res: pkgs: super:

with pkgs;
{
  common-updater-scripts = callPackage ./scripts.nix { };

  genericUpdater = callPackage ./generic-updater.nix { };

  _experimental-update-script-combinators = callPackage ./combinators.nix { };

  directoryListingUpdater = callPackage ./directory-listing-updater.nix { };

  gitUpdater = callPackage ./git-updater.nix { };

  httpTwoLevelsUpdater = callPackage ./http-two-levels-updater.nix { };

  unstableGitUpdater = callPackage ./unstable-updater.nix { };

  nix-update-script = callPackage ./nix-update.nix { };
}
