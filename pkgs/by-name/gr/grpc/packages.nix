{ ... }:
res: pkgs: super:

with pkgs;
{
  grpc = darwin.apple_sdk_11_0.callPackage ../development/libraries/grpc {
    stdenv = if stdenv.isDarwin && stdenv.isx86_64
      then overrideSDK darwin.apple_sdk_11_0.stdenv { darwinMinVersion = "10.13"; }
      else stdenv;
  };
}
