{ ... }:
res: pkgs: super:

with pkgs;
{
  docbook5 = callPackage ./schemas/docbook-5.0 { };
  docbook_sgml_dtd_31 = callPackage ./schemas/sgml-dtd/docbook/3.1.nix { };
  docbook_sgml_dtd_41 = callPackage ./schemas/sgml-dtd/docbook/4.1.nix { };
  docbook_xml_dtd_412 = callPackage ./schemas/xml-dtd/docbook/4.1.2.nix { };
  docbook_xml_dtd_42 = callPackage ./schemas/xml-dtd/docbook/4.2.nix { };
  docbook_xml_dtd_43 = callPackage ./schemas/xml-dtd/docbook/4.3.nix { };
  docbook_xml_dtd_44 = callPackage ./schemas/xml-dtd/docbook/4.4.nix { };
  docbook_xml_dtd_45 = callPackage ./schemas/xml-dtd/docbook/4.5.nix { };
  docbook_xml_ebnf_dtd = callPackage ./schemas/xml-dtd/docbook-ebnf { };

  inherit (callPackages ./stylesheets/xslt/docbook-xsl { })
    docbook-xsl-nons
    docbook-xsl-ns;

  # TODO: move this to aliases
  docbook_xsl = docbook-xsl-nons;
  docbook_xsl_ns = docbook-xsl-ns;
}
