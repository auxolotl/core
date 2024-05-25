let
  foundation = import ./detangled/1_foundation.nix;
  static     = import ./detangled/2_static.nix;
  # FIXME: this file is currently broken because it depends on the following:
  #  lib.pathIsGitRepo
  #  lib.commitIdFromGitRepo
  #  lib.fileContents
  #  lib.subtractLists
  #  lib.concatMapStrings
in
  let
    isFunction = foundation.isFunction;
    functionArgs = foundation.functionArgs;
  in {
    # Pull in some builtins for backwards compatibility (ideally would be deprecated and people would use lib.builtins.THING)
    pathExists     = builtins.pathExists;
    readFile       = builtins.readFile;
    isBool         = builtins.isBool;
    isInt          = builtins.isInt;
    isFloat        = builtins.isFloat;
    add            = builtins.add;
    sub            = builtins.sub;
    lessThan       = builtins.lessThan;
    seq            = builtins.seq;
    deepSeq        = builtins.deepSeq;
    genericClosure = builtins.genericClosure;
    bitAnd         = builtins.bitAnd;
    bitOr          = builtins.bitOr;
    bitXor         = builtins.bitXor;
    
    # static stuff
    release                = static.setup.release;
    codeName               = static.setup.codeName;
    versionSuffix          = static.setup.versionSuffix;
    oldestSupportedRelease = static.setup.oldestSupportedRelease;
    version                = static.setup.release + static.setup.versionSuffix;
    
    # helpers that are from foundation
    functionArgs    = foundation.functionArgs;
    isFunction      = foundation.isFunction;
    setFunctionArgs = foundation.setFunctionArgs;
    warn            = foundation.warn;
    throwIfNot      = foundation.throwIfNot;
    id              = foundation.id;
    const           = foundation.const;
    pipe            = foundation.pipe;
    concat          = foundation.concat;
    and             = foundation.and;
    xor             = foundation.xor;
    bitNot          = foundation.bitNot;
    boolToString    = foundation.boolToString;
    mergeAttrs      = foundation.mergeAttrs;
    flip            = foundation.flip;
    mapNullable     = foundation.mapNullable;
    or              = foundation.logicalOr; # different name mapping because of "or" being a keyword
  
    /**
      Whether a feature is supported in all supported releases (at the time of
      release branch-off, if applicable). See `oldestSupportedRelease`.
  
  
      # Inputs
  
      `release`
  
      : Release number of feature introduction as an integer, e.g. 2111 for 21.11.
      Set it to the upcoming release, matching the nixpkgs/.version file.
    */
    isInOldestRelease =
      release:
        release <= static.setup.oldestSupportedRelease;
  
  
    /**
      Attempts to return the the current revision of nixpkgs and
      returns the supplied default value otherwise.
  
  
      # Inputs
  
      `default`
  
      : Default value to return if revision can not be determined
  
      # Type
  
      ```
      revisionWithDefault :: string -> string
      ```
    */
    revisionWithDefault =
      default:
      let
        revisionFile = "${toString ./..}/.git-revision";
        gitRepo      = "${toString ./..}/.git";
      in if lib.pathIsGitRepo gitRepo
         then lib.commitIdFromGitRepo gitRepo
         else if builtins.pathExists revisionFile then lib.fileContents revisionFile
         else default;
  
    nixpkgsVersion = foundation.warn "lib.nixpkgsVersion is a deprecated alias of lib.version." (static.setup.release + static.setup.versionSuffix);
  
    /**
      Determine whether the function is being called from inside a Nix
      shell.
  
      # Type
  
      ```
      inNixShell :: bool
      ```
    */
    inNixShell = builtins.getEnv "IN_NIX_SHELL" != "";
  
    /**
      Determine whether the function is being called from inside pure-eval mode
      by seeing whether `builtins` contains `currentSystem`. If not, we must be in
      pure-eval mode.
  
      # Type
  
      ```
      inPureEvalMode :: bool
      ```
    */
    inPureEvalMode = ! builtins ? currentSystem;
  
    ## Integer operations
  
    /**
      Return minimum of two numbers.
  
  
      # Inputs
  
      `x`
  
      : 1\. Function argument
  
      `y`
  
      : 2\. Function argument
    */
    min = x: y: if x < y then x else y;
  
    /**
      Return maximum of two numbers.
  
  
      # Inputs
  
      `x`
  
      : 1\. Function argument
  
      `y`
  
      : 2\. Function argument
    */
    max = x: y: if x > y then x else y;
  
    /**
      Integer modulus
  
  
      # Inputs
  
      `base`
  
      : 1\. Function argument
  
      `int`
  
      : 2\. Function argument
  
  
      # Examples
      :::{.example}
      ## `lib.trivial.mod` usage example
  
      ```nix
      mod 11 10
      => 1
      mod 1 10
      => 1
      ```
  
      :::
    */
    mod = base: int: base - (int * (builtins.div base int));
  
  
    ## Comparisons
  
    /**
      C-style comparisons
  
      a < b,  compare a b => -1
      a == b, compare a b => 0
      a > b,  compare a b => 1
  
  
      # Inputs
  
      `a`
  
      : 1\. Function argument
  
      `b`
  
      : 2\. Function argument
    */
    compare = a: b:
      if a < b
      then -1
      else if a > b
           then 1
           else 0;
  
    /**
      Split type into two subtypes by predicate `p`, take all elements
      of the first subtype to be less than all the elements of the
      second subtype, compare elements of a single subtype with `yes`
      and `no` respectively.
  
  
      # Inputs
  
      `p`
  
      : Predicate
  
      `yes`
  
      : Comparison function if predicate holds for both values
  
      `no`
  
      : Comparison function if predicate holds for neither value
  
      `a`
  
      : First value to compare
  
      `b`
  
      : Second value to compare
  
      # Type
  
      ```
      (a -> bool) -> (a -> a -> int) -> (a -> a -> int) -> (a -> a -> int)
      ```
  
      # Examples
      :::{.example}
      ## `lib.trivial.splitByAndCompare` usage example
  
      ```nix
      let cmp = splitByAndCompare (hasPrefix "foo") compare compare; in
  
      cmp "a" "z" => -1
      cmp "fooa" "fooz" => -1
  
      cmp "f" "a" => 1
      cmp "fooa" "a" => -1
      # while
      compare "fooa" "a" => 1
      ```
  
      :::
    */
    splitByAndCompare =
      p: yes: no: a: b:
      if p a
      then if p b then yes a b else -1
      else if p b then 1 else no a b;
  
  
    /**
      Reads a JSON file.
  
  
      # Inputs
  
      `path`
  
      : 1\. Function argument
  
      # Type
  
      ```
      importJSON :: path -> any
      ```
    */
    importJSON = path:
      builtins.fromJSON (builtins.readFile path);
  
    /**
      Reads a TOML file.
  
  
      # Inputs
  
      `path`
  
      : 1\. Function argument
  
      # Type
  
      ```
      importTOML :: path -> any
      ```
    */
    importTOML = path:
      builtins.fromTOML (builtins.readFile path);
  
    ## Warnings
  
    /**
      Like warn, but only warn when the first argument is `true`.
  
  
      # Inputs
  
      `cond`
  
      : 1\. Function argument
  
      `msg`
  
      : 2\. Function argument
  
      `val`
  
      : Value to return as-is.
  
      # Type
  
      ```
      bool -> string -> a -> a
      ```
    */
    warnIf = cond: msg: if cond then warn msg else x: x;
  
    /**
      Like warnIf, but negated (warn if the first argument is `false`).
  
  
      # Inputs
  
      `cond`
  
      : 1\. Function argument
  
      `msg`
  
      : 2\. Function argument
  
      `val`
  
      : Value to return as-is.
  
      # Type
  
      ```
      bool -> string -> a -> a
      ```
    */
    warnIfNot = cond: msg: if cond then x: x else warn msg;
  
    /**
      Like throwIfNot, but negated (throw if the first argument is `true`).
  
  
      # Inputs
  
      `cond`
  
      : 1\. Function argument
  
      `msg`
  
      : 2\. Function argument
  
      # Type
  
      ```
      bool -> string -> a -> a
      ```
    */
    throwIf = cond: msg: if cond then throw msg else x: x;
  
    /**
      Check if the elements in a list are valid values from a enum, returning the identity function, or throwing an error message otherwise.
  
  
      # Inputs
  
      `msg`
  
      : 1\. Function argument
  
      `valid`
  
      : 2\. Function argument
  
      `given`
  
      : 3\. Function argument
  
      # Type
  
      ```
      String -> List ComparableVal -> List ComparableVal -> a -> a
      ```
  
      # Examples
      :::{.example}
      ## `lib.trivial.checkListOfEnum` usage example
  
      ```nix
      let colorVariants = ["bright" "dark" "black"]
      in checkListOfEnum "color variants" [ "standard" "light" "dark" ] colorVariants;
      =>
      error: color variants: bright, black unexpected; valid ones: standard, light, dark
      ```
  
      :::
    */
    checkListOfEnum = msg: valid: given:
      let
        unexpected = lib.subtractLists valid given;
      in
        foundation.throwIfNot (unexpected == [])
          "${msg}: ${builtins.concatStringsSep ", " (builtins.map builtins.toString unexpected)} unexpected; valid ones: ${builtins.concatStringsSep ", " (builtins.map builtins.toString valid)}";
  
    info = msg: builtins.trace "INFO: ${msg}";
  
    showWarnings = warnings: res: foundation.foldr (w: x: warn w x) res warnings;
  
    ## Function annotations
  
    /**
      `mirrorFunctionArgs f g` creates a new function `g'` with the same behavior as `g` (`g' x == g x`)
      but its function arguments mirroring `f` (`lib.functionArgs g' == lib.functionArgs f`).
  
  
      # Inputs
  
      `f`
  
      : Function to provide the argument metadata
  
      `g`
  
      : Function to set the argument metadata to
  
      # Type
  
      ```
      mirrorFunctionArgs :: (a -> b) -> (a -> c) -> (a -> c)
      ```
  
      # Examples
      :::{.example}
      ## `lib.trivial.mirrorFunctionArgs` usage example
  
      ```nix
      addab = {a, b}: a + b
      addab { a = 2; b = 4; }
      => 6
      lib.functionArgs addab
      => { a = false; b = false; }
      addab1 = attrs: addab attrs + 1
      addab1 { a = 2; b = 4; }
      => 7
      lib.functionArgs addab1
      => { }
      addab1' = lib.mirrorFunctionArgs addab addab1
      addab1' { a = 2; b = 4; }
      => 7
      lib.functionArgs addab1'
      => { a = false; b = false; }
      ```
  
      :::
    */
    mirrorFunctionArgs =
      f:
        let
          fArgs = foundation.functionArgs f;
        in
          g:
            foundation.setFunctionArgs g fArgs;
  
    /**
      Turns any non-callable values into constant functions.
      Returns callable values as is.
  
  
      # Inputs
  
      `v`
  
      : Any value
  
  
      # Examples
      :::{.example}
      ## `lib.trivial.toFunction` usage example
  
      ```nix
      nix-repl> lib.toFunction 1 2
      1
  
      nix-repl> lib.toFunction (x: x + 1) 2
      3
      ```
  
      :::
    */
    toFunction =
      v:
      if foundation.isFunction v
      then v
      else k: v;
  
    /**
      `toBaseDigits base i` converts the positive integer i to a list of its
      digits in the given base. For example:
  
      toBaseDigits 10 123 => [ 1 2 3 ]
  
      toBaseDigits 2 6 => [ 1 1 0 ]
  
      toBaseDigits 16 250 => [ 15 10 ]
  
  
      # Inputs
  
      `base`
  
      : 1\. Function argument
  
      `i`
  
      : 2\. Function argument
    */
    toBaseDigits = base: i:
      let
        go = i:
          if i < base
          then [i]
          else
            let
              r = i - ((i / base) * base);
              q = (i - r) / base;
            in
              [r] ++ go q;
      in
        assert (builtin.isInt base);
        assert (builtin.isInt i);
        assert (base >= 2);
        assert (i >= 0);
        foundation.reverseList (go i);
  
    /**
      Convert the given positive integer to a string of its hexadecimal
      representation. For example:
  
      toHexString 0 => "0"
  
      toHexString 16 => "10"
  
      toHexString 250 => "FA"
    */
    toHexString = let
      hexDigits = {
        "10" = "A";
        "11" = "B";
        "12" = "C";
        "13" = "D";
        "14" = "E";
        "15" = "F";
      };
      toHexDigit = d:
        if d < 10
        then toString d
        else hexDigits.${toString d};
    in i: lib.concatMapStrings toHexDigit (toBaseDigits 16 i);
  
  }
