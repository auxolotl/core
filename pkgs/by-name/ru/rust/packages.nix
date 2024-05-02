{ ... }:
res: pkgs: super:

with pkgs;
{
  rust_1_77 = callPackage ./1_77.nix {
    inherit (darwin.apple_sdk.frameworks) CoreFoundation Security SystemConfiguration;
    llvm_17 = llvmPackages_17.libllvm;
  };
  rust = rust_1_77;

  rustPackages_1_77 = rust_1_77.packages.stable;
  rustPackages = rustPackages_1_77;

  inherit (rustPackages) cargo cargo-auditable cargo-auditable-cargo-wrapper clippy rustc rustPlatform;

  makeRustPlatform = callPackage ./make-rust-platform.nix { };
}
