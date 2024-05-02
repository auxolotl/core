{ ... }:
res: pkgs: super:

with pkgs;
{
  bash = lowPrio (callPackage ./5.nix { });
  # WARNING: this attribute is used by nix-shell so it shouldn't be removed/renamed
  bashInteractive = callPackage ./5.nix {
    interactive = true;
    withDocs = true;
  };
  bashInteractiveFHS = callPackage ./5.nix {
    interactive = true;
    withDocs = true;
    forFHSEnv = true;
  };

  bash-completion = callPackage ./bash-completion { };
}
