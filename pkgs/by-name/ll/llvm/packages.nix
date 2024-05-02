{ ... }:
res: pkgs: super:

with pkgs;
{

  lld = llvmPackages.lld;
  lld_12 = llvmPackages_12.lld;
  lld_13 = llvmPackages_13.lld;
  lld_14 = llvmPackages_14.lld;
  lld_15 = llvmPackages_15.lld;
  lld_16 = llvmPackages_16.lld;
  lld_17 = llvmPackages_17.lld;

  lldb = llvmPackages.lldb;
  lldb_12 = llvmPackages_12.lldb;
  lldb_13 = llvmPackages_13.lldb;
  lldb_14 = llvmPackages_14.lldb;
  lldb_15 = llvmPackages_15.lldb;
  lldb_16 = llvmPackages_16.lldb;
  lldb_17 = llvmPackages_17.lldb;

  llvm = llvmPackages.llvm;
  llvm_12 = llvmPackages_12.llvm;
  llvm_13 = llvmPackages_13.llvm;
  llvm_14 = llvmPackages_14.llvm;
  llvm_15 = llvmPackages_15.llvm;
  llvm_16 = llvmPackages_16.llvm;
  llvm_17 = llvmPackages_17.llvm;

  mlir_16 = llvmPackages_16.mlir;
  mlir_17 = llvmPackages_17.mlir;

  libllvm = llvmPackages.libllvm;
  llvm-manpages = llvmPackages.llvm-manpages;

  llvmPackages =
    let
      # This returns the minimum supported version for the platform. The
      # assumption is that or any later version is good.
      choose = platform:
        /**/
        if platform.isDarwin then 16
        else if platform.isFreeBSD then 12
        else if platform.isAndroid then 12
        else if platform.isLinux then 17
        else if platform.isWasm then 16
        # For unknown systems, assume the latest version is required.
        else 17;
      # We take the "max of the mins". Why? Since those are lower bounds of the
      # supported version set, this is like intersecting those sets and then
      # taking the min bound of that.
      minSupported = toString (lib.trivial.max (choose stdenv.hostPlatform) (choose
        stdenv.targetPlatform));
    in
    pkgs.${"llvmPackages_${minSupported}"};

  llvmPackages_12 = recurseIntoAttrs (callPackage ./12 ({
    inherit (stdenvAdapters) overrideCC;
    buildLlvmTools = buildPackages.llvmPackages_12.tools;
    targetLlvmLibraries = targetPackages.llvmPackages_12.libraries or llvmPackages_12.libraries;
    targetLlvm = targetPackages.llvmPackages_12.llvm or llvmPackages_12.llvm;
  }));

  llvmPackages_13 = recurseIntoAttrs (callPackage ./13 ({
    inherit (stdenvAdapters) overrideCC;
    buildLlvmTools = buildPackages.llvmPackages_13.tools;
    targetLlvmLibraries = targetPackages.llvmPackages_13.libraries or llvmPackages_13.libraries;
    targetLlvm = targetPackages.llvmPackages_13.llvm or llvmPackages_13.llvm;
    stdenv = if stdenv.cc.cc.isGNU or false then gcc12Stdenv else stdenv; # does not build with gcc13
  }));

  llvmPackages_14 = recurseIntoAttrs (callPackage ./14 ({
    inherit (stdenvAdapters) overrideCC;
    buildLlvmTools = buildPackages.llvmPackages_14.tools;
    targetLlvmLibraries = targetPackages.llvmPackages_14.libraries or llvmPackages_14.libraries;
    targetLlvm = targetPackages.llvmPackages_14.llvm or llvmPackages_14.llvm;
  }));

  llvmPackages_15 = recurseIntoAttrs (callPackage ./15 ({
    inherit (stdenvAdapters) overrideCC;
    buildLlvmTools = buildPackages.llvmPackages_15.tools;
    targetLlvmLibraries = targetPackages.llvmPackages_15.libraries or llvmPackages_15.libraries;
    targetLlvm = targetPackages.llvmPackages_15.llvm or llvmPackages_15.llvm;
  }));

  llvmPackages_16 = recurseIntoAttrs (callPackage ./16 ({
    inherit (stdenvAdapters) overrideCC;
    buildLlvmTools = buildPackages.llvmPackages_16.tools;
    targetLlvmLibraries = targetPackages.llvmPackages_16.libraries or llvmPackages_16.libraries;
    targetLlvm = targetPackages.llvmPackages_16.llvm or llvmPackages_16.llvm;
  }));

  llvmPackages_17 = recurseIntoAttrs (callPackage ./17 ({
    inherit (stdenvAdapters) overrideCC;
    buildLlvmTools = buildPackages.llvmPackages_17.tools;
    targetLlvmLibraries = targetPackages.llvmPackages_17.libraries or llvmPackages_17.libraries;
    targetLlvm = targetPackages.llvmPackages_17.llvm or llvmPackages_17.llvm;
  }));

  inherit
    (rec {
      llvmPackages_18 = recurseIntoAttrs (callPackage ./18 ({
        inherit (stdenvAdapters) overrideCC;
        buildLlvmTools = buildPackages.llvmPackages_18.tools;
        targetLlvmLibraries = targetPackages.llvmPackages_18.libraries or llvmPackages_18.libraries;
        targetLlvm = targetPackages.llvmPackages_18.llvm or llvmPackages_18.llvm;
      }));

      clang_18 = llvmPackages_18.clang;
      lld_18 = llvmPackages_18.lld;
      lldb_18 = llvmPackages_18.lldb;
      llvm_18 = llvmPackages_18.llvm;

      # TODO: Fix clang-tools override
      # clang-tools_18 = callPackage ../development/tools/clang-tools {
      #   llvmPackages = llvmPackages_18;
      # };
    })
    llvmPackages_18
    clang_18
    lld_18
    lldb_18
    llvm_18
    clang-tools_18;

  wrapClangMulti = clang:
    if stdenv.targetPlatform.system == "x86_64-linux" then
      callPackage ./multi.nix
        {
          inherit clang;
          gcc32 = pkgsi686Linux.gcc;
          gcc64 = pkgs.gcc;
        }
    else throw "Multilib ${clang.cc.name} not supported for '${stdenv.targetPlatform.system}'";
  clang_multi = wrapClangMulti clang;

  clangMultiStdenv = overrideCC stdenv buildPackages.clang_multi;
  libclang = llvmPackages.libclang;
  clang-manpages = llvmPackages.clang-manpages;

  clang-sierraHack = clang.override {
    name = "clang-wrapper-with-reexport-hack";
    bintools = darwin.binutils.override {
      useMacosReexportHack = true;
    };
  };

  clang = llvmPackages.clang;
  clang_12 = llvmPackages_12.clang;
  clang_13 = llvmPackages_13.clang;
  clang_14 = llvmPackages_14.clang;
  clang_15 = llvmPackages_15.clang;
  clang_16 = llvmPackages_16.clang;
  clang_17 = llvmPackages_17.clang;

  #Use this instead of stdenv to build with clang
  clangStdenv = if stdenv.cc.isClang then stdenv else lowPrio llvmPackages.stdenv;
  clang-sierraHack-stdenv = overrideCC stdenv buildPackages.clang-sierraHack;
  libcxxStdenv = if stdenv.isDarwin then stdenv else lowPrio llvmPackages.libcxxStdenv;

}
