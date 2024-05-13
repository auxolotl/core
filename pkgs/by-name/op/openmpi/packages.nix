{ ... }:
res: pkgs: super:

with pkgs;
{
  openmpi = callPackage ./. { };
  mpi = openmpi; # this attribute should used to build MPI applications
  mpiCheckPhaseHook = callPackage (path + "/pkgs/build-support/setup-hooks/mpi-check-hook") { };
}
