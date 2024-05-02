{ ... }:
res: pkgs: super:

with pkgs;
{
  coreutils =  callPackage ./. { };

  # The coreutils above are built with dependencies from
  # bootstrapping. We cannot override it here, because that pulls in
  # openssl from the previous stage as well.
  coreutils-full = callPackage ./. { minimal = false; };
  coreutils-prefixed = coreutils.override { withPrefix = true; singleBinary = false; };
}
