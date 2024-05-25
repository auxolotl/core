# 
# foundation contains functions that only depend on builtins
# 
{
    loadStatic = (folder:
        {
        setup        = builtins.fromTOML ( builtins.readFile  "${folder}/static/setup.toml"         );
        meta         = builtins.fromTOML ( builtins.readFile  "${folder}/static/meta.toml"          );
        }
    );
    foldr = (
        op: nul: list:
          let
            len = builtins.length list;
            fold' = n:
              if n == len
              then nul
              else op (builtins.elemAt list n) (fold' (n + 1));
          in
            fold' 0
    );
}