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
      
  /**
    Like the `assert b; e` expression, but with a custom error message and
    without the semicolon.

    If true, return the identity function, `r: r`.

    If false, throw the error message.

    Calls can be juxtaposed using function application, as `(r: r) a = a`, so
    `(r: r) (r: r) a = a`, and so forth.


    # Inputs

    `cond`

    : 1\. Function argument

    `msg`

    : 2\. Function argument

    # Type

    ```
    bool -> string -> a -> a
    ```

    # Examples
    :::{.example}
    ## `lib.trivial.throwIfNot` usage example

    ```nix
    throwIfNot (lib.isList overlays) "The overlays argument to nixpkgs must be a list."
    lib.foldr (x: throwIfNot (lib.isFunction x) "All overlays passed to nixpkgs must be functions.") (r: r) overlays
    pkgs
    ```

    :::
  */
  throwIfNot = cond: msg: if cond then x: x else builtins.throw msg;

  /**
    The identity function
    For when you need a function that does “nothing”.


    # Inputs

    `x`

    : The value to return

    # Type

    ```
    id :: a -> a
    ```
  */
  id = x: x;

  /**
    The constant function

    Ignores the second argument. If called with only one argument,
    constructs a function that always returns a static value.


    # Inputs

    `x`

    : Value to return

    `y`

    : Value to ignore

    # Type

    ```
    const :: a -> b -> a
    ```

    # Examples
    :::{.example}
    ## `lib.trivial.const` usage example

    ```nix
    let f = const 5; in f 10
    => 5
    ```

    :::
  */
  const =
    x:
    y: x;

  /**
    Pipes a value through a list of functions, left to right.

    # Inputs

    `value`

    : Value to start piping.

    `fns`

    : List of functions to apply sequentially.

    # Type

    ```
    pipe :: a -> [<functions>] -> <return type of last function>
    ```

    # Examples
    :::{.example}
    ## `lib.trivial.pipe` usage example

    ```nix
    pipe 2 [
        (x: x + 2)  # 2 + 2 = 4
        (x: x * 2)  # 4 * 2 = 8
      ]
    => 8

    # ideal to do text transformations
    pipe [ "a/b" "a/c" ] [

      # create the cp command
      (map (file: ''cp "${src}/${file}" $out\n''))

      # concatenate all commands into one string
      lib.concatStrings

      # make that string into a nix derivation
      (pkgs.runCommand "copy-to-out" {})

    ]
    => <drv which copies all files to $out>

    The output type of each function has to be the input type
    of the next function, and the last function returns the
    final value.
    ```

    :::
  */
  pipe = builtins.foldl' (x: f: f x);

  # note please don’t add a function like `compose = flip pipe`.
  # This would confuse users, because the order of the functions
  # in the list is not clear. With pipe, it’s obvious that it
  # goes first-to-last. With `compose`, not so much.

  ## Named versions corresponding to some builtin operators.

  /**
    Concatenate two lists


    # Inputs

    `x`

    : 1\. Function argument

    `y`

    : 2\. Function argument

    # Type

    ```
    concat :: [a] -> [a] -> [a]
    ```

    # Examples
    :::{.example}
    ## `lib.trivial.concat` usage example

    ```nix
    concat [ 1 2 ] [ 3 4 ]
    => [ 1 2 3 4 ]
    ```

    :::
  */
  concat = x: y: x ++ y;

  /**
    boolean “or”


    # Inputs

    `x`

    : 1\. Function argument

    `y`

    : 2\. Function argument
  */
  or = x: y: x || y;

  /**
    boolean “and”


    # Inputs

    `x`

    : 1\. Function argument

    `y`

    : 2\. Function argument
  */
  and = x: y: x && y;

  /**
    boolean “exclusive or”


    # Inputs

    `x`

    : 1\. Function argument

    `y`

    : 2\. Function argument
  */
  # We explicitly invert the arguments purely as a type assertion.
  # This is invariant under XOR, so it does not affect the result.
  xor = x: y: (!x) != (!y);

  /**
    bitwise “not”
  */
  bitNot = builtins.sub (-1);

  /**
    Convert a boolean to a string.

    This function uses the strings "true" and "false" to represent
    boolean values. Calling `toString` on a bool instead returns "1"
    and "" (sic!).


    # Inputs

    `b`

    : 1\. Function argument

    # Type

    ```
    boolToString :: bool -> string
    ```
  */
  boolToString = b: if b then "true" else "false";

  /**
    Merge two attribute sets shallowly, right side trumps left

    mergeAttrs :: attrs -> attrs -> attrs


    # Inputs

    `x`

    : Left attribute set

    `y`

    : Right attribute set (higher precedence for equal keys)


    # Examples
    :::{.example}
    ## `lib.trivial.mergeAttrs` usage example

    ```nix
    mergeAttrs { a = 1; b = 2; } { b = 3; c = 4; }
    => { a = 1; b = 3; c = 4; }
    ```

    :::
  */
  mergeAttrs =
    x:
    y: x // y;

  /**
    Flip the order of the arguments of a binary function.


    # Inputs

    `f`

    : 1\. Function argument

    `a`

    : 2\. Function argument

    `b`

    : 3\. Function argument

    # Type

    ```
    flip :: (a -> b -> c) -> (b -> a -> c)
    ```

    # Examples
    :::{.example}
    ## `lib.trivial.flip` usage example

    ```nix
    flip concat [1] [2]
    => [ 2 1 ]
    ```

    :::
  */
  flip = f: a: b: f b a;

  /**
    Apply function if the supplied argument is non-null.


    # Inputs

    `f`

    : Function to call

    `a`

    : Argument to check for null before passing it to `f`


    # Examples
    :::{.example}
    ## `lib.trivial.mapNullable` usage example

    ```nix
    mapNullable (x: x+1) null
    => null
    mapNullable (x: x+1) 22
    => 23
    ```

    :::
  */
  mapNullable =
    f:
    a: if a == null then a else f a;

in
  {
    loadStatic      = loadStatic;
    foldr           = foldr;
    reverseList     = reverseList;
    isFunction      = isFunction;
    functionArgs    = functionArgs;
    setFunctionArgs = setFunctionArgs;
    warn            = warn;
    throwIfNot      = throwIfNot;
    id              = id;
    const           = const;
    pipe            = pipe;
    concat          = concat;
    or              = or;
    and             = and;
    xor             = xor;
    bitNot          = bitNot;
    boolToString    = boolToString;
    mergeAttrs      = mergeAttrs;
    flip            = flip;
    mapNullable     = mapNullable;
  }