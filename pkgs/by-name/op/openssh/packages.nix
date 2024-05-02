{ ... }:
res: pkgs: super:

with pkgs;
{
  opensshPackages = dontRecurseIntoAttrs (callPackage ./. {});

  openssh = opensshPackages.openssh.override {
    etcDir = "/etc/ssh";
  };

  openssh_hpn = opensshPackages.openssh_hpn.override {
    etcDir = "/etc/ssh";
  };

  openssh_gssapi = opensshPackages.openssh_gssapi.override {
    etcDir = "/etc/ssh";
  };

  ssh-copy-id = callPackage ./copyid.nix { };
}
