# Extension with Python 2 packages that is overlayed on top
# of the Python 3 packages set. This way, Python 2+3 compatible
# packages can still be used.

self: super:

with self; with super; {
  # attrs = callPackage ./python2-modules/attrs { };

  # backports-functools-lru-cache = callPackage ./python2-modules/backports-functools-lru-cache { };

  # bootstrapped-pip = toPythonModule (callPackage ./python2-modules/bootstrapped-pip { });

  # cffi = callPackage ./python2-modules/cffi { inherit cffi; };

  # configparser = callPackage ./python2-modules/configparser { };

  # contextlib2 = callPackage ./python2-modules/contextlib2 { };

  # coverage = callPackage ./python2-modules/coverage { };

  # enum = callPackage ./python2-modules/enum { };

  # filelock =  callPackage ./python2-modules/filelock { };

  # futures = callPackage ./python2-modules/futures { };

  # hypothesis = callPackage ./python2-modules/hypothesis { };

  # importlib-metadata = callPackage ./python2-modules/importlib-metadata { };

  # jinja2 = callPackage ./python2-modules/jinja2 { };

  # markupsafe = callPackage ./python2-modules/markupsafe { };

  # mock = callPackage ./python2-modules/mock { };

  # more-itertools = callPackage ./python2-modules/more-itertools { };

  # # ninja python stub was created to help simplify python builds using PyPA's
  # # build tool in Python 3, but it does not yet support Python 2
  # ninja = pkgs.buildPackages.ninja;

  # packaging = callPackage ./python2-modules/packaging { };

  # pip = callPackage ./python2-modules/pip { };

  # pluggy = callPackage ./python2-modules/pluggy { };

  # pycairo = callPackage ./python2-modules/pycairo {
  #   inherit (pkgs.buildPackages) meson;
  # };

  # pygobject2 = callPackage ./python2-modules/pygobject { };

  # pygtk = callPackage ./python2-modules/pygtk { };

  # pyparsing = callPackage ./python2-modules/pyparsing { };

  # pytest = pytest_4;

  # pytest_4 = callPackage
  #   ./python2-modules/pytest {
  #     # hypothesis tests require pytest that causes dependency cycle
  #     hypothesis = self.hypothesis.override {
  #       doCheck = false;
  #     };
  #   };

  # pytest-xdist = callPackage ./python2-modules/pytest-xdist { };

  # recoll = disabled super.recoll;

  # rivet = disabled super.rivet;

  # rpm = disabled super.rpm;

  # scandir = callPackage ./python2-modules/scandir { };

  # setuptools = callPackage ./python2-modules/setuptools { };

  # setuptools-scm = callPackage ./python2-modules/setuptools-scm { };

  # typing = callPackage ./python2-modules/typing { };

  # six = super.six.overridePythonAttrs (_: {
  #   doCheck = false;  # circular dependency with pytest
  # });

  # wcwidth = callPackage ./python2-modules/wcwidth {
  #   inherit wcwidth;
  # };

  # wheel = callPackage ./python2-modules/wheel { };

  # zeek = disabled super.zeek;

  # zipp = callPackage ./python2-modules/zipp { };
}
