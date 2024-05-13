{ ... }:
res: pkgs: super:

with pkgs;
{
  javaPackages = recurseIntoAttrs (callPackage ./java-packages.nix { });

  inherit (javaPackages) openjfx11 openjfx15 openjfx17 openjfx19 openjfx20 openjfx21 openjfx22;
  openjfx = openjfx17;

  openjdk8-bootstrap = javaPackages.compiler.openjdk8-bootstrap;
  openjdk8 = javaPackages.compiler.openjdk8;
  openjdk8_headless = javaPackages.compiler.openjdk8.headless;
  jdk8 = openjdk8;
  jdk8_headless = openjdk8_headless;
  jre8 = openjdk8.jre;
  jre8_headless = openjdk8_headless.jre;

  openjdk11-bootstrap = javaPackages.compiler.openjdk11-bootstrap;
  openjdk11 = javaPackages.compiler.openjdk11;
  openjdk11_headless = javaPackages.compiler.openjdk11.headless;
  jdk11 = openjdk11;
  jdk11_headless = openjdk11_headless;

  openjdk17-bootstrap = javaPackages.compiler.openjdk17-bootstrap;
  openjdk17 = javaPackages.compiler.openjdk17;
  openjdk17_headless = javaPackages.compiler.openjdk17.headless;
  jdk17 = openjdk17;
  jdk17_headless = openjdk17_headless;

  openjdk16-bootstrap = javaPackages.compiler.openjdk16-bootstrap;

  openjdk19 = javaPackages.compiler.openjdk19;
  openjdk19_headless = javaPackages.compiler.openjdk19.headless;
  jdk19 = openjdk19;
  jdk19_headless = openjdk19_headless;

  openjdk20 = javaPackages.compiler.openjdk20;
  openjdk20_headless = javaPackages.compiler.openjdk20.headless;
  jdk20 = openjdk20;
  jdk20_headless = openjdk20_headless;

  openjdk21 = javaPackages.compiler.openjdk21;
  openjdk21_headless = javaPackages.compiler.openjdk21.headless;
  jdk21 = openjdk21;
  jdk21_headless = openjdk21_headless;

  openjdk22 = javaPackages.compiler.openjdk22;
  openjdk22_headless = javaPackages.compiler.openjdk22.headless;
  jdk22 = openjdk22;
  jdk22_headless = openjdk22_headless;

  /* default JDK */
  jdk = jdk21;
  jdk_headless = jdk21_headless;

  # Since the introduction of the Java Platform Module System in Java 9, Java
  # no longer ships a separate JRE package.
  #
  # If you are building a 'minimal' system/image, you are encouraged to use
  # 'jre_minimal' to build a bespoke JRE containing only the modules you need.
  #
  # For a general-purpose system, 'jre' defaults to the full JDK:
  jre = jdk;
  jre_headless = jdk_headless;

  jre17_minimal = callPackage ./openjdk/jre.nix {
    jdk = jdk17;
  };
  jre_minimal = callPackage ./openjdk/jre.nix { };

  openjdk = jdk;
  openjdk_headless = jdk_headless;
}
