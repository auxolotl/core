{ ... }:
res: pkgs: super:

with pkgs;
{
  # TeX Live; see https://nixos.org/nixpkgs/manual/#sec-language-texlive
  texlive = callPackage ./. { };
  inherit (texlive.schemes) texliveBasic texliveBookPub texliveConTeXt texliveFull texliveGUST texliveInfraOnly texliveMedium texliveMinimal texliveSmall texliveTeTeX;
  texlivePackages = recurseIntoAttrs (lib.filterAttrs (_: lib.isDerivation) texlive.pkgs);
}
