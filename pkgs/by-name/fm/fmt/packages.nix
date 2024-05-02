{ ... }:
res: pkgs: super:

with pkgs;
{
  inherit (callPackages ./. { }) fmt_8 fmt_9 fmt_10;
  fmt = fmt_10;
}
