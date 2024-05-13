{ ... }:
res: pkgs: super:

with pkgs;
{
  memstream = callPackage ./. { };
  memstreamHook = makeSetupHook {
    name = "memstream-hook";
    propagatedBuildInputs = [ memstream ];
  } ./setup-hook.sh;
}
