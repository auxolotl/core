{ ... }:
res: pkgs: super:

with pkgs;
{
  fusePackages = dontRecurseIntoAttrs (callPackage ./. {
    util-linux = util-linuxMinimal;
  });
  fuse = fuse2;
  fuse2 = lowPrio (if stdenv.isDarwin then macfuse-stubs else fusePackages.fuse_2);
  fuse3 = fusePackages.fuse_3;
  fuse-common = hiPrio fusePackages.fuse_3.common;
}
