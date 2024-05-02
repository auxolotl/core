{ ... }:
res: pkgs: super:

with pkgs;
{
  pkg-config-unwrapped = callPackage ./. { };

  pkg-configUpstream = lowPrio (pkg-config.override (old: {
    pkg-config = old.pkg-config.override {
      vanilla = true;
    };
  }));

  pkg-config = callPackage (path + "/pkgs/build-support/pkg-config-wrapper") {
    pkg-config = pkg-config-unwrapped;
  };
}
