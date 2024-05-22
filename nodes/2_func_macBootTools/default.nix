let # imports
    lib = import ../1_lib;
in
    let # package info
        builtins = lib.builtins;
        static   = lib.loadStatic ./.;
    in
        (system:
            let
                thisSetup = static.setup.osSpecific.${system};
                bootstrapFiles = {
                    bootstrapTools = builtins.fetchurl { url = thisSetup.stdFetchurls.bootstrapTools.url; };
                    unpack         = builtins.fetchurl { url = thisSetup.stdFetchurls.unpack.url; };
                };
                pathValue = lib.makeBinPath [
                    "/nix/store${(builtins.placeholder "out")}"
                    bootstrapFiles.unpack
                ];
            in
                builtins.derivation {
                    system = system;
                    name = static.packageInfo.name;
                    builder = "${bootstrapFiles.unpack}/bin/bash";

                    args = [
                        "${bootstrapFiles.unpack}/bootstrap-tools-unpack.sh"
                        bootstrapFiles.bootstrapTools
                    ];

                    PATH = pathValue;

                    __impureHostDeps = [
                        "/bin/sh"
                        "/usr/lib/libSystem.B.dylib"
                        "/usr/lib/system/libunc.dylib" # This dependency is "hidden", so our scanning code doesn't pick it up
                    ];
                    # TODO: test if these work
                    # __contentAddressed = true;
                    # outputHashAlgo = "sha256";
                    # outputHashMode = "recursive";
                }
        )