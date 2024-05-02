{ ... }:
res: pkgs: super:

with pkgs;
{
  pythonInterpreters = callPackage ./. { };
  inherit (pythonInterpreters) python27 python39 python310 python311 python312 python313 python3Minimal pypy27 pypy310 pypy39 rustpython;

  # List of extensions with overrides to apply to all Python package sets.
  pythonPackagesExtensions = [ ];
  # Python package sets.
  python27Packages = python27.pkgs // { __attrsFailEvaluation = true; };
  python39Packages = python39.pkgs // { __attrsFailEvaluation = true; };
  python310Packages = python310.pkgs // { __attrsFailEvaluation = true; };
  python311Packages = recurseIntoAttrs python311.pkgs // { pythonPackages = python311.pkgs // { __attrsFailEvaluation = true; }; };
  python312Packages = recurseIntoAttrs python312.pkgs // { pythonPackages = python312.pkgs // { __attrsFailEvaluation = true; }; };
  python313Packages = python313.pkgs // { __attrsFailEvaluation = true; };
  pypyPackages = pypy.pkgs // { __attrsFailEvaluation = true; };
  pypy2Packages = pypy2.pkgs // { __attrsFailEvaluation = true; };
  pypy27Packages = pypy27.pkgs // { __attrsFailEvaluation = true; };
  pypy3Packages = pypy3.pkgs // { __attrsFailEvaluation = true; };
  pypy39Packages = pypy39.pkgs // { __attrsFailEvaluation = true; };
  pypy310Packages = pypy310.pkgs // { __attrsFailEvaluation = true; };

  # Python interpreters. All standard library modules are included except for tkinter, which is
  # available as `pythonPackages.tkinter` and can be used as any other Python package.
  # When switching these sets, please update docs at ../../doc/languages-frameworks/python.md
  python2 = python27;
  python3 = python311;

  # pythonPackages further below, but assigned here because they need to be in sync
  python2Packages = dontRecurseIntoAttrs python27Packages;
  python3Packages = dontRecurseIntoAttrs python311Packages;


  # Should eventually be moved inside Python interpreters.
  python-setup-hook = buildPackages.callPackage ./setup-hook.nix { };

  update-python-libraries = callPackage ./update-python-libraries { };

  docutils = with python3Packages; toPythonApplication (
    docutils.overridePythonAttrs (attrs: rec {
      version = "0.20.1";
      src = attrs.src.override {
        inherit version;
        hash = "sha256-8IpOJ2w6FYOobc4+NKuj/gTQK7ot1R7RYQYkToqSPjs=";
      };
    })
  );

  actdiag = with python3.pkgs; toPythonApplication actdiag;
  blockdiag = with python3Packages; toPythonApplication blockdiag;
  nwdiag = with python3Packages; toPythonApplication nwdiag;
  buildcatrust = with python3.pkgs; toPythonApplication buildcatrust;
  seqdiag = with python3Packages; toPythonApplication seqdiag;
}
