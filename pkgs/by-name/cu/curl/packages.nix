{ ... }:
res: pkgs: super:

with pkgs;
{
  curlFull = curl.override {
    ldapSupport = true;
    gsaslSupport = true;
    rtmpSupport = true;
    pslSupport = true;
    websocketSupport = true;
  };

  curlHTTP3 = curl.override {
    openssl = quictls;
    http3Support = true;
  };

  curl = curlMinimal.override ({
    idnSupport = true;
    pslSupport = true;
    zstdSupport = true;
  } // lib.optionalAttrs (!stdenv.hostPlatform.isStatic) {
    brotliSupport = true;
  });

  curlMinimal = callPackage ./. { };

  curlWithGnuTls = curl.override { gnutlsSupport = true; opensslSupport = false; };
}
