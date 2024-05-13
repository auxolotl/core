{ pkgs }:

with pkgs;

let
  openjfx11 = callPackage ./openjdk/openjfx/11.nix { };
  openjfx15 = callPackage ./openjdk/openjfx/15.nix { };
  openjfx17 = callPackage ./openjdk/openjfx/17.nix { };
  openjfx19 = callPackage ./openjdk/openjfx/19.nix { };
  openjfx20 = callPackage ./openjdk/openjfx/20.nix { };
  openjfx21 = callPackage ./openjdk/openjfx/21.nix { };
  openjfx22 = callPackage ./openjdk/openjfx/22.nix { };

in {
  inherit openjfx11 openjfx15 openjfx17 openjfx19 openjfx20 openjfx21 openjfx22;

  compiler = let

    gnomeArgs = {
      inherit (gnome2) GConf gnome_vfs;
    };

    bootstrapArgs = gnomeArgs // {
      openjfx = openjfx11; /* need this despite next line :-( */
      enableJavaFX = false;
      headless = true;
    };

    mkAdoptopenjdk = path-linux: path-darwin: let
      package-linux  = import path-linux { inherit stdenv lib; };
      package-darwin = import path-darwin { inherit lib; };
      package = if stdenv.isLinux
        then package-linux
        else package-darwin;
    in {
      inherit package-linux package-darwin;
      __attrsFailEvaluation = true;

      jdk-hotspot = callPackage package.jdk-hotspot {};
      jre-hotspot = callPackage package.jre-hotspot {};
    } // lib.optionalAttrs (package?jdk-openj9) {
      jdk-openj9  = callPackage package.jdk-openj9  {};
    } // lib.optionalAttrs (package?jre-openj9) {
      jre-openj9  = callPackage package.jre-openj9  {};
    };

    mkBootstrap = adoptopenjdk: path: args:
      /* adoptopenjdk not available for i686, so fall back to our old builds for bootstrapping */
      if   !stdenv.hostPlatform.isi686
      then
        # only linux has the gtkSupport option
        if stdenv.isLinux
        then adoptopenjdk.jdk-hotspot.override { gtkSupport = false; }
        else adoptopenjdk.jdk-hotspot
      else callPackage path args;

    mkOpenjdk = path-linux: path-darwin: args:
      if stdenv.isLinux
      then mkOpenjdkLinuxOnly path-linux args
      else let
        openjdk = callPackage path-darwin {};
      in openjdk // { headless = openjdk; };

    mkOpenjdkLinuxOnly = path-linux: args: let
      openjdk = callPackage path-linux  (gnomeArgs // args);
    in assert stdenv.isLinux; openjdk // {
      headless = openjdk.override { headless = true; };
    };

  in rec {
    adoptopenjdk-8 = mkAdoptopenjdk
      ./adoptopenjdk-bin/jdk8-linux.nix
      ./adoptopenjdk-bin/jdk8-darwin.nix;

    adoptopenjdk-11 = mkAdoptopenjdk
      ./adoptopenjdk-bin/jdk11-linux.nix
      ./adoptopenjdk-bin/jdk11-darwin.nix;

    adoptopenjdk-13 = mkAdoptopenjdk
      ./adoptopenjdk-bin/jdk13-linux.nix
      ./adoptopenjdk-bin/jdk13-darwin.nix;

    adoptopenjdk-14 = mkAdoptopenjdk
      ./adoptopenjdk-bin/jdk14-linux.nix
      ./adoptopenjdk-bin/jdk14-darwin.nix;

    adoptopenjdk-15 = mkAdoptopenjdk
      ./adoptopenjdk-bin/jdk15-linux.nix
      ./adoptopenjdk-bin/jdk15-darwin.nix;

    adoptopenjdk-16 = mkAdoptopenjdk
      ./adoptopenjdk-bin/jdk16-linux.nix
      ./adoptopenjdk-bin/jdk16-darwin.nix;

    adoptopenjdk-17 = mkAdoptopenjdk
      ./adoptopenjdk-bin/jdk17-linux.nix
      ./adoptopenjdk-bin/jdk17-darwin.nix;

    corretto11 = callPackage ./corretto/11.nix { };
    corretto17 = callPackage ./corretto/17.nix { };
    corretto19 = callPackage ./corretto/19.nix { };
    corretto21 = callPackage ./corretto/21.nix { };

    openjdk8-bootstrap = mkBootstrap adoptopenjdk-8
      ./openjdk/bootstrap.nix
      { version = "8"; };

    openjdk11-bootstrap = mkBootstrap adoptopenjdk-11
      ./openjdk/bootstrap.nix
      { version = "10"; };

    openjdk13-bootstrap = mkBootstrap adoptopenjdk-13
      ./openjdk/12.nix
      (bootstrapArgs // {
        inherit openjdk11-bootstrap;
        /* build segfaults with gcc9 or newer, so use gcc8 like Debian does */
        stdenv = gcc8Stdenv;
      });

    openjdk14-bootstrap = mkBootstrap adoptopenjdk-14
      ./openjdk/13.nix
      (bootstrapArgs // {
        inherit openjdk13-bootstrap;
      });

    openjdk15-bootstrap = mkBootstrap adoptopenjdk-15
      ./openjdk/14.nix
      (bootstrapArgs // {
        inherit openjdk14-bootstrap;
      });

    openjdk16-bootstrap = mkBootstrap adoptopenjdk-16
      ./openjdk/15.nix
      (bootstrapArgs // {
        inherit openjdk15-bootstrap;
      });

    openjdk17-bootstrap = mkBootstrap adoptopenjdk-17
      ./openjdk/16.nix
      (bootstrapArgs // {
        inherit openjdk16-bootstrap;
      });

    openjdk18-bootstrap = mkBootstrap adoptopenjdk-17
      ./openjdk/17.nix
      (bootstrapArgs // {
        inherit openjdk17-bootstrap;
      });

    openjdk8 = mkOpenjdk
      ./openjdk/8.nix
      ./zulu/8.nix
      { };

    openjdk11 = mkOpenjdk
      ./openjdk/11.nix
      ./zulu/11.nix
      { openjfx = openjfx11; };

    openjdk12 = mkOpenjdkLinuxOnly ./openjdk/12.nix {
        /* build segfaults with gcc9 or newer, so use gcc8 like Debian does */
        stdenv = gcc8Stdenv;
        openjfx = openjfx11;
    };

    openjdk13 = mkOpenjdkLinuxOnly ./openjdk/13.nix {
      inherit openjdk13-bootstrap;
      openjfx = openjfx11;
    };

    openjdk14 = mkOpenjdkLinuxOnly ./openjdk/14.nix {
      inherit openjdk14-bootstrap;
      openjfx = openjfx11;
    };

    openjdk15 = mkOpenjdkLinuxOnly ./openjdk/15.nix {
      inherit openjdk15-bootstrap;
      openjfx = openjfx15;
    };

    openjdk16 = mkOpenjdkLinuxOnly ./openjdk/16.nix {
      inherit openjdk16-bootstrap;
      openjfx = openjfx15;
    };

    openjdk17 = mkOpenjdk
      ./openjdk/17.nix
      ./zulu/17.nix
      {
        inherit openjdk17-bootstrap;
        openjfx = openjfx17;
      };

    openjdk18 = mkOpenjdk
      ./openjdk/18.nix
      ./zulu/18.nix
      {
        inherit openjdk18-bootstrap;
        openjfx = openjfx17;
      };

    openjdk19 = mkOpenjdk
      ./openjdk/19.nix
      ./zulu/19.nix
      {
        openjdk19-bootstrap = temurin-bin.jdk-19;
        openjfx = openjfx19;
      };

    openjdk20 = mkOpenjdk
      ./openjdk/20.nix
      ./zulu/20.nix
      {
        openjdk20-bootstrap = temurin-bin.jdk-20;
        openjfx = openjfx20;
      };

    openjdk21 = mkOpenjdk
      ./openjdk/21.nix
      ./zulu/21.nix
      {
        openjdk21-bootstrap = temurin-bin.jdk-21;
        openjfx = openjfx21;
      };

    openjdk22 = mkOpenjdk
      ./openjdk/22.nix
      ./zulu/22.nix
      {
        openjdk22-bootstrap = temurin-bin.jdk-21;
        openjfx = openjfx22;
      };

    temurin-bin = recurseIntoAttrs (callPackage (
      if stdenv.isLinux
      then ./temurin-bin/jdk-linux.nix
      else ./temurin-bin/jdk-darwin.nix
    ) {});

    semeru-bin = recurseIntoAttrs (callPackage (
      if stdenv.isLinux
      then ./semeru-bin/jdk-linux.nix
      else ./semeru-bin/jdk-darwin.nix
    ) {});
  };
}
// lib.optionalAttrs config.allowAliases {
  jogl_2_4_0 = throw "'jogl_2_4_0' is renamed to/replaced by 'jogl'";
  mavenfod = throw "'mavenfod' is renamed to/replaced by 'maven.buildMavenPackage'";
}
