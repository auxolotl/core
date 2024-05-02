{ lib, stdenv, fetchurl }:

# Note: this package is used for bootstrapping fetchurl, and thus
# cannot use fetchpatch! All mutable patches (generated by GitHub or
# cgit) that are needed here should be included directly in Nixpkgs as
# files.

stdenv.mkDerivation rec {
  pname = "patchelf";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/NixOS/${pname}/releases/download/${version}/${pname}-${version}.tar.bz2";
    sha256 = "sha256-9ANtPuTY4ijewb7/8PbkbYpA6eVw4AaOOdd+YuLIvcI=";
  };

  strictDeps = true;

  setupHook = [ ./setup-hook.sh ];

  enableParallelBuilding = true;

  # fails 8 out of 24 tests, problems when loading libc.so.6
  doCheck = stdenv.name == "stdenv-linux"
    # test scripts require unprefixed bintools binaries
    # https://github.com/NixOS/patchelf/issues/417
    && stdenv.cc.targetPrefix == "";

  meta = with lib; {
    homepage = "https://github.com/NixOS/patchelf";
    license = licenses.gpl3Plus;
    description = "A small utility to modify the dynamic linker and RPATH of ELF executables";
    mainProgram = "patchelf";
    maintainers = [ maintainers.eelco ];
    platforms = platforms.all;
  };
}
