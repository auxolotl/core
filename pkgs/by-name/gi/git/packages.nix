{ ... }:
res: pkgs: super:

with pkgs;
{
  git = callPackage ./. {
    inherit (darwin.apple_sdk.frameworks) CoreServices Security;
    perlLibs = [ perlPackages.LWP perlPackages.URI perlPackages.TermReadKey ];
    smtpPerlLibs = [
      perlPackages.libnet
      perlPackages.NetSMTPSSL
      perlPackages.IOSocketSSL
      perlPackages.NetSSLeay
      perlPackages.AuthenSASL
      perlPackages.DigestHMAC
    ];
  };

  # The full-featured Git.
  gitFull = git.override {
    svnSupport = true;
    guiSupport = true;
    sendEmailSupport = true;
    withSsh = true;
    withLibsecret = !stdenv.isDarwin;
  };

  # Git with SVN support, but without GUI.
  gitSVN = lowPrio (git.override { svnSupport = true; });

  git-doc = lib.addMetaAttrs
    {
      description = "Additional documentation for Git";
      longDescription = ''
        This package contains additional documentation (HTML and text files) that
        is referenced in the man pages of Git.
      '';
    }
    gitFull.doc;

  gitMinimal = git.override {
    withManual = false;
    pythonSupport = false;
    perlSupport = false;
    withpcre2 = false;
  };
}
