{ ... }:
res: pkgs: super:

with pkgs;
{
  # Make bdb5 the default as it is the last release under the custom
  # bsd-like license
  db = db5;
  db4 = db48;
  db48 = callPackage ./db-4.8.nix { };
  db5 = db53;
  db53 = callPackage ./db-5.3.nix { };
  db6 = db60;
  db60 = callPackage ./db-6.0.nix { };
  db62 = callPackage ./db-6.2.nix { };
}
