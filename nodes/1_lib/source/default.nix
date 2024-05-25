/* Library of low-level helper functions for nix expressions.
 *
 * Please implement (mostly) exhaustive unit tests
 * for new functions in `./tests.nix`.
 */
let
  loadStatic = (folder:
    {
      setup        = builtins.fromTOML ( builtins.readFile  "${folder}/static/setup.toml"         );
      meta         = builtins.fromTOML ( builtins.readFile  "${folder}/static/meta.toml"          );
    }
  );
  static = loadStatic ../.;
  inherit (import ./fixed-points.nix { inherit lib; }) makeExtensible;

  lib = makeExtensible (self: let
    callLibs = file: import file { lib = self; };
  in {
    builtins = builtins;
    
    # often used, or depending on very little
    trivial = callLibs ./trivial.nix;
    fixedPoints = callLibs ./fixed-points.nix;

    # datatypes
    attrsets = callLibs ./attrsets.nix;
    lists = callLibs ./lists.nix;
    strings = callLibs ./strings.nix;
    stringsWithDeps = callLibs ./strings-with-deps.nix;

    # packaging
    customisation = callLibs ./customisation.nix;
    derivations = callLibs ./derivations.nix;
    maintainers = static.setup.maintainers;
    teams = callLibs ../maintainers/team-list.nix;
    meta = callLibs ./meta.nix;
    versions = callLibs ./versions.nix;

    # module system
    modules = callLibs ./modules.nix;
    options = callLibs ./options.nix;
    types = callLibs ./types.nix;

    # constants
    licenses = static.setup.licenses;
    sourceTypes = static.setup.sourceTypes;
    systems = callLibs ./systems;

    # serialization
    cli = callLibs ./cli.nix;
    gvariant = callLibs ./gvariant.nix;
    generators = callLibs ./generators.nix;

    # misc
    asserts = callLibs ./asserts.nix;
    debug = callLibs ./debug.nix;

    # domain-specific
    fetchers = callLibs ./fetchers.nix;

    # Eval-time filesystem handling
    path = callLibs ./path;
    filesystem = callLibs ./filesystem.nix;
    fileset = callLibs ./fileset;
    sources = callLibs ./sources.nix;

    # TODO: these are not the same as system.platform, we should probably try and unify them
    # back-compat aliases
    platforms = self.systems.doubles;

    # linux kernel configuration
    kernel = callLibs ./kernel.nix;

    inherit (builtins) add addErrorContext attrNames concatLists
      deepSeq elem elemAt filter genericClosure genList getAttr
      hasAttr head isAttrs isBool isInt isList isPath isString length
      lessThan listToAttrs pathExists readFile replaceStrings seq
      stringLength sub substring tail trace;
    inherit (self.trivial) id const pipe concat or and xor bitAnd bitOr bitXor
      bitNot boolToString mergeAttrs flip mapNullable inNixShell isFloat min max
      importJSON importTOML warn warnIf warnIfNot throwIf throwIfNot checkListOfEnum
      info showWarnings nixpkgsVersion version isInOldestRelease
      mod compare splitByAndCompare
      functionArgs setFunctionArgs isFunction toFunction mirrorFunctionArgs
      toHexString toBaseDigits inPureEvalMode;
    inherit (self.fixedPoints) fix fix' converge extends composeExtensions
      composeManyExtensions makeExtensible makeExtensibleWithCustomName;
    inherit (self.attrsets) attrByPath hasAttrByPath setAttrByPath
      getAttrFromPath attrVals attrValues getAttrs catAttrs filterAttrs
      filterAttrsRecursive foldlAttrs foldAttrs collect nameValuePair mapAttrs
      mapAttrs' mapAttrsToList attrsToList concatMapAttrs mapAttrsRecursive
      mapAttrsRecursiveCond genAttrs isDerivation toDerivation optionalAttrs
      zipAttrsWithNames zipAttrsWith zipAttrs recursiveUpdateUntil
      recursiveUpdate matchAttrs mergeAttrsList overrideExisting showAttrPath getOutput
      getBin getLib getDev getMan chooseDevOutputs zipWithNames zip
      recurseIntoAttrs dontRecurseIntoAttrs cartesianProduct cartesianProductOfSets
      mapCartesianProduct updateManyAttrsByPath;
    inherit (self.lists) singleton forEach foldr fold foldl foldl' imap0 imap1
      ifilter0 concatMap flatten remove findSingle findFirst any all count
      optional optionals toList range replicate partition zipListsWith zipLists
      reverseList listDfs toposort sort sortOn naturalSort compareLists take
      drop sublist last init crossLists unique allUnique intersectLists
      subtractLists mutuallyExclusive groupBy groupBy';
    inherit (self.strings) concatStrings concatMapStrings concatImapStrings
      intersperse concatStringsSep concatMapStringsSep
      concatImapStringsSep concatLines makeSearchPath makeSearchPathOutput
      makeLibraryPath makeIncludePath makeBinPath optionalString
      hasInfix hasPrefix hasSuffix stringToCharacters stringAsChars escape
      escapeShellArg escapeShellArgs
      isStorePath isStringLike
      isValidPosixName toShellVar toShellVars
      escapeRegex escapeURL escapeXML replaceChars lowerChars
      upperChars toLower toUpper addContextFrom splitString
      removePrefix removeSuffix versionOlder versionAtLeast
      getName getVersion
      cmakeOptionType cmakeBool cmakeFeature
      mesonOption mesonBool mesonEnable
      nameFromURL enableFeature enableFeatureAs withFeature
      withFeatureAs fixedWidthString fixedWidthNumber
      toInt toIntBase10 readPathsFromFile fileContents;
    inherit (self.stringsWithDeps) textClosureList textClosureMap
      noDepEntry fullDepEntry packEntry stringAfter;
    inherit (self.customisation) overrideDerivation makeOverridable
      callPackageWith callPackagesWith extendDerivation hydraJob
      makeScope makeScopeWithSplicing makeScopeWithSplicing';
    inherit (self.derivations) lazyDerivation optionalDrvAttr;
    inherit (self.meta) addMetaAttrs dontDistribute setName updateName
      appendToName mapDerivationAttrset setPrio lowPrio lowPrioSet hiPrio
      hiPrioSet getLicenseFromSpdxId getExe getExe';
    inherit (self.filesystem) pathType pathIsDirectory pathIsRegularFile
      packagesFromDirectoryRecursive;
    inherit (self.sources) cleanSourceFilter
      cleanSource sourceByRegex sourceFilesBySuffices
      commitIdFromGitRepo cleanSourceWith pathHasContext
      canCleanSource pathIsGitRepo;
    inherit (self.modules) evalModules setDefaultModuleLocation
      unifyModuleSyntax applyModuleArgsIfFunction mergeModules
      mergeModules' mergeOptionDecls mergeDefinitions
      pushDownProperties dischargeProperties filterOverrides
      sortProperties fixupOptionType mkIf mkAssert mkMerge mkOverride
      mkOptionDefault mkDefault mkImageMediaOverride mkForce mkVMOverride
      mkFixStrictness mkOrder mkBefore mkAfter mkAliasDefinitions
      mkAliasAndWrapDefinitions fixMergeModules mkRemovedOptionModule
      mkRenamedOptionModule mkRenamedOptionModuleWith
      mkMergedOptionModule mkChangedOptionModule
      mkAliasOptionModule mkDerivedConfig doRename
      mkAliasOptionModuleMD;
    inherit (self.options) isOption mkEnableOption mkSinkUndeclaredOptions
      mergeDefaultOption mergeOneOption mergeEqualOption mergeUniqueOption
      getValues getFiles
      optionAttrSetToDocList optionAttrSetToDocList'
      scrubOptionValue literalExpression literalExample
      showOption showOptionWithDefLocs showFiles
      unknownModule mkOption mkPackageOption mkPackageOptionMD
      mdDoc literalMD;
    inherit (self.types) isType setType defaultTypeMerge defaultFunctor
      isOptionType mkOptionType;
    inherit (self.asserts)
      assertMsg assertOneOf;
    inherit (self.debug) traceIf traceVal traceValFn
      traceSeq traceSeqN traceValSeq
      traceValSeqFn traceValSeqN traceValSeqNFn traceFnSeqN
      runTests testAllTrue;
    inherit (self.versions)
      splitVersion;
    
    loadStatic = loadStatic;
  });
in lib
