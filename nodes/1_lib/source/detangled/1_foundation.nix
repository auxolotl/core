# 
# foundation contains functions that only depend on builtins or themself
# 
let
  loadStatic = (folder:
      {
      setup        = builtins.fromTOML ( builtins.readFile  "${folder}/static/setup.toml"         );
      meta         = builtins.fromTOML ( builtins.readFile  "${folder}/static/meta.toml"          );
      }
  );
  
  /**
    “right fold” a binary function `op` between successive elements of
    `list` with `nul` as the starting value, i.e.,
    `foldr op nul [x_1 x_2 ... x_n] == op x_1 (op x_2 ... (op x_n nul))`.


    # Inputs

    `op`

    : 1\. Function argument

    `nul`

    : 2\. Function argument

    `list`

    : 3\. Function argument

    # Type

    ```
    foldr :: (a -> b -> b) -> b -> [a] -> b
    ```

    # Examples
    :::{.example}
    ## `lib.lists.foldr` usage example

    ```nix
    concat = foldr (a: b: a + b) "z"
    concat [ "a" "b" "c" ]
    => "abcz"
    # different types
    strange = foldr (int: str: toString (int + 1) + str) "a"
    strange [ 1 2 3 4 ]
    => "2345a"
    ```

    :::
  */
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
  
  /**
    Check whether something is a function or something
    annotated with function args.


    # Inputs

    `f`

    : 1\. Function argument
  */
  isFunction = f: builtins.isFunction f ||
    (f ? __functor && isFunction (f.__functor f));
    
  /**
    Print a warning before returning the second argument. This function behaves
    like `builtins.trace`, but requires a string message and formats it as a
    warning, including the `warning: ` prefix.

    To get a call stack trace and abort evaluation, set the environment variable
    `NIX_ABORT_ON_WARN=true` and set the Nix options `--option pure-eval false --show-trace`

    # Inputs

    `msg`

    : Warning message to print.

    `val`

    : Value to return as-is.

    # Type

    ```
    string -> a -> a
    ```
  */
  warn =
      if builtins.elem (builtins.getEnv "NIX_ABORT_ON_WARN") ["1" "true" "yes"]
      then msg: builtins.trace "[1;31mwarning: ${msg}[0m" (builtins.abort "NIX_ABORT_ON_WARN=true; warnings are treated as unrecoverable errors.")
      else msg: builtins.trace "[1;31mwarning: ${msg}[0m";
in
  {
    loadStatic = loadStatic;
    foldr      = foldr;
    isFunction = isFunction;
    warn       = warn;
  }