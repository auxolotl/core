{ ... }:
res: pkgs: super:

with pkgs;
{
 inherit (recurseIntoAttrs (callPackage ./. { }))
    ed edUnstable;
}
