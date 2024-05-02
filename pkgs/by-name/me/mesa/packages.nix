{ ... }:
res: pkgs: super:

with pkgs;
{
  # Default libGL implementation, should provide headers and
  # libGL.so/libEGL.so/... to link agains them. Android NDK provides
  # an OpenGL implementation, we can just use that.
  libGL = if stdenv.hostPlatform.useAndroidPrebuilt then stdenv
          else callPackage ./stubs.nix {
            inherit (darwin.apple_sdk.frameworks) OpenGL;
          };

  # Default libGLU
  libGLU = mesa_glu;

  mesa = darwin.apple_sdk_11_0.callPackage ./. {
    inherit (darwin.apple_sdk_11_0.frameworks) OpenGL;
    inherit (darwin.apple_sdk_11_0.libs) Xplugin;
  };
  mesa_i686 = pkgsi686Linux.mesa; # make it build on Hydra
}
