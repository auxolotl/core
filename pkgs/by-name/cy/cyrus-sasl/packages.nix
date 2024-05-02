{ ... }:
res: pkgs: super:

with pkgs;
{
  cyrus_sasl = callPackage ./. {
    libkrb5 = if stdenv.isFreeBSD then heimdal else libkrb5;
  };
}
