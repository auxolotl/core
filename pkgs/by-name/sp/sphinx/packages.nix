{ ... }:
res: pkgs: super:

with pkgs;
{
  sphinx = with python3Packages; toPythonApplication sphinx;

  sphinx-autobuild = with python3Packages; toPythonApplication sphinx-autobuild;

  sphinx-serve = with python3Packages; toPythonApplication sphinx-serve;

  inherit (python3Packages) sphinxHook;
}
