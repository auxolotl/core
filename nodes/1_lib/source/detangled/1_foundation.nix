# 
# foundation contains functions that only depend on builtins or themself
# 
let
  loadStatic = (folder:
    {
      setup        = builtins.fromTOML ( builtins.readFile  "${folder}/static/setup.toml" );
      meta         = builtins.fromTOML ( builtins.readFile  "${folder}/static/meta.toml"  );
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
    Reverse the order of the elements of a list.

    # Inputs

    `xs`

    : 1\. Function argument

    # Type

    ```
    reverseList :: [a] -> [a]
    ```

    # Examples
    :::{.example}
    ## `lib.lists.reverseList` usage example

    ```nix
    reverseList [ "b" "o" "j" ]
    => [ "j" "o" "b" ]
    ```

    :::
  */
  reverseList = xs:
    let l = builtins.length xs; in builtins.genList (n: builtins.elemAt xs (l - n - 1)) l;
  
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
    Extract the expected function arguments from a function.
    This works both with nix-native { a, b ? foo, ... }: style
    functions and functions with args set with 'setFunctionArgs'. It
    has the same return type and semantics as builtins.functionArgs.
    setFunctionArgs : (a → b) → Map String Bool.


    # Inputs

    `f`

    : 1\. Function argument
  */
  functionArgs = f:
    if f ? __functor
    then f.__functionArgs or (functionArgs (f.__functor f))
    else builtins.functionArgs f;
    
  /**
    Add metadata about expected function arguments to a function.
    The metadata should match the format given by
    builtins.functionArgs, i.e. a set from expected argument to a bool
    representing whether that argument has a default or not.
    setFunctionArgs : (a → b) → Map String Bool → (a → b)

    This function is necessary because you can't dynamically create a
    function of the { a, b ? foo, ... }: format, but some facilities
    like callPackage expect to be able to query expected arguments.


    # Inputs

    `f`

    : 1\. Function argument

    `args`

    : 2\. Function argument
  */
  setFunctionArgs = f: args:
    {
      __functor = self: f;
      __functionArgs = args;
    };
  
  # See https://github.com/NixOS/nix/issues/749. Eventually we'd like these
  # to expand to Nix builtins that carry metadata so that Nix can filter out
  # the INFO messages without parsing the message string.
  #
  # Usage:
  # {
  #   foo = lib.warn "foo is deprecated" oldFoo;
  #   bar = lib.warnIf (bar == "") "Empty bar is deprecated" bar;
  # }
  #
  # TODO: figure out a clever way to integrate location information from
  # something like __unsafeGetAttrPos.
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
    loadStatic      = loadStatic;
    foldr           = foldr;
    reverseList     = reverseList;
    isFunction      = isFunction;
    functionArgs    = functionArgs;
    setFunctionArgs = setFunctionArgs;
    warn            = warn;
  }