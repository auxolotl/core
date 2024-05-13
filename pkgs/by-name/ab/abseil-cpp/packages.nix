{ ... }:
res: pkgs: super:

with pkgs;
{
  abseil-cpp_202103 = callPackage ./202103.nix {
    # If abseil-cpp doesn’t have a deployment target of 10.13+, arrow-cpp crashes in libgrpc.dylib.
    stdenv = if stdenv.isDarwin && stdenv.isx86_64
      then overrideSDK stdenv { darwinMinVersion = "10.13"; }
      else stdenv;
  };
  abseil-cpp_202206 = callPackage ./202206.nix {
    # If abseil-cpp doesn’t have a deployment target of 10.13+, arrow-cpp crashes in libgrpc.dylib.
    stdenv = if stdenv.isDarwin && stdenv.isx86_64
      then overrideSDK stdenv { darwinMinVersion = "10.13"; }
      else stdenv;
  };
  abseil-cpp_202301 = callPackage ./202301.nix {
    # If abseil-cpp doesn’t have a deployment target of 10.13+, arrow-cpp crashes in libgrpc.dylib.
    stdenv = if stdenv.isDarwin && stdenv.isx86_64
      then overrideSDK stdenv { darwinMinVersion = "10.13"; }
      else stdenv;
  };
  abseil-cpp_202308 = callPackage ./202308.nix {
    # If abseil-cpp doesn’t have a deployment target of 10.13+, arrow-cpp crashes in libgrpc.dylib.
    stdenv = if stdenv.isDarwin && stdenv.isx86_64
      then overrideSDK stdenv { darwinMinVersion = "10.13"; }
      else stdenv;
  };
  abseil-cpp_202401 = callPackage ./202401.nix {
    # If abseil-cpp doesn’t have a deployment target of 10.13+, arrow-cpp crashes in libgrpc.dylib.
    stdenv = if stdenv.isDarwin && stdenv.isx86_64
      then overrideSDK stdenv { darwinMinVersion = "10.13"; }
      else stdenv;
  };
  abseil-cpp = abseil-cpp_202401;
}
