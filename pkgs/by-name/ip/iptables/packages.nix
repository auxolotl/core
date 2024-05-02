{ ... }:
res: pkgs: super:

with pkgs;
{
  iptables = callPackage ./. { };
  iptables-legacy = callPackage ./. { nftablesCompat = false; };
  iptables-nftables-compat = iptables;
}
