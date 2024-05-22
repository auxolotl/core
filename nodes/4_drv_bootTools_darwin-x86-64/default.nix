let # imports
    lib               = import ../1_lib;
    macBootTools      = import ../2_func_macBootTools;
in
    let # package info
        builtins = lib.builtins;
        static   = lib.loadStatic ./.;
    in
        macBootTools "darwin-aarch-64"