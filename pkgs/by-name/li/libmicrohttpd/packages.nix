{ ... }:
res: pkgs: super:

with pkgs;
{
  inherit
    ({
      libmicrohttpd_0_9_77 = callPackage ./0.9.77.nix { };
    })
    libmicrohttpd_0_9_77
    ;

  libmicrohttpd = libmicrohttpd_0_9_77;
}
