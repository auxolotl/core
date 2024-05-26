let
    # no "external"dependencies
in
  let # internal dependencies
    foundation  = import ./source/detangled/1_foundation.nix;
    static      = import ./source/detangled/2_static.nix;
    fixedPoints = import ./source/detangled/3_fixed-points.nix;
  in
    let
      untangledBase = {
        # constants
        sourceTypes  = static.setup.sourceTypes;
        licenses     = static.setup.licenses;
        maintainers  = static.setup.maintainers;
        teams        = static.setup.teams;
        
        # just to be overridable
        builtins = builtins;
        
        # top level helpers
        loadStatic = foundation.loadStatic;
        foldr      = foundation.foldr;
        
        # namespaces
        fixedPoints = fixedPoints;
      };
      
      #   
      # legacy lib
      #   
      lib = fixedPoints.makeExtensible (
        self:
          untangledBase // {
            trivial         = import ./source/trivial.nix           { lib = self; };
            attrsets        = import ./source/attrsets.nix          { lib = self; };
            lists           = import ./source/lists.nix             { lib = self; };
            strings         = import ./source/strings.nix           { lib = self; };
            stringsWithDeps = import ./source/strings-with-deps.nix { lib = self; };
            customisation   = import ./source/customisation.nix     { lib = self; };
            derivations     = import ./source/derivations.nix       { lib = self; };
            meta            = import ./source/meta.nix              { lib = self; };
            versions        = import ./source/versions.nix          { lib = self; };
            modules         = import ./source/modules.nix           { lib = self; };
            options         = import ./source/options.nix           { lib = self; };
            types           = import ./source/types.nix             { lib = self; };
            systems         = import ./source/systems               { lib = self; };
            cli             = import ./source/cli.nix               { lib = self; };
            gvariant        = import ./source/gvariant.nix          { lib = self; };
            generators      = import ./source/generators.nix        { lib = self; };
            asserts         = import ./source/asserts.nix           { lib = self; };
            debug           = import ./source/debug.nix             { lib = self; };
            fetchers        = import ./source/fetchers.nix          { lib = self; };
            path            = import ./source/path                  { lib = self; };
            filesystem      = import ./source/filesystem.nix        { lib = self; };
            fileset         = import ./source/fileset               { lib = self; };
            sources         = import ./source/sources.nix           { lib = self; };
            kernel          = import ./source/kernel.nix            { lib = self; };
        
            platforms = self.systems.doubles; # back-compat aliases # TODO: these are not the same as system.platform, we should probably try and unify them
        
            # builtin aliases
            add              = builtins.add;
            addErrorContext  = builtins.addErrorContext;
            attrNames        = builtins.attrNames;
            concatLists      = builtins.concatLists;
            deepSeq          = builtins.deepSeq;
            elem             = builtins.elem;
            elemAt           = builtins.elemAt;
            filter           = builtins.filter;
            genericClosure   = builtins.genericClosure;
            genList          = builtins.genList;
            getAttr          = builtins.getAttr;
            hasAttr          = builtins.hasAttr;
            head             = builtins.head;
            isAttrs          = builtins.isAttrs;
            isBool           = builtins.isBool;
            isInt            = builtins.isInt;
            isList           = builtins.isList;
            isPath           = builtins.isPath;
            isString         = builtins.isString;
            length           = builtins.length;
            lessThan         = builtins.lessThan;
            listToAttrs      = builtins.listToAttrs;
            pathExists       = builtins.pathExists;
            readFile         = builtins.readFile;
            replaceStrings   = builtins.replaceStrings;
            seq              = builtins.seq;
            stringLength     = builtins.stringLength;
            sub              = builtins.sub;
            substring        = builtins.substring;
            tail             = builtins.tail;
            trace            = builtins.trace;
            
            # trivial to top level
            id                  = self.trivial.id;
            const               = self.trivial.const;
            pipe                = self.trivial.pipe;
            concat              = self.trivial.concat;
            or                  = self.trivial.or;
            and                 = self.trivial.and;
            xor                 = self.trivial.xor;
            bitAnd              = self.trivial.bitAnd;
            bitOr               = self.trivial.bitOr;
            bitXor              = self.trivial.bitXor;
            bitNot              = self.trivial.bitNot;
            boolToString        = self.trivial.boolToString;
            mergeAttrs          = self.trivial.mergeAttrs;
            flip                = self.trivial.flip;
            mapNullable         = self.trivial.mapNullable;
            inNixShell          = self.trivial.inNixShell;
            isFloat             = self.trivial.isFloat;
            min                 = self.trivial.min;
            max                 = self.trivial.max;
            importJSON          = self.trivial.importJSON;
            importTOML          = self.trivial.importTOML;
            warn                = self.trivial.warn;
            warnIf              = self.trivial.warnIf;
            warnIfNot           = self.trivial.warnIfNot;
            throwIf             = self.trivial.throwIf;
            throwIfNot          = self.trivial.throwIfNot;
            checkListOfEnum     = self.trivial.checkListOfEnum;
            info                = self.trivial.info;
            showWarnings        = self.trivial.showWarnings;
            nixpkgsVersion      = self.trivial.nixpkgsVersion;
            version             = self.trivial.version;
            isInOldestRelease   = self.trivial.isInOldestRelease;
            mod                 = self.trivial.mod;
            compare             = self.trivial.compare;
            splitByAndCompare   = self.trivial.splitByAndCompare;
            functionArgs        = self.trivial.functionArgs;
            setFunctionArgs     = self.trivial.setFunctionArgs;
            isFunction          = self.trivial.isFunction;
            toFunction          = self.trivial.toFunction;
            mirrorFunctionArgs  = self.trivial.mirrorFunctionArgs;
            toHexString         = self.trivial.toHexString;
            toBaseDigits        = self.trivial.toBaseDigits;
            inPureEvalMode      = self.trivial.inPureEvalMode;
            
            # fixed points to top level
            fix                           = self.fixedPoints.fix;
            fix'                          = self.fixedPoints.fix';
            converge                      = self.fixedPoints.converge;
            extends                       = self.fixedPoints.extends;
            composeExtensions             = self.fixedPoints.composeExtensions;
            composeManyExtensions         = self.fixedPoints.composeManyExtensions;
            makeExtensible                = self.fixedPoints.makeExtensible;
            makeExtensibleWithCustomName  = self.fixedPoints.makeExtensibleWithCustomName;
            
            # attrsets to top level
            attrByPath              = self.attrsets.attrByPath;
            hasAttrByPath           = self.attrsets.hasAttrByPath;
            setAttrByPath           = self.attrsets.setAttrByPath;
            getAttrFromPath         = self.attrsets.getAttrFromPath;
            attrVals                = self.attrsets.attrVals;
            attrValues              = self.attrsets.attrValues;
            getAttrs                = self.attrsets.getAttrs;
            catAttrs                = self.attrsets.catAttrs;
            filterAttrs             = self.attrsets.filterAttrs;
            filterAttrsRecursive    = self.attrsets.filterAttrsRecursive;
            foldlAttrs              = self.attrsets.foldlAttrs;
            foldAttrs               = self.attrsets.foldAttrs;
            collect                 = self.attrsets.collect;
            nameValuePair           = self.attrsets.nameValuePair;
            mapAttrs                = self.attrsets.mapAttrs;
            mapAttrs'               = self.attrsets.mapAttrs';
            mapAttrsToList          = self.attrsets.mapAttrsToList;
            attrsToList             = self.attrsets.attrsToList;
            concatMapAttrs          = self.attrsets.concatMapAttrs;
            mapAttrsRecursive       = self.attrsets.mapAttrsRecursive;
            mapAttrsRecursiveCond   = self.attrsets.mapAttrsRecursiveCond;
            genAttrs                = self.attrsets.genAttrs;
            isDerivation            = self.attrsets.isDerivation;
            toDerivation            = self.attrsets.toDerivation;
            optionalAttrs           = self.attrsets.optionalAttrs;
            zipAttrsWithNames       = self.attrsets.zipAttrsWithNames;
            zipAttrsWith            = self.attrsets.zipAttrsWith;
            zipAttrs                = self.attrsets.zipAttrs;
            recursiveUpdateUntil    = self.attrsets.recursiveUpdateUntil;
            recursiveUpdate         = self.attrsets.recursiveUpdate;
            matchAttrs              = self.attrsets.matchAttrs;
            mergeAttrsList          = self.attrsets.mergeAttrsList;
            overrideExisting        = self.attrsets.overrideExisting;
            showAttrPath            = self.attrsets.showAttrPath;
            getOutput               = self.attrsets.getOutput;
            getBin                  = self.attrsets.getBin;
            getLib                  = self.attrsets.getLib;
            getDev                  = self.attrsets.getDev;
            getMan                  = self.attrsets.getMan;
            chooseDevOutputs        = self.attrsets.chooseDevOutputs;
            zipWithNames            = self.attrsets.zipWithNames;
            zip                     = self.attrsets.zip;
            recurseIntoAttrs        = self.attrsets.recurseIntoAttrs;
            dontRecurseIntoAttrs    = self.attrsets.dontRecurseIntoAttrs;
            cartesianProduct        = self.attrsets.cartesianProduct;
            cartesianProductOfSets  = self.attrsets.cartesianProductOfSets;
            mapCartesianProduct     = self.attrsets.mapCartesianProduct;
            updateManyAttrsByPath   = self.attrsets.updateManyAttrsByPath;
            
            # lists to top level
            singleton          = self.lists.singleton;
            forEach            = self.lists.forEach;
            foldr              = self.lists.foldr;
            fold               = self.lists.fold;
            foldl              = self.lists.foldl;
            foldl'             = self.lists.foldl';
            imap0              = self.lists.imap0;
            imap1              = self.lists.imap1;
            ifilter0           = self.lists.ifilter0;
            concatMap          = self.lists.concatMap;
            flatten            = self.lists.flatten;
            remove             = self.lists.remove;
            findSingle         = self.lists.findSingle;
            findFirst          = self.lists.findFirst;
            any                = self.lists.any;
            all                = self.lists.all;
            count              = self.lists.count;
            optional           = self.lists.optional;
            optionals          = self.lists.optionals;
            toList             = self.lists.toList;
            range              = self.lists.range;
            replicate          = self.lists.replicate;
            partition          = self.lists.partition;
            zipListsWith       = self.lists.zipListsWith;
            zipLists           = self.lists.zipLists;
            reverseList        = self.lists.reverseList;
            listDfs            = self.lists.listDfs;
            toposort           = self.lists.toposort;
            sort               = self.lists.sort;
            sortOn             = self.lists.sortOn;
            naturalSort        = self.lists.naturalSort;
            compareLists       = self.lists.compareLists;
            take               = self.lists.take;
            drop               = self.lists.drop;
            sublist            = self.lists.sublist;
            last               = self.lists.last;
            init               = self.lists.init;
            crossLists         = self.lists.crossLists;
            unique             = self.lists.unique;
            allUnique          = self.lists.allUnique;
            intersectLists     = self.lists.intersectLists;
            subtractLists      = self.lists.subtractLists;
            mutuallyExclusive  = self.lists.mutuallyExclusive;
            groupBy            = self.lists.groupBy;
            groupBy'           = self.lists.groupBy';
            
            # strings to top level
            concatStrings         = self.strings.concatStrings;
            concatMapStrings      = self.strings.concatMapStrings;
            concatImapStrings     = self.strings.concatImapStrings;
            intersperse           = self.strings.intersperse;
            concatStringsSep      = self.strings.concatStringsSep;
            concatMapStringsSep   = self.strings.concatMapStringsSep;
            concatImapStringsSep  = self.strings.concatImapStringsSep;
            concatLines           = self.strings.concatLines;
            makeSearchPath        = self.strings.makeSearchPath;
            makeSearchPathOutput  = self.strings.makeSearchPathOutput;
            makeLibraryPath       = self.strings.makeLibraryPath;
            makeIncludePath       = self.strings.makeIncludePath;
            makeBinPath           = self.strings.makeBinPath;
            optionalString        = self.strings.optionalString;
            hasInfix              = self.strings.hasInfix;
            hasPrefix             = self.strings.hasPrefix;
            hasSuffix             = self.strings.hasSuffix;
            stringToCharacters    = self.strings.stringToCharacters;
            stringAsChars         = self.strings.stringAsChars;
            escape                = self.strings.escape;
            escapeShellArg        = self.strings.escapeShellArg;
            escapeShellArgs       = self.strings.escapeShellArgs;
            isStorePath           = self.strings.isStorePath;
            isStringLike          = self.strings.isStringLike;
            isValidPosixName      = self.strings.isValidPosixName;
            toShellVar            = self.strings.toShellVar;
            toShellVars           = self.strings.toShellVars;
            escapeRegex           = self.strings.escapeRegex;
            escapeURL             = self.strings.escapeURL;
            escapeXML             = self.strings.escapeXML;
            replaceChars          = self.strings.replaceChars;
            lowerChars            = self.strings.lowerChars;
            upperChars            = self.strings.upperChars;
            toLower               = self.strings.toLower;
            toUpper               = self.strings.toUpper;
            addContextFrom        = self.strings.addContextFrom;
            splitString           = self.strings.splitString;
            removePrefix          = self.strings.removePrefix;
            removeSuffix          = self.strings.removeSuffix;
            versionOlder          = self.strings.versionOlder;
            versionAtLeast        = self.strings.versionAtLeast;
            getName               = self.strings.getName;
            getVersion            = self.strings.getVersion;
            cmakeOptionType       = self.strings.cmakeOptionType;
            cmakeBool             = self.strings.cmakeBool;
            cmakeFeature          = self.strings.cmakeFeature;
            mesonOption           = self.strings.mesonOption;
            mesonBool             = self.strings.mesonBool;
            mesonEnable           = self.strings.mesonEnable;
            nameFromURL           = self.strings.nameFromURL;
            enableFeature         = self.strings.enableFeature;
            enableFeatureAs       = self.strings.enableFeatureAs;
            withFeature           = self.strings.withFeature;
            withFeatureAs         = self.strings.withFeatureAs;
            fixedWidthString      = self.strings.fixedWidthString;
            fixedWidthNumber      = self.strings.fixedWidthNumber;
            toInt                 = self.strings.toInt;
            toIntBase10           = self.strings.toIntBase10;
            readPathsFromFile     = self.strings.readPathsFromFile;
            fileContents          = self.strings.fileContents;
            
            # stringsWithDeps to top level
            textClosureList  = self.stringsWithDeps.textClosureList;
            textClosureMap   = self.stringsWithDeps.textClosureMap;
            noDepEntry       = self.stringsWithDeps.noDepEntry;
            fullDepEntry     = self.stringsWithDeps.fullDepEntry;
            packEntry        = self.stringsWithDeps.packEntry;
            stringAfter      = self.stringsWithDeps.stringAfter;
            
            # customisation to top level
            overrideDerivation      = self.customisation.overrideDerivation;
            makeOverridable         = self.customisation.makeOverridable;
            callPackageWith         = self.customisation.callPackageWith;
            callPackagesWith        = self.customisation.callPackagesWith;
            extendDerivation        = self.customisation.extendDerivation;
            hydraJob                = self.customisation.hydraJob;
            makeScope               = self.customisation.makeScope;
            makeScopeWithSplicing   = self.customisation.makeScopeWithSplicing;
            makeScopeWithSplicing'  = self.customisation.makeScopeWithSplicing';
            
            # derivations to top level
            lazyDerivation   = self.derivations.lazyDerivation;
            optionalDrvAttr  = self.derivations.optionalDrvAttr;
            
            # meta to top level
            addMetaAttrs          = self.meta.addMetaAttrs;
            dontDistribute        = self.meta.dontDistribute;
            setName               = self.meta.setName;
            updateName            = self.meta.updateName;
            appendToName          = self.meta.appendToName;
            mapDerivationAttrset  = self.meta.mapDerivationAttrset;
            setPrio               = self.meta.setPrio;
            lowPrio               = self.meta.lowPrio;
            lowPrioSet            = self.meta.lowPrioSet;
            hiPrio                = self.meta.hiPrio;
            hiPrioSet             = self.meta.hiPrioSet;
            getLicenseFromSpdxId  = self.meta.getLicenseFromSpdxId;
            getExe                = self.meta.getExe;
            getExe'               = self.meta.getExe';
            
            # filesystem to top level
            pathType                        = self.filesystem.pathType;
            pathIsDirectory                 = self.filesystem.pathIsDirectory;
            pathIsRegularFile               = self.filesystem.pathIsRegularFile;
            packagesFromDirectoryRecursive  = self.filesystem.packagesFromDirectoryRecursive;
            
            # sources to top level
            cleanSourceFilter      = self.sources.cleanSourceFilter;
            cleanSource            = self.sources.cleanSource;
            sourceByRegex          = self.sources.sourceByRegex;
            sourceFilesBySuffices  = self.sources.sourceFilesBySuffices;
            commitIdFromGitRepo    = self.sources.commitIdFromGitRepo;
            cleanSourceWith        = self.sources.cleanSourceWith;
            pathHasContext         = self.sources.pathHasContext;
            canCleanSource         = self.sources.canCleanSource;
            pathIsGitRepo          = self.sources.pathIsGitRepo;
            
            # modules to top level
            evalModules                = self.modules.evalModules;
            setDefaultModuleLocation   = self.modules.setDefaultModuleLocation;
            unifyModuleSyntax          = self.modules.unifyModuleSyntax;
            applyModuleArgsIfFunction  = self.modules.applyModuleArgsIfFunction;
            mergeModules               = self.modules.mergeModules;
            mergeModules'              = self.modules.mergeModules';
            mergeOptionDecls           = self.modules.mergeOptionDecls;
            mergeDefinitions           = self.modules.mergeDefinitions;
            pushDownProperties         = self.modules.pushDownProperties;
            dischargeProperties        = self.modules.dischargeProperties;
            filterOverrides            = self.modules.filterOverrides;
            sortProperties             = self.modules.sortProperties;
            fixupOptionType            = self.modules.fixupOptionType;
            mkIf                       = self.modules.mkIf;
            mkAssert                   = self.modules.mkAssert;
            mkMerge                    = self.modules.mkMerge;
            mkOverride                 = self.modules.mkOverride;
            mkOptionDefault            = self.modules.mkOptionDefault;
            mkDefault                  = self.modules.mkDefault;
            mkImageMediaOverride       = self.modules.mkImageMediaOverride;
            mkForce                    = self.modules.mkForce;
            mkVMOverride               = self.modules.mkVMOverride;
            mkFixStrictness            = self.modules.mkFixStrictness;
            mkOrder                    = self.modules.mkOrder;
            mkBefore                   = self.modules.mkBefore;
            mkAfter                    = self.modules.mkAfter;
            mkAliasDefinitions         = self.modules.mkAliasDefinitions;
            mkAliasAndWrapDefinitions  = self.modules.mkAliasAndWrapDefinitions;
            fixMergeModules            = self.modules.fixMergeModules;
            mkRemovedOptionModule      = self.modules.mkRemovedOptionModule;
            mkRenamedOptionModule      = self.modules.mkRenamedOptionModule;
            mkRenamedOptionModuleWith  = self.modules.mkRenamedOptionModuleWith;
            mkMergedOptionModule       = self.modules.mkMergedOptionModule;
            mkChangedOptionModule      = self.modules.mkChangedOptionModule;
            mkAliasOptionModule        = self.modules.mkAliasOptionModule;
            mkDerivedConfig            = self.modules.mkDerivedConfig;
            doRename                   = self.modules.doRename;
            mkAliasOptionModuleMD      = self.modules.mkAliasOptionModuleMD;
            
            # options to top level
            isOption                 = self.options.isOption;
            mkEnableOption           = self.options.mkEnableOption;
            mkSinkUndeclaredOptions  = self.options.mkSinkUndeclaredOptions;
            mergeDefaultOption       = self.options.mergeDefaultOption;
            mergeOneOption           = self.options.mergeOneOption;
            mergeEqualOption         = self.options.mergeEqualOption;
            mergeUniqueOption        = self.options.mergeUniqueOption;
            getValues                = self.options.getValues;
            getFiles                 = self.options.getFiles;
            optionAttrSetToDocList   = self.options.optionAttrSetToDocList;
            optionAttrSetToDocList'  = self.options.optionAttrSetToDocList';
            scrubOptionValue         = self.options.scrubOptionValue;
            literalExpression        = self.options.literalExpression;
            literalExample           = self.options.literalExample;
            showOption               = self.options.showOption;
            showOptionWithDefLocs    = self.options.showOptionWithDefLocs;
            showFiles                = self.options.showFiles;
            unknownModule            = self.options.unknownModule;
            mkOption                 = self.options.mkOption;
            mkPackageOption          = self.options.mkPackageOption;
            mkPackageOptionMD        = self.options.mkPackageOptionMD;
            mdDoc                    = self.options.mdDoc;
            literalMD                = self.options.literalMD;
            
            # types to top level
            isType            = self.types.isType;
            setType           = self.types.setType;
            defaultTypeMerge  = self.types.defaultTypeMerge;
            defaultFunctor    = self.types.defaultFunctor;
            isOptionType      = self.types.isOptionType;
            mkOptionType      = self.types.mkOptionType;
            
            # asserts to top level
            assertMsg    = self.asserts.assertMsg;
            assertOneOf  = self.asserts.assertOneOf;
            
            # debug to top level
            traceIf         = self.debug.traceIf;
            traceVal        = self.debug.traceVal;
            traceValFn      = self.debug.traceValFn;
            traceSeq        = self.debug.traceSeq;
            traceSeqN       = self.debug.traceSeqN;
            traceValSeq     = self.debug.traceValSeq;
            traceValSeqFn   = self.debug.traceValSeqFn;
            traceValSeqN    = self.debug.traceValSeqN;
            traceValSeqNFn  = self.debug.traceValSeqNFn;
            traceFnSeqN     = self.debug.traceFnSeqN;
            runTests        = self.debug.runTests;
            testAllTrue     = self.debug.testAllTrue;
            
            # versions to top level
            splitVersion  = self.versions.splitVersion;
          }
      );
    in lib
