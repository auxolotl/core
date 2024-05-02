{ ... }:
res: pkgs: super:

with pkgs;
{
  libguestfs-appliance = callPackage ./appliance.nix { };
  libguestfs = callPackage ./. {
    autoreconfHook = buildPackages.autoreconfHook264;
    ocamlPackages = ocaml-ng.ocamlPackages_4_14;
  };
  libguestfs-with-appliance = libguestfs.override {
    appliance = libguestfs-appliance;
    autoreconfHook = buildPackages.autoreconfHook264;
  };
}
