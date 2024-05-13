{ ... }:
res: pkgs: super:

with pkgs;
{
  swig1 = callPackage ./. { };
  swig2 = callPackage ./2.x.nix { };
  swig3 = callPackage ./3.x.nix { };
  swig4 = callPackage ./4.nix { };
  swig = swig3;
  swigWithJava = swig;
}
