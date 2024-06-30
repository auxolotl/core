# This file contains the Python packages set.
# Each attribute is a Python library or a helper function.
# Expressions for Python libraries are supposed to be in `pkgs/development/python-modules/<name>/default.nix`.
# Python packages that do not need to be available for each interpreter version do not belong in this packages set.
# Examples are Python-based cli tools.
#
# For more details, please see the Python section in the Nixpkgs manual.

self: super: with self; {

  bootstrap = lib.recurseIntoAttrs {
    flit-core = toPythonModule (callPackage ./python-modules/bootstrap/flit-core { });
    installer = toPythonModule (callPackage ./python-modules/bootstrap/installer {
      inherit (bootstrap) flit-core;
    });
    build = toPythonModule (callPackage ./python-modules/bootstrap/build {
      inherit (bootstrap) flit-core installer;
    });
    packaging = toPythonModule (callPackage ./python-modules/bootstrap/packaging {
      inherit (bootstrap) flit-core installer;
    });
  };

  setuptools = callPackage ./python-modules/setuptools { };

#   a2wsgi = callPackage ./python-modules/a2wsgi { };

#   aadict = callPackage ./python-modules/aadict { };

#   aafigure = callPackage ./python-modules/aafigure { };

#   aardwolf = callPackage ./python-modules/aardwolf { };

#   abjad = callPackage ./python-modules/abjad { };

#   about-time = callPackage ./python-modules/about-time { };

#   absl-py = callPackage ./python-modules/absl-py { };

#   accessible-pygments = callPackage ./python-modules/accessible-pygments { };

#   accelerate = callPackage ./python-modules/accelerate { };

#   accuweather = callPackage ./python-modules/accuweather { };

#   accupy = callPackage ./python-modules/accupy { };

#   acme = callPackage ./python-modules/acme { };

#   acme-tiny = callPackage ./python-modules/acme-tiny { };

#   acoustics = callPackage ./python-modules/acoustics { };

#   acquire = callPackage ./python-modules/acquire { };

#   actdiag = callPackage ./python-modules/actdiag { };

#   acunetix = callPackage ./python-modules/acunetix { };

#   adafruit-io = callPackage ./python-modules/adafruit-io { };

#   adafruit-platformdetect = callPackage ./python-modules/adafruit-platformdetect { };

#   adafruit-pureio = callPackage ./python-modules/adafruit-pureio { };

#   adal = callPackage ./python-modules/adal { };

#   adax = callPackage ./python-modules/adax { };

#   adax-local = callPackage ./python-modules/adax-local { };

#   adb-enhanced = callPackage ./python-modules/adb-enhanced { };

#   adb-homeassistant = callPackage ./python-modules/adb-homeassistant { };

#   adb-shell = callPackage ./python-modules/adb-shell { };

#   adblock = callPackage ./python-modules/adblock {
#     inherit (pkgs.darwin.apple_sdk.frameworks) CoreFoundation Security;
#   };

#   add-trailing-comma = callPackage ./python-modules/add-trailing-comma { };

#   addict = callPackage ./python-modules/addict { };

#   adext = callPackage ./python-modules/adext { };

#   adguardhome = callPackage ./python-modules/adguardhome { };

#   adjusttext = callPackage ./python-modules/adjusttext { };

#   adlfs = callPackage ./python-modules/adlfs { };

#   advantage-air = callPackage ./python-modules/advantage-air { };

#   advocate = callPackage ./python-modules/advocate { };

#   aemet-opendata = callPackage ./python-modules/aemet-opendata { };

#   aenum = callPackage ./python-modules/aenum { };

#   aeppl = callPackage ./python-modules/aeppl { };

#   aesara = callPackage ./python-modules/aesara { };

#   aesedb = callPackage ./python-modules/aesedb { };

#   aetcd = callPackage ./python-modules/aetcd { };

#   afdko = callPackage ./python-modules/afdko { };

#   affine = callPackage ./python-modules/affine { };

#   afsapi = callPackage ./python-modules/afsapi { };

#   agate = callPackage ./python-modules/agate { };

#   agate-dbf = callPackage ./python-modules/agate-dbf { };

#   agate-excel = callPackage ./python-modules/agate-excel { };

#   agate-sql = callPackage ./python-modules/agate-sql { };

#   agent-py = callPackage ./python-modules/agent-py { };

#   ago = callPackage ./python-modules/ago { };

#   aggdraw = callPackage ./python-modules/aggdraw { };

#   aigpy = callPackage ./python-modules/aigpy { };

#   aio-geojson-client = callPackage ./python-modules/aio-geojson-client { };

#   aio-geojson-generic-client = callPackage ./python-modules/aio-geojson-generic-client { };

#   aio-geojson-geonetnz-quakes = callPackage ./python-modules/aio-geojson-geonetnz-quakes { };

#   aio-geojson-geonetnz-volcano = callPackage ./python-modules/aio-geojson-geonetnz-volcano { };

#   aio-geojson-nsw-rfs-incidents = callPackage ./python-modules/aio-geojson-nsw-rfs-incidents { };

#   aio-geojson-usgs-earthquakes = callPackage ./python-modules/aio-geojson-usgs-earthquakes { };

#   aio-georss-client = callPackage ./python-modules/aio-georss-client { };

#   aio-georss-gdacs = callPackage ./python-modules/aio-georss-gdacs { };

#   aio-pika = callPackage ./python-modules/aio-pika { };

#   aioairzone = callPackage ./python-modules/aioairzone { };

#   aioairzone-cloud = callPackage ./python-modules/aioairzone-cloud { };

#   aioairq = callPackage ./python-modules/aioairq { };

#   aioaladdinconnect = callPackage ./python-modules/aioaladdinconnect { };

#   aioambient = callPackage ./python-modules/aioambient { };

#   aioapcaccess = callPackage ./python-modules/aioapcaccess { };

#   aioapns = callPackage ./python-modules/aioapns { };

#   aiocron = callPackage ./python-modules/aiocron { };

#   ailment = callPackage ./python-modules/ailment { };

#   aioamqp = callPackage ./python-modules/aioamqp { };

#   aioaseko = callPackage ./python-modules/aioaseko { };

#   aioasuswrt = callPackage ./python-modules/aioasuswrt { };

#   aioautomower = callPackage ./python-modules/aioautomower { };

#   aioazuredevops = callPackage ./python-modules/aioazuredevops { };

#   aiobafi6 = callPackage ./python-modules/aiobafi6 { };

#   aioboto3 = callPackage ./python-modules/aioboto3 { };

#   aioblescan = callPackage ./python-modules/aioblescan { };

#   aiocache = callPackage ./python-modules/aiocache { };

#   aiocoap = callPackage ./python-modules/aiocoap { };

#   aiocomelit = callPackage ./python-modules/aiocomelit { };

#   aioconsole = callPackage ./python-modules/aioconsole { };

#   aiocontextvars = callPackage ./python-modules/aiocontextvars { };

#   aiocsv = callPackage ./python-modules/aiocsv { };

#   aiocurrencylayer = callPackage ./python-modules/aiocurrencylayer { };

#   aiodhcpwatcher = callPackage ./python-modules/aiodhcpwatcher { };

#   aiodiscover = callPackage ./python-modules/aiodiscover { };

#   aiodns = callPackage ./python-modules/aiodns { };

#   aiodocker = callPackage ./python-modules/aiodocker { };

#   aioeafm = callPackage ./python-modules/aioeafm { };

#   aioeagle = callPackage ./python-modules/aioeagle { };

#   aioecowitt = callPackage ./python-modules/aioecowitt { };

#   aioelectricitymaps = callPackage ./python-modules/aioelectricitymaps { };

#   aioemonitor = callPackage ./python-modules/aioemonitor { };

#   aioesphomeapi = callPackage ./python-modules/aioesphomeapi { };

#   aioextensions = callPackage ./python-modules/aioextensions { };

#   aiofile = callPackage ./python-modules/aiofile { };

#   aiofiles = callPackage ./python-modules/aiofiles { };

#   aioflo = callPackage ./python-modules/aioflo { };

#   aioftp = callPackage ./python-modules/aioftp { };

#   aioguardian = callPackage ./python-modules/aioguardian { };

#   aiogithubapi = callPackage ./python-modules/aiogithubapi { };

#   aiogram = callPackage ./python-modules/aiogram { };

#   aiohappyeyeballs = callPackage ./python-modules/aiohappyeyeballs { };

#   aioharmony = callPackage ./python-modules/aioharmony { };

#   aiohomekit = callPackage ./python-modules/aiohomekit { };

  aiohttp = callPackage ./python-modules/aiohttp { };

#   aiohttp-apispec = callPackage ./python-modules/aiohttp-apispec { };

#   aiohttp-basicauth = callPackage ./python-modules/aiohttp-basicauth { };

#   aiohttp-client-cache = callPackage ./python-modules/aiohttp-client-cache { };

#   aiohttp-cors = callPackage ./python-modules/aiohttp-cors { };

#   aiohttp-fast-url-dispatcher = callPackage ./python-modules/aiohttp-fast-url-dispatcher { };

#   aiohttp-jinja2 = callPackage ./python-modules/aiohttp-jinja2 { };

#   aiohttp-oauthlib = callPackage ./python-modules/aiohttp-oauthlib { };

#   aiohttp-openmetrics = callPackage ./python-modules/aiohttp-openmetrics { };

#   aiohttp-remotes = callPackage ./python-modules/aiohttp-remotes { };

#   aiohttp-retry = callPackage ./python-modules/aiohttp-retry { };

#   aiohttp-socks = callPackage ./python-modules/aiohttp-socks { };

#   aiohttp-swagger = callPackage ./python-modules/aiohttp-swagger { };

#   aiohttp-wsgi = callPackage ./python-modules/aiohttp-wsgi { };

#   aiohttp-zlib-ng = callPackage ./python-modules/aiohttp-zlib-ng { };

#   aioitertools = callPackage ./python-modules/aioitertools { };

#   aiobiketrax = callPackage ./python-modules/aiobiketrax { };

#   aiobotocore = callPackage ./python-modules/aiobotocore { };

#   aiobroadlink = callPackage ./python-modules/aiobroadlink { };

#   aiohue = callPackage ./python-modules/aiohue { };

#   aiohwenergy = callPackage ./python-modules/aiohwenergy { };

#   aioimaplib = callPackage ./python-modules/aioimaplib { };

#   aioinflux = callPackage ./python-modules/aioinflux { };

#   aiojobs = callPackage ./python-modules/aiojobs { };

#   aiokafka = callPackage ./python-modules/aiokafka { };

#   aiokef = callPackage ./python-modules/aiokef { };

#   aiolookin = callPackage ./python-modules/aiolookin { };

#   aiolifx = callPackage ./python-modules/aiolifx { };

#   aiolifx-connection = callPackage ./python-modules/aiolifx-connection { };

#   aiolifx-effects = callPackage ./python-modules/aiolifx-effects { };

#   aiolifx-themes = callPackage ./python-modules/aiolifx-themes { };

#   aiolimiter = callPackage ./python-modules/aiolimiter { };

#   aiolip = callPackage ./python-modules/aiolip { };

#   aiolivisi = callPackage ./python-modules/aiolivisi { };

#   aiolyric = callPackage ./python-modules/aiolyric { };

#   aiomisc = callPackage ./python-modules/aiomisc { };

#   aiomisc-pytest = callPackage ./python-modules/aiomisc-pytest { };

#   aiomodernforms = callPackage ./python-modules/aiomodernforms { };

#   aiomqtt = callPackage ./python-modules/aiomqtt { };

#   aiomultiprocess = callPackage ./python-modules/aiomultiprocess { };

#   aiomusiccast = callPackage ./python-modules/aiomusiccast { };

#   aiomysensors = callPackage ./python-modules/aiomysensors { };

#   aiomysql = callPackage ./python-modules/aiomysql { };

#   aionanoleaf = callPackage ./python-modules/aionanoleaf { };

#   aionotion = callPackage ./python-modules/aionotion { };

#   aionut = callPackage ./python-modules/aionut { };

#   aiooncue = callPackage ./python-modules/aiooncue { };

#   aioopenexchangerates = callPackage ./python-modules/aioopenexchangerates { };

#   aioopenssl = callPackage ./python-modules/aioopenssl { };

#   aiooss2 = callPackage ./python-modules/aiooss2 { };

#   aiooui = callPackage ./python-modules/aiooui { };

#   aiopegelonline = callPackage ./python-modules/aiopegelonline { };

#   aiopg = callPackage ./python-modules/aiopg { };

#   aiopinboard = callPackage ./python-modules/aiopinboard { };

#   aioprocessing = callPackage ./python-modules/aioprocessing { };

#   aioprometheus = callPackage ./python-modules/aioprometheus { };

#   aiopulse = callPackage ./python-modules/aiopulse { };

#   aiopurpleair = callPackage ./python-modules/aiopurpleair { };

#   aiopvapi = callPackage ./python-modules/aiopvapi { };

#   aiopvpc = callPackage ./python-modules/aiopvpc { };

#   aiopyarr = callPackage ./python-modules/aiopyarr { };

#   aiopylgtv = callPackage ./python-modules/aiopylgtv { };

#   aioqsw = callPackage ./python-modules/aioqsw { };

#   aioquic = callPackage ./python-modules/aioquic { };

#   aioraven = callPackage ./python-modules/aioraven { };

#   aiorecollect = callPackage ./python-modules/aiorecollect { };

#   aioredis = callPackage ./python-modules/aioredis { };

#   aioresponses = callPackage ./python-modules/aioresponses { };

#   aioridwell = callPackage ./python-modules/aioridwell { };

#   aiormq = callPackage ./python-modules/aiormq { };

#   aiorpcx = callPackage ./python-modules/aiorpcx { };

#   aiortm = callPackage ./python-modules/aiortm { };

#   aiortsp = callPackage ./python-modules/aiortsp { };

#   aioruckus = callPackage ./python-modules/aioruckus { };

#   aiorun = callPackage ./python-modules/aiorun { };

#   aioruuvigateway = callPackage ./python-modules/aioruuvigateway { };

#   aiorwlock = callPackage ./python-modules/aiorwlock { };

#   aiosasl = callPackage ./python-modules/aiosasl { };

#   aiosql = callPackage ./python-modules/aiosql { };

#   aiosenz = callPackage ./python-modules/aiosenz { };

#   aioserial = callPackage ./python-modules/aioserial { };

#   aioshelly = callPackage ./python-modules/aioshelly { };

#   aioshutil = callPackage ./python-modules/aioshutil { };

#   aioskybell = callPackage ./python-modules/aioskybell { };

#   aiosignal = callPackage ./python-modules/aiosignal { };

#   aioslimproto = callPackage ./python-modules/aioslimproto { };

#   aiosmb = callPackage ./python-modules/aiosmb { };

#   aiosmtpd = callPackage ./python-modules/aiosmtpd { };

#   aiosmtplib = callPackage ./python-modules/aiosmtplib { };

#   aiosomecomfort = callPackage ./python-modules/aiosomecomfort { };

#   aiosqlite = callPackage ./python-modules/aiosqlite { };

#   aiosteamist = callPackage ./python-modules/aiosteamist { };

#   aiostream = callPackage ./python-modules/aiostream { };

#   aioswitcher = callPackage ./python-modules/aioswitcher { };

#   aiosyncthing = callPackage ./python-modules/aiosyncthing { };

#   aiotankerkoenig = callPackage ./python-modules/aiotankerkoenig { };

#   aiotractive = callPackage ./python-modules/aiotractive { };

#   aiounifi = callPackage ./python-modules/aiounifi { };

#   aiounittest = callPackage ./python-modules/aiounittest { };

#   aiovlc = callPackage ./python-modules/aiovlc { };

#   aiovodafone = callPackage ./python-modules/aiovodafone { };

#   aiowatttime = callPackage ./python-modules/aiowatttime { };

#   aiowaqi = callPackage ./python-modules/aiowaqi { };

#   aioweenect = callPackage ./python-modules/aioweenect { };

#   aiowebostv = callPackage ./python-modules/aiowebostv { };

#   aiowinreg = callPackage ./python-modules/aiowinreg { };

#   aiowithings = callPackage ./python-modules/aiowithings { };

#   aioxmpp = callPackage ./python-modules/aioxmpp { };

#   aioymaps = callPackage ./python-modules/aioymaps { };

#   aiozeroconf = callPackage ./python-modules/aiozeroconf { };

#   airium = callPackage ./python-modules/airium { };

#   airly = callPackage ./python-modules/airly { };

#   airthings-ble = callPackage ./python-modules/airthings-ble { };

#   airthings-cloud = callPackage ./python-modules/airthings-cloud { };

#   airtouch4pyapi = callPackage ./python-modules/airtouch4pyapi { };

#   airtouch5py = callPackage ./python-modules/airtouch5py { };

#   ajpy = callPackage ./python-modules/ajpy { };

#   ajsonrpc = callPackage ./python-modules/ajsonrpc { };

  alabaster = callPackage ./python-modules/alabaster { };

#   aladdin-connect = callPackage ./python-modules/aladdin-connect { };

#   alarmdecoder = callPackage ./python-modules/alarmdecoder { };

#   albumentations = callPackage ./python-modules/albumentations { };

#   ale-py = callPackage ./python-modules/ale-py { };

#   alectryon = callPackage ./python-modules/alectryon { };

#   alembic = callPackage ./python-modules/alembic { };

#   alexapy = callPackage ./python-modules/alexapy { };

#   algebraic-data-types = callPackage ./python-modules/algebraic-data-types { };

#   alive-progress = callPackage ./python-modules/alive-progress { };

#   aliyun-python-sdk-cdn = callPackage ./python-modules/aliyun-python-sdk-cdn { };

#   aliyun-python-sdk-config = callPackage ./python-modules/aliyun-python-sdk-config { };

#   aliyun-python-sdk-core = callPackage ./python-modules/aliyun-python-sdk-core { };

#   aliyun-python-sdk-dbfs = callPackage ./python-modules/aliyun-python-sdk-dbfs { };

#   aliyun-python-sdk-iot = callPackage ./python-modules/aliyun-python-sdk-iot { };

#   aliyun-python-sdk-kms = callPackage ./python-modules/aliyun-python-sdk-kms { };

#   aliyun-python-sdk-sts = callPackage ./python-modules/aliyun-python-sdk-sts { };

#   allpairspy = callPackage ./python-modules/allpairspy { };

#   allure-behave = callPackage ./python-modules/allure-behave { };

#   allure-python-commons = callPackage ./python-modules/allure-python-commons { };

#   allure-python-commons-test = callPackage ./python-modules/allure-python-commons-test { };

#   allure-pytest = callPackage ./python-modules/allure-pytest { };

#   alpha-vantage = callPackage ./python-modules/alpha-vantage { };

#   altair = callPackage ./python-modules/altair { };

#   altgraph = callPackage ./python-modules/altgraph { };

#   amarna = callPackage ./python-modules/amarna { };

#   amazon-ion = callPackage ./python-modules/amazon-ion { };

#   amazon-kclpy = callPackage ./python-modules/amazon-kclpy { };

#   ambee = callPackage ./python-modules/ambee { };

#   amberelectric = callPackage ./python-modules/amberelectric { };

#   ambiclimate = callPackage ./python-modules/ambiclimate { };

#   amcrest = callPackage ./python-modules/amcrest { };

#   amiibo-py = callPackage ./python-modules/amiibo-py { };

#   amply = callPackage ./python-modules/amply { };

#   amqp = callPackage ./python-modules/amqp { };

#   amqplib = callPackage ./python-modules/amqplib { };

#   amqtt = callPackage ./python-modules/amqtt { };

#   anchor-kr = callPackage ./python-modules/anchor-kr { };

#   ancp-bids = callPackage ./python-modules/ancp-bids { };

#   android-backup = callPackage ./python-modules/android-backup { };

#   androidtv = callPackage ./python-modules/androidtv { };

#   androidtvremote2 = callPackage ./python-modules/androidtvremote2 { };

#   androguard = callPackage ./python-modules/androguard { };

#   anel-pwrctrl-homeassistant = callPackage ./python-modules/anel-pwrctrl-homeassistant { };

#   angr = callPackage ./python-modules/angr { };

#   angrcli = callPackage ./python-modules/angrcli {
#     inherit (pkgs) coreutils;
#   };

#   angrop = callPackage ./python-modules/angrop { };

#   aniso8601 = callPackage ./python-modules/aniso8601 { };

#   anitopy = callPackage ./python-modules/anitopy { };

#   annexremote = callPackage ./python-modules/annexremote { };

#   annotated-types = callPackage ./python-modules/annotated-types { };

#   annoy = callPackage ./python-modules/annoy { };

#   anonip = callPackage ./python-modules/anonip { };

#   anova-wifi = callPackage ./python-modules/anova-wifi { };

#   ansi2html = callPackage ./python-modules/ansi2html { };

#   ansi2image = callPackage ./python-modules/ansi2image { };

#   ansible = callPackage ./python-modules/ansible { };

#   ansible-builder = callPackage ./python-modules/ansible-builder { };

#   ansible-compat = callPackage ./python-modules/ansible-compat { };

#   ansible-core = callPackage ./python-modules/ansible/core.nix { };

#   ansible-kernel = callPackage ./python-modules/ansible-kernel { };

#   ansible-navigator = callPackage ./python-modules/ansible-navigator { };

#   ansible-pylibssh = callPackage ./python-modules/ansible-pylibssh { };

#   ansible-runner = callPackage ./python-modules/ansible-runner { };

#   ansible-vault-rw = callPackage ./python-modules/ansible-vault-rw { };

#   ansi = callPackage ./python-modules/ansi { };

#   ansicolor = callPackage ./python-modules/ansicolor { };

#   ansicolors = callPackage ./python-modules/ansicolors { };

#   ansiconv = callPackage ./python-modules/ansiconv { };

#   ansimarkup = callPackage ./python-modules/ansimarkup { };

#   ansiwrap = callPackage ./python-modules/ansiwrap { };

#   anthemav = callPackage ./python-modules/anthemav { };

#   anthropic = callPackage ./python-modules/anthropic { };

#   antlr4-python3-runtime = callPackage ./python-modules/antlr4-python3-runtime {
#     inherit (pkgs) antlr4;
#   };

#   anyascii = callPackage ./python-modules/anyascii { };

#   anybadge = callPackage ./python-modules/anybadge { };

#   anyconfig = callPackage ./python-modules/anyconfig { };

#   anyio = callPackage ./python-modules/anyio { };

#   anyqt = callPackage ./python-modules/anyqt { };

#   anysqlite = callPackage ./python-modules/anysqlite { };

#   anytree = callPackage ./python-modules/anytree {
#     inherit (pkgs) graphviz;
#   };

#   anywidget = callPackage ./python-modules/anywidget { };

#   aocd = callPackage ./python-modules/aocd { };

#   aocd-example-parser = callPackage ./python-modules/aocd-example-parser { };

#   apache-beam = callPackage ./python-modules/apache-beam { };

#   apcaccess = callPackage ./python-modules/apcaccess { };

#   apipkg = callPackage ./python-modules/apipkg { };

#   apischema = callPackage ./python-modules/apischema { };

#   apispec = callPackage ./python-modules/apispec { };

#   apispec-webframeworks = callPackage ./python-modules/apispec-webframeworks { };

#   apkinspector = callPackage ./python-modules/apkinspector { };

#   apkit = callPackage ./python-modules/apkit { };

#   aplpy = callPackage ./python-modules/aplpy { };

#   app-model = callPackage ./python-modules/app-model { };

#   appdirs = callPackage ./python-modules/appdirs { };

#   apple-weatherkit = callPackage ./python-modules/apple-weatherkit { };

#   applicationinsights = callPackage ./python-modules/applicationinsights { };

#   appnope = callPackage ./python-modules/appnope { };

#   apprise = callPackage ./python-modules/apprise { };

#   approval-utilities = callPackage ./python-modules/approval-utilities { };

#   approvaltests = callPackage ./python-modules/approvaltests { };

#   apptools = callPackage ./python-modules/apptools { };

#   appthreat-vulnerability-db = callPackage ./python-modules/appthreat-vulnerability-db { };

#   apricot-select = callPackage ./python-modules/apricot-select { };

#   aprslib = callPackage ./python-modules/aprslib { };

#   apscheduler = callPackage ./python-modules/apscheduler { };

#   apsw = callPackage ./python-modules/apsw { };

#   apycula = callPackage ./python-modules/apycula { };

#   aqipy-atmotech = callPackage ./python-modules/aqipy-atmotech { };

#   aqualogic = callPackage ./python-modules/aqualogic { };

#   arabic-reshaper = callPackage ./python-modules/arabic-reshaper { };

#   aranet4 = callPackage ./python-modules/aranet4 { };

#   arc4 = callPackage ./python-modules/arc4 { };

#   arcam-fmj = callPackage ./python-modules/arcam-fmj { };

#   archinfo = callPackage ./python-modules/archinfo { };

#   archspec = callPackage ./python-modules/archspec { };

#   area = callPackage ./python-modules/area { };

#   arelle = callPackage ./python-modules/arelle {
#     gui = true;
#   };

#   arelle-headless = callPackage ./python-modules/arelle {
#     gui = false;
#   };

#   aresponses = callPackage ./python-modules/aresponses { };

  argcomplete = callPackage ./python-modules/argcomplete { };

#   argh = callPackage ./python-modules/argh { };

#   argilla = callPackage ./python-modules/argilla { };

#   argon2-cffi = callPackage ./python-modules/argon2-cffi { };

#   argon2-cffi-bindings = callPackage ./python-modules/argon2-cffi-bindings { };

#   argostranslate = callPackage ./python-modules/argostranslate {
#     ctranslate2-cpp = pkgs.ctranslate2;
#   };

#   argos-translate-files = callPackage ./python-modules/argos-translate-files { };

#   argparse-addons = callPackage ./python-modules/argparse-addons { };

#   argparse-dataclass = callPackage ./python-modules/argparse-dataclass { };

#   argparse-manpage = callPackage ./python-modules/argparse-manpage { };

#   args = callPackage ./python-modules/args { };

#   aria2p = callPackage ./python-modules/aria2p { };

#   ariadne = callPackage ./python-modules/ariadne { };

#   arpy = callPackage ./python-modules/arpy { };

#   arnparse = callPackage ./python-modules/arnparse { };

#   array-record = callPackage ./python-modules/array-record { };

#   arrayqueues = callPackage ./python-modules/arrayqueues { };

#   arris-tg2492lg = callPackage ./python-modules/arris-tg2492lg { };

#   arrow = callPackage ./python-modules/arrow { };

#   arsenic = callPackage ./python-modules/arsenic { };

#   art = callPackage ./python-modules/art { };

#   arviz = callPackage ./python-modules/arviz { };

#   arxiv2bib = callPackage ./python-modules/arxiv2bib { };

#   asana = callPackage ./python-modules/asana { };

#   ascii-magic = callPackage ./python-modules/ascii-magic { };

#   asciimatics = callPackage ./python-modules/asciimatics { };

#   asciitree = callPackage ./python-modules/asciitree { };

#   asdf = callPackage ./python-modules/asdf { };

#   asdf-standard = callPackage ./python-modules/asdf-standard { };

#   asdf-transform-schemas = callPackage ./python-modules/asdf-transform-schemas { };

#   ase = callPackage ./python-modules/ase { };

#   asf-search = callPackage ./python-modules/asf-search { };

#   asgi-csrf = callPackage ./python-modules/asgi-csrf { };

#   asgi-lifespan = callPackage ./python-modules/asgi-lifespan { };

#   asgi-logger = callPackage ./python-modules/asgi-logger { };

#   asgineer = callPackage ./python-modules/asgineer { };

#   asgiref = callPackage ./python-modules/asgiref { };

#   asks = callPackage ./python-modules/asks { };

#   asmog = callPackage ./python-modules/asmog { };

#   asn1 = callPackage ./python-modules/asn1 { };

#   asn1ate = callPackage ./python-modules/asn1ate { };

#   asn1crypto = callPackage ./python-modules/asn1crypto { };

#   asn1tools = callPackage ./python-modules/asn1tools { };

#   aspectlib = callPackage ./python-modules/aspectlib { };

#   aspell-python = callPackage ./python-modules/aspell-python { };

#   aspy-refactor-imports = callPackage ./python-modules/aspy-refactor-imports { };

#   aspy-yaml = callPackage ./python-modules/aspy-yaml { };

#   assay = callPackage ./python-modules/assay { };

#   assertpy = callPackage ./python-modules/assertpy { };

#   asterisk-mbox = callPackage ./python-modules/asterisk-mbox { };

#   asteroid-filterbanks = callPackage ./python-modules/asteroid-filterbanks { };

#   asteval = callPackage ./python-modules/asteval { };

#   astor = callPackage ./python-modules/astor { };

#   astral = callPackage ./python-modules/astral { };

#   astroid = callPackage ./python-modules/astroid { };

#   astropy = callPackage ./python-modules/astropy { };

#   astropy-healpix = callPackage ./python-modules/astropy-healpix { };

#   astropy-helpers = callPackage ./python-modules/astropy-helpers { };

#   astropy-iers-data = callPackage ./python-modules/astropy-iers-data { };

#   astropy-extension-helpers = callPackage ./python-modules/astropy-extension-helpers { };

#   astroquery = callPackage ./python-modules/astroquery { };

#   asttokens = callPackage ./python-modules/asttokens { };

#   astunparse = callPackage ./python-modules/astunparse { };

#   asyauth = callPackage ./python-modules/asyauth { };

#   async-dns = callPackage ./python-modules/async-dns { };

#   async-generator = callPackage ./python-modules/async-generator { };

#   async-interrupt = callPackage ./python-modules/async-interrupt { };

#   async-lru = callPackage ./python-modules/async-lru { };

#   async-modbus = callPackage ./python-modules/async-modbus { };

#   asyncclick = callPackage ./python-modules/asyncclick { };

#   asynccmd = callPackage ./python-modules/asynccmd { };

#   asyncinotify = callPackage ./python-modules/asyncinotify { };

#   asyncio-dgram = callPackage ./python-modules/asyncio-dgram { };

#   asyncio-mqtt = callPackage ./python-modules/asyncio-mqtt { };

#   asyncio-rlock = callPackage ./python-modules/asyncio-rlock { };

#   asyncmy = callPackage ./python-modules/asyncmy { };

#   asyncio-throttle = callPackage ./python-modules/asyncio-throttle { };

#   asyncpg = callPackage ./python-modules/asyncpg { };

#   asyncserial = callPackage ./python-modules/asyncserial { };

#   asyncsleepiq = callPackage ./python-modules/asyncsleepiq { };

#   asyncssh = callPackage ./python-modules/asyncssh { };

#   asyncstdlib = callPackage ./python-modules/asyncstdlib { };

#   async-stagger = callPackage ./python-modules/async-stagger { };

#   asynctest = callPackage ./python-modules/asynctest { };

#   async-timeout = callPackage ./python-modules/async-timeout { };

#   async-tkinter-loop = callPackage ./python-modules/async-tkinter-loop { };

#   asyncua = callPackage ./python-modules/asyncua { };

#   async-upnp-client = callPackage ./python-modules/async-upnp-client { };

#   asyncwhois = callPackage ./python-modules/asyncwhois { };

#   asysocks = callPackage ./python-modules/asysocks { };

#   atc-ble = callPackage ./python-modules/atc-ble { };

#   atenpdu = callPackage ./python-modules/atenpdu { };

#   atlassian-python-api = callPackage ./python-modules/atlassian-python-api { };

#   atom = callPackage ./python-modules/atom { };

#   atomiclong = callPackage ./python-modules/atomiclong { };

#   atomicwrites = callPackage ./python-modules/atomicwrites { };

#   atomicwrites-homeassistant = callPackage ./python-modules/atomicwrites-homeassistant { };

#   atomman = callPackage ./python-modules/atomman { };

#   atpublic = callPackage ./python-modules/atpublic { };

#   atsim-potentials = callPackage ./python-modules/atsim-potentials { };

#   attrdict = callPackage ./python-modules/attrdict { };

  attrs = callPackage ./python-modules/attrs { };

#   aubio = callPackage ./python-modules/aubio { };

#   audible = callPackage ./python-modules/audible { };

#   audio-metadata = callPackage ./python-modules/audio-metadata { };

#   audioread = callPackage ./python-modules/audioread { };

#   audiotools = callPackage ./python-modules/audiotools {
#     inherit (pkgs.darwin.apple_sdk.frameworks) AudioToolbox AudioUnit CoreServices;
#   };

#   auditok = callPackage ./python-modules/auditok { };

#   auditwheel = callPackage ./python-modules/auditwheel {
#     inherit (pkgs) bzip2 gnutar patchelf unzip;
#   };

#   augeas = callPackage ./python-modules/augeas {
#     inherit (pkgs) augeas;
#   };

#   augmax = callPackage ./python-modules/augmax { };

#   auroranoaa = callPackage ./python-modules/auroranoaa { };

#   aurorapy = callPackage ./python-modules/aurorapy { };

#   autarco = callPackage ./python-modules/autarco { };

#   auth0-python = callPackage ./python-modules/auth0-python { };

#   authcaptureproxy = callPackage ./python-modules/authcaptureproxy { };

#   authheaders = callPackage ./python-modules/authheaders { };

#   authlib = callPackage ./python-modules/authlib { };

#   authres = callPackage ./python-modules/authres { };

#   autobahn = callPackage ./python-modules/autobahn { };

#   autocommand = callPackage ./python-modules/autocommand { };

#   autofaiss = callPackage ./python-modules/autofaiss { };

#   autoflake = callPackage ./python-modules/autoflake { };

#   autograd = callPackage ./python-modules/autograd { };

#   autograd-gamma = callPackage ./python-modules/autograd-gamma { };

#   autoit-ripper = callPackage ./python-modules/autoit-ripper { };

#   autologging = callPackage ./python-modules/autologging { };

#   automat = callPackage ./python-modules/automat { };

#   automate-home = callPackage ./python-modules/automate-home { };

#   automx2 = callPackage ./python-modules/automx2 { };

#   autopage = callPackage ./python-modules/autopage { };

#   autopep8 = callPackage ./python-modules/autopep8 { };

#   autoslot = callPackage ./python-modules/autoslot { };

#   avahi = toPythonModule (pkgs.avahi.override {
#     inherit python;
#     withPython = true;
#   });

#   av = callPackage ./python-modules/av { };

#   avea = callPackage ./python-modules/avea { };

#  avidtools = callPackage ./python-modules/avidtools { };

#   avion = callPackage ./python-modules/avion { };

#   avro3k = callPackage ./python-modules/avro3k { };

#   avro = callPackage ./python-modules/avro { };

#   avro-python3 = callPackage ./python-modules/avro-python3 { };

#   aw-client = callPackage ./python-modules/aw-client { };

#   aw-core = callPackage ./python-modules/aw-core { };

#   awacs = callPackage ./python-modules/awacs { };

#   awesome-slugify = callPackage ./python-modules/awesome-slugify { };

#   awesomeversion = callPackage ./python-modules/awesomeversion { };

#   awkward = callPackage ./python-modules/awkward { };

#   awkward-cpp = callPackage ./python-modules/awkward-cpp {
#     inherit (pkgs) cmake ninja;
#   };

#   aws-adfs = callPackage ./python-modules/aws-adfs { };

#   aws-encryption-sdk = callPackage ./python-modules/aws-encryption-sdk { };

#   aws-lambda-builders = callPackage ./python-modules/aws-lambda-builders { };

#   aws-sam-translator = callPackage ./python-modules/aws-sam-translator { };

#   aws-secretsmanager-caching = callPackage ./python-modules/aws-secretsmanager-caching { };

#   aws-xray-sdk = callPackage ./python-modules/aws-xray-sdk { };

#   awscrt = callPackage ./python-modules/awscrt {
#     inherit (pkgs.darwin.apple_sdk.frameworks) CoreFoundation Security;
#   };

#   awsiotpythonsdk = callPackage ./python-modules/awsiotpythonsdk { };

#   awsipranges = callPackage ./python-modules/awsipranges { };

#   awslambdaric = callPackage ./python-modules/awslambdaric { };

#   awswrangler = callPackage ./python-modules/awswrangler { };

#   ax = callPackage ./python-modules/ax { };

#   axis = callPackage ./python-modules/axis { };

#   axisregistry = callPackage ./python-modules/axisregistry { };

#   azure-appconfiguration = callPackage ./python-modules/azure-appconfiguration { };

#   azure-applicationinsights = callPackage ./python-modules/azure-applicationinsights { };

#   azure-batch = callPackage ./python-modules/azure-batch { };

#   azure-common = callPackage ./python-modules/azure-common { };

#   azure-containerregistry = callPackage ./python-modules/azure-containerregistry { };

#   azure-core = callPackage ./python-modules/azure-core { };

#   azure-cosmos = callPackage ./python-modules/azure-cosmos { };

#   azure-cosmosdb-nspkg = callPackage ./python-modules/azure-cosmosdb-nspkg { };

#   azure-cosmosdb-table = callPackage ./python-modules/azure-cosmosdb-table { };

#   azure-data-tables = callPackage ./python-modules/azure-data-tables { };

#   azure-datalake-store = callPackage ./python-modules/azure-datalake-store { };

#   azure-eventgrid = callPackage ./python-modules/azure-eventgrid { };

#   azure-eventhub = callPackage ./python-modules/azure-eventhub { };

#   azure-functions-devops-build = callPackage ./python-modules/azure-functions-devops-build { };

#   azure-graphrbac = callPackage ./python-modules/azure-graphrbac { };

#   azure-identity = callPackage ./python-modules/azure-identity { };

#   azure-keyvault = callPackage ./python-modules/azure-keyvault { };

#   azure-keyvault-administration = callPackage ./python-modules/azure-keyvault-administration { };

#   azure-keyvault-certificates = callPackage ./python-modules/azure-keyvault-certificates { };

#   azure-keyvault-keys = callPackage ./python-modules/azure-keyvault-keys { };

#   azure-keyvault-nspkg = callPackage ./python-modules/azure-keyvault-nspkg { };

#   azure-keyvault-secrets = callPackage ./python-modules/azure-keyvault-secrets { };

#   azure-loganalytics = callPackage ./python-modules/azure-loganalytics { };

#   azure-mgmt-advisor = callPackage ./python-modules/azure-mgmt-advisor { };

#   azure-mgmt-apimanagement = callPackage ./python-modules/azure-mgmt-apimanagement { };

#   azure-mgmt-appconfiguration = callPackage ./python-modules/azure-mgmt-appconfiguration { };

#   azure-mgmt-appcontainers = callPackage ./python-modules/azure-mgmt-appcontainers { };

#   azure-mgmt-applicationinsights = callPackage ./python-modules/azure-mgmt-applicationinsights { };

#   azure-mgmt-authorization = callPackage ./python-modules/azure-mgmt-authorization { };

#   azure-mgmt-batchai = callPackage ./python-modules/azure-mgmt-batchai { };

#   azure-mgmt-batch = callPackage ./python-modules/azure-mgmt-batch { };

#   azure-mgmt-billing = callPackage ./python-modules/azure-mgmt-billing { };

#   azure-mgmt-botservice = callPackage ./python-modules/azure-mgmt-botservice { };

#   azure-mgmt-cdn = callPackage ./python-modules/azure-mgmt-cdn { };

#   azure-mgmt-cognitiveservices = callPackage ./python-modules/azure-mgmt-cognitiveservices { };

#   azure-mgmt-commerce = callPackage ./python-modules/azure-mgmt-commerce { };

#   azure-mgmt-common = callPackage ./python-modules/azure-mgmt-common { };

#   azure-mgmt-compute = callPackage ./python-modules/azure-mgmt-compute { };

#   azure-mgmt-consumption = callPackage ./python-modules/azure-mgmt-consumption { };

#   azure-mgmt-containerinstance = callPackage ./python-modules/azure-mgmt-containerinstance { };

#   azure-mgmt-containerregistry = callPackage ./python-modules/azure-mgmt-containerregistry { };

#   azure-mgmt-containerservice = callPackage ./python-modules/azure-mgmt-containerservice { };

#   azure-mgmt-core = callPackage ./python-modules/azure-mgmt-core { };

#   azure-mgmt-cosmosdb = callPackage ./python-modules/azure-mgmt-cosmosdb { };

#   azure-mgmt-databoxedge = callPackage ./python-modules/azure-mgmt-databoxedge { };

#   azure-mgmt-datafactory = callPackage ./python-modules/azure-mgmt-datafactory { };

#   azure-mgmt-datalake-analytics = callPackage ./python-modules/azure-mgmt-datalake-analytics { };

#   azure-mgmt-datalake-nspkg = callPackage ./python-modules/azure-mgmt-datalake-nspkg { };

#   azure-mgmt-datalake-store = callPackage ./python-modules/azure-mgmt-datalake-store { };

#   azure-mgmt-datamigration = callPackage ./python-modules/azure-mgmt-datamigration { };

#   azure-mgmt-deploymentmanager = callPackage ./python-modules/azure-mgmt-deploymentmanager { };

#   azure-mgmt-devspaces = callPackage ./python-modules/azure-mgmt-devspaces { };

#   azure-mgmt-devtestlabs = callPackage ./python-modules/azure-mgmt-devtestlabs { };

#   azure-mgmt-dns = callPackage ./python-modules/azure-mgmt-dns { };

#   azure-mgmt-eventgrid = callPackage ./python-modules/azure-mgmt-eventgrid { };

#   azure-mgmt-eventhub = callPackage ./python-modules/azure-mgmt-eventhub { };

#   azure-mgmt-extendedlocation = callPackage ./python-modules/azure-mgmt-extendedlocation { };

#   azure-mgmt-frontdoor = callPackage ./python-modules/azure-mgmt-frontdoor { };

#   azure-mgmt-hanaonazure = callPackage ./python-modules/azure-mgmt-hanaonazure { };

#   azure-mgmt-hdinsight = callPackage ./python-modules/azure-mgmt-hdinsight { };

#   azure-mgmt-imagebuilder = callPackage ./python-modules/azure-mgmt-imagebuilder { };

#   azure-mgmt-iotcentral = callPackage ./python-modules/azure-mgmt-iotcentral { };

#   azure-mgmt-iothub = callPackage ./python-modules/azure-mgmt-iothub { };

#   azure-mgmt-iothubprovisioningservices = callPackage ./python-modules/azure-mgmt-iothubprovisioningservices { };

#   azure-mgmt-keyvault = callPackage ./python-modules/azure-mgmt-keyvault { };

#   azure-mgmt-kusto = callPackage ./python-modules/azure-mgmt-kusto { };

#   azure-mgmt-loganalytics = callPackage ./python-modules/azure-mgmt-loganalytics { };

#   azure-mgmt-logic = callPackage ./python-modules/azure-mgmt-logic { };

#   azure-mgmt-machinelearningcompute = callPackage ./python-modules/azure-mgmt-machinelearningcompute { };

#   azure-mgmt-managedservices = callPackage ./python-modules/azure-mgmt-managedservices { };

#   azure-mgmt-managementgroups = callPackage ./python-modules/azure-mgmt-managementgroups { };

#   azure-mgmt-managementpartner = callPackage ./python-modules/azure-mgmt-managementpartner { };

#   azure-mgmt-maps = callPackage ./python-modules/azure-mgmt-maps { };

#   azure-mgmt-marketplaceordering = callPackage ./python-modules/azure-mgmt-marketplaceordering { };

#   azure-mgmt-media = callPackage ./python-modules/azure-mgmt-media { };

#   azure-mgmt-monitor = callPackage ./python-modules/azure-mgmt-monitor { };

#   azure-mgmt-msi = callPackage ./python-modules/azure-mgmt-msi { };

#   azure-mgmt-netapp = callPackage ./python-modules/azure-mgmt-netapp { };

#   azure-mgmt-network = callPackage ./python-modules/azure-mgmt-network { };

#   azure-mgmt-notificationhubs = callPackage ./python-modules/azure-mgmt-notificationhubs { };

#   azure-mgmt-nspkg = callPackage ./python-modules/azure-mgmt-nspkg { };

#   azure-mgmt-policyinsights = callPackage ./python-modules/azure-mgmt-policyinsights { };

#   azure-mgmt-powerbiembedded = callPackage ./python-modules/azure-mgmt-powerbiembedded { };

#   azure-mgmt-privatedns = callPackage ./python-modules/azure-mgmt-privatedns { };

#   azure-mgmt-rdbms = callPackage ./python-modules/azure-mgmt-rdbms { };

#   azure-mgmt-recoveryservicesbackup = callPackage ./python-modules/azure-mgmt-recoveryservicesbackup { };

#   azure-mgmt-recoveryservices = callPackage ./python-modules/azure-mgmt-recoveryservices { };

#   azure-mgmt-redhatopenshift = callPackage ./python-modules/azure-mgmt-redhatopenshift { };

#   azure-mgmt-redis = callPackage ./python-modules/azure-mgmt-redis { };

#   azure-mgmt-relay = callPackage ./python-modules/azure-mgmt-relay { };

#   azure-mgmt-reservations = callPackage ./python-modules/azure-mgmt-reservations { };

#   azure-mgmt-resource = callPackage ./python-modules/azure-mgmt-resource { };

#   azure-mgmt-scheduler = callPackage ./python-modules/azure-mgmt-scheduler { };

#   azure-mgmt-search = callPackage ./python-modules/azure-mgmt-search { };

#   azure-mgmt-security = callPackage ./python-modules/azure-mgmt-security { };

#   azure-mgmt-servicebus = callPackage ./python-modules/azure-mgmt-servicebus { };

#   azure-mgmt-servicefabric = callPackage ./python-modules/azure-mgmt-servicefabric { };

#   azure-mgmt-servicefabricmanagedclusters = callPackage ./python-modules/azure-mgmt-servicefabricmanagedclusters { };

#   azure-mgmt-servicelinker = callPackage ./python-modules/azure-mgmt-servicelinker { };

#   azure-mgmt-signalr = callPackage ./python-modules/azure-mgmt-signalr { };

#   azure-mgmt-sql = callPackage ./python-modules/azure-mgmt-sql { };

#   azure-mgmt-sqlvirtualmachine = callPackage ./python-modules/azure-mgmt-sqlvirtualmachine { };

#   azure-mgmt-storage = callPackage ./python-modules/azure-mgmt-storage { };

#   azure-mgmt-subscription = callPackage ./python-modules/azure-mgmt-subscription { };

#   azure-mgmt-synapse = callPackage ./python-modules/azure-mgmt-synapse { };

#   azure-mgmt-trafficmanager = callPackage ./python-modules/azure-mgmt-trafficmanager { };

#   azure-mgmt-web = callPackage ./python-modules/azure-mgmt-web { };

#   azure-monitor-ingestion = callPackage ./python-modules/azure-monitor-ingestion { };

#   azure-multiapi-storage = callPackage ./python-modules/azure-multiapi-storage { };

#   azure-nspkg = callPackage ./python-modules/azure-nspkg { };

#   azure-servicebus = callPackage ./python-modules/azure-servicebus { };

#   azure-servicefabric = callPackage ./python-modules/azure-servicefabric { };

#   azure-servicemanagement-legacy = callPackage ./python-modules/azure-servicemanagement-legacy { };

#   azure-storage-blob = callPackage ./python-modules/azure-storage-blob { };

#   azure-storage-common = callPackage ./python-modules/azure-storage-common { };

#   azure-storage-file = callPackage ./python-modules/azure-storage-file { };

#   azure-storage-file-share = callPackage ./python-modules/azure-storage-file-share { };

#   azure-storage-nspkg = callPackage ./python-modules/azure-storage-nspkg { };

#   azure-storage-queue = callPackage ./python-modules/azure-storage-queue { };

#   azure-synapse-accesscontrol = callPackage ./python-modules/azure-synapse-accesscontrol { };

#   azure-synapse-artifacts = callPackage ./python-modules/azure-synapse-artifacts { };

#   azure-synapse-managedprivateendpoints = callPackage ./python-modules/azure-synapse-managedprivateendpoints { };

#   azure-synapse-spark = callPackage ./python-modules/azure-synapse-spark { };

#   b2sdk = callPackage ./python-modules/b2sdk { };

  babel = callPackage ./python-modules/babel { };

#   babelfish = callPackage ./python-modules/babelfish { };

#   babelfont = callPackage ./python-modules/babelfont { };

#   babelgladeextractor = callPackage ./python-modules/babelgladeextractor { };

#   bambi = callPackage ./python-modules/bambi { };

#   pad4pi = callPackage ./python-modules/pad4pi { };

#   paddle-bfloat = callPackage ./python-modules/paddle-bfloat { };

#   paddle2onnx = callPackage ./python-modules/paddle2onnx { };

#   paddleocr = callPackage ./python-modules/paddleocr { };

#   paddlepaddle = callPackage ./python-modules/paddlepaddle { };

#   pueblo = callPackage ./python-modules/pueblo { };

#   pulumi = callPackage ./python-modules/pulumi { inherit (pkgs) pulumi; };

#   pulumi-aws = callPackage ./python-modules/pulumi-aws { };

#   pulumi-aws-native = pkgs.pulumiPackages.pulumi-aws-native.sdks.python;

#   pulumi-azure-native = pkgs.pulumiPackages.pulumi-azure-native.sdks.python;

#   pulumi-command = pkgs.pulumiPackages.pulumi-command.sdks.python;

#   pulumi-random = pkgs.pulumiPackages.pulumi-random.sdks.python;

#   backcall = callPackage ./python-modules/backcall { };

#   backoff = callPackage ./python-modules/backoff { };

#   backports-cached-property = callPackage ./python-modules/backports-cached-property { };

#   backports-datetime-fromisoformat = callPackage ./python-modules/backports-datetime-fromisoformat { };

#   backports-entry-points-selectable = callPackage ./python-modules/backports-entry-points-selectable { };

#   backports-shutil-get-terminal-size = callPackage ./python-modules/backports-shutil-get-terminal-size { };

#   backports-shutil-which = callPackage ./python-modules/backports-shutil-which { };

#   backports-strenum = callPackage ./python-modules/backports-strenum { };

  backports-zoneinfo = callPackage ./python-modules/backports-zoneinfo { };

#   bacpypes = callPackage ./python-modules/bacpypes { };

#   bagit = callPackage ./python-modules/bagit { };

#   banal = callPackage ./python-modules/banal { };

#   bandcamp-api = callPackage ./python-modules/bandcamp-api { };

#   bandit = callPackage ./python-modules/bandit { };

#   bangla = callPackage ./python-modules/bangla { };

#   bap = callPackage ./python-modules/bap {
#     inherit (pkgs.ocaml-ng.ocamlPackages_4_14) bap;
#   };

#   barectf = callPackage ./python-modules/barectf { };

#   baron = callPackage ./python-modules/baron { };

#   base2048 = callPackage ./python-modules/base2048 { };

#   base36 = callPackage ./python-modules/base36 { };

#   base58 = callPackage ./python-modules/base58 { };

#   base58check = callPackage ./python-modules/base58check { };

#   base64io = callPackage ./python-modules/base64io { };

#   baseline = callPackage ./python-modules/baseline { };

#   baselines = callPackage ./python-modules/baselines { };

#   basemap = callPackage ./python-modules/basemap { };

#   basemap-data = callPackage ./python-modules/basemap-data { };

#   bases = callPackage ./python-modules/bases { };

#   bash-kernel = callPackage ./python-modules/bash-kernel { };

#   bashlex = callPackage ./python-modules/bashlex { };

#   basiciw = callPackage ./python-modules/basiciw { };

#   batchgenerators = callPackage ./python-modules/batchgenerators { };

#   batchspawner = callPackage ./python-modules/batchspawner { };

#   batinfo = callPackage ./python-modules/batinfo { };

#   baycomp = callPackage ./python-modules/baycomp { };

#   bayesian-optimization = callPackage ./python-modules/bayesian-optimization { };

#   bayespy = callPackage ./python-modules/bayespy { };

#   bbox = callPackage ./python-modules/bbox { };

#   bc-detect-secrets = callPackage ./python-modules/bc-detect-secrets { };

#   bc-jsonpath-ng = callPackage ./python-modules/bc-jsonpath-ng { };

#   bc-python-hcl2 = callPackage ./python-modules/bc-python-hcl2 { };

#   bcdoc = callPackage ./python-modules/bcdoc { };

#   bcf = callPackage ./python-modules/bcf { };

#   bcg = callPackage ./python-modules/bcg { };

#   bch = callPackage ./python-modules/bch { };

#   bcrypt = if stdenv.hostPlatform.system == "i686-linux" then
#     callPackage ./python-modules/bcrypt/3.nix { }
#   else
#     callPackage ./python-modules/bcrypt { };

#   bdffont = callPackage ./python-modules/bdffont { };

#   beaker = callPackage ./python-modules/beaker { };

#   before-after = callPackage ./python-modules/before-after { };

#   beancount = callPackage ./python-modules/beancount { };

#   beancount-black = callPackage ./python-modules/beancount-black { };

#   beancount-parser = callPackage ./python-modules/beancount-parser { };

#   beancount-docverif = callPackage ./python-modules/beancount-docverif { };

#   beanstalkc = callPackage ./python-modules/beanstalkc { };

#   beartype = callPackage ./python-modules/beartype { };

#   beautiful-date = callPackage ./python-modules/beautiful-date { };

#   beautifulsoup4 = callPackage ./python-modules/beautifulsoup4 { };

#   beautifultable = callPackage ./python-modules/beautifultable { };

#   beautysh = callPackage ./python-modules/beautysh { };

#   bech32 = callPackage ./python-modules/bech32 { };

#   behave = callPackage ./python-modules/behave { };

#   bellows = callPackage ./python-modules/bellows { };

#   bencode-py = callPackage ./python-modules/bencode-py { };

#   bencoder = callPackage ./python-modules/bencoder { };

#   beniget = callPackage ./python-modules/beniget { };

#   bentoml = callPackage ./python-modules/bentoml { };

#   bespon = callPackage ./python-modules/bespon { };

#   betacode = callPackage ./python-modules/betacode { };

#   betamax = callPackage ./python-modules/betamax { };

#   betamax-matchers = callPackage ./python-modules/betamax-matchers { };

#   betamax-serializers = callPackage ./python-modules/betamax-serializers { };

#   betterproto = callPackage ./python-modules/betterproto { };

#   beziers = callPackage ./python-modules/beziers { };

#   bibtexparser = callPackage ./python-modules/bibtexparser { };

#   bidict = callPackage ./python-modules/bidict { };

#   bids-validator = callPackage ./python-modules/bids-validator { };

#   biliass = callPackage ./python-modules/biliass { };

#   billiard = callPackage ./python-modules/billiard { };

#   bimmer-connected = callPackage ./python-modules/bimmer-connected { };

#   binary = callPackage ./python-modules/binary { };

#   binary2strings = callPackage ./python-modules/binary2strings { };

#   binaryornot = callPackage ./python-modules/binaryornot { };

#   bincopy = callPackage ./python-modules/bincopy { };

#   bindep = callPackage ./python-modules/bindep { };

#   binho-host-adapter = callPackage ./python-modules/binho-host-adapter { };

#   binwalk = callPackage ./python-modules/binwalk { };

#   binwalk-full = self.binwalk.override { visualizationSupport = true; };

#   biopandas = callPackage ./python-modules/biopandas { };

#   biopython = callPackage ./python-modules/biopython { };

#   biplist = callPackage ./python-modules/biplist { };

#   bip-utils = callPackage ./python-modules/bip-utils { };

#   bip32 = callPackage ./python-modules/bip32 { };

#   birch = callPackage ./python-modules/birch { };

#   bitarray = callPackage ./python-modules/bitarray { };

#   bitbox02 = callPackage ./python-modules/bitbox02 { };

#   bitcoinlib = callPackage ./python-modules/bitcoinlib { };

#   bitcoin-utils-fork-minimal = callPackage ./python-modules/bitcoin-utils-fork-minimal { };

#   bitcoinrpc = callPackage ./python-modules/bitcoinrpc { };

#   bite-parser = callPackage ./python-modules/bite-parser { };

#   bitlist = callPackage ./python-modules/bitlist { };

#   bitmath = callPackage ./python-modules/bitmath { };

#   bitsandbytes = callPackage ./python-modules/bitsandbytes { };

#   bitstring = callPackage ./python-modules/bitstring { };

#   bitstruct = callPackage ./python-modules/bitstruct { };

#   bitvavo-aio = callPackage ./python-modules/bitvavo-aio { };

#   bizkaibus = callPackage ./python-modules/bizkaibus { };

#   bjoern = callPackage ./python-modules/bjoern { };

#   bkcharts = callPackage ./python-modules/bkcharts { };

#   black = callPackage ./python-modules/black { };

#   blackjax = callPackage ./python-modules/blackjax { };

#   black-macchiato = callPackage ./python-modules/black-macchiato { };

#   bleach = callPackage ./python-modules/bleach { };

#   bleach-allowlist = callPackage ./python-modules/bleach-allowlist { };

#   bleak = callPackage ./python-modules/bleak { };

#   bleak-esphome = callPackage ./python-modules/bleak-esphome { };

#   bleak-retry-connector = callPackage ./python-modules/bleak-retry-connector { };

#   blebox-uniapi = callPackage ./python-modules/blebox-uniapi { };

#   bless = callPackage ./python-modules/bless { };

#   blessed = callPackage ./python-modules/blessed { };

#   blessings = callPackage ./python-modules/blessings { };

#   blinker = callPackage ./python-modules/blinker { };

#   blinkpy = callPackage ./python-modules/blinkpy { };

#   blinkstick = callPackage ./python-modules/blinkstick { };

#   blis = callPackage ./python-modules/blis { };

#   blobfile = callPackage ./python-modules/blobfile { };

#   blockchain = callPackage ./python-modules/blockchain { };

#   blockdiag = callPackage ./python-modules/blockdiag { };

#   block-io = callPackage ./python-modules/block-io { };

#   blockfrost-python = callPackage ./python-modules/blockfrost-python { };

#   blocksat-cli = callPackage ./python-modules/blocksat-cli { };

#   bloodhound-py = callPackage ./python-modules/bloodhound-py { };

#   bloodyad = callPackage ./python-modules/bloodyad { };

#   blosc2 = callPackage ./python-modules/blosc2 { };

#   bluecurrent-api = callPackage ./python-modules/bluecurrent-api { };

#   bluemaestro-ble = callPackage ./python-modules/bluemaestro-ble { };

#   bluepy = callPackage ./python-modules/bluepy { };

#   bluepy-devices = callPackage ./python-modules/bluepy-devices { };

#   bluetooth-adapters = callPackage ./python-modules/bluetooth-adapters { };

#   bluetooth-auto-recovery = callPackage ./python-modules/bluetooth-auto-recovery { };

#   bluetooth-data-tools= callPackage ./python-modules/bluetooth-data-tools { };

#   bluetooth-sensor-state-data = callPackage ./python-modules/bluetooth-sensor-state-data { };

#   blurhash = callPackage ./python-modules/blurhash { };

#   blurhash-python = callPackage ./python-modules/blurhash-python { };

#   bme280spi = callPackage ./python-modules/bme280spi { };

#   bme680 = callPackage ./python-modules/bme680 { };

#   bnnumerizer = callPackage ./python-modules/bnnumerizer { };

#   bnunicodenormalizer = callPackage ./python-modules/bnunicodenormalizer { };

#   boa-api = callPackage ./python-modules/boa-api { };

#   boiboite-opener-framework = callPackage ./python-modules/boiboite-opener-framework { };

#   boilerpy3 = callPackage ./python-modules/boilerpy3 { };

#   bokeh = callPackage ./python-modules/bokeh { };

#   boltons = callPackage ./python-modules/boltons { };

#   boltztrap2 = callPackage ./python-modules/boltztrap2 { };

#   bond-api = callPackage ./python-modules/bond-api { };

#   bond-async = callPackage ./python-modules/bond-async { };

#   bonsai = callPackage ./python-modules/bonsai { };

#   booleanoperations = callPackage ./python-modules/booleanoperations { };

#   boolean-py = callPackage ./python-modules/boolean-py { };

#   # Build boost for this specific Python version
#   # TODO: use separate output for libboost_python.so
#   boost = toPythonModule (pkgs.boost.override {
#     inherit (self) python numpy;
#     enablePython = true;
#   });

#   borb = callPackage ./python-modules/borb { };

#   bork = callPackage ./python-modules/bork { };

#   boschshcpy = callPackage ./python-modules/boschshcpy { };

#   bottombar = callPackage ./python-modules/bottombar { };

#   boost-histogram = callPackage ./python-modules/boost-histogram {
#     inherit (pkgs) boost;
#   };

#   boto3 = callPackage ./python-modules/boto3 { };

#   boto3-stubs = callPackage ./python-modules/boto3-stubs { };

#   boto = callPackage ./python-modules/boto { };

#   botocore = callPackage ./python-modules/botocore { };

#   botocore-stubs = callPackage ./python-modules/botocore-stubs { };

#   botorch = callPackage ./python-modules/botorch { };

#   bottle = callPackage ./python-modules/bottle { };

#   bottleneck = callPackage ./python-modules/bottleneck { };

#   boxx = callPackage ./python-modules/boxx { };

#   bpemb = callPackage ./python-modules/bpemb { };

#   bpycv = callPackage ./python-modules/bpycv {};

#   bpython = callPackage ./python-modules/bpython { };

#   bqplot = callPackage ./python-modules/bqplot { };

#   bqscales = callPackage ./python-modules/bqscales { };

#   braceexpand = callPackage ./python-modules/braceexpand { };

#   bracex = callPackage ./python-modules/bracex { };

#   braintree = callPackage ./python-modules/braintree { };

#   branca = callPackage ./python-modules/branca { };

#   bravado-core = callPackage ./python-modules/bravado-core { };

#   bravia-tv = callPackage ./python-modules/bravia-tv { };

#   breathe = callPackage ./python-modules/breathe { };

#   breezy = callPackage ./python-modules/breezy { };

#   brelpy = callPackage ./python-modules/brelpy { };

#   brian2 = callPackage ./python-modules/brian2 { };

#   bring-api = callPackage ./python-modules/bring-api { };

#   broadbean = callPackage ./python-modules/broadbean { };

#   broadlink = callPackage ./python-modules/broadlink { };

#   brother = callPackage ./python-modules/brother { };

#   brother-ql = callPackage ./python-modules/brother-ql { };

#   brotli = callPackage ./python-modules/brotli { };

#   brotli-asgi = callPackage ./python-modules/brotli-asgi { };

  brotlicffi = callPackage ./python-modules/brotlicffi {
    inherit (pkgs) brotli;
  };

#   brotlipy = callPackage ./python-modules/brotlipy { };

#   brottsplatskartan = callPackage ./python-modules/brottsplatskartan { };

#   browser-cookie3 = callPackage ./python-modules/browser-cookie3 { };

#   brunt = callPackage ./python-modules/brunt { };

#   bsddb3 = callPackage ./python-modules/bsddb3 { };

#   bsdiff4 = callPackage ./python-modules/bsdiff4 { };

#   bson = callPackage ./python-modules/bson { };

#   bsuite = callPackage ./python-modules/bsuite { };

#   btchip-python = callPackage ./python-modules/btchip-python { };

#   btest = callPackage ./python-modules/btest { };

#   bthome-ble = callPackage ./python-modules/bthome-ble { };

#   bt-proximity = callPackage ./python-modules/bt-proximity { };

#   btrees = callPackage ./python-modules/btrees { };

#   btrfs = callPackage ./python-modules/btrfs { };

#   btrfsutil = callPackage ./python-modules/btrfsutil { };

#   btsmarthub-devicelist = callPackage ./python-modules/btsmarthub-devicelist { };

#   btsocket = callPackage ./python-modules/btsocket { };

#   bubop = callPackage ./python-modules/bubop { };

#   bucketstore = callPackage ./python-modules/bucketstore { };

#   bugsnag = callPackage ./python-modules/bugsnag { };

#   bugwarrior = callPackage ./python-modules/bugwarrior { };

#   bugz = callPackage ./python-modules/bugz { };

#   bugzilla = callPackage ./python-modules/bugzilla { };

#   buienradar = callPackage ./python-modules/buienradar { };

  build = callPackage ./python-modules/build { };

  buildcatrust = callPackage ./python-modules/buildcatrust { };

#   bumps = callPackage ./python-modules/bumps { };

#   bunch = callPackage ./python-modules/bunch { };

#   bundlewrap = callPackage ./python-modules/bundlewrap { };

#   bundlewrap-keepass = callPackage ./python-modules/bundlewrap-keepass { };

#   bundlewrap-pass = callPackage ./python-modules/bundlewrap-pass { };

#   bundlewrap-teamvault = callPackage ./python-modules/bundlewrap-teamvault { };

#   busypie = callPackage ./python-modules/busypie { };

#   bx-py-utils = callPackage ./python-modules/bx-py-utils { };

#   bx-python = callPackage ./python-modules/bx-python { };

#   bwapy = callPackage ./python-modules/bwapy { };

#   bytecode = callPackage ./python-modules/bytecode { };

#   bytewax = callPackage ./python-modules/bytewax { };

#   bz2file = callPackage ./python-modules/bz2file { };

#   cachecontrol = callPackage ./python-modules/cachecontrol { };

#   cached-ipaddress = callPackage ./python-modules/cached-ipaddress { };

#   cached-property = callPackage ./python-modules/cached-property { };

#   cachelib = callPackage ./python-modules/cachelib { };

#   cachetools = callPackage ./python-modules/cachetools { };

#   cachey = callPackage ./python-modules/cachey { };

#   cachier = callPackage ./python-modules/cachier { };

#   cachy = callPackage ./python-modules/cachy { };

#   cadquery = callPackage ./python-modules/cadquery {
#     inherit (pkgs.darwin.apple_sdk.frameworks) Cocoa;
#   };

#   caffe = toPythonModule (pkgs.caffe.override {
#     pythonSupport = true;
#     inherit (self) python numpy boost;
#   });

#   caffeWithCuda = toPythonModule (pkgs.caffeWithCuda.override {
#     pythonSupport = true;
#     inherit (self) python numpy boost;
#   });

#   caio = callPackage ./python-modules/caio { };

#   cairocffi = callPackage ./python-modules/cairocffi { };

#   cairosvg = callPackage ./python-modules/cairosvg { };

#   caldav = callPackage ./python-modules/caldav { };

  calver = callPackage ./python-modules/calver { };

#   callee = callPackage ./python-modules/callee { };

#   calmjs = callPackage ./python-modules/calmjs { };

#   calmjs-parse = callPackage ./python-modules/calmjs-parse { };

#   calmjs-types = callPackage ./python-modules/calmjs-types { };

#   calysto = callPackage ./python-modules/calysto { };

#   calysto-scheme = callPackage ./python-modules/calysto-scheme { };

#   camel-converter = callPackage ./python-modules/camel-converter { };

#   can = callPackage ./python-modules/can { };

#   canals = callPackage ./python-modules/canals { };

#   canmatrix = callPackage ./python-modules/canmatrix { };

#   canonicaljson = callPackage ./python-modules/canonicaljson { };

#   canopen = callPackage ./python-modules/canopen { };

#   cantools = callPackage ./python-modules/cantools { };

#   camelot = callPackage ./python-modules/camelot { };

#   capstone = callPackage ./python-modules/capstone {
#     inherit (pkgs) capstone;
#   };
#   capstone_4 = callPackage ./python-modules/capstone/4.nix {
#     inherit (pkgs) capstone_4;
#   };

#   captcha = callPackage ./python-modules/captcha { };

#   capturer = callPackage ./python-modules/capturer { };

#   carbon = callPackage ./python-modules/carbon { };

#   cart = callPackage ./python-modules/cart { };

#   cartopy = callPackage ./python-modules/cartopy { };

#   casa-formats-io = callPackage ./python-modules/casa-formats-io { };

#   casbin = callPackage ./python-modules/casbin { };

#   case = callPackage ./python-modules/case { };

#   cashaddress = callPackage ./python-modules/cashaddress { };

#   cassandra-driver = callPackage ./python-modules/cassandra-driver { };

#   castepxbin = callPackage ./python-modules/castepxbin { };

#   casttube = callPackage ./python-modules/casttube { };

#   catalogue = callPackage ./python-modules/catalogue { };

#   catboost = callPackage ./python-modules/catboost {
#     catboost = pkgs.catboost.override {
#       pythonSupport = true;
#       python3Packages = self;
#     };
#   };

#   catkin-pkg = callPackage ./python-modules/catkin-pkg { };

#   catppuccin = callPackage ./python-modules/catppuccin { };

#   cattrs = callPackage ./python-modules/cattrs { };

#   cbeams = callPackage ../misc/cbeams { };

#   cbor2 = callPackage ./python-modules/cbor2 { };

#   cbor = callPackage ./python-modules/cbor { };

#   cccolutils = callPackage ./python-modules/cccolutils { };

#   cdcs = callPackage ./python-modules/cdcs { };

#   celery = callPackage ./python-modules/celery { };

#   celery-redbeat = callPackage ./python-modules/celery-redbeat { };

#   celery-singleton = callPackage ./python-modules/celery-singleton { };

#   celery-types = callPackage ./python-modules/celery-types { };

#   cement = callPackage ./python-modules/cement { };

#   cemm = callPackage ./python-modules/cemm { };

#   censys = callPackage ./python-modules/censys { };

#   cexprtk = callPackage ./python-modules/cexprtk { };

#   coffea = callPackage ./python-modules/coffea { };

#   cohere = callPackage ./python-modules/cohere { };

#   coincurve = callPackage ./python-modules/coincurve {
#     inherit (pkgs) secp256k1;
#   };

#   comicon = callPackage ./python-modules/comicon { };

#   command-runner = callPackage ./python-modules/command-runner { };

#   connect-box = callPackage ./python-modules/connect-box { };

#   connection-pool = callPackage ./python-modules/connection-pool { };

#   connio = callPackage ./python-modules/connio { };

#   conway-polynomials = callPackage ./python-modules/conway-polynomials {};

#   correctionlib = callPackage ./python-modules/correctionlib { };

#   coqpit = callPackage ./python-modules/coqpit { };

#   cepa = callPackage ./python-modules/cepa { };

#   cerberus = callPackage ./python-modules/cerberus { };

#   cert-chain-resolver = callPackage ./python-modules/cert-chain-resolver { };

#   certauth = callPackage ./python-modules/certauth { };

#   certbot = callPackage ./python-modules/certbot { };

#   certbot-dns-cloudflare = callPackage ./python-modules/certbot-dns-cloudflare { };

#   certbot-dns-google = callPackage ./python-modules/certbot-dns-google { };

#   certbot-dns-inwx = callPackage ./python-modules/certbot-dns-inwx { };

#   certbot-dns-ovh = callPackage ./python-modules/certbot-dns-ovh { };

#   certbot-dns-rfc2136 = callPackage ./python-modules/certbot-dns-rfc2136 { };

#   certbot-dns-route53 = callPackage ./python-modules/certbot-dns-route53 { };

  certifi = callPackage ./python-modules/certifi { };

#   certipy = callPackage ./python-modules/certipy { };

#   certipy-ad = callPackage ./python-modules/certipy-ad { };

#   certomancer = callPackage ./python-modules/certomancer { };

#   certvalidator = callPackage ./python-modules/certvalidator { };

#   cf-xarray = callPackage ./python-modules/cf-xarray { };

#   cffconvert = callPackage ./python-modules/cffconvert { };

  cffi = callPackage ./python-modules/cffi { };

#   cffsubr = callPackage ./python-modules/cffsubr { };

#   cfgv = callPackage ./python-modules/cfgv { };

#   cfn-flip = callPackage ./python-modules/cfn-flip { };

#   cfn-lint = callPackage ./python-modules/cfn-lint { };

#   cfscrape = callPackage ./python-modules/cfscrape { };

#   cftime = callPackage ./python-modules/cftime { };

#   cgen = callPackage ./python-modules/cgen { };

#   cgroup-utils = callPackage ./python-modules/cgroup-utils { };

#   chacha20poly1305 = callPackage ./python-modules/chacha20poly1305 { };

#   chacha20poly1305-reuseable = callPackage ./python-modules/chacha20poly1305-reuseable { };

#   chai = callPackage ./python-modules/chai { };

#   chainer = callPackage ./python-modules/chainer {
#     inherit (pkgs.config) cudaSupport;
#   };

#   chainmap = callPackage ./python-modules/chainmap { };

#   chainstream = callPackage ./python-modules/chainstream { };

#   chalice = callPackage ./python-modules/chalice { };

#   chameleon = callPackage ./python-modules/chameleon { };

#   channels = callPackage ./python-modules/channels { };

#   channels-redis = callPackage ./python-modules/channels-redis { };

#   characteristic = callPackage ./python-modules/characteristic { };

#   character-encoding-utils = callPackage ./python-modules/character-encoding-utils { };

  chardet = callPackage ./python-modules/chardet { };

  charset-normalizer = callPackage ./python-modules/charset-normalizer { };

#   chart-studio = callPackage ./python-modules/chart-studio { };

#   chat-downloader = callPackage ./python-modules/chat-downloader { };

#   check-manifest = callPackage ./python-modules/check-manifest { };

#   checkdmarc = callPackage ./python-modules/checkdmarc { };

#   checksumdir = callPackage ./python-modules/checksumdir { };

#   cheetah3 = callPackage ./python-modules/cheetah3 { };

#   cheroot = callPackage ./python-modules/cheroot { };

#   cherrypy = callPackage ./python-modules/cherrypy { };

#   cherrypy-cors = callPackage ./python-modules/cherrypy-cors { };

#   chess = callPackage ./python-modules/chess { };

#   chevron = callPackage ./python-modules/chevron { };

#   chex = callPackage ./python-modules/chex { };

#   chiabip158 = throw "chiabip158 has been removed. see https://github.com/NixOS/nixpkgs/pull/270254";

#   chiapos = throw "chiapos has been removed. see https://github.com/NixOS/nixpkgs/pull/270254";

#   chiavdf = throw "chiavdf has been removed. see https://github.com/NixOS/nixpkgs/pull/270254";

#   chia-rs = throw "chia-rs has been removed. see https://github.com/NixOS/nixpkgs/pull/270254";

#   chirpstack-api = callPackage ./python-modules/chirpstack-api { };

#   chispa = callPackage ./python-modules/chispa { };

#   chroma-hnswlib = callPackage ./python-modules/chroma-hnswlib { };

#   chromadb = callPackage ./python-modules/chromadb { };

#   chromaprint = callPackage ./python-modules/chromaprint { };

#   ci-info = callPackage ./python-modules/ci-info { };

#   ci-py = callPackage ./python-modules/ci-py { };

#   cinemagoer = callPackage ./python-modules/cinemagoer { };

#   circuit-webhook = callPackage ./python-modules/circuit-webhook { };

#   circuitbreaker = callPackage ./python-modules/circuitbreaker { };

#   circus = callPackage ./python-modules/circus { };

#   cirq = callPackage ./python-modules/cirq { };

#   cirq-aqt = callPackage ./python-modules/cirq-aqt { };

#   cirq-core = callPackage ./python-modules/cirq-core { };

#   cirq-ft = callPackage ./python-modules/cirq-ft { };

#   cirq-ionq = callPackage ./python-modules/cirq-ionq { };

#   cirq-google = callPackage ./python-modules/cirq-google { };

#   cirq-rigetti = callPackage ./python-modules/cirq-rigetti { };

#   cirq-pasqal = callPackage ./python-modules/cirq-pasqal { };

#   cirq-web = callPackage ./python-modules/cirq-web { };

#   ciscoconfparse = callPackage ./python-modules/ciscoconfparse { };

#   ciscomobilityexpress = callPackage ./python-modules/ciscomobilityexpress { };

#   ciso8601 = callPackage ./python-modules/ciso8601 { };

#   citeproc-py = callPackage ./python-modules/citeproc-py { };

#   cjkwrap = callPackage ./python-modules/cjkwrap { };

#   ckcc-protocol = callPackage ./python-modules/ckcc-protocol { };

#   clarabel = callPackage ./python-modules/clarabel { };

#   clarifai = callPackage ./python-modules/clarifai { };

#   clarifai-grpc = callPackage ./python-modules/clarifai-grpc { };

#   claripy = callPackage ./python-modules/claripy { };

#   classify-imports = callPackage ./python-modules/classify-imports { };

#   cld2-cffi = callPackage ./python-modules/cld2-cffi { };

#   cle = callPackage ./python-modules/cle { };

#   clean-fid = callPackage ./python-modules/clean-fid { };

#   cleanlab = callPackage ./python-modules/cleanlab { };

#   cleo = callPackage ./python-modules/cleo { };

#   clevercsv = callPackage ./python-modules/clevercsv { };

#   clf = callPackage ./python-modules/clf { };

#   clip = callPackage ./python-modules/clip { };

#   clip-anytorch = callPackage ./python-modules/clip-anytorch { };

#   clr-loader = callPackage ./python-modules/clr-loader { };

#   cock = callPackage ./python-modules/cock { };

#   cobs = callPackage ./python-modules/cobs { };

#   class-doc = callPackage ./python-modules/class-doc { };

#   cliche = callPackage ./python-modules/cliche { };

#   click = callPackage ./python-modules/click { };

#   clickclick = callPackage ./python-modules/clickclick { };

#   click-aliases = callPackage ./python-modules/click-aliases { };

#   click-command-tree = callPackage ./python-modules/click-command-tree { };

#   click-completion = callPackage ./python-modules/click-completion { };

#   click-configfile = callPackage ./python-modules/click-configfile { };

#   click-datetime = callPackage ./python-modules/click-datetime { };

#   click-default-group = callPackage ./python-modules/click-default-group { };

#   click-didyoumean = callPackage ./python-modules/click-didyoumean { };

#   click-help-colors = callPackage ./python-modules/click-help-colors { };

#   click-log = callPackage ./python-modules/click-log { };

#   click-odoo = callPackage ./python-modules/click-odoo { };

#   click-odoo-contrib = callPackage ./python-modules/click-odoo-contrib { };

#   click-option-group = callPackage ./python-modules/click-option-group { };

#   click-plugins = callPackage ./python-modules/click-plugins { };

#   click-shell = callPackage ./python-modules/click-shell { };

#   click-spinner = callPackage ./python-modules/click-spinner { };

#   click-repl = callPackage ./python-modules/click-repl { };

#   click-threading = callPackage ./python-modules/click-threading { };

#   clickgen = callPackage ./python-modules/clickgen { };

#   clickhouse-cityhash = callPackage ./python-modules/clickhouse-cityhash { };

#   clickhouse-cli = callPackage ./python-modules/clickhouse-cli { };

#   clickhouse-connect = callPackage ./python-modules/clickhouse-connect { };

#   clickhouse-driver = callPackage ./python-modules/clickhouse-driver { };

#   cliff = callPackage ./python-modules/cliff { };

#   clifford = callPackage ./python-modules/clifford { };

#   cligj = callPackage ./python-modules/cligj { };

#   cli-helpers = callPackage ./python-modules/cli-helpers { };

#   clikit = callPackage ./python-modules/clikit { };

#   clint = callPackage ./python-modules/clint { };

#   clintermission = callPackage ./python-modules/clintermission { };

#   clize = callPackage ./python-modules/clize { };

#   clldutils = callPackage ./python-modules/clldutils { };

#   cloudevents = callPackage ./python-modules/cloudevents { };

#   cloudflare = callPackage ./python-modules/cloudflare { };

#   cloudpathlib = callPackage ./python-modules/cloudpathlib { };

#   cloudpickle = callPackage ./python-modules/cloudpickle { };

#   cloudscraper = callPackage ./python-modules/cloudscraper { };

#   cloudsmith-api = callPackage ./python-modules/cloudsmith-api { };

#   cloudsplaining = callPackage ./python-modules/cloudsplaining { };

#   cloup = callPackage ./python-modules/cloup { };

#   clustershell = callPackage ./python-modules/clustershell { };

#   clvm = throw "clvm has been removed. see https://github.com/NixOS/nixpkgs/pull/270254";

#   clvm-rs = throw "clvm-rs has been removed. see https://github.com/NixOS/nixpkgs/pull/270254";

#   clvm-tools = throw "clvm-tools has been removed. see https://github.com/NixOS/nixpkgs/pull/270254";

#   clvm-tools-rs = throw "clvm-tools-rs has been removed. see https://github.com/NixOS/nixpkgs/pull/270254";

#   cma = callPackage ./python-modules/cma { };

#   cmaes = callPackage ./python-modules/cmaes { };

#   cmake = callPackage ./python-modules/cmake { inherit (pkgs) cmake; };

#   cmarkgfm = callPackage ./python-modules/cmarkgfm { };

#   cmd2 = callPackage ./python-modules/cmd2 { };

#   cmd2-ext-test = callPackage ./python-modules/cmd2-ext-test { };

#   cmdline = callPackage ./python-modules/cmdline { };

#   cmdstanpy = callPackage ./python-modules/cmdstanpy { };

#   cmigemo = callPackage ./python-modules/cmigemo {
#     inherit (pkgs) cmigemo;
#   };

#   cmsis-pack-manager = callPackage ./python-modules/cmsis-pack-manager { };

#   cmsis-svd = callPackage ./python-modules/cmsis-svd { };

#   cnvkit = callPackage ./python-modules/cnvkit { };

#   co2signal = callPackage ./python-modules/co2signal { };

#   coapthon3 = callPackage ./python-modules/coapthon3 { };

#   coconut = callPackage ./python-modules/coconut { };

#   cocotb = callPackage ./python-modules/cocotb { };

#   cocotb-bus = callPackage ./python-modules/cocotb-bus { };

#   codecov = callPackage ./python-modules/codecov { };

#   codepy = callPackage ./python-modules/codepy { };

#   cogapp = callPackage ./python-modules/cogapp { };

#   coinmetrics-api-client = callPackage ./python-modules/coinmetrics-api-client { };

#   colanderalchemy = callPackage ./python-modules/colanderalchemy { };

#   colander = callPackage ./python-modules/colander { };

#   collections-extended = callPackage ./python-modules/collections-extended { };

#   collidoscope = callPackage ./python-modules/collidoscope { };

#   colorama = callPackage ./python-modules/colorama { };

#   colorcet = callPackage ./python-modules/colorcet { };

#   colorclass = callPackage ./python-modules/colorclass { };

#   colored = callPackage ./python-modules/colored { };

#   colored-traceback = callPackage ./python-modules/colored-traceback { };

#   coloredlogs = callPackage ./python-modules/coloredlogs { };

#   colorful = callPackage ./python-modules/colorful { };

#   colorlog = callPackage ./python-modules/colorlog { };

#   colorlover = callPackage ./python-modules/colorlover { };

#   colormath = callPackage ./python-modules/colormath { };

#   colorspacious = callPackage ./python-modules/colorspacious { };

#   colorthief = callPackage ./python-modules/colorthief { };

#   colorzero = callPackage ./python-modules/colorzero { };

#   colour = callPackage ./python-modules/colour { };

#   colout = callPackage ./python-modules/colout { };

#   cometblue-lite = callPackage ./python-modules/cometblue-lite { };

#   comm = callPackage ./python-modules/comm { };

#   commandlines = callPackage ./python-modules/commandlines { };

#   commandparse = callPackage ./python-modules/commandparse { };

#   commentjson = callPackage ./python-modules/commentjson { };

#   commoncode = callPackage ./python-modules/commoncode { };

  commonmark = callPackage ./python-modules/commonmark { };

#   compiledb = callPackage ./python-modules/compiledb { };

#   complycube = callPackage ./python-modules/complycube { };

#   compreffor = callPackage ./python-modules/compreffor { };

#   compressai = callPackage ./python-modules/compressai { };

#   compressed-rtf = callPackage ./python-modules/compressed-rtf { };

#   concurrent-log-handler = callPackage ./python-modules/concurrent-log-handler { };

#   conda = callPackage ./python-modules/conda { };

#   conda-libmamba-solver = callPackage ./python-modules/conda-libmamba-solver { };

#   conda-package-handling = callPackage ./python-modules/conda-package-handling { };

#   conda-package-streaming = callPackage ./python-modules/conda-package-streaming { };

#   confection = callPackage ./python-modules/confection { };

#   configargparse = callPackage ./python-modules/configargparse { };

#   configclass = callPackage ./python-modules/configclass { };

#   configobj = callPackage ./python-modules/configobj { };

#   configparser = callPackage ./python-modules/configparser { };

#   configshell = callPackage ./python-modules/configshell { };

#   configupdater = callPackage ./python-modules/configupdater { };

#   confluent-kafka = callPackage ./python-modules/confluent-kafka { };

#   confuse = callPackage ./python-modules/confuse { };

#   confight = callPackage ./python-modules/confight { };

#   connexion = callPackage ./python-modules/connexion { };

#   cons = callPackage ./python-modules/cons { };

#   consonance = callPackage ./python-modules/consonance { };

#   constantly = callPackage ./python-modules/constantly { };

#   construct = callPackage ./python-modules/construct { };

#   construct-classes = callPackage ./python-modules/construct-classes { };

#   consul = callPackage ./python-modules/consul { };

#   container-inspector = callPackage ./python-modules/container-inspector { };

#   contexter = callPackage ./python-modules/contexter { };

#   contextlib2 = callPackage ./python-modules/contextlib2 { };

#   contexttimer = callPackage ./python-modules/contexttimer { };

#   contourpy = callPackage ./python-modules/contourpy { };

#   controku = callPackage ./python-modules/controku { };

#   convertdate = callPackage ./python-modules/convertdate { };

#   cookiecutter = callPackage ./python-modules/cookiecutter { };

#   cookies = callPackage ./python-modules/cookies { };

#   coordinates = callPackage ./python-modules/coordinates { };

#   coreapi = callPackage ./python-modules/coreapi { };

#   coredis = callPackage ./python-modules/coredis { };

#   coreschema = callPackage ./python-modules/coreschema { };

#   cornice = callPackage ./python-modules/cornice { };

#   corsair-scan = callPackage ./python-modules/corsair-scan { };

#   cose = callPackage ./python-modules/cose { };

#   cot = callPackage ./python-modules/cot {
#     qemu = pkgs.qemu;
#   };

#   courlan = callPackage ./python-modules/courlan { };

#   cov-core = callPackage ./python-modules/cov-core { };

#   coverage = callPackage ./python-modules/coverage { };

#   coveralls = callPackage ./python-modules/coveralls { };

#   cppe = callPackage ./python-modules/cppe {
#     inherit (pkgs) cppe;
#   };

#   cppheaderparser = callPackage ./python-modules/cppheaderparser { };

#   cppy = callPackage ./python-modules/cppy { };

#   cpufeature = callPackage ./python-modules/cpufeature { };

#   cpyparsing = callPackage ./python-modules/cpyparsing { };

#   craft-application-1 = callPackage ./python-modules/craft-application-1 { };

#   craft-application = callPackage ./python-modules/craft-application { };

#   craft-archives = callPackage ./python-modules/craft-archives { };

#   craft-cli = callPackage ./python-modules/craft-cli { };

#   craft-grammar = callPackage ./python-modules/craft-grammar { };

#   craft-parts = callPackage ./python-modules/craft-parts { };

#   craft-providers = callPackage ./python-modules/craft-providers { };

#   craft-store = callPackage ./python-modules/craft-store { };

#   cram = callPackage ./python-modules/cram { };

#   cramjam = callPackage ./python-modules/cramjam { };

#   crashtest = callPackage ./python-modules/crashtest { };

#   crate = callPackage ./python-modules/crate { };

#   crayons = callPackage ./python-modules/crayons { };

#   crc = callPackage ./python-modules/crc { };

#   crc16 = callPackage ./python-modules/crc16 { };

#   crc32c = callPackage ./python-modules/crc32c { };

#   crccheck = callPackage ./python-modules/crccheck { };

#   crcmod = callPackage ./python-modules/crcmod { };

#   credstash = callPackage ./python-modules/credstash { };

#   criticality-score = callPackage ./python-modules/criticality-score { };

#   crocoddyl = toPythonModule (callPackage ../development/libraries/crocoddyl {
#     pythonSupport = true;
#     python3Packages = self;
#   });

#   cron-descriptor = callPackage ./python-modules/cron-descriptor { };

#   croniter = callPackage ./python-modules/croniter { };

#   cronsim = callPackage ./python-modules/cronsim { };

#   crontab = callPackage ./python-modules/crontab { };

#   crossplane = callPackage ./python-modules/crossplane { };

#   crownstone-cloud = callPackage ./python-modules/crownstone-cloud { };

#   crownstone-core = callPackage ./python-modules/crownstone-core { };

#   crownstone-sse = callPackage ./python-modules/crownstone-sse { };

#   crownstone-uart = callPackage ./python-modules/crownstone-uart { };

#   cryptacular = callPackage ./python-modules/cryptacular { };

#   cryptg = callPackage ./python-modules/cryptg { };

#   cryptodatahub = callPackage ./python-modules/cryptodatahub { };

#   cryptography = callPackage ./python-modules/cryptography {
#     inherit (pkgs.darwin) libiconv;
#     inherit (pkgs.darwin.apple_sdk.frameworks) Security;
#   };

#   cryptolyzer = callPackage ./python-modules/cryptolyzer { };

#   cryptoparser = callPackage ./python-modules/cryptoparser { };

#   crysp = callPackage ./python-modules/crysp { };

#   crytic-compile = callPackage ./python-modules/crytic-compile { };

#   cson  = callPackage ./python-modules/cson { };

#   csrmesh  = callPackage ./python-modules/csrmesh { };

#   cssbeautifier = callPackage ./python-modules/cssbeautifier { };

#   csscompressor = callPackage ./python-modules/csscompressor { };

#   cssmin = callPackage ./python-modules/cssmin { };

#   css-html-js-minify = callPackage ./python-modules/css-html-js-minify { };

#   css-inline = callPackage ./python-modules/css-inline {
#     inherit (pkgs.darwin) libiconv;
#     inherit (pkgs.darwin.apple_sdk.frameworks) Security SystemConfiguration;
#   };

#   css-parser = callPackage ./python-modules/css-parser { };

#   cssselect2 = callPackage ./python-modules/cssselect2 { };

#   cssselect = callPackage ./python-modules/cssselect { };

#   cssutils = callPackage ./python-modules/cssutils { };

#   cstruct = callPackage ./python-modules/cstruct { };

#   csvw = callPackage ./python-modules/csvw { };

#   ctap-keyring-device = callPackage ./python-modules/ctap-keyring-device { };

#   ctranslate2 = callPackage ./python-modules/ctranslate2 {
#     ctranslate2-cpp = pkgs.ctranslate2;
#   };

#   cu2qu = callPackage ./python-modules/cu2qu { };

#   cucumber-tag-expressions = callPackage ./python-modules/cucumber-tag-expressions { };

#   cufflinks = callPackage ./python-modules/cufflinks { };

#   # cupy 12.2.0 possibly incompatible with cutensor 2.0 that comes with cudaPackages_12
#   cupy = callPackage ./python-modules/cupy { cudaPackages = pkgs.cudaPackages_11; };

#   curio = callPackage ./python-modules/curio { };

#   curlify = callPackage ./python-modules/curlify { };

#   curtsies = callPackage ./python-modules/curtsies { };

#   curve25519-donna = callPackage ./python-modules/curve25519-donna { };

#   cvelib = callPackage ./python-modules/cvelib { };

#   cvss = callPackage ./python-modules/cvss { };

#   cvxopt = callPackage ./python-modules/cvxopt { };

#   cvxpy = callPackage ./python-modules/cvxpy { };

#   cwcwidth = callPackage ./python-modules/cwcwidth { };

#   cwl-upgrader = callPackage ./python-modules/cwl-upgrader { };

#   cwl-utils = callPackage ./python-modules/cwl-utils { };

#   cwlformat = callPackage ./python-modules/cwlformat { };

#   cx-freeze = callPackage ./python-modules/cx-freeze { };

#   cx-oracle = callPackage ./python-modules/cx-oracle { };

#   cxxfilt = callPackage ./python-modules/cxxfilt { };

#   cycler = callPackage ./python-modules/cycler { };

#   cyclonedx-python-lib = callPackage ./python-modules/cyclonedx-python-lib { };

#   cymem = callPackage ./python-modules/cymem { };

#   cypari2 = callPackage ./python-modules/cypari2 { };

#   cypherpunkpay = callPackage ./python-modules/cypherpunkpay { };

#   cysignals = callPackage ./python-modules/cysignals { };

  cython = callPackage ./python-modules/cython { };

#   cython_0 = callPackage ./python-modules/cython/0.nix { };

#   cython-test-exception-raiser = callPackage ./python-modules/cython-test-exception-raiser { };

#   cytoolz = callPackage ./python-modules/cytoolz { };

#   dacite = callPackage ./python-modules/dacite { };

#   daemonize = callPackage ./python-modules/daemonize { };

#   daemonocle = callPackage ./python-modules/daemonocle { };

#   daff = callPackage ./python-modules/daff { };

#   daiquiri = callPackage ./python-modules/daiquiri { };

#   dalle-mini = callPackage ./python-modules/dalle-mini { };

#   daphne = callPackage ./python-modules/daphne { };

#   daqp = callPackage ./python-modules/daqp { };

#   darkdetect = callPackage ./python-modules/darkdetect { };

#   dasbus = callPackage ./python-modules/dasbus { };

#   dash = callPackage ./python-modules/dash { };

#   dash-core-components = callPackage ./python-modules/dash-core-components { };

#   dash-html-components = callPackage ./python-modules/dash-html-components { };

#   dash-renderer = callPackage ./python-modules/dash-renderer { };

#   dash-table = callPackage ./python-modules/dash-table { };

#   dashing = callPackage ./python-modules/dashing { };

#   dask = callPackage ./python-modules/dask { };

#   dask-awkward = callPackage ./python-modules/dask-awkward { };

#   dask-expr = callPackage ./python-modules/dask-expr { };

#   dask-gateway = callPackage ./python-modules/dask-gateway { };

#   dask-gateway-server = callPackage ./python-modules/dask-gateway-server { };

#   dask-glm = callPackage ./python-modules/dask-glm { };

#   dask-histogram = callPackage ./python-modules/dask-histogram { };

#   dask-image = callPackage ./python-modules/dask-image { };

#   dask-jobqueue = callPackage ./python-modules/dask-jobqueue { };

#   dask-ml = callPackage ./python-modules/dask-ml { };

#   dask-mpi = callPackage ./python-modules/dask-mpi { };

#   dask-yarn = callPackage ./python-modules/dask-yarn { };

#   databases = callPackage ./python-modules/databases { };

#   databricks-cli = callPackage ./python-modules/databricks-cli { };

#   databricks-connect = callPackage ./python-modules/databricks-connect { };

#   databricks-sql-connector = callPackage ./python-modules/databricks-sql-connector { };

#   dataclass-factory = callPackage ./python-modules/dataclass-factory { };

#   dataclass-wizard = callPackage ./python-modules/dataclass-wizard { };

#   dataclasses-json = callPackage ./python-modules/dataclasses-json { };

#   dataclasses-serialization = callPackage ./python-modules/dataclasses-serialization { };

#   datadiff = callPackage ./python-modules/datadiff { };

#   datadog = callPackage ./python-modules/datadog { };

#   datafusion = callPackage ./python-modules/datafusion {
#     inherit (pkgs.darwin.apple_sdk.frameworks) Security SystemConfiguration;
#   };

#   datamodeldict = callPackage ./python-modules/datamodeldict { };

#   datapoint = callPackage ./python-modules/datapoint { };

#   dataprep-ml = callPackage ./python-modules/dataprep-ml { };

#   dataproperty = callPackage ./python-modules/dataproperty { };

#   dataset = callPackage ./python-modules/dataset { };

#   datasets = callPackage ./python-modules/datasets { };

#   datasette = callPackage ./python-modules/datasette { };

#   datasette-publish-fly = callPackage ./python-modules/datasette-publish-fly { };

#   datasette-template-sql = callPackage ./python-modules/datasette-template-sql { };

#   datashader = callPackage ./python-modules/datashader { };

#   datashape = callPackage ./python-modules/datashape { };

#   datatable = callPackage ./python-modules/datatable { };

#   datauri = callPackage ./python-modules/datauri { };

#   datefinder = callPackage ./python-modules/datefinder { };

#   dateparser = callPackage ./python-modules/dateparser { };

#   datetime = callPackage ./python-modules/datetime { };

#   dateutils = callPackage ./python-modules/dateutils { };

#   datrie = callPackage ./python-modules/datrie { };

#   dawg-python = callPackage ./python-modules/dawg-python { };

#   dazl = callPackage ./python-modules/dazl { };

#   dbf = callPackage ./python-modules/dbf { };

#   dbfread = callPackage ./python-modules/dbfread { };

#   dbglib = callPackage ./python-modules/dbglib { };

#   dbt-bigquery = callPackage ./python-modules/dbt-bigquery { };

#   dbt-core = callPackage ./python-modules/dbt-core { };

#   dbt-extractor = callPackage ./python-modules/dbt-extractor { };

#   dbt-postgres = callPackage ./python-modules/dbt-postgres { };

#   dbt-redshift = callPackage ./python-modules/dbt-redshift { };

#   dbt-semantic-interfaces = callPackage ./python-modules/dbt-semantic-interfaces { };

#   dbt-snowflake = callPackage ./python-modules/dbt-snowflake { };

#   dbus-client-gen = callPackage ./python-modules/dbus-client-gen { };

#   dbus-deviation = callPackage ./python-modules/dbus-deviation { };

#   dbus-fast = callPackage ./python-modules/dbus-fast { };

#   dbus-next = callPackage ./python-modules/dbus-next { };

#   dbus-python = callPackage ./python-modules/dbus-python {
#     inherit (pkgs) dbus;
#   };

#   dbus-python-client-gen = callPackage ./python-modules/dbus-python-client-gen { };

#   dbus-signature-pyparsing = callPackage ./python-modules/dbus-signature-pyparsing { };

#   dbutils = callPackage ./python-modules/dbutils { };

#   db-dtypes = callPackage ./python-modules/db-dtypes { };

#   dcmstack = callPackage ./python-modules/dcmstack { };

#   dctorch = callPackage ./python-modules/dctorch { };

#   ddt = callPackage ./python-modules/ddt { };

#   deal = callPackage ./python-modules/deal { };

#   deal-solver = callPackage ./python-modules/deal-solver { };

#   deap = callPackage ./python-modules/deap { };

#   debian = callPackage ./python-modules/debian { };

#   debianbts = callPackage ./python-modules/debianbts { };

#   debian-inspector = callPackage ./python-modules/debian-inspector { };

#   debtcollector = callPackage ./python-modules/debtcollector { };

#   debts = callPackage ./python-modules/debts { };

#   debugpy = callPackage ./python-modules/debugpy { };

#   debuglater = callPackage ./python-modules/debuglater { };

#   decli = callPackage ./python-modules/decli { };

#   decorator = callPackage ./python-modules/decorator { };

#   decopatch = callPackage ./python-modules/decopatch { };

#   deebot-client = callPackage ./python-modules/deebot-client { };

#   deemix = callPackage ./python-modules/deemix { };

#   deep-chainmap = callPackage ./python-modules/deep-chainmap { };

#   deepdiff = callPackage ./python-modules/deepdiff { };

#   deepdish = callPackage ./python-modules/deepdish { };

#   deepl = callPackage ./python-modules/deepl { };

#   deepmerge = callPackage ./python-modules/deepmerge { };

#   deeptoolsintervals = callPackage ./python-modules/deeptoolsintervals { };

#   deepwave = callPackage ./python-modules/deepwave { };

#   deep-translator = callPackage ./python-modules/deep-translator { };

#   deezer-py = callPackage ./python-modules/deezer-py { };

#   deezer-python = callPackage ./python-modules/deezer-python { };

#   defang = callPackage ./python-modules/defang { };

#   defcon = callPackage ./python-modules/defcon { };

#   deform = callPackage ./python-modules/deform { };

#   defusedcsv = callPackage ./python-modules/defusedcsv { };

#   defusedxml = callPackage ./python-modules/defusedxml { };

#   dehinter = callPackage ./python-modules/dehinter { };

#   deid = callPackage ./python-modules/deid { };

#   dek = callPackage ./python-modules/dek { };

#   delegator-py = callPackage ./python-modules/delegator-py { };

#   delorean = callPackage ./python-modules/delorean { };

#   deltachat = callPackage ./python-modules/deltachat { };

#   deluge-client = callPackage ./python-modules/deluge-client { };

#   demes = callPackage ./python-modules/demes { };

#   demesdraw = callPackage ./python-modules/demesdraw { };

#   demetriek = callPackage ./python-modules/demetriek { };

#   demjson3 = callPackage ./python-modules/demjson3 { };

#   demoji = callPackage ./python-modules/demoji { };

#   dendropy = callPackage ./python-modules/dendropy { };

#   denonavr = callPackage ./python-modules/denonavr { };

#   dep-logic = callPackage ./python-modules/dep-logic { };

#   dependency-injector = callPackage ./python-modules/dependency-injector { };

#   deploykit = callPackage ./python-modules/deploykit { };

#   deprecat = callPackage ./python-modules/deprecat { };

#   deprecated = callPackage ./python-modules/deprecated { };

#   deprecation = callPackage ./python-modules/deprecation { };

#   derpconf = callPackage ./python-modules/derpconf { };

#   desktop-entry-lib = callPackage ./python-modules/desktop-entry-lib { };

#   desktop-notifier = callPackage ./python-modules/desktop-notifier { };

#   detect-secrets = callPackage ./python-modules/detect-secrets { };

#   detectron2 = callPackage ./python-modules/detectron2 { };

#   devialet = callPackage ./python-modules/devialet { };

#   devito = callPackage ./python-modules/devito { };

#   devolo-home-control-api = callPackage ./python-modules/devolo-home-control-api { };

#   devolo-plc-api = callPackage ./python-modules/devolo-plc-api { };

#   devpi-common = callPackage ./python-modules/devpi-common { };

#   devtools = callPackage ./python-modules/devtools { };

#   dfdiskcache = callPackage ./python-modules/dfdiskcache { };

#   diagrams = callPackage ./python-modules/diagrams { };

#   diceware = callPackage ./python-modules/diceware { };

#   dicom2nifti = callPackage ./python-modules/dicom2nifti { };

#   dicom-numpy = callPackage ./python-modules/dicom-numpy { };

#   dicomweb-client = callPackage ./python-modules/dicomweb-client { };

#   dict2xml = callPackage ./python-modules/dict2xml { };

#   dictdiffer = callPackage ./python-modules/dictdiffer { };

#   dictionaries = callPackage ./python-modules/dictionaries { };

#   dicttoxml = callPackage ./python-modules/dicttoxml { };

#   dicttoxml2 = callPackage ./python-modules/dicttoxml2 { };

#   diff-cover = callPackage ./python-modules/diff-cover { };

#   diff-match-patch = callPackage ./python-modules/diff-match-patch { };

#   diffimg = callPackage ./python-modules/diffimg { };

#   diffsync = callPackage ./python-modules/diffsync { };

#   diffusers = callPackage ./python-modules/diffusers { };

#   digi-xbee = callPackage ./python-modules/digi-xbee { };

#   dill = callPackage ./python-modules/dill { };

#   dingz = callPackage ./python-modules/dingz { };

#   dinghy = callPackage ./python-modules/dinghy { };

#   diofant = callPackage ./python-modules/diofant { };

#   dipy = callPackage ./python-modules/dipy { };

#   directv = callPackage ./python-modules/directv { };

#   dirigera = callPackage ./python-modules/dirigera { };

#   dirty-equals = callPackage ./python-modules/dirty-equals { };

#   dirtyjson = callPackage ./python-modules/dirtyjson { };

#   discid = callPackage ./python-modules/discid { };

#   discogs-client = callPackage ./python-modules/discogs-client { };

#   discordpy = callPackage ./python-modules/discordpy { };

#   discovery30303 = callPackage ./python-modules/discovery30303 { };

#   diskcache = callPackage ./python-modules/diskcache { };

#   dissect = callPackage ./python-modules/dissect { };

#   dissect-btrfs = callPackage ./python-modules/dissect-btrfs { };

#   dissect-cim = callPackage ./python-modules/dissect-cim { };

#   dissect-clfs = callPackage ./python-modules/dissect-clfs { };

#   dissect-cobaltstrike = callPackage ./python-modules/dissect-cobaltstrike { };

#   dissect-cstruct = callPackage ./python-modules/dissect-cstruct { };

#   dissect-fat = callPackage ./python-modules/dissect-fat { };

#   dissect-ffs = callPackage ./python-modules/dissect-ffs { };

#   dissect-esedb = callPackage ./python-modules/dissect-esedb { };

#   dissect-etl = callPackage ./python-modules/dissect-etl { };

#   dissect-eventlog = callPackage ./python-modules/dissect-eventlog { };

#   dissect-evidence = callPackage ./python-modules/dissect-evidence { };

#   dissect-executable = callPackage ./python-modules/dissect-executable { };

#   dissect-extfs = callPackage ./python-modules/dissect-extfs { };

#   dissect-hypervisor = callPackage ./python-modules/dissect-hypervisor { };

#   dissect-jffs = callPackage ./python-modules/dissect-jffs { };

#   dissect-ntfs = callPackage ./python-modules/dissect-ntfs { };

#   dissect-ole = callPackage ./python-modules/dissect-ole { };

#   dissect-regf = callPackage ./python-modules/dissect-regf { };

#   dissect-shellitem = callPackage ./python-modules/dissect-shellitem { };

#   dissect-squashfs = callPackage ./python-modules/dissect-squashfs { };

#   dissect-sql = callPackage ./python-modules/dissect-sql { };

#   dissect-target = callPackage ./python-modules/dissect-target { };

#   dissect-thumbcache = callPackage ./python-modules/dissect-thumbcache { };

#   dissect-util = callPackage ./python-modules/dissect-util { };

#   dissect-vmfs = callPackage ./python-modules/dissect-vmfs { };

#   dissect-volume = callPackage ./python-modules/dissect-volume { };

#   dissect-xfs = callPackage ./python-modules/dissect-xfs { };

#   dissononce = callPackage ./python-modules/dissononce { };

#   distlib = callPackage ./python-modules/distlib { };

#   distorm3 = callPackage ./python-modules/distorm3 { };

#   distrax = callPackage ./python-modules/distrax { };

#   distributed = callPackage ./python-modules/distributed { };

#   distro = callPackage ./python-modules/distro { };

#   distutils-extra = callPackage ./python-modules/distutils-extra { };

#   # LTS in extended support phase
#   django_3 = callPackage ./python-modules/django/3.nix { };

#   # LTS with mainsteam support
#   django = self.django_4;
#   django_4 = callPackage ./python-modules/django/4.nix { };

#   # Pre-release
#   django_5 = callPackage ./python-modules/django/5.nix { };

#   django-admin-datta = callPackage ./python-modules/django-admin-datta { };

#   django-admin-sortable2 = callPackage ./python-modules/django-admin-sortable2 { };

#   django-allauth = callPackage ./python-modules/django-allauth { };

#   django-allauth-2fa = callPackage ./python-modules/django-allauth-2fa { };

#   django-anymail = callPackage ./python-modules/django-anymail { };

#   django-annoying = callPackage ./python-modules/django-annoying { };

#   django-appconf = callPackage ./python-modules/django-appconf { };

#   django-auditlog = callPackage ./python-modules/django-auditlog { };

#   django-auth-ldap = callPackage ./python-modules/django-auth-ldap { };

#   django-autocomplete-light = callPackage ./python-modules/django-autocomplete-light { };

#   django-bootstrap3 = callPackage ./python-modules/django-bootstrap3 { };

#   django-bootstrap4 = callPackage ./python-modules/django-bootstrap4 { };

#   django-bootstrap5 = callPackage ./python-modules/django-bootstrap5 { };

#   django-cachalot = callPackage ./python-modules/django-cachalot { };

#   django-cache-url = callPackage ./python-modules/django-cache-url { };

#   django-cacheops = callPackage ./python-modules/django-cacheops { };

#   django-celery-beat = callPackage ./python-modules/django-celery-beat { };

#   django-celery-email = callPackage ./python-modules/django-celery-email { };

#   django-celery-results = callPackage ./python-modules/django-celery-results { };

#   django-ckeditor = callPackage ./python-modules/django-ckeditor { };

#   django-classy-tags = callPackage ./python-modules/django-classy-tags { };

#   django-cleanup = callPackage ./python-modules/django-cleanup { };

#   django-colorful = callPackage ./python-modules/django-colorful { };

#   django-compressor = callPackage ./python-modules/django-compressor { };

#   django-compression-middleware = callPackage ./python-modules/django-compression-middleware { };

#   django-configurations = callPackage ./python-modules/django-configurations { };

#   django-context-decorator = callPackage ./python-modules/django-context-decorator { };

#   django-contrib-comments = callPackage ./python-modules/django-contrib-comments { };

#   django-cors-headers = callPackage ./python-modules/django-cors-headers { };

#   django-countries = callPackage ./python-modules/django-countries { };

#   django-crispy-bootstrap4 = callPackage ./python-modules/django-crispy-bootstrap4 { };

#   django-crispy-bootstrap5 = callPackage ./python-modules/django-crispy-bootstrap5 { };

#   django-crispy-forms = callPackage ./python-modules/django-crispy-forms { };

#   django-crontab = callPackage ./python-modules/django-crontab { };

#   django-cryptography = callPackage ./python-modules/django-cryptography { };

#   django-csp = callPackage ./python-modules/django-csp { };

#   django-currentuser = callPackage ./python-modules/django-currentuser { };

#   django-debug-toolbar = callPackage ./python-modules/django-debug-toolbar { };

#   django-dynamic-preferences = callPackage ./python-modules/django-dynamic-preferences { };

#   django-encrypted-model-fields = callPackage ./python-modules/django-encrypted-model-fields { };

#   django-environ = callPackage ./python-modules/django-environ { };

#   django-extensions = callPackage ./python-modules/django-extensions { };

#   django-filter = callPackage ./python-modules/django-filter { };

#   django-formtools = callPackage ./python-modules/django-formtools { };

#   django-formset-js-improved = callPackage ./python-modules/django-formset-js-improved { };

#   django-graphiql-debug-toolbar = callPackage ./python-modules/django-graphiql-debug-toolbar { };

#   django-gravatar2 = callPackage ./python-modules/django-gravatar2 { };

#   django-google-analytics-app = callPackage ./python-modules/django-google-analytics-app { };

#   django-guardian = callPackage ./python-modules/django-guardian { };

#   django-haystack = callPackage ./python-modules/django-haystack { };

#   django-hcaptcha = callPackage ./python-modules/django-hcaptcha { };

#   django-health-check = callPackage ./python-modules/django-health-check { };

#   django-hierarkey = callPackage ./python-modules/django-hierarkey { };

#   django-hijack = callPackage ./python-modules/django-hijack { };

#   django-i18nfield = callPackage ./python-modules/django-i18nfield { };

#   django-import-export = callPackage ./python-modules/django-import-export { };

#   django-ipware = callPackage ./python-modules/django-ipware { };

#   django-jinja = callPackage ./python-modules/django-jinja2 { };

#   django-jquery-js = callPackage ./python-modules/django-jquery-js { };

#   django-js-asset = callPackage ./python-modules/django-js-asset { };

#   django-js-reverse = callPackage ./python-modules/django-js-reverse { };

#   django-libsass = callPackage ./python-modules/django-libsass { };

#   django-leaflet = callPackage ./python-modules/django-leaflet { };

#   django-logentry-admin = callPackage ./python-modules/django-logentry-admin { };

#   django-login-required-middleware = callPackage ./python-modules/django-login-required-middleware { };

#   django-localflavor = callPackage ./python-modules/django-localflavor { };

#   django-mailman3 = callPackage ./python-modules/django-mailman3 { };

#   django-markup = callPackage ./python-modules/django-markup { };

#   django-markdownx = callPackage ./python-modules/django-markdownx { };

#   django-model-utils = callPackage ./python-modules/django-model-utils { };

#   django-modelcluster = callPackage ./python-modules/django-modelcluster { };

#   django-modeltranslation = callPackage ./python-modules/django-modeltranslation { };

#   django-multiselectfield = callPackage ./python-modules/django-multiselectfield { };

#   django-maintenance-mode = callPackage ./python-modules/django-maintenance-mode { };

#   django-mdeditor = callPackage ./python-modules/django-mdeditor { };

#   django-mptt = callPackage ./python-modules/django-mptt { };

#   django-mysql = callPackage ./python-modules/django-mysql { };

#   django-ninja = callPackage ./python-modules/django-ninja { };

#   django-nose = callPackage ./python-modules/django-nose { };

#   django-oauth-toolkit = callPackage ./python-modules/django-oauth-toolkit { };

#   django-otp = callPackage ./python-modules/django-otp { };

#   django-paintstore = callPackage ./python-modules/django-paintstore { };

#   django-parler = callPackage ./python-modules/django-parler { };

#   django-pattern-library = callPackage ./python-modules/django-pattern-library { };

#   django-payments = callPackage ./python-modules/django-payments { };

#   django-pglocks = callPackage ./python-modules/django-pglocks { };

#   django-phonenumber-field = callPackage ./python-modules/django-phonenumber-field { };

#   django-picklefield = callPackage ./python-modules/django-picklefield { };

#   django-polymorphic = callPackage ./python-modules/django-polymorphic { };

#   django-postgresql-netfields = callPackage ./python-modules/django-postgresql-netfields { };

#   django-prometheus = callPackage ./python-modules/django-prometheus { };

#   django-pwa = callPackage ./python-modules/django-pwa { };

#   django-q = callPackage ./python-modules/django-q { };

#   django-scheduler = callPackage ./python-modules/django-scheduler { };

#   django-scim2 = callPackage ./python-modules/django-scim2 { };

#   django-shortuuidfield = callPackage ./python-modules/django-shortuuidfield { };

#   django-scopes = callPackage ./python-modules/django-scopes { };

#   djangoql = callPackage ./python-modules/djangoql { };

#   django-ranged-response = callPackage ./python-modules/django-ranged-response { };

#   django-raster = callPackage ./python-modules/django-raster { };

#   django-redis = callPackage ./python-modules/django-redis { };

#   django-rest-auth = callPackage ./python-modules/django-rest-auth { };

#   django-rest-polymorphic = callPackage ./python-modules/django-rest-polymorphic { };

#   django-rest-registration = callPackage ./python-modules/django-rest-registration { };

#   django-rosetta = callPackage ./python-modules/django-rosetta { };

#   django-rq = callPackage ./python-modules/django-rq { };

#   djangorestframework = callPackage ./python-modules/djangorestframework { };

#   djangorestframework-dataclasses = callPackage ./python-modules/djangorestframework-dataclasses { };

#   djangorestframework-camel-case = callPackage ./python-modules/djangorestframework-camel-case { };

#   djangorestframework-guardian = callPackage ./python-modules/djangorestframework-guardian { };

#   djangorestframework-guardian2 = callPackage ./python-modules/djangorestframework-guardian2 { };

#   djangorestframework-recursive = callPackage ./python-modules/djangorestframework-recursive { };

#   djangorestframework-simplejwt = callPackage ./python-modules/djangorestframework-simplejwt { };

#   djangorestframework-stubs = callPackage ./python-modules/djangorestframework-stubs { };

#   django-reversion = callPackage ./python-modules/django-reversion { };

#   django-sekizai = callPackage ./python-modules/django-sekizai { };

#   django-sesame = callPackage ./python-modules/django-sesame { };

#   django-silk = callPackage ./python-modules/django-silk { };

#   django-simple-captcha = callPackage ./python-modules/django-simple-captcha { };

#   django-simple-history = callPackage ./python-modules/django-simple-history { };

#   django-sites = callPackage ./python-modules/django-sites { };

#   django-sr = callPackage ./python-modules/django-sr { };

#   django-statici18n = callPackage ./python-modules/django-statici18n { };

#   django-storages = callPackage ./python-modules/django-storages { };

#   django-stubs = callPackage ./python-modules/django-stubs { };

#   django-stubs-ext = callPackage ./python-modules/django-stubs-ext { };

#   django-tables2 = callPackage ./python-modules/django-tables2 { };

#   django-tagging = callPackage ./python-modules/django-tagging { };

#   django-taggit = callPackage ./python-modules/django-taggit { };

#   django-tastypie = callPackage ./python-modules/django-tastypie { };

#   django-timezone-field = callPackage ./python-modules/django-timezone-field { };

#   django-treebeard = callPackage ./python-modules/django-treebeard { };

#   django-two-factor-auth = callPackage ./python-modules/django-two-factor-auth { };

#   django-types = callPackage ./python-modules/django-types { };

#   django-versatileimagefield = callPackage ./python-modules/django-versatileimagefield { };

#   django-vite = callPackage ./python-modules/django-vite { };

#   django-webpack-loader = callPackage ./python-modules/django-webpack-loader { };

#   django-webpush = callPackage ./python-modules/django-webpush { };

#   django-widget-tweaks = callPackage ./python-modules/django-widget-tweaks { };

#   dj-database-url = callPackage ./python-modules/dj-database-url { };

#   dj-email-url = callPackage ./python-modules/dj-email-url { };

#   djmail = callPackage ./python-modules/djmail { };

#   dj-rest-auth = callPackage ./python-modules/dj-rest-auth { };

#   dj-search-url = callPackage ./python-modules/dj-search-url { };

#   dj-static = callPackage ./python-modules/dj-static { };

#   dkimpy = callPackage ./python-modules/dkimpy { };

#   dlib = callPackage ./python-modules/dlib {
#     inherit (pkgs) dlib;
#   };

#   dlinfo = callPackage ./python-modules/dlinfo { };

#   dllogger = callPackage ./python-modules/dllogger { };

#   dlms-cosem = callPackage ./python-modules/dlms-cosem { };

#   dlx = callPackage ./python-modules/dlx { };

#   dmenu-python = callPackage ./python-modules/dmenu { };

#   dm-env = callPackage ./python-modules/dm-env { };

#   dm-haiku = callPackage ./python-modules/dm-haiku { };

#   dm-sonnet = callPackage ./python-modules/dm-sonnet { };

#   dm-tree = callPackage ./python-modules/dm-tree {
#     abseil-cpp = pkgs.abseil-cpp_202103.override {
#       cxxStandard = "14";
#     };
#   };

#   dnachisel = callPackage ./python-modules/dnachisel { };

#   dnf-plugins-core = callPackage ./python-modules/dnf-plugins-core { };

#   dnf4 = callPackage ./python-modules/dnf4 { };

#   dnfile = callPackage ./python-modules/dnfile { };

#   dnslib = callPackage ./python-modules/dnslib { };

#   dnspython = callPackage ./python-modules/dnspython { };

#   dns-lexicon = callPackage ./python-modules/dns-lexicon { };

#   doc8 = callPackage ./python-modules/doc8 { };

#   docformatter = callPackage ./python-modules/docformatter { };

#   docker = callPackage ./python-modules/docker { };

#   dockerfile-parse = callPackage ./python-modules/dockerfile-parse { };

#   dockerpty = callPackage ./python-modules/dockerpty { };

#   docker-pycreds = callPackage ./python-modules/docker-pycreds { };

#   docker-py = callPackage ./python-modules/docker-py { };

#   dockerspawner = callPackage ./python-modules/dockerspawner { };

#   docloud = callPackage ./python-modules/docloud { };

#   docstr-coverage = callPackage ./python-modules/docstr-coverage { };

#   docstring-to-markdown = callPackage ./python-modules/docstring-to-markdown { };

#   docstring-parser = callPackage ./python-modules/docstring-parser { };

#   docopt = callPackage ./python-modules/docopt { };

#   docopt-ng = callPackage ./python-modules/docopt-ng { };

#   docplex = callPackage ./python-modules/docplex { };

#   docrep = callPackage ./python-modules/docrep { };

#   doctest-ignore-unicode = callPackage ./python-modules/doctest-ignore-unicode { };

  docutils = callPackage ./python-modules/docutils { };

#   docx2python = callPackage ./python-modules/docx2python { };

#   docx2txt = callPackage ./python-modules/docx2txt { };

#   dodgy = callPackage ./python-modules/dodgy { };

#   dogpile-cache = callPackage ./python-modules/dogpile-cache { };

#   dogtag-pki = callPackage ./python-modules/dogtag-pki { };

#   dogtail = callPackage ./python-modules/dogtail { };

#   doit = callPackage ./python-modules/doit { };

#   doit-py = callPackage ./python-modules/doit-py { };

#   dokuwiki = callPackage ./python-modules/dokuwiki { };

#   domeneshop = callPackage ./python-modules/domeneshop { };

#   dominate = callPackage ./python-modules/dominate { };

#   doorbirdpy = callPackage ./python-modules/doorbirdpy { };

#   dopy = callPackage ./python-modules/dopy { };

#   dotty-dict = callPackage ./python-modules/dotty-dict { };

#   dot2tex = callPackage ./python-modules/dot2tex {
#     inherit (pkgs) graphviz;
#   };

#   dotwiz = callPackage ./python-modules/dotwiz { };

#   dotmap = callPackage ./python-modules/dotmap { };

#   downloader-cli = callPackage ./python-modules/downloader-cli { };

#   dparse = callPackage ./python-modules/dparse { };

#   dparse2 = callPackage ./python-modules/dparse2 { };

#   dpath = callPackage ./python-modules/dpath { };

#   dpcontracts = callPackage ./python-modules/dpcontracts { };

#   dpkt = callPackage ./python-modules/dpkt { };

#   dploot = callPackage ./python-modules/dploot { };

#   draftjs-exporter = callPackage ./python-modules/draftjs-exporter { };

#   dragonfly = callPackage ./python-modules/dragonfly { };

#   dramatiq = callPackage ./python-modules/dramatiq { };

#   drawille = callPackage ./python-modules/drawille { };

#   drawilleplot = callPackage ./python-modules/drawilleplot { };

#   dremel3dpy = callPackage ./python-modules/dremel3dpy { };

#   drf-jwt = callPackage ./python-modules/drf-jwt { };

#   drf-nested-routers = callPackage ./python-modules/drf-nested-routers { };

#   drf-spectacular = callPackage ./python-modules/drf-spectacular { };

#   drf-spectacular-sidecar = callPackage ./python-modules/drf-spectacular-sidecar { };

#   drf-ujson2 = callPackage ./python-modules/drf-ujson2 { };

#   drf-writable-nested = callPackage ./python-modules/drf-writable-nested { };

#   drf-yasg = callPackage ./python-modules/drf-yasg { };

#   drivelib = callPackage ./python-modules/drivelib { };

#   drms = callPackage ./python-modules/drms { };

#   dronecan = callPackage ./python-modules/dronecan { };

#   dropbox = callPackage ./python-modules/dropbox { };

#   dropmqttapi = callPackage ./python-modules/dropmqttapi { };

#   ds-store = callPackage ./python-modules/ds-store { };

#   ds4drv = callPackage ./python-modules/ds4drv { };

#   dsinternals = callPackage ./python-modules/dsinternals { };

#   dsmr-parser = callPackage ./python-modules/dsmr-parser { };

#   dsnap = callPackage ./python-modules/dsnap { };

#   dtlssocket = callPackage ./python-modules/dtlssocket { };

#   dtschema = callPackage ./python-modules/dtschema { };

#   dtw-python = callPackage ./python-modules/dtw-python { };

#   ducc0 = callPackage ./python-modules/ducc0 { };

#   duckdb = callPackage ./python-modules/duckdb {
#     inherit (pkgs) duckdb;
#   };

#   duckdb-engine = callPackage ./python-modules/duckdb-engine { };

#   duckduckgo-search = callPackage ./python-modules/duckduckgo-search { };

#   duct-py = callPackage ./python-modules/duct-py { };

#   duden = callPackage ./python-modules/duden { };

#   duecredit = callPackage ./python-modules/duecredit { };

#   duet = callPackage ./python-modules/duet { };

#   dufte = callPackage ./python-modules/dufte { };

#   dugong = callPackage ./python-modules/dugong { };

#   dulwich = callPackage ./python-modules/dulwich {
#     inherit (pkgs) gnupg;
#   };

#   dunamai = callPackage ./python-modules/dunamai { };

#   dungeon-eos = callPackage ./python-modules/dungeon-eos { };

#   duo-client = callPackage ./python-modules/duo-client { };

#   durus = callPackage ./python-modules/durus {  };

#   dvc = callPackage ./python-modules/dvc {  };

#   dvc-azure = callPackage ./python-modules/dvc-azure {  };

#   dvc-data = callPackage ./python-modules/dvc-data {  };

#   dvc-gdrive = callPackage ./python-modules/dvc-gdrive {  };

#   dvc-gs = callPackage ./python-modules/dvc-gs { };

#   dvc-hdfs = callPackage ./python-modules/dvc-hdfs {  };

#   dvc-http = callPackage ./python-modules/dvc-http {  };

#   dvc-objects = callPackage ./python-modules/dvc-objects {  };

#   dvc-render = callPackage ./python-modules/dvc-render {  };

#   dvc-s3 = callPackage ./python-modules/dvc-s3 { };

#   dvc-ssh = callPackage ./python-modules/dvc-ssh { };

#   dvc-studio-client = callPackage ./python-modules/dvc-studio-client {  };

#   dvc-task = callPackage ./python-modules/dvc-task {  };

#   dvclive = callPackage ./python-modules/dvclive {  };

#   dwdwfsapi = callPackage ./python-modules/dwdwfsapi { };

#   dyn = callPackage ./python-modules/dyn { };

#   dynalite-devices = callPackage ./python-modules/dynalite-devices { };

#   dynalite-panel = callPackage ./python-modules/dynalite-panel { };

#   dynd = callPackage ./python-modules/dynd { };

#   dsl2html = callPackage ./python-modules/dsl2html { };

#   e3-core = callPackage ./python-modules/e3-core { };

#   e3-testsuite = callPackage ./python-modules/e3-testsuite { };

#   eagle100 = callPackage ./python-modules/eagle100 { };

#   easydict = callPackage ./python-modules/easydict { };

#   easyenergy = callPackage ./python-modules/easyenergy { };

#   easygui = callPackage ./python-modules/easygui { };

#   easyocr = callPackage ./python-modules/easyocr { };

#   easyprocess = callPackage ./python-modules/easyprocess { };

#   easy-thumbnails = callPackage ./python-modules/easy-thumbnails { };

#   easywatch = callPackage ./python-modules/easywatch { };

#   ebaysdk = callPackage ./python-modules/ebaysdk { };

#   ebcdic = callPackage ./python-modules/ebcdic { };

#   ebooklib = callPackage ./python-modules/ebooklib { };

#   ec2instanceconnectcli = callPackage ../tools/virtualization/ec2instanceconnectcli { };

#   eccodes = toPythonModule (pkgs.eccodes.override {
#     enablePython = true;
#     pythonPackages = self;
#   });

#   ecdsa = callPackage ./python-modules/ecdsa { };

#   echo = callPackage ./python-modules/echo { };

#   ecoaliface = callPackage ./python-modules/ecoaliface { };

#   ecos = callPackage ./python-modules/ecos { };

#   ecpy = callPackage ./python-modules/ecpy { };

#   ecs-logging =  callPackage ./python-modules/ecs-logging { };

#   ed25519 = callPackage ./python-modules/ed25519 { };

#   ed25519-blake2b = callPackage ./python-modules/ed25519-blake2b { };

#   edalize = callPackage ./python-modules/edalize { };

  editables = callPackage ./python-modules/editables { };

#   editdistance = callPackage ./python-modules/editdistance { };

#   editdistance-s = callPackage ./python-modules/editdistance-s { };

#   editdistpy = callPackage ./python-modules/editdistpy { };

#   editor = callPackage ./python-modules/editor { };

#   editorconfig = callPackage ./python-modules/editorconfig { };

#   edk2-pytool-library = callPackage ./python-modules/edk2-pytool-library { };

#   edlib = callPackage ./python-modules/edlib {
#     inherit (pkgs) edlib;
#   };

#   eduvpn-common = callPackage ./python-modules/eduvpn-common { };

#   edward = callPackage ./python-modules/edward { };

#   effdet = callPackage ./python-modules/effdet { };

#   effect = callPackage ./python-modules/effect { };

#   eggdeps = callPackage ./python-modules/eggdeps { };

#   eigenpy = toPythonModule (callPackage ./python-modules/eigenpy { });

#   einops = callPackage ./python-modules/einops { };

#   eiswarnung = callPackage ./python-modules/eiswarnung { };

#   elgato = callPackage ./python-modules/elgato { };

#   elkm1-lib = callPackage ./python-modules/elkm1-lib { };

#   elastic-apm = callPackage ./python-modules/elastic-apm { };

#   elastic-transport = callPackage ./python-modules/elastic-transport { };

#   elasticsearch = callPackage ./python-modules/elasticsearch { };

#   elasticsearch8 = callPackage ./python-modules/elasticsearch8 { };

#   elasticsearch-dsl = callPackage ./python-modules/elasticsearch-dsl { };

#   elasticsearchdsl = self.elasticsearch-dsl;

#   elegy = callPackage ./python-modules/elegy { };

#   elementpath = callPackage ./python-modules/elementpath { };

#   elevate = callPackage ./python-modules/elevate { };

#   eliot = callPackage ./python-modules/eliot { };

#   eliqonline = callPackage ./python-modules/eliqonline { };

#   elmax = callPackage ./python-modules/elmax { };

#   elmax-api = callPackage ./python-modules/elmax-api { };

#   emailthreads = callPackage ./python-modules/emailthreads { };

#   email-validator = callPackage ./python-modules/email-validator { };

#   embedding-reader = callPackage ./python-modules/embedding-reader { };

#   embrace = callPackage ./python-modules/embrace { };

#   emborg = callPackage ./python-modules/emborg { };

#   emcee = callPackage ./python-modules/emcee { };

#   emv = callPackage ./python-modules/emv { };

#   emoji = callPackage ./python-modules/emoji { };

#   empty-files = callPackage ./python-modules/empty-files { };

#   empy = callPackage ./python-modules/empy { };

#   emulated-roku = callPackage ./python-modules/emulated-roku { };

#   enaml = callPackage ./python-modules/enaml { };

#   enamlx = callPackage ./python-modules/enamlx { };

#   encodec = callPackage ./python-modules/encodec { };

#   energyflip-client = callPackage ./python-modules/energyflip-client { };

#   energyflow = callPackage ./python-modules/energyflow { };

#   energyzero =  callPackage ./python-modules/energyzero { };

#   enlighten = callPackage ./python-modules/enlighten { };

#   enocean = callPackage ./python-modules/enocean { };

#   enochecker-core = callPackage ./python-modules/enochecker-core { };

#   enrich = callPackage ./python-modules/enrich { };

#   enterpriseattack = callPackage ./python-modules/enterpriseattack { };

#   entrance = callPackage ./python-modules/entrance {
#     routerFeatures = false;
#   };

#   entrance-with-router-features = callPackage ./python-modules/entrance {
#     routerFeatures = true;
#   };

#   entry-points-txt = callPackage ./python-modules/entry-points-txt { };

#   entrypoint2 = callPackage ./python-modules/entrypoint2 { };

#   entrypoints = callPackage ./python-modules/entrypoints { };

#   enturclient = callPackage ./python-modules/enturclient { };

#   enum34 = callPackage ./python-modules/enum34 { };

#   enum-compat = callPackage ./python-modules/enum-compat { };

#   env-canada = callPackage ./python-modules/env-canada { };

#   environmental-override = callPackage ./python-modules/environmental-override { };

#   environs = callPackage ./python-modules/environs { };

#   envisage = callPackage ./python-modules/envisage { };

#   envs = callPackage ./python-modules/envs { };

#   envoy-reader = callPackage ./python-modules/envoy-reader { };

#   envoy-utils = callPackage ./python-modules/envoy-utils { };

#   enzyme = callPackage ./python-modules/enzyme { };

#   epc = callPackage ./python-modules/epc { };

#   ephem = callPackage ./python-modules/ephem { };

#   ephemeral-port-reserve = callPackage ./python-modules/ephemeral-port-reserve { };

#   epion = callPackage ./python-modules/epion { };

#   epitran = callPackage ./python-modules/epitran { };

#   epson-projector = callPackage ./python-modules/epson-projector { };

#   equinox = callPackage ./python-modules/equinox { };

#   eradicate = callPackage ./python-modules/eradicate { };

#   es-client = callPackage ./python-modules/es-client { };

#   esig = callPackage ./python-modules/esig { };

#   espeak-phonemizer = callPackage ./python-modules/espeak-phonemizer { };

#   esphome-dashboard-api = callPackage ./python-modules/esphome-dashboard-api { };

#   esprima = callPackage ./python-modules/esprima { };

#   escapism = callPackage ./python-modules/escapism { };

#   essentials = callPackage ./python-modules/essentials { };

#   essentials-openapi = callPackage ./python-modules/essentials-openapi { };

#   etcd = callPackage ./python-modules/etcd { };

#   etcd3 = callPackage ./python-modules/etcd3 {
#     inherit (pkgs) etcd;
#   };

#   ete3 = callPackage ./python-modules/ete3 { };

#   etelemetry = callPackage ./python-modules/etelemetry { };

#   etebase = callPackage ./python-modules/etebase {
#     inherit (pkgs.darwin.apple_sdk.frameworks) Security;
#   };

#   etebase-server = callPackage ../servers/etebase { };

#   eternalegypt = callPackage ./python-modules/eternalegypt { };

#   etesync = callPackage ./python-modules/etesync { };

#   eth-abi = callPackage ./python-modules/eth-abi { };

#   eth-account = callPackage ./python-modules/eth-account { };

#   eth-hash = callPackage ./python-modules/eth-hash { };

#   eth-keyfile = callPackage ./python-modules/eth-keyfile { };

#   eth-keys = callPackage ./python-modules/eth-keys { };

#   eth-rlp = callPackage ./python-modules/eth-rlp { };

#   eth-typing = callPackage ./python-modules/eth-typing { };

#   eth-utils = callPackage ./python-modules/eth-utils { };

#   etils = callPackage ./python-modules/etils { };

#   etuples = callPackage ./python-modules/etuples { };

#   et-xmlfile = callPackage ./python-modules/et-xmlfile { };

#   euclid3 = callPackage ./python-modules/euclid3 { };

#   eufylife-ble-client = callPackage ./python-modules/eufylife-ble-client { };

#   eval-type-backport = callPackage ./python-modules/eval-type-backport { };

#   evaluate = callPackage ./python-modules/evaluate { };

#   evdev = callPackage ./python-modules/evdev { };

#   eve = callPackage ./python-modules/eve { };

#   eventkit = callPackage ./python-modules/eventkit { };

#   eventlet = callPackage ./python-modules/eventlet { };

#   events = callPackage ./python-modules/events { };

#   evernote = callPackage ./python-modules/evernote { };

#   evohome-async = callPackage ./python-modules/evohome-async { };

#   evtx = callPackage ./python-modules/evtx { };

#   ewmh = callPackage ./python-modules/ewmh { };

#   example-robot-data = toPythonModule (pkgs.example-robot-data.override {
#     pythonSupport = true;
#     python3Packages = self;
#   });

#   exdown = callPackage ./python-modules/exdown { };

  exceptiongroup = callPackage ./python-modules/exceptiongroup { };

#   exchangelib = callPackage ./python-modules/exchangelib { };

#   execnb = callPackage ./python-modules/execnb { };

  execnet = callPackage ./python-modules/execnet { };

#   executing = callPackage ./python-modules/executing { };

#   executor = callPackage ./python-modules/executor { };

#   exif = callPackage ./python-modules/exif { };

#   exifread = callPackage ./python-modules/exifread { };

#   expandvars = callPackage ./python-modules/expandvars { };

#   expects = callPackage ./python-modules/expects { };

#   expecttest = callPackage ./python-modules/expecttest { };

#   experiment-utilities = callPackage ./python-modules/experiment-utilities { };

#   expiring-dict = callPackage ./python-modules/expiring-dict { };

#   expiringdict = callPackage ./python-modules/expiringdict { };

#   explorerscript = callPackage ./python-modules/explorerscript { };

#   exrex = callPackage ./python-modules/exrex { };

#   exitcode = callPackage ./python-modules/exitcode { };

#   extract-msg = callPackage ./python-modules/extract-msg { };

#   extractcode = callPackage ./python-modules/extractcode { };

#   extractcode-7z = callPackage ./python-modules/extractcode/7z.nix {
#     inherit (pkgs) p7zip;
#   };

#   extractcode-libarchive = callPackage ./python-modules/extractcode/libarchive.nix {
#     inherit (pkgs)
#       libarchive
#       libb2
#       bzip2
#       expat
#       lz4
#       xz
#       zlib
#       zstd;
#   };

#   extras = callPackage ./python-modules/extras { };

#   extruct = callPackage ./python-modules/extruct { };

#   eyed3 = callPackage ./python-modules/eyed3 { };

#   ezdxf = callPackage ./python-modules/ezdxf { };

#   ezyrb = callPackage ./python-modules/ezyrb { };

#   f5-icontrol-rest = callPackage ./python-modules/f5-icontrol-rest { };

#   f5-sdk = callPackage ./python-modules/f5-sdk { };

#   f90nml = callPackage ./python-modules/f90nml { };

#   fabric = callPackage ./python-modules/fabric { };

#   faadelays = callPackage ./python-modules/faadelays { };

#   fabulous = callPackage ./python-modules/fabulous { };

#   facebook-sdk = callPackage ./python-modules/facebook-sdk { };

#   face = callPackage ./python-modules/face { };

#   facedancer = callPackage ./python-modules/facedancer { };

#   face-recognition = callPackage ./python-modules/face-recognition { };

#   facenet-pytorch = callPackage ./python-modules/facenet-pytorch { };

#   face-recognition-models = callPackage ./python-modules/face-recognition/models.nix { };

#   factory-boy = callPackage ./python-modules/factory-boy { };

#   fairscale = callPackage ./python-modules/fairscale { };

#   fairseq = callPackage ./python-modules/fairseq { };

#   faiss = toPythonModule (pkgs.faiss.override {
#     pythonSupport = true;
#     pythonPackages = self;
#   });

#   fake-useragent = callPackage ./python-modules/fake-useragent { };

#   faker = callPackage ./python-modules/faker { };

#   fakeredis = callPackage ./python-modules/fakeredis { };

#   falcon = callPackage ./python-modules/falcon { };

#   faraday-agent-parameters-types = callPackage ./python-modules/faraday-agent-parameters-types { };

#   faraday-plugins = callPackage ./python-modules/faraday-plugins { };

#   farama-notifications = callPackage ./python-modules/farama-notifications { };

#   farm-haystack = callPackage ./python-modules/farm-haystack { };

#   fastai = callPackage ./python-modules/fastai { };

#   fastapi = callPackage ./python-modules/fastapi { };

#   fastapi-mail = callPackage ./python-modules/fastapi-mail { };

#   fastapi-sso = callPackage ./python-modules/fastapi-sso { };

#   fast-histogram = callPackage ./python-modules/fast-histogram { };

#   fastavro = callPackage ./python-modules/fastavro { };

#   fastbencode = callPackage ./python-modules/fastbencode { };

#   fastcache = callPackage ./python-modules/fastcache { };

#   fastcore = callPackage ./python-modules/fastcore { };

#   fastdiff = callPackage ./python-modules/fastdiff { };

#   fastdownload = callPackage ./python-modules/fastdownload { };

#   fastdtw = callPackage ./python-modules/fastdtw { };

#   fastecdsa = callPackage ./python-modules/fastecdsa { };

#   fastembed = callPackage ./python-modules/fastembed { };

#   fasteners = callPackage ./python-modules/fasteners { };

#   fastentrypoints = callPackage ./python-modules/fastentrypoints { };

#   faster-fifo = callPackage ./python-modules/faster-fifo { };

#   faster-whisper = callPackage ./python-modules/faster-whisper { };

#   fastimport = callPackage ./python-modules/fastimport { };

#   fastjet = toPythonModule (pkgs.fastjet.override {
#     withPython = true;
#     inherit (self) python;
#   });

#   fastjsonschema = callPackage ./python-modules/fastjsonschema { };

#   fastnlo-toolkit = toPythonModule (pkgs.fastnlo-toolkit.override {
#     withPython = true;
#     inherit (self) python;
#   });

#   fastnumbers = callPackage ./python-modules/fastnumbers { };

#   fastpair = callPackage ./python-modules/fastpair { };

#   fastparquet = callPackage ./python-modules/fastparquet { };

#   fastpbkdf2 = callPackage ./python-modules/fastpbkdf2 { };

#   fastprogress = callPackage ./python-modules/fastprogress { };

#   fastrlock = callPackage ./python-modules/fastrlock { };

#   fasttext = callPackage ./python-modules/fasttext { };

#   fasttext-predict = callPackage ./python-modules/fasttext-predict { };

#   faust-cchardet = callPackage ./python-modules/faust-cchardet { };

#   favicon = callPackage ./python-modules/favicon { };

  fb-re2 = callPackage ./python-modules/fb-re2 { };

#   fe25519 = callPackage ./python-modules/fe25519 { };

#   feedfinder2 = callPackage ./python-modules/feedfinder2 { };

#   feedgen = callPackage ./python-modules/feedgen { };

#   feedgenerator = callPackage ./python-modules/feedgenerator {
#     inherit (pkgs) glibcLocales;
#   };

#   feedparser = callPackage ./python-modules/feedparser { };

#   fenics = callPackage ./python-modules/fenics {
#     hdf5 = pkgs.hdf5_1_10;
#   };

#   ffcv = callPackage ./python-modules/ffcv { };

#   ffmpeg-python = callPackage ./python-modules/ffmpeg-python { };

#   ffmpeg-progress-yield = callPackage ./python-modules/ffmpeg-progress-yield { };

#   ffmpy = callPackage ./python-modules/ffmpy { };

#   fhir-py = callPackage ./python-modules/fhir-py { };

#   fiblary3-fork = callPackage ./python-modules/fiblary3-fork { };

#   fido2 = callPackage ./python-modules/fido2 { };

#   fields = callPackage ./python-modules/fields { };

#   file-read-backwards = callPackage ./python-modules/file-read-backwards { };

#   filebrowser-safe = callPackage ./python-modules/filebrowser-safe { };

#   filebytes = callPackage ./python-modules/filebytes { };

#   filecheck = callPackage ./python-modules/filecheck { };

#   filedepot = callPackage ./python-modules/filedepot { };

  filelock = callPackage ./python-modules/filelock { };

#   filetype = callPackage ./python-modules/filetype { };

#   filterpy = callPackage ./python-modules/filterpy { };

#   finalfusion = callPackage ./python-modules/finalfusion { };

#   findimports = callPackage ./python-modules/findimports { };

#   find-libpython = callPackage ./python-modules/find-libpython { };

#   findpython = callPackage ./python-modules/findpython { };

#   fingerprints = callPackage ./python-modules/fingerprints { };

#   finitude = callPackage ./python-modules/finitude { };

#   fints = callPackage ./python-modules/fints { };

#   finvizfinance = callPackage ./python-modules/finvizfinance { };

#   fiona = callPackage ./python-modules/fiona { };

#   fipy = callPackage ./python-modules/fipy { };

#   fire = callPackage ./python-modules/fire { };

#   firebase-messaging = callPackage ./python-modules/firebase-messaging { };

#   fireflyalgorithm = callPackage ./python-modules/fireflyalgorithm { };

#   firetv = callPackage ./python-modules/firetv { };

#   first = callPackage ./python-modules/first { };

#   fitbit = callPackage ./python-modules/fitbit { };

#   fivem-api = callPackage ./python-modules/fivem-api { };

#   fixerio = callPackage ./python-modules/fixerio { };

#   fixtures = callPackage ./python-modules/fixtures { };

#   fjaraskupan = callPackage ./python-modules/fjaraskupan { };

#   flake8-blind-except = callPackage ./python-modules/flake8-blind-except { };

#   flake8-bugbear = callPackage ./python-modules/flake8-bugbear { };

#   flake8 = callPackage ./python-modules/flake8 { };

#   flake8-length = callPackage ./python-modules/flake8-length { };

#   flake8-debugger = callPackage ./python-modules/flake8-debugger { };

#   flake8-docstrings = callPackage ./python-modules/flake8-docstrings { };

#   flake8-future-import = callPackage ./python-modules/flake8-future-import { };

#   flake8-import-order = callPackage ./python-modules/flake8-import-order { };

#   flake8-polyfill = callPackage ./python-modules/flake8-polyfill { };

#   flaky = callPackage ./python-modules/flaky { };

#   flametree = callPackage ./python-modules/flametree { };

#   flammkuchen = callPackage ./python-modules/flammkuchen { };

#   flasgger = callPackage ./python-modules/flasgger { };

#   flashtext = callPackage ./python-modules/flashtext { };

#   flask-admin = callPackage ./python-modules/flask-admin { };

#   flask-api = callPackage ./python-modules/flask-api { };

#   flask-appbuilder = callPackage ./python-modules/flask-appbuilder { };

#   flask-assets = callPackage ./python-modules/flask-assets { };

#   flask-babel = callPackage ./python-modules/flask-babel { };

#   flask-babelex = callPackage ./python-modules/flask-babelex { };

#   flask-bcrypt = callPackage ./python-modules/flask-bcrypt { };

#   flask-bootstrap = callPackage ./python-modules/flask-bootstrap { };

#   flask-caching = callPackage ./python-modules/flask-caching { };

#   flask = callPackage ./python-modules/flask { };

#   flask-common = callPackage ./python-modules/flask-common { };

#   flask-compress = callPackage ./python-modules/flask-compress { };

#   flask-cors = callPackage ./python-modules/flask-cors { };

#   flask-dramatiq = callPackage ./python-modules/flask-dramatiq { };

#   flask-elastic = callPackage ./python-modules/flask-elastic { };

#   flask-expects-json = callPackage ./python-modules/flask-expects-json { };

#   flask-gravatar = callPackage ./python-modules/flask-gravatar { };

#   flask-httpauth = callPackage ./python-modules/flask-httpauth { };

#   flask-jwt-extended = callPackage ./python-modules/flask-jwt-extended { };

#   flask-limiter = callPackage ./python-modules/flask-limiter { };

#   flask-login = callPackage ./python-modules/flask-login { };

#   flask-mail = callPackage ./python-modules/flask-mail { };

#   flask-mailman = callPackage ./python-modules/flask-mailman { };

#   flask-marshmallow = callPackage ./python-modules/flask-marshmallow { };

#   flask-migrate = callPackage ./python-modules/flask-migrate { };

#   flask-mongoengine = callPackage ./python-modules/flask-mongoengine { };

#   flask-mysqldb = callPackage ./python-modules/flask-mysqldb { };

#   flask-openid = callPackage ./python-modules/flask-openid { };

#   flask-paginate = callPackage ./python-modules/flask-paginate { };

#   flask-paranoid = callPackage ./python-modules/flask-paranoid { };

#   flask-principal = callPackage ./python-modules/flask-principal { };

#   flask-pymongo = callPackage ./python-modules/flask-pymongo { };

#   flask-restful = callPackage ./python-modules/flask-restful { };

#   flask-restx = callPackage ./python-modules/flask-restx { };

#   flask-reverse-proxy-fix = callPackage ./python-modules/flask-reverse-proxy-fix { };

#   flask-script = callPackage ./python-modules/flask-script { };

#   flask-seasurf = callPackage ./python-modules/flask-seasurf { };

#   flask-session = callPackage ./python-modules/flask-session { };

#   flask-session-captcha = callPackage ./python-modules/flask-session-captcha { };

#   flask-security-too = callPackage ./python-modules/flask-security-too { };

#   flask-silk = callPackage ./python-modules/flask-silk { };

#   flask-sock = callPackage ./python-modules/flask-sock { };

#   flask-socketio = callPackage ./python-modules/flask-socketio { };

#   flask-sockets = callPackage ./python-modules/flask-sockets { };

#   flask-sqlalchemy = callPackage ./python-modules/flask-sqlalchemy { };

#   flask-sslify = callPackage ./python-modules/flask-sslify { };

#   flask-swagger = callPackage ./python-modules/flask-swagger { };

#   flask-swagger-ui = callPackage ./python-modules/flask-swagger-ui { };

#   flask-talisman = callPackage ./python-modules/flask-talisman { };

#   flask-testing = callPackage ./python-modules/flask-testing { };

#   flask-themes2 = callPackage ./python-modules/flask-themes2 { };

#   flask-versioned = callPackage ./python-modules/flask-versioned { };

#   flask-wtf = callPackage ./python-modules/flask-wtf { };

#   flatbuffers = callPackage ./python-modules/flatbuffers {
#     inherit (pkgs) flatbuffers;
#   };

#   flatdict = callPackage ./python-modules/flatdict { };

#   flatten-dict = callPackage ./python-modules/flatten-dict { };

#   flax = callPackage ./python-modules/flax { };

#   fleep = callPackage ./python-modules/fleep { };

#   flet = callPackage ./python-modules/flet { };

#   flet-core = callPackage ./python-modules/flet-core { };

#   flet-runtime = callPackage ./python-modules/flet-runtime { };

#   flexmock = callPackage ./python-modules/flexmock { };

#   flickrapi = callPackage ./python-modules/flickrapi { };

#   flipr-api = callPackage ./python-modules/flipr-api { };

  flit = callPackage ./python-modules/flit { };

  flit-core = callPackage ./python-modules/flit-core { };

#   flit-scm = callPackage ./python-modules/flit-scm { };

#   floret = callPackage ./python-modules/floret { };

#   flow-record = callPackage ./python-modules/flow-record { };

#   flower = callPackage ./python-modules/flower { };

#   flowlogs-reader = callPackage ./python-modules/flowlogs-reader { };

#   fluent-logger = callPackage ./python-modules/fluent-logger { };

#   flufl-bounce = callPackage ./python-modules/flufl/bounce.nix { };

#   flufl-i18n = callPackage ./python-modules/flufl/i18n.nix { };

#   flufl-lock = callPackage ./python-modules/flufl/lock.nix { };

#   flux-led = callPackage ./python-modules/flux-led { };

#   flyingsquid = callPackage ./python-modules/flyingsquid { };

#   flynt = callPackage ./python-modules/flynt { };

#   fn = callPackage ./python-modules/fn { };

#   fnv-hash-fast = callPackage ./python-modules/fnv-hash-fast { };

#   fnvhash = callPackage ./python-modules/fnvhash { };

#   folium = callPackage ./python-modules/folium { };

#   fontawesomefree = callPackage ./python-modules/fontawesomefree { };

#   fontbakery = callPackage ./python-modules/fontbakery { };

#   fontfeatures = callPackage ./python-modules/fontfeatures { };

#   fontforge = toPythonModule (pkgs.fontforge.override {
#     withPython = true;
#     inherit python;
#   });

#   fontmath = callPackage ./python-modules/fontmath { };

#   fontparts = callPackage ./python-modules/fontparts { };

#   fontpens = callPackage ./python-modules/fontpens { };

#   fonttools = callPackage ./python-modules/fonttools { };

#   fontmake = callPackage ./python-modules/fontmake { };

#   font-v = callPackage ./python-modules/font-v { };

#   skia-pathops = callPackage ./python-modules/skia-pathops {
#     inherit (pkgs.darwin.apple_sdk.frameworks) ApplicationServices OpenGL;
#   };

#   oelint-parser = callPackage ./python-modules/oelint-parser { };

#   openllm = callPackage ./python-modules/openllm {
#     openai-triton = self.openai-triton-cuda;
#   };

#   openllm-client = callPackage ./python-modules/openllm-client { };

#   openllm-core = callPackage ./python-modules/openllm-core { };

#   openstep-plist = callPackage ./python-modules/openstep-plist { };

#   glyphsets = callPackage ./python-modules/glyphsets { };

#   glyphslib = callPackage ./python-modules/glyphslib { };

#   glyphtools = callPackage ./python-modules/glyphtools { };

#   foobot-async = callPackage ./python-modules/foobot-async { };

#   foolscap = callPackage ./python-modules/foolscap { };

#   forbiddenfruit = callPackage ./python-modules/forbiddenfruit { };

#   fordpass = callPackage ./python-modules/fordpass { };

#   forecast-solar = callPackage ./python-modules/forecast-solar { };

#   formbox = callPackage ./python-modules/formbox { };

#   formulae = callPackage ./python-modules/formulae { };

#   fortiosapi = callPackage ./python-modules/fortiosapi { };

#   formencode = callPackage ./python-modules/formencode { };

#   formulaic = callPackage ./python-modules/formulaic { };

#   foundationdb71 = callPackage ../servers/foundationdb/python.nix { foundationdb = pkgs.foundationdb71; };

#   fountains = callPackage ./python-modules/fountains { };

#   foxdot = callPackage ./python-modules/foxdot { };

#   fpdf = callPackage ./python-modules/fpdf { };

#   fpdf2 = callPackage ./python-modules/fpdf2 { };

#   fpylll = callPackage ./python-modules/fpylll { };

#   fpyutils = callPackage ./python-modules/fpyutils { };

#   fqdn = callPackage ./python-modules/fqdn { };

#   freebox-api = callPackage ./python-modules/freebox-api { };

#   freetype-py = callPackage ./python-modules/freetype-py { };

  freezegun = callPackage ./python-modules/freezegun { };

#   frelatage = callPackage ./python-modules/frelatage { };

#   frida-python = callPackage ./python-modules/frida-python { };

#   frigidaire = callPackage ./python-modules/frigidaire { };

#   frilouz = callPackage ./python-modules/frilouz { };

#   fritzconnection = callPackage ./python-modules/fritzconnection { };

#   frozendict = callPackage ./python-modules/frozendict { };

#   frozenlist = callPackage ./python-modules/frozenlist { };

#   frozenlist2 = callPackage ./python-modules/frozenlist2 { };

#   fs = callPackage ./python-modules/fs { };

#   fs-s3fs = callPackage ./python-modules/fs-s3fs { };

#   fschat = callPackage ./python-modules/fschat { };

#   fsspec-xrootd = callPackage ./python-modules/fsspec-xrootd { };

#   fsspec = callPackage ./python-modules/fsspec { };

#   fst-pso = callPackage ./python-modules/fst-pso { };

#   ftfy = callPackage ./python-modules/ftfy { };

#   ftputil = callPackage ./python-modules/ftputil { };

#   fugashi = callPackage ./python-modules/fugashi { };

  func-timeout = callPackage ./python-modules/func-timeout { };

#   funcparserlib = callPackage ./python-modules/funcparserlib { };

#   funcsigs = callPackage ./python-modules/funcsigs { };

#   functiontrace = callPackage ./python-modules/functiontrace { };

#   functools32 = callPackage ./python-modules/functools32 { };

#   funcy = callPackage ./python-modules/funcy { };

#   funsor = callPackage ./python-modules/funsor { };

#   furl = callPackage ./python-modules/furl { };

#   furo = callPackage ./python-modules/furo { };

#   fuse = callPackage ./python-modules/fuse-python {
#     inherit (pkgs) fuse;
#   };

#   fusepy = callPackage ./python-modules/fusepy { };

  future = callPackage ./python-modules/future { };

#   future-fstrings = callPackage ./python-modules/future-fstrings { };

#   future-typing = callPackage ./python-modules/future-typing { };

#   fuzzyfinder = callPackage ./python-modules/fuzzyfinder { };

#   fuzzytm = callPackage ./python-modules/fuzzytm { };

#   fuzzywuzzy = callPackage ./python-modules/fuzzywuzzy { };

#   fvcore = callPackage ./python-modules/fvcore { };

#   fvs = callPackage ./python-modules/fvs { };

#   fx2 = callPackage ./python-modules/fx2 { };

#   fyta-cli = callPackage ./python-modules/fyta-cli { };

#   g2pkk = callPackage ./python-modules/g2pkk { };

#   galario = toPythonModule (pkgs.galario.override {
#     enablePython = true;
#     pythonPackages = self;
#   });

#   galois = callPackage ./python-modules/galois { };

#   gamble = callPackage ./python-modules/gamble { };

#   gaphas = callPackage ./python-modules/gaphas { };

#   gardena-bluetooth = callPackage ./python-modules/gardena-bluetooth { };

#   garminconnect-aio = callPackage ./python-modules/garminconnect-aio { };

#   garminconnect = callPackage ./python-modules/garminconnect { };

#   garth = callPackage ./python-modules/garth { };

#   gassist-text = callPackage ./python-modules/gassist-text { };

#   gast = callPackage ./python-modules/gast { };

#   gatt = callPackage ./python-modules/gatt { };

#   gattlib = callPackage ./python-modules/gattlib {
#     inherit (pkgs) bluez glib pkg-config;
#   };

#   gawd = callPackage ./python-modules/gawd { };

#   gb-io = callPackage ./python-modules/gb-io { };

#   gbinder-python = callPackage ./python-modules/gbinder-python { };

#   gbulb = callPackage ./python-modules/gbulb { };

#   gcal-sync = callPackage ./python-modules/gcal-sync { };

#   gcodepy = callPackage ./python-modules/gcodepy { };

#   gcovr = callPackage ./python-modules/gcovr { };

#   gcs-oauth2-boto-plugin = callPackage ./python-modules/gcs-oauth2-boto-plugin { };

#   gcsa = callPackage ./python-modules/gcsa { };

#   gcsfs = callPackage ./python-modules/gcsfs { };

#   gdal = toPythonModule (pkgs.gdal.override { python3 = python; });

#   gdata = callPackage ./python-modules/gdata { };

#   gdb-pt-dump = callPackage ./python-modules/gdb-pt-dump { };

#   gdcm = toPythonModule (pkgs.gdcm.override {
#     inherit (self) python;
#     enablePython = true;
#   });

#   gdown = callPackage ./python-modules/gdown { };

#   ge25519 = callPackage ./python-modules/ge25519 { };

#   geant4 = toPythonModule (pkgs.geant4.override {
#     enablePython = true;
#     python3 = python;
#   });

#   geeknote = callPackage ./python-modules/geeknote { };

#   gehomesdk = callPackage ./python-modules/gehomesdk { };

#   gekitchen = callPackage ./python-modules/gekitchen { };

#   gekko = callPackage ./python-modules/gekko { };

#   gemfileparser = callPackage ./python-modules/gemfileparser { };

#   gemfileparser2 = callPackage ./python-modules/gemfileparser2 { };

#   genanki = callPackage ./python-modules/genanki { };

#   generic = callPackage ./python-modules/generic { };

#   geniushub-client = callPackage ./python-modules/geniushub-client { };

#   genome-collector = callPackage ./python-modules/genome-collector { };

#   genpy = callPackage ./python-modules/genpy { };

#   genshi = callPackage ./python-modules/genshi { };

#   gensim = callPackage ./python-modules/gensim { };

#   gentools = callPackage ./python-modules/gentools { };

#   genzshcomp = callPackage ./python-modules/genzshcomp { };

#   geoalchemy2 = callPackage ./python-modules/geoalchemy2 { };

#   geocachingapi = callPackage ./python-modules/geocachingapi { };

#   geocoder = callPackage ./python-modules/geocoder { };

#   geographiclib = callPackage ./python-modules/geographiclib { };

#   geoip2 = callPackage ./python-modules/geoip2 { };

#   geoip = callPackage ./python-modules/geoip {
#     libgeoip = pkgs.geoip;
#   };

#   geojson = callPackage ./python-modules/geojson { };

#   geojson-client = callPackage ./python-modules/geojson-client { };

#   geomet = callPackage ./python-modules/geomet { };

#   geometric = callPackage ./python-modules/geometric { };

#   geopandas = callPackage ./python-modules/geopandas { };

#   geopy = callPackage ./python-modules/geopy { };

#   georss-client = callPackage ./python-modules/georss-client { };

#   georss-generic-client = callPackage ./python-modules/georss-generic-client { };

#   georss-ign-sismologia-client = callPackage ./python-modules/georss-ign-sismologia-client { };

#   georss-ingv-centro-nazionale-terremoti-client = callPackage ./python-modules/georss-ingv-centro-nazionale-terremoti-client { };

#   georss-nrcan-earthquakes-client = callPackage ./python-modules/georss-nrcan-earthquakes-client { };

#   georss-qld-bushfire-alert-client = callPackage ./python-modules/georss-qld-bushfire-alert-client { };

#   georss-tfs-incidents-client = callPackage ./python-modules/georss-tfs-incidents-client { };

#   georss-wa-dfes-client = callPackage ./python-modules/georss-wa-dfes-client { };

#   gerbonara = callPackage ./python-modules/gerbonara { };

#   getjump = callPackage ./python-modules/getjump { };

#   getmac = callPackage ./python-modules/getmac { };

#   getkey = callPackage ./python-modules/getkey { };

#   get-video-properties = callPackage ./python-modules/get-video-properties { };

  gevent = callPackage ./python-modules/gevent { };

#   geventhttpclient = callPackage ./python-modules/geventhttpclient { };

#   gevent-socketio = callPackage ./python-modules/gevent-socketio { };

#   gevent-websocket = callPackage ./python-modules/gevent-websocket { };

#   gfal2-python = callPackage ./python-modules/gfal2-python { };

#   gfal2-util = callPackage ./python-modules/gfal2-util {
#     inherit (pkgs) xrootd;
#   };

#   gflags = callPackage ./python-modules/gflags { };

#   gflanguages = callPackage ./python-modules/gflanguages { };

#   gfsubsets = callPackage ./python-modules/gfsubsets { };

#   ghapi = callPackage ./python-modules/ghapi { };

#   ghdiff = callPackage ./python-modules/ghdiff { };

#   ghp-import = callPackage ./python-modules/ghp-import { };

#   ghrepo-stats = callPackage ./python-modules/ghrepo-stats { };

#   gibberish-detector = callPackage ./python-modules/gibberish-detector { };

#   gidgethub = callPackage ./python-modules/gidgethub { };

#   gin-config = callPackage ./python-modules/gin-config { };

#   gios = callPackage ./python-modules/gios { };

#   gipc = callPackage ./python-modules/gipc { };

#   gistyc = callPackage ./python-modules/gistyc { };

#   git-annex-adapter =
#     callPackage ./python-modules/git-annex-adapter { };

#   git-filter-repo = callPackage ./python-modules/git-filter-repo { };

#   git-revise = callPackage ./python-modules/git-revise { };

#   git-sweep = callPackage ./python-modules/git-sweep { };

#   git-url-parse = callPackage ./python-modules/git-url-parse { };

#   gitdb = callPackage ./python-modules/gitdb { };

#   githubkit = callPackage ./python-modules/githubkit { };

#   github-to-sqlite = callPackage ./python-modules/github-to-sqlite { };

#   github-webhook = callPackage ./python-modules/github-webhook { };

#   github3-py = callPackage ./python-modules/github3-py { };

#   gitignore-parser = callPackage ./python-modules/gitignore-parser { };

#   gitlike-commands = callPackage ./python-modules/gitlike-commands { };

#   gitpython = callPackage ./python-modules/gitpython { };

#   git-versioner = callPackage ./python-modules/git-versioner { };

#   glad =  callPackage ./python-modules/glad { };

#   glad2 =  callPackage ./python-modules/glad2 { };

#   glances-api = callPackage ./python-modules/glances-api { };

#   glcontext = callPackage ./python-modules/glcontext { };

#   glean-parser = callPackage ./python-modules/glean-parser { };

#   glean-sdk = callPackage ./python-modules/glean-sdk {
#     inherit (pkgs) lmdb;
#   };

#   glfw = callPackage ./python-modules/glfw { };

#   glob2 = callPackage ./python-modules/glob2 { };

#   globre = callPackage ./python-modules/globre { };

#   globus-sdk = callPackage ./python-modules/globus-sdk { };

#   glom = callPackage ./python-modules/glom { };

#   glueviz = callPackage ./python-modules/glueviz { };

#   glymur = callPackage ./python-modules/glymur { };

#   gmpy2 = callPackage ./python-modules/gmpy2 { };

#   gmpy = callPackage ./python-modules/gmpy { };

#   gmsh = toPythonModule (callPackage ../applications/science/math/gmsh {
#     enablePython = true;
#   });

#   gntp = callPackage ./python-modules/gntp { };

#   gnureadline = callPackage ./python-modules/gnureadline { };

#   goalzero = callPackage ./python-modules/goalzero { };

#   gocardless-pro = callPackage ./python-modules/gocardless-pro { };

#   goobook = callPackage ./python-modules/goobook { };

#   goocalendar = callPackage ./python-modules/goocalendar { };

#   goodwe = callPackage ./python-modules/goodwe { };

#   google = callPackage ./python-modules/google { };

#   google-ai-generativelanguage = callPackage ./python-modules/google-ai-generativelanguage { };

#   google-api-core = callPackage ./python-modules/google-api-core { };

#   google-api-python-client = callPackage ./python-modules/google-api-python-client { };

#   googleapis-common-protos = callPackage ./python-modules/googleapis-common-protos { };

#   google-auth = callPackage ./python-modules/google-auth { };

#   google-auth-httplib2 = callPackage ./python-modules/google-auth-httplib2 { };

#   google-auth-oauthlib = callPackage ./python-modules/google-auth-oauthlib { };

#   google-cloud-access-context-manager = callPackage ./python-modules/google-cloud-access-context-manager { };

#   google-cloud-appengine-logging = callPackage ./python-modules/google-cloud-appengine-logging { };

#   google-cloud-artifact-registry = callPackage ./python-modules/google-cloud-artifact-registry { };

#   google-cloud-asset = callPackage ./python-modules/google-cloud-asset { };

#   google-cloud-audit-log = callPackage ./python-modules/google-cloud-audit-log { };

#   google-cloud-automl = callPackage ./python-modules/google-cloud-automl { };

#   google-cloud-bigquery = callPackage ./python-modules/google-cloud-bigquery { };

#   google-cloud-bigquery-datatransfer = callPackage ./python-modules/google-cloud-bigquery-datatransfer { };

#   google-cloud-bigquery-logging = callPackage ./python-modules/google-cloud-bigquery-logging { };

#   google-cloud-bigquery-storage = callPackage ./python-modules/google-cloud-bigquery-storage { };

#   google-cloud-bigtable = callPackage ./python-modules/google-cloud-bigtable { };

#   google-cloud-compute = callPackage ./python-modules/google-cloud-compute { };

#   google-cloud-container = callPackage ./python-modules/google-cloud-container { };

#   google-cloud-core = callPackage ./python-modules/google-cloud-core { };

#   google-cloud-datacatalog = callPackage ./python-modules/google-cloud-datacatalog { };

#   google-cloud-dataproc = callPackage ./python-modules/google-cloud-dataproc { };

#   google-cloud-datastore = callPackage ./python-modules/google-cloud-datastore { };

#   google-cloud-dlp = callPackage ./python-modules/google-cloud-dlp { };

#   google-cloud-dns = callPackage ./python-modules/google-cloud-dns { };

#   google-cloud-error-reporting = callPackage ./python-modules/google-cloud-error-reporting { };

#   google-cloud-firestore = callPackage ./python-modules/google-cloud-firestore { };

#   google-cloud-iam = callPackage ./python-modules/google-cloud-iam { };

#   google-cloud-iam-logging = callPackage ./python-modules/google-cloud-iam-logging { };

#   google-cloud-iot = callPackage ./python-modules/google-cloud-iot { };

#   google-cloud-kms = callPackage ./python-modules/google-cloud-kms { };

#   google-cloud-language = callPackage ./python-modules/google-cloud-language { };

#   google-cloud-logging = callPackage ./python-modules/google-cloud-logging { };

#   google-cloud-monitoring = callPackage ./python-modules/google-cloud-monitoring { };

#   google-cloud-netapp = callPackage ./python-modules/google-cloud-netapp { };

#   google-cloud-org-policy = callPackage ./python-modules/google-cloud-org-policy { };

#   google-cloud-os-config = callPackage ./python-modules/google-cloud-os-config { };

#   google-cloud-pubsub = callPackage ./python-modules/google-cloud-pubsub { };

#   google-cloud-redis = callPackage ./python-modules/google-cloud-redis { };

#   google-cloud-resource-manager = callPackage ./python-modules/google-cloud-resource-manager { };

#   google-cloud-runtimeconfig = callPackage ./python-modules/google-cloud-runtimeconfig { };

#   google-cloud-secret-manager = callPackage ./python-modules/google-cloud-secret-manager { };

#   google-cloud-securitycenter = callPackage ./python-modules/google-cloud-securitycenter { };

#   google-cloud-shell = callPackage ./python-modules/google-cloud-shell { };

#   google-cloud-spanner = callPackage ./python-modules/google-cloud-spanner { };

#   google-cloud-speech = callPackage ./python-modules/google-cloud-speech { };

#   google-cloud-storage = callPackage ./python-modules/google-cloud-storage { };

#   google-cloud-tasks = callPackage ./python-modules/google-cloud-tasks { };

#   google-cloud-testutils = callPackage ./python-modules/google-cloud-testutils { };

#   google-cloud-texttospeech = callPackage ./python-modules/google-cloud-texttospeech { };

#   google-cloud-trace = callPackage ./python-modules/google-cloud-trace { };

#   google-cloud-translate = callPackage ./python-modules/google-cloud-translate { };

#   google-cloud-videointelligence = callPackage ./python-modules/google-cloud-videointelligence { };

#   google-cloud-vision = callPackage ./python-modules/google-cloud-vision { };

#   google-cloud-vpc-access = callPackage ./python-modules/google-cloud-vpc-access { };

#   google-cloud-webrisk = callPackage ./python-modules/google-cloud-webrisk { };

#   google-cloud-websecurityscanner = callPackage ./python-modules/google-cloud-websecurityscanner { };

#   google-cloud-workflows = callPackage ./python-modules/google-cloud-workflows { };

#   google-cloud-workstations = callPackage ./python-modules/google-cloud-workstations { };

#   google-compute-engine = callPackage ../tools/virtualization/google-compute-engine { };

#   google-crc32c = callPackage ./python-modules/google-crc32c {
#     inherit (pkgs) crc32c;
#   };

#   google-generativeai = callPackage ./python-modules/google-generativeai { };

#   google-i18n-address = callPackage ./python-modules/google-i18n-address { };

#   google-nest-sdm = callPackage ./python-modules/google-nest-sdm { };

#   googlemaps = callPackage ./python-modules/googlemaps { };

#   google-pasta = callPackage ./python-modules/google-pasta { };

#   google-re2 = callPackage ./python-modules/google-re2 { };

#   google-reauth = callPackage ./python-modules/google-reauth { };

#   google-resumable-media = callPackage ./python-modules/google-resumable-media { };

#   google-search-results = callPackage ./python-modules/google-search-results { };

#   googletrans = callPackage ./python-modules/googletrans { };

#   gotailwind = callPackage ./python-modules/gotailwind { };

#   gotenberg-client = callPackage ./python-modules/gotenberg-client { };

#   gorilla = callPackage ./python-modules/gorilla { };

#   govee-ble = callPackage ./python-modules/govee-ble { };

#   govee-led-wez = callPackage ./python-modules/govee-led-wez { };

#   govee-local-api = callPackage ./python-modules/govee-local-api { };

#   goveelights = callPackage ./python-modules/goveelights { };

#   gpapi = callPackage ./python-modules/gpapi { };

#   gpaw = callPackage ./python-modules/gpaw { };

#   gpib-ctypes = callPackage ./python-modules/gpib-ctypes { };

#   gpiozero = callPackage ./python-modules/gpiozero { };

#   gplaycli = callPackage ./python-modules/gplaycli { };

#   gpgme = toPythonModule (pkgs.gpgme.override {
#     pythonSupport = true;
#     python3 = python;
#   });

#   gphoto2 = callPackage ./python-modules/gphoto2 { };

#   gprof2dot = callPackage ./python-modules/gprof2dot {
#     inherit (pkgs) graphviz;
#   };

#   gps3 = callPackage ./python-modules/gps3 { };

#   gpsoauth = callPackage ./python-modules/gpsoauth { };

#   gpuctypes = callPackage ./python-modules/gpuctypes { };

#   gpustat = callPackage ./python-modules/gpustat { };

#   gpxpy = callPackage ./python-modules/gpxpy { };

#   gpy = callPackage ./python-modules/gpy { };

#   gpytorch = callPackage ./python-modules/gpytorch { };

#   gpt-2-simple = callPackage ./python-modules/gpt-2-simple { };

#   gptcache = callPackage ./python-modules/gptcache { };

#   gql = callPackage ./python-modules/gql { };

#   grad-cam = callPackage ./python-modules/grad-cam { };

#   gradient = callPackage ./python-modules/gradient { };

#   gradient-utils = callPackage ./python-modules/gradient-utils { };

#   gradient-statsd = callPackage ./python-modules/gradient-statsd { };

#   gradio = callPackage ./python-modules/gradio { };

#   gradio-client = callPackage ./python-modules/gradio/client.nix { };

#   gradio-pdf = callPackage ./python-modules/gradio-pdf { };

#   grafanalib = callPackage ./python-modules/grafanalib/default.nix { };

#   grammalecte = callPackage ./python-modules/grammalecte { };

#   grandalf = callPackage ./python-modules/grandalf { };

#   grapheme = callPackage ./python-modules/grapheme { };

#   graphite-web = callPackage ./python-modules/graphite-web { };

#   graphene = callPackage ./python-modules/graphene { };

#   graphene-django = callPackage ./python-modules/graphene-django { };

#   graphlib-backport = callPackage ./python-modules/graphlib-backport { };

#   graphqlclient= callPackage ./python-modules/graphqlclient { };

#   graphql-core = callPackage ./python-modules/graphql-core { };

#   graphql-relay = callPackage ./python-modules/graphql-relay { };

#   graphql-server-core = callPackage ./python-modules/graphql-server-core { };

#   graphql-subscription-manager = callPackage ./python-modules/graphql-subscription-manager { };

#   graph-tool = callPackage ./python-modules/graph-tool { };

#   graphtage = callPackage ./python-modules/graphtage { };

#   graphviz = callPackage ./python-modules/graphviz { };

#   grappelli-safe = callPackage ./python-modules/grappelli-safe { };

#   graspologic = callPackage ./python-modules/graspologic { };

#   greatfet = callPackage ./python-modules/greatfet { };

#   greeclimate = callPackage ./python-modules/greeclimate { };

#   green = callPackage ./python-modules/green { };

#   greeneye-monitor = callPackage ./python-modules/greeneye-monitor { };

#   # built-in for pypi
  greenlet = if isPyPy then null else callPackage ./python-modules/greenlet { };

#   grequests = callPackage ./python-modules/grequests { };

#   gremlinpython = callPackage ./python-modules/gremlinpython { };

#   greynoise = callPackage ./python-modules/greynoise { };

#   growattserver = callPackage ./python-modules/growattserver { };

#   gridnet = callPackage ./python-modules/gridnet { };

#   griffe = callPackage ./python-modules/griffe { };

#   grip = callPackage ./python-modules/grip { };

#   groestlcoin-hash = callPackage ./python-modules/groestlcoin-hash { };

#   grpc-google-iam-v1 = callPackage ./python-modules/grpc-google-iam-v1 { };

#   grpc-interceptor = callPackage ./python-modules/grpc-interceptor { };

#   grpcio = callPackage ./python-modules/grpcio { };

#   grpcio-channelz = callPackage ./python-modules/grpcio-channelz { };

#   grpcio-gcp = callPackage ./python-modules/grpcio-gcp { };

#   grpcio-health-checking = callPackage ./python-modules/grpcio-health-checking { };

#   grpcio-reflection = callPackage ./python-modules/grpcio-reflection { };

#   grpcio-status = callPackage ./python-modules/grpcio-status { };

#   grpcio-tools = callPackage ./python-modules/grpcio-tools { };

#   grpcio-testing = callPackage ./python-modules/grpcio-testing { };

#   grpclib = callPackage ./python-modules/grpclib { };

#   gruut = callPackage ./python-modules/gruut { };

#   gruut-ipa = callPackage ./python-modules/gruut-ipa {
#     inherit (pkgs) espeak;
#   };

#   gsd = callPackage ./python-modules/gsd { };

#   gsm0338 = callPackage ./python-modules/gsm0338 { };

#   gspread = callPackage ./python-modules/gspread { };

#   gssapi = callPackage ./python-modules/gssapi {
#     inherit (pkgs) krb5;
#     inherit (pkgs.darwin.apple_sdk.frameworks) GSS;
#   };

#   gst-python = callPackage ./python-modules/gst-python {
#     # inherit (pkgs) meson won't work because it won't be spliced
#     inherit (pkgs.buildPackages) meson;
#   };

#   gtfs-realtime-bindings = callPackage ./python-modules/gtfs-realtime-bindings { };

#   gto = callPackage ./python-modules/gto { };

#   gtts = callPackage ./python-modules/gtts { };

#   gtts-token = callPackage ./python-modules/gtts-token { };

#   guessit = callPackage ./python-modules/guessit { };

#   guestfs = callPackage ./python-modules/guestfs {
#     qemu = pkgs.qemu;
#   };

#   gudhi = callPackage ./python-modules/gudhi { };

#   guidance = callPackage ./python-modules/guidance { };

#   gumath = callPackage ./python-modules/gumath { };

#   gunicorn = callPackage ./python-modules/gunicorn { };

#   guppy3 = callPackage ./python-modules/guppy3 { };

#   gurobipy = callPackage ./python-modules/gurobipy { };

#   guzzle-sphinx-theme = callPackage ./python-modules/guzzle-sphinx-theme { };

#   gvm-tools = callPackage ./python-modules/gvm-tools { };

#   gviz-api = callPackage ./python-modules/gviz-api { };

#   gym = callPackage ./python-modules/gym { };

#   gym-notices = callPackage ./python-modules/gym-notices { };

#   gymnasium = callPackage ./python-modules/gymnasium { };

#   gyp = callPackage ./python-modules/gyp { };

#   h11 = callPackage ./python-modules/h11 { };

#   h2 = callPackage ./python-modules/h2 { };

#   h3 = callPackage ./python-modules/h3 {
#     inherit (pkgs) h3;
#   };

#   h5io = callPackage ./python-modules/h5io { };

#   h5netcdf = callPackage ./python-modules/h5netcdf { };

#   h5py = callPackage ./python-modules/h5py { };

#   h5py-mpi = self.h5py.override {
#     hdf5 = pkgs.hdf5-mpi;
#   };

#   habanero = callPackage ./python-modules/habanero { };

#   habluetooth = callPackage ./python-modules/habluetooth { };

#   habitipy = callPackage ./python-modules/habitipy { };

#   hachoir = callPackage ./python-modules/hachoir { };

#   hacking = callPackage ./python-modules/hacking { };

#   hdate = callPackage ./python-modules/hdate { };

#   hdf5plugin = callPackage ./python-modules/hdf5plugin { };

#   ha-ffmpeg = callPackage ./python-modules/ha-ffmpeg { };

#   ha-mqtt-discoverable = callPackage ./python-modules/ha-mqtt-discoverable { };

#   ha-philipsjs = callPackage ./python-modules/ha-philipsjs{ };

#   hahomematic = callPackage ./python-modules/hahomematic { };

#   halo = callPackage ./python-modules/halo { };

#   halohome = callPackage ./python-modules/halohome { };

#   handout = callPackage ./python-modules/handout { };

#   hap-python = callPackage ./python-modules/hap-python { };

#   hass-nabucasa = callPackage ./python-modules/hass-nabucasa { };

#   hassil = callPackage ./python-modules/hassil { };

#   hatasmota = callPackage ./python-modules/hatasmota { };

  hatchling = callPackage ./python-modules/hatchling { };

#   hatch-fancy-pypi-readme = callPackage ./python-modules/hatch-fancy-pypi-readme { };

#   hatch-jupyter-builder = callPackage ./python-modules/hatch-jupyter-builder { };

  hatch-vcs = callPackage ./python-modules/hatch-vcs { };

#   hatch-nodejs-version = callPackage ./python-modules/hatch-nodejs-version { };

#   hatch-requirements-txt = callPackage ./python-modules/hatch-requirements-txt { };

#   haversine = callPackage ./python-modules/haversine { };

#   hawkauthlib = callPackage ./python-modules/hawkauthlib { };

#   hcloud = callPackage ./python-modules/hcloud { };

#   hcs-utils = callPackage ./python-modules/hcs-utils { };

#   hdbscan = callPackage ./python-modules/hdbscan { };

#   hdfs = callPackage ./python-modules/hdfs { };

#   hdmedians = callPackage ./python-modules/hdmedians { };

#   headerparser = callPackage ./python-modules/headerparser { };

#   heapdict = callPackage ./python-modules/heapdict { };

#   heatshrink2 = callPackage ./python-modules/heatshrink2 { };

#   heatzypy = callPackage ./python-modules/heatzypy { };

#   help2man = callPackage ./python-modules/help2man { };

#   helpdev = callPackage ./python-modules/helpdev { };

#   helper = callPackage ./python-modules/helper { };

#   hepmc3 = toPythonModule (pkgs.hepmc3.override {
#     inherit python;
#   });

#   hepunits = callPackage ./python-modules/hepunits { };

#   here-routing = callPackage ./python-modules/here-routing { };

#   here-transit = callPackage ./python-modules/here-transit { };

#   herepy = callPackage ./python-modules/herepy { };

#   hetzner = callPackage ./python-modules/hetzner { };

#   heudiconv = callPackage ./python-modules/heudiconv { };

#   hexbytes = callPackage ./python-modules/hexbytes { };

#   hexdump = callPackage ./python-modules/hexdump { };

#   hfst = callPackage ./python-modules/hfst { };

#   hg-commitsigs = callPackage ./python-modules/hg-commitsigs { };

#   hg-evolve = callPackage ./python-modules/hg-evolve { };

#   hg-git = callPackage ./python-modules/hg-git { };

#   hickle = callPackage ./python-modules/hickle { };

#   highdicom = callPackage ./python-modules/highdicom { };

#   hid = callPackage ./python-modules/hid {
#     inherit (pkgs) hidapi;
#   };

#   hidapi = callPackage ./python-modules/hidapi {
#     inherit (pkgs) udev libusb1;
#   };

#   hid-parser = callPackage ./python-modules/hid-parser { };

#   hieroglyph = callPackage ./python-modules/hieroglyph { };

#   hijri-converter = callPackage ./python-modules/hijri-converter { };

#   hikari = callPackage ./python-modules/hikari { };

#   hikvision = callPackage ./python-modules/hikvision { };

#   hiredis = callPackage ./python-modules/hiredis { };

#   hiro = callPackage ./python-modules/hiro { };

#   hishel = callPackage ./python-modules/hishel { };

#   hist = callPackage ./python-modules/hist { };

#   histoprint = callPackage ./python-modules/histoprint { };

#   hiyapyco = callPackage ./python-modules/hiyapyco { };

#   hjson = callPackage ./python-modules/hjson { };

#   hkavr = callPackage ./python-modules/hkavr { };

#   hkdf = callPackage ./python-modules/hkdf { };

#   hledger-utils = callPackage ./python-modules/hledger-utils { };

#   hlk-sw16 = callPackage ./python-modules/hlk-sw16 { };

#   hnswlib = callPackage ./python-modules/hnswlib {
#     inherit (pkgs) hnswlib;
#   };

#   hmmlearn = callPackage ./python-modules/hmmlearn { };

#   hocr-tools = callPackage ./python-modules/hocr-tools { };

#   hole = callPackage ./python-modules/hole { };

#   holidays = callPackage ./python-modules/holidays { };

#   hologram = callPackage ./python-modules/hologram { };

#   holoviews = callPackage ./python-modules/holoviews { };

#   home-assistant-bluetooth = callPackage ./python-modules/home-assistant-bluetooth { };

#   home-assistant-chip-clusters = callPackage ./python-modules/home-assistant-chip-clusters { };

#   home-assistant-chip-core = callPackage ./python-modules/home-assistant-chip-core { };

#   homeassistant-stubs = callPackage ../servers/home-assistant/stubs.nix { };

#   homeconnect = callPackage ./python-modules/homeconnect { };

#   homematicip = callPackage ./python-modules/homematicip { };

#   homepluscontrol = callPackage ./python-modules/homepluscontrol { };

#   hoomd-blue = toPythonModule (callPackage ./python-modules/hoomd-blue {
#     inherit python;
#   });

#   hopcroftkarp = callPackage ./python-modules/hopcroftkarp { };

#   horizon-eda = callPackage ./python-modules/horizon-eda {
#     inherit (pkgs) horizon-eda mesa;
#   };

#   howdoi = callPackage ./python-modules/howdoi { };

#   hpack = callPackage ./python-modules/hpack { };

#   hpccm = callPackage ./python-modules/hpccm { };

#   hpp-fcl = toPythonModule (pkgs.hpp-fcl.override {
#     pythonSupport = true;
#     python3Packages = self;
#   });

#   hs-dbus-signature = callPackage ./python-modules/hs-dbus-signature { };

#   hsaudiotag3k = callPackage ./python-modules/hsaudiotag3k { };

#   hsh = callPackage ./python-modules/hsh { };

#   hsluv = callPackage ./python-modules/hsluv { };

#   hstspreload = callPackage ./python-modules/hstspreload { };

#   html2image = callPackage ./python-modules/html2image { };

#   html2text = callPackage ./python-modules/html2text { };

  html5lib = callPackage ./python-modules/html5lib { };

#   html5tagger = callPackage ./python-modules/html5tagger { };

#   html5-parser = callPackage ./python-modules/html5-parser { };

#   htmldate = callPackage ./python-modules/htmldate { };

#   htmllaundry = callPackage ./python-modules/htmllaundry { };

#   htmllistparse = callPackage ./python-modules/htmllistparse { };

#   htmlmin = callPackage ./python-modules/htmlmin { };

#   html-sanitizer = callPackage ./python-modules/html-sanitizer { };

#   html-tag-names = callPackage ./python-modules/html-tag-names { };

#   html-text = callPackage ./python-modules/html-text { };

#   html-void-elements = callPackage ./python-modules/html-void-elements { };

#   htseq = callPackage ./python-modules/htseq { };

#   httmock = callPackage ./python-modules/httmock { };

#   httpagentparser = callPackage ./python-modules/httpagentparser { };

#   httpauth = callPackage ./python-modules/httpauth { };

#   httpbin = callPackage ./python-modules/httpbin { };

#   httpcore = callPackage ./python-modules/httpcore { };

#   httpie = callPackage ./python-modules/httpie { };

#   http-ece = callPackage ./python-modules/http-ece { };

#   httpie-ntlm = callPackage ./python-modules/httpie-ntlm { };

#   httplib2 = callPackage ./python-modules/httplib2 { };

#   http-message-signatures = callPackage ./python-modules/http-message-signatures { };

#   http-parser = callPackage ./python-modules/http-parser { };

#   http-sf = callPackage ./python-modules/http-sf { };

#   http-sfv = callPackage ./python-modules/http-sfv { };

#   httpretty = callPackage ./python-modules/httpretty { };

#   httpserver = callPackage ./python-modules/httpserver { };

#   httpsig = callPackage ./python-modules/httpsig { };

#   httptools = callPackage ./python-modules/httptools { };

#   httpx = callPackage ./python-modules/httpx { };

#   httpx-auth = callPackage ./python-modules/httpx-auth { };

#   httpx-ntlm = callPackage ./python-modules/httpx-ntlm { };

#   httpx-socks = callPackage ./python-modules/httpx-socks { };

#   httpx-sse = callPackage ./python-modules/httpx-sse { };

#   huawei-lte-api = callPackage ./python-modules/huawei-lte-api { };

#   huey = callPackage ./python-modules/huey { };

#   hug = callPackage ./python-modules/hug { };

#   huggingface-hub = callPackage ./python-modules/huggingface-hub { };

#   huisbaasje-client = callPackage ./python-modules/huisbaasje-client { };

#   humanfriendly = callPackage ./python-modules/humanfriendly { };

#   humanize = callPackage ./python-modules/humanize { };

#   human-readable = callPackage ./python-modules/human-readable { };

#   humblewx = callPackage ./python-modules/humblewx { };

#   hupper = callPackage ./python-modules/hupper { };

#   hurry-filesize = callPackage ./python-modules/hurry-filesize { };

#   huum = callPackage ./python-modules/huum { };

#   hvac = callPackage ./python-modules/hvac { };

#   hvplot = callPackage ./python-modules/hvplot { };

#   hwdata = callPackage ./python-modules/hwdata { };

#   hwi = callPackage ./python-modules/hwi { };

#   hy = callPackage ./python-modules/hy { };

#   hydra-core = callPackage ./python-modules/hydra-core { };

#   hydra-check = callPackage ./python-modules/hydra-check { };

#   hydrawiser = callPackage ./python-modules/hydrawiser { };

#   hydrus-api = callPackage ./python-modules/hydrus-api { };

#   hypchat = callPackage ./python-modules/hypchat { };

#   hypercorn = callPackage ./python-modules/hypercorn { };

#   hyperframe = callPackage ./python-modules/hyperframe { };

#   hyperscan = callPackage ./python-modules/hyperscan { };

#   hyperion-py = callPackage ./python-modules/hyperion-py { };

#   hyperlink = callPackage ./python-modules/hyperlink { };

#   hyperopt = callPackage ./python-modules/hyperopt { };

#   hyperpyyaml = callPackage ./python-modules/hyperpyyaml { };

#   hypothesis-auto = callPackage ./python-modules/hypothesis-auto { };

  hypothesis = callPackage ./python-modules/hypothesis { };

#   hypothesmith = callPackage ./python-modules/hypothesmith { };

#   hyppo = callPackage ./python-modules/hyppo { };

#   hyrule = callPackage ./python-modules/hyrule { };

#   i2c-tools = callPackage ./python-modules/i2c-tools {
#     inherit (pkgs) i2c-tools;
#   };

#   i2csense = callPackage ./python-modules/i2csense { };

#   i3ipc = callPackage ./python-modules/i3ipc { };

#   i3-py = callPackage ./python-modules/i3-py { };

#   iammeter = callPackage ./python-modules/iammeter { };

#   iapws = callPackage ./python-modules/iapws { };

#   iaqualink = callPackage ./python-modules/iaqualink { };

#   ibeacon-ble = callPackage ./python-modules/ibeacon-ble { };

#   ibis = callPackage ./python-modules/ibis { };

#   ibis-framework = callPackage ./python-modules/ibis-framework { };

#   ibm-cloud-sdk-core = callPackage ./python-modules/ibm-cloud-sdk-core { };

#   ibm-watson = callPackage ./python-modules/ibm-watson { };

#   ical = callPackage ./python-modules/ical { };

#   icalendar = callPackage ./python-modules/icalendar { };

#   icalevents = callPackage ./python-modules/icalevents { };

#   icecream = callPackage ./python-modules/icecream { };

#   iceportal = callPackage ./python-modules/iceportal { };

#   icmplib = callPackage ./python-modules/icmplib { };

#   icnsutil = callPackage ./python-modules/icnsutil { };

#   ics = callPackage ./python-modules/ics { };

#   idasen = callPackage ./python-modules/idasen { };

#   icoextract = callPackage ./python-modules/icoextract { };

#   icontract = callPackage ./python-modules/icontract { };

#   id = callPackage ./python-modules/id { };

#   identify = callPackage ./python-modules/identify { };

  idna = callPackage ./python-modules/idna { };

#   idna-ssl = callPackage ./python-modules/idna-ssl { };

#   ifaddr = callPackage ./python-modules/ifaddr { };

#   ifconfig-parser = callPackage ./python-modules/ifconfig-parser { };

#   ifcopenshell = callPackage ./python-modules/ifcopenshell { };

#   ignite = callPackage ./python-modules/ignite { };

#   igraph = callPackage ./python-modules/igraph {
#     inherit (pkgs) igraph;
#   };

#   ihm = callPackage ./python-modules/ihm { };

#   iisignature = callPackage ./python-modules/iisignature { };

#   ijson = callPackage ./python-modules/ijson { };

#   ilua = callPackage ./python-modules/ilua { };

#   imagecodecs-lite = callPackage ./python-modules/imagecodecs-lite { };

#   imagecorruptions = callPackage ./python-modules/imagecorruptions { };

#   imagededup = callPackage ./python-modules/imagededup { };

#   imagehash = callPackage ./python-modules/imagehash { };

#   imageio = callPackage ./python-modules/imageio { };

#   imageio-ffmpeg = callPackage ./python-modules/imageio-ffmpeg { };

#   image-diff = callPackage ./python-modules/image-diff { };

#   image-go-nord = callPackage ./python-modules/image-go-nord { };

  imagesize = callPackage ./python-modules/imagesize { };

#   imantics = callPackage ./python-modules/imantics { };

#   imapclient = callPackage ./python-modules/imapclient { };

#   imaplib2 = callPackage ./python-modules/imaplib2 { };

#   imap-tools = callPackage ./python-modules/imap-tools { };

#   imbalanced-learn = callPackage ./python-modules/imbalanced-learn { };

#   img2pdf = callPackage ./python-modules/img2pdf { };

#   imgcat = callPackage ./python-modules/imgcat { };

#   imgdiff = callPackage ./python-modules/imgdiff { };

#   imgsize = callPackage ./python-modules/imgsize { };

#   imgtool = callPackage ./python-modules/imgtool { };

#   imia = callPackage ./python-modules/imia { };

#   iminuit = callPackage ./python-modules/iminuit { };

#   immutabledict = callPackage ./python-modules/immutabledict { };

#   immutables = callPackage ./python-modules/immutables { };

#   impacket = callPackage ./python-modules/impacket { };

#   import-expression = callPackage ./python-modules/import-expression { };

#   importlab = callPackage ./python-modules/importlab { };

  importlib-metadata = callPackage ./python-modules/importlib-metadata { };

#   importlib-resources = callPackage ./python-modules/importlib-resources { };

#   importmagic = callPackage ./python-modules/importmagic { };

#   imread = callPackage ./python-modules/imread {
#     inherit (pkgs) libjpeg libpng libtiff libwebp;
#   };

#   imutils = callPackage ./python-modules/imutils { };

#   in-n-out = callPackage ./python-modules/in-n-out { };

#   in-place = callPackage ./python-modules/in-place { };

#   incomfort-client = callPackage ./python-modules/incomfort-client { };

#   incremental = callPackage ./python-modules/incremental { };

#   indexed-bzip2 = callPackage ./python-modules/indexed-bzip2 { };

#   indexed-gzip = callPackage ./python-modules/indexed-gzip { inherit (pkgs) zlib; };

#   indexed-zstd = callPackage ./python-modules/indexed-zstd { inherit (pkgs) zstd; };

#   infinity = callPackage ./python-modules/infinity { };

#   inflect = callPackage ./python-modules/inflect { };

#   inflection = callPackage ./python-modules/inflection { };

#   influxdb = callPackage ./python-modules/influxdb { };

#   influxdb-client = callPackage ./python-modules/influxdb-client { };

#   influxdb3-python = callPackage ./python-modules/influxdb3-python { };

#   inform = callPackage ./python-modules/inform { };

  iniconfig = callPackage ./python-modules/iniconfig { };

#   inifile = callPackage ./python-modules/inifile { };

#   iniparse = callPackage ./python-modules/iniparse { };

#   injector = callPackage ./python-modules/injector { };

#   inkbird-ble = callPackage ./python-modules/inkbird-ble { };

#   inkex = callPackage ./python-modules/inkex { };

#   inlinestyler = callPackage ./python-modules/inlinestyler { };

#   inotify = callPackage ./python-modules/inotify { };

#   inotify-simple = callPackage ./python-modules/inotify-simple { };

#   inotifyrecursive = callPackage ./python-modules/inotifyrecursive { };

#   inquirer = callPackage ./python-modules/inquirer { };

#   inquirerpy = callPackage ./python-modules/inquirerpy { };

#   inscriptis = callPackage ./python-modules/inscriptis { };

#   insegel = callPackage ./python-modules/insegel { };

#   insightface = callPackage ./python-modules/insightface { };

  installer = callPackage ./python-modules/installer { };

#   insteon-frontend-home-assistant = callPackage ./python-modules/insteon-frontend-home-assistant { };

#   instructor = callPackage ./python-modules/instructor { };

#   intake = callPackage ./python-modules/intake { };

#   intake-parquet = callPackage ./python-modules/intake-parquet { };

#   intbitset = callPackage ./python-modules/intbitset { };

#   intelhex = callPackage ./python-modules/intelhex { };

#   intellifire4py = callPackage ./python-modules/intellifire4py { };

#   intensity-normalization = callPackage ./python-modules/intensity-normalization { };

#   interegular = callPackage ./python-modules/interegular { };

#   interface-meta = callPackage ./python-modules/interface-meta { };

#   internetarchive = callPackage ./python-modules/internetarchive { };

#   interruptingcow = callPackage ./python-modules/interruptingcow { };

#   intervaltree = callPackage ./python-modules/intervaltree { };

#   into-dbus-python = callPackage ./python-modules/into-dbus-python { };

#   invisible-watermark = callPackage ./python-modules/invisible-watermark { };

#   invocations = callPackage ./python-modules/invocations { };

#   invoke = callPackage ./python-modules/invoke { };

#   iocsearcher = callPackage ./python-modules/iocsearcher { };

#   iodata = callPackage ./python-modules/iodata { };

#   iocapture = callPackage ./python-modules/iocapture { };

#   iocextract = callPackage ./python-modules/iocextract { };

#   ionhash = callPackage ./python-modules/ionhash { };

#   ionoscloud = callPackage ./python-modules/ionoscloud { };

#   iopath = callPackage ./python-modules/iopath { };

#   iotawattpy = callPackage ./python-modules/iotawattpy { };

#   iowait = callPackage ./python-modules/iowait { };

#   ipadic = callPackage ./python-modules/ipadic { };

#   ipaddr = callPackage ./python-modules/ipaddr { };

#   ipdb = callPackage ./python-modules/ipdb { };

#   ipdbplugin = callPackage ./python-modules/ipdbplugin { };

#   ipfshttpclient = callPackage ./python-modules/ipfshttpclient { };

#   i-pi = callPackage ./python-modules/i-pi { };

#   iptools = callPackage ./python-modules/iptools { };

#   ipwhl = callPackage ./python-modules/ipwhl { };

#   ipwhois = callPackage ./python-modules/ipwhois { };

#   ipy = callPackage ./python-modules/ipy { };

#   ipycanvas = callPackage ./python-modules/ipycanvas { };

#   ipydatawidgets = callPackage ./python-modules/ipydatawidgets { };

#   ipynbname = callPackage ./python-modules/ipynbname { };

#   ipyniivue = callPackage ./python-modules/ipyniivue { };

#   ipykernel = callPackage ./python-modules/ipykernel { };

#   ipymarkup = callPackage ./python-modules/ipymarkup { };

#   ipympl = callPackage ./python-modules/ipympl { };

#   ipyparallel = callPackage ./python-modules/ipyparallel { };

#   ipytablewidgets = callPackage ./python-modules/ipytablewidgets { };

#   ipython-genutils = callPackage ./python-modules/ipython-genutils { };

#   ipython = callPackage ./python-modules/ipython { };

#   ipython-sql = callPackage ./python-modules/ipython-sql { };

#   ipyvue = callPackage ./python-modules/ipyvue { };

#   ipyvuetify = callPackage ./python-modules/ipyvuetify { };

#   ipywidgets = callPackage ./python-modules/ipywidgets { };

#   ipyxact = callPackage ./python-modules/ipyxact { };

#   irc = callPackage ./python-modules/irc { };

#   ircrobots = callPackage ./python-modules/ircrobots { };

#   ircstates = callPackage ./python-modules/ircstates { };

#   irctokens = callPackage ./python-modules/irctokens { };

#   isbnlib = callPackage ./python-modules/isbnlib { };

#   islpy = callPackage ./python-modules/islpy { };

#   iso3166 = callPackage ./python-modules/iso3166 { };

#   ismartgate = callPackage ./python-modules/ismartgate { };

#   iso-639 = callPackage ./python-modules/iso-639 { };

#   iso4217 = callPackage ./python-modules/iso4217 { };

#   iso8601 = callPackage ./python-modules/iso8601 { };

#   isodate = callPackage ./python-modules/isodate { };

#   isoduration = callPackage ./python-modules/isoduration { };

#   isort = callPackage ./python-modules/isort { };

#   isosurfaces = callPackage ./python-modules/isosurfaces { };

#   isounidecode = callPackage ./python-modules/isounidecode { };

#   isoweek = callPackage ./python-modules/isoweek { };

#   itanium-demangler = callPackage ./python-modules/itanium-demangler { };

#   item-synchronizer = callPackage ./python-modules/item-synchronizer { };

#   itemadapter = callPackage ./python-modules/itemadapter { };

#   itemdb = callPackage ./python-modules/itemdb { };

#   itemloaders = callPackage ./python-modules/itemloaders { };

#   iteration-utilities = callPackage ./python-modules/iteration-utilities { };

#   iterative-telemetry = callPackage ./python-modules/iterative-telemetry { };

#   iterm2 = callPackage ./python-modules/iterm2 { };

#   itsdangerous = callPackage ./python-modules/itsdangerous { };

#   itunespy = callPackage ./python-modules/itunespy { };

#   itypes = callPackage ./python-modules/itypes { };

#   iwlib = callPackage ./python-modules/iwlib { };

#   j2cli = callPackage ./python-modules/j2cli { };

#   jaconv = callPackage ./python-modules/jaconv { };

#   jaeger-client = callPackage ./python-modules/jaeger-client { };

#   jamo = callPackage ./python-modules/jamo { };

#   janus = callPackage ./python-modules/janus { };

#   jaraco-abode = callPackage ./python-modules/jaraco-abode { };

#   jaraco-classes = callPackage ./python-modules/jaraco-classes { };

#   jaraco-collections = callPackage ./python-modules/jaraco-collections { };

#   jaraco-email = callPackage ./python-modules/jaraco-email { };

#   jaraco-context = callPackage ./python-modules/jaraco-context { };

#   jaraco-functools = callPackage ./python-modules/jaraco-functools { };

  jaraco-itertools = callPackage ./python-modules/jaraco-itertools { };

#   jaraco-logging = callPackage ./python-modules/jaraco-logging { };

#   jaraco-net = callPackage ./python-modules/jaraco-net { };

#   jaraco-stream = callPackage ./python-modules/jaraco-stream { };

#   jaraco-test = callPackage ./python-modules/jaraco-test { };

#   jaraco-text = callPackage ./python-modules/jaraco-text { };

#   jarowinkler = callPackage ./python-modules/jarowinkler { };

#   javaobj-py3 = callPackage ./python-modules/javaobj-py3 { };

#   javaproperties = callPackage ./python-modules/javaproperties { };

#   jax = callPackage ./python-modules/jax { };

#   jax-jumpy = callPackage ./python-modules/jax-jumpy { };

#   jaxlib-bin = callPackage ./python-modules/jaxlib/bin.nix {
#     inherit (pkgs.config) cudaSupport;
#   };

#   jaxlib-build = callPackage ./python-modules/jaxlib rec {
#     inherit (pkgs.darwin) cctools;
#     # Some platforms don't have `cudaSupport` defined, hence the need for 'or false'.
#     inherit (pkgs.config) cudaSupport;
#     IOKit = pkgs.darwin.apple_sdk_11_0.IOKit;
#   };

#   jaxlib = self.jaxlib-build;

#   jaxlibWithCuda = self.jaxlib-build.override {
#     cudaSupport = true;
#   };

#   jaxlibWithoutCuda = self.jaxlib-build.override {
#     cudaSupport = false;
#   };

#   jaxopt = callPackage ./python-modules/jaxopt { };

#   jaxtyping = callPackage ./python-modules/jaxtyping { };

#   jaydebeapi = callPackage ./python-modules/jaydebeapi { };

#   jc = callPackage ./python-modules/jc { };

#   jdatetime = callPackage ./python-modules/jdatetime { };

#   jdcal = callPackage ./python-modules/jdcal { };

#   jedi = callPackage ./python-modules/jedi { };

#   jedi-language-server = callPackage ./python-modules/jedi-language-server { };

#   jeepney = callPackage ./python-modules/jeepney { };

#   jello = callPackage ./python-modules/jello { };

#   jellyfin-apiclient-python = callPackage ./python-modules/jellyfin-apiclient-python { };

#   jellyfish = callPackage ./python-modules/jellyfish { };

#   jenkinsapi = callPackage ./python-modules/jenkinsapi { };

#   jenkins-job-builder = callPackage ./python-modules/jenkins-job-builder { };

#   jieba = callPackage ./python-modules/jieba { };

  jinja2 = callPackage ./python-modules/jinja2 { };

#   jinja2-ansible-filters = callPackage ./python-modules/jinja2-ansible-filters { };

#   jinja2-git = callPackage ./python-modules/jinja2-git { };

#   jinja2-pluralize = callPackage ./python-modules/jinja2-pluralize { };

#   jinja2-time = callPackage ./python-modules/jinja2-time { };

#   jira = callPackage ./python-modules/jira { };

#   jishaku = callPackage ./python-modules/jishaku { };

#   jiwer = callPackage ./python-modules/jiwer { };

#   jmespath = callPackage ./python-modules/jmespath { };

#   jmp = callPackage ./python-modules/jmp { };

#   joblib = callPackage ./python-modules/joblib { };

#   johnnycanencrypt = callPackage ./python-modules/johnnycanencrypt {
#     inherit (pkgs.darwin.apple_sdk.frameworks) PCSC;
#   };

#   josepy = callPackage ./python-modules/josepy { };

#   joserfc = callPackage ./python-modules/joserfc { };

#   journalwatch = callPackage ../tools/system/journalwatch {
#     inherit (self) systemd pytest;
#   };

#   jplephem = callPackage ./python-modules/jplephem { };

#   jproperties = callPackage ./python-modules/jproperties { };

#   jpylyzer = callPackage ./python-modules/jpylyzer { };

#   jpype1 = callPackage ./python-modules/jpype1 { };

#   jq = callPackage ./python-modules/jq {
#     inherit (pkgs) jq;
#   };

#   js2py = callPackage ./python-modules/js2py { };

#   jsbeautifier = callPackage ./python-modules/jsbeautifier { };

#   jschema-to-python = callPackage ./python-modules/jschema-to-python { };

#   jsmin = callPackage ./python-modules/jsmin { };

#   json5 = callPackage ./python-modules/json5 { };

#   jsonargparse = callPackage ./python-modules/jsonargparse { };

#   jsonconversion = callPackage ./python-modules/jsonconversion { };

#   jsondate = callPackage ./python-modules/jsondate { };

#   jsondiff = callPackage ./python-modules/jsondiff { };

#   jsonfeed = callPackage ./python-modules/jsonfeed { };

#   jsonfield = callPackage ./python-modules/jsonfield { };

#   jsonlines = callPackage ./python-modules/jsonlines { };

#   json-logging = callPackage ./python-modules/json-logging { };

#   jsonmerge = callPackage ./python-modules/jsonmerge { };

#   json-home-client = callPackage ./python-modules/json-home-client { };

#   json-merge-patch = callPackage ./python-modules/json-merge-patch { };

#   json-schema-for-humans = callPackage ./python-modules/json-schema-for-humans { };

#   json-stream = callPackage ./python-modules/json-stream { };

#   json-stream-rs-tokenizer = callPackage ./python-modules/json-stream-rs-tokenizer { };

#   jsonable = callPackage ./python-modules/jsonable { };

#   jsonformatter = callPackage ./python-modules/jsonformatter { };

#   jsonnet = buildPythonPackage { inherit (pkgs.jsonnet) name src; };

#   jsonpatch = callPackage ./python-modules/jsonpatch { };

#   jsonpath = callPackage ./python-modules/jsonpath { };

#   jsonpath-rw = callPackage ./python-modules/jsonpath-rw { };

#   jsonpath-ng = callPackage ./python-modules/jsonpath-ng { };

#   jsonpickle = callPackage ./python-modules/jsonpickle { };

#   jsonpointer = callPackage ./python-modules/jsonpointer { };

#   jsonref = callPackage ./python-modules/jsonref { };

#   json-rpc = callPackage ./python-modules/json-rpc { };

#   jsonrpc-async = callPackage ./python-modules/jsonrpc-async { };

#   jsonrpc-base = callPackage ./python-modules/jsonrpc-base { };

#   jsonrpclib-pelix = callPackage ./python-modules/jsonrpclib-pelix { };

#   jsonrpc-websocket = callPackage ./python-modules/jsonrpc-websocket { };

#   jsons = callPackage ./python-modules/jsons { };

#   jsonschema = callPackage ./python-modules/jsonschema { };

#   jsonschema-path = callPackage ./python-modules/jsonschema-path { };

#   jsonschema-spec = callPackage ./python-modules/jsonschema-spec { };

#   jsonschema-specifications = callPackage ./python-modules/jsonschema-specifications { };

#   jsonslicer = callPackage ./python-modules/jsonslicer { };

#   jsonstreams = callPackage ./python-modules/jsonstreams { };

#   json-tricks = callPackage ./python-modules/json-tricks { };

#   jstyleson = callPackage ./python-modules/jstyleson { };

#   jug = callPackage ./python-modules/jug { };

#   julius = callPackage ./python-modules/julius { };

#   junitparser = callPackage ./python-modules/junitparser { };

#   junit2html = callPackage ./python-modules/junit2html { };

#   junit-xml = callPackage ./python-modules/junit-xml { };

#   junos-eznc = callPackage ./python-modules/junos-eznc { };

#   jupyter = callPackage ./python-modules/jupyter { };

#   jupyter-book = callPackage ./python-modules/jupyter-book { };

#   jupyter-c-kernel = callPackage ./python-modules/jupyter-c-kernel { };

#   jupyter-cache = callPackage ./python-modules/jupyter-cache { };

#   jupyter-client = callPackage ./python-modules/jupyter-client { };

#   jupyter-collaboration = callPackage ./python-modules/jupyter-collaboration { };

#   jupyter-contrib-core = callPackage ./python-modules/jupyter-contrib-core { };

#   jupyter-contrib-nbextensions = callPackage ./python-modules/jupyter-contrib-nbextensions { };

#   jupyter-console = callPackage ./python-modules/jupyter-console { };

#   jupyter-core = callPackage ./python-modules/jupyter-core { };

#   jupyter-events = callPackage ./python-modules/jupyter-events { };

#   jupyter-highlight-selected-word = callPackage ./python-modules/jupyter-highlight-selected-word { };

#   jupyter-lsp = callPackage ./python-modules/jupyter-lsp { };

#   jupyter-nbextensions-configurator = callPackage ./python-modules/jupyter-nbextensions-configurator { };

#   jupyter-server = callPackage ./python-modules/jupyter-server { };

#   jupyter-server-fileid = callPackage ./python-modules/jupyter-server-fileid { };

#   jupyter-server-terminals = callPackage ./python-modules/jupyter-server-terminals { };

#   jupyter-ui-poll = callPackage ./python-modules/jupyter-ui-poll { };

#   jupyter-ydoc = callPackage ./python-modules/jupyter-ydoc { };

#   jupyterhub = callPackage ./python-modules/jupyterhub { };

#   jupyterhub-ldapauthenticator = callPackage ./python-modules/jupyterhub-ldapauthenticator { };

#   jupyterhub-systemdspawner = callPackage ./python-modules/jupyterhub-systemdspawner { };

#   jupyterhub-tmpauthenticator = callPackage ./python-modules/jupyterhub-tmpauthenticator { };

#   jupyterlab = callPackage ./python-modules/jupyterlab { };

#   jupyterlab-git = callPackage ./python-modules/jupyterlab-git { };

#   jupyterlab-pygments = callPackage ./python-modules/jupyterlab-pygments { };

#   jupyterlab-server = callPackage ./python-modules/jupyterlab-server { };

#   jupyterlab-widgets = callPackage ./python-modules/jupyterlab-widgets { };

#   jupyterlab-lsp = callPackage ./python-modules/jupyterlab-lsp { };

#   jupyter-packaging = callPackage ./python-modules/jupyter-packaging { };

#   jupyter-repo2docker = callPackage ./python-modules/jupyter-repo2docker {
#     pkgs-docker = pkgs.docker;
#   };

#   jupyter-server-mathjax = callPackage ./python-modules/jupyter-server-mathjax { };

#   jupyter-sphinx = callPackage ./python-modules/jupyter-sphinx { };

#   jupyter-telemetry = callPackage ./python-modules/jupyter-telemetry { };

#   jupytext = callPackage ./python-modules/jupytext { };

#   justbackoff = callPackage ./python-modules/justbackoff { };

#   justbases = callPackage ./python-modules/justbases { };

#   justbytes = callPackage ./python-modules/justbytes { };

#   justext = callPackage ./python-modules/justext { };

#   justnimbus = callPackage ./python-modules/justnimbus { };

#   jwcrypto = callPackage ./python-modules/jwcrypto { };

#   jwt = callPackage ./python-modules/jwt { };

#   jxmlease = callPackage ./python-modules/jxmlease { };

#   k-diffusion = callPackage ./python-modules/k-diffusion { };

#   k5test = callPackage ./python-modules/k5test {
#     inherit (pkgs) krb5 findutils;
#   };

#   kaa-base = callPackage ./python-modules/kaa-base { };

#   kaa-metadata = callPackage ./python-modules/kaa-metadata { };

#   kafka-python = callPackage ./python-modules/kafka-python { };

#   kaggle = callPackage ./python-modules/kaggle { };

#   kaitaistruct = callPackage ./python-modules/kaitaistruct { };

#   kajiki = callPackage ./python-modules/kajiki { };

#   kaldi-active-grammar = callPackage ./python-modules/kaldi-active-grammar { };

#   kanidm = callPackage ./python-modules/kanidm { };

#   kaptan = callPackage ./python-modules/kaptan { };

#   karton-asciimagic = callPackage ./python-modules/karton-asciimagic { };

#   karton-autoit-ripper = callPackage ./python-modules/karton-autoit-ripper { };

#   karton-classifier = callPackage ./python-modules/karton-classifier { };

#   karton-config-extractor = callPackage ./python-modules/karton-config-extractor { };

#   karton-core = callPackage ./python-modules/karton-core { };

#   karton-dashboard = callPackage ./python-modules/karton-dashboard { };

#   karton-mwdb-reporter = callPackage ./python-modules/karton-mwdb-reporter { };

#   karton-yaramatcher = callPackage ./python-modules/karton-yaramatcher { };

#   kasa-crypt = callPackage ./python-modules/kasa-crypt { };

#   kazoo = callPackage ./python-modules/kazoo { };

#   kbcstorage = callPackage ./python-modules/kbcstorage { };

#   kconfiglib = callPackage ./python-modules/kconfiglib { };

#   keba-kecontact = callPackage ./python-modules/keba-kecontact { };

#   keep = callPackage ./python-modules/keep { };

#   keepalive = callPackage ./python-modules/keepalive { };

#   keepkey-agent = callPackage ./python-modules/keepkey-agent { };

#   keepkey = callPackage ./python-modules/keepkey { };

#   kegtron-ble = callPackage ./python-modules/kegtron-ble { };

#   keras-applications = callPackage ./python-modules/keras-applications { };

#   keras = callPackage ./python-modules/keras { };

#   keras-preprocessing = callPackage ./python-modules/keras-preprocessing { };

#   kerberos = callPackage ./python-modules/kerberos { };

#   keyboard = callPackage ./python-modules/keyboard { };

#   keyring = callPackage ./python-modules/keyring { };

#   keyring-pass = callPackage ./python-modules/keyring-pass { };

#   keyrings-cryptfile = callPackage ./python-modules/keyrings-cryptfile { };

#   keyrings-google-artifactregistry-auth = callPackage ./python-modules/keyrings-google-artifactregistry-auth { };

#   keyrings-alt = callPackage ./python-modules/keyrings-alt { };

#   keystone-engine = callPackage ./python-modules/keystone-engine { };

#   keyrings-passwordstore = callPackage ./python-modules/keyrings-passwordstore { };

#   keystoneauth1 = callPackage ./python-modules/keystoneauth1 { };

#   keyutils = callPackage ./python-modules/keyutils {
#     inherit (pkgs) keyutils;
#   };

#   khanaa = callPackage ./python-modules/khanaa {};

#   kicad = toPythonModule (pkgs.kicad.override {
#     python3 = python;
#   }).src;

#   kinparse = callPackage ./python-modules/kinparse { };

#   kiss-headers = callPackage ./python-modules/kiss-headers { };

#   kitchen = callPackage ./python-modules/kitchen { };

#   kivy = callPackage ./python-modules/kivy {
#     inherit (pkgs) mesa;
#     inherit (pkgs.darwin.apple_sdk.frameworks) Accelerate ApplicationServices AVFoundation;
#   };

#   kivy-garden = callPackage ./python-modules/kivy-garden { };

#   kiwiki-client = callPackage ./python-modules/kiwiki-client { };

#   kiwisolver = callPackage ./python-modules/kiwisolver { };

#   klaus = callPackage ./python-modules/klaus { };

#   klein = callPackage ./python-modules/klein { };

#   kmapper = callPackage ./python-modules/kmapper { };

#   kml2geojson = callPackage ./python-modules/kml2geojson { };

#   kmsxx = toPythonModule (pkgs.kmsxx.override {
#     withPython = true;
#   });

#   knack = callPackage ./python-modules/knack { };

#   kneed = callPackage ./python-modules/kneed { };

#   knx-frontend = callPackage ./python-modules/knx-frontend { };

#   kombu = callPackage ./python-modules/kombu { };

#   konnected = callPackage ./python-modules/konnected { };

#   kotsu = callPackage ./python-modules/kotsu { };

#   korean-lunar-calendar = callPackage ./python-modules/korean-lunar-calendar { };

#   kornia = callPackage ./python-modules/kornia { };

#   kornia-rs = callPackage ./python-modules/kornia-rs { };

#   krakenex = callPackage ./python-modules/krakenex { };

#   krfzf-py = callPackage ./python-modules/krfzf-py { };

#   kserve = callPackage ./python-modules/kserve { };

#   kubernetes = callPackage ./python-modules/kubernetes { };

#   kurbopy = callPackage ./python-modules/kurbopy { };

#   l18n = callPackage ./python-modules/l18n { };

#   labelbox = callPackage ./python-modules/labelbox { };

#   labgrid = callPackage ./python-modules/labgrid { };

#   labmath = callPackage ./python-modules/labmath { };

#   laces = callPackage ./python-modules/laces { };

#   lacuscore = callPackage ./python-modules/lacuscore { };

#   lakeside = callPackage ./python-modules/lakeside { };

#   langchain = callPackage ./python-modules/langchain { };

#   langchain-community = callPackage ./python-modules/langchain-community { };

#   langchain-core = callPackage ./python-modules/langchain-core { };

#   langchain-text-splitters = callPackage ./python-modules/langchain-text-splitters { };

#   langcodes = callPackage ./python-modules/langcodes { };

#   langdetect = callPackage ./python-modules/langdetect { };

#   langid = callPackage ./python-modules/langid { };

#   langsmith = callPackage ./python-modules/langsmith { };

#   language-data = callPackage ./python-modules/language-data { };

#   language-tags = callPackage ./python-modules/language-tags { };

#   lanms-neo = callPackage ./python-modules/lanms-neo { };

#   lark = callPackage ./python-modules/lark { };

#   laspy = callPackage ./python-modules/laspy { };

#   laszip = callPackage ./python-modules/laszip {
#     inherit (pkgs) cmake ninja;
#   };

#   latex2mathml = callPackage ./python-modules/latex2mathml { };

#   latexcodec = callPackage ./python-modules/latexcodec { };

#   latexify-py = callPackage ./python-modules/latexify-py { };

#   launchpadlib = callPackage ./python-modules/launchpadlib { };

#   laundrify-aio = callPackage ./python-modules/laundrify-aio { };

#   layoutparser = callPackage ./python-modules/layoutparser { };

#   lazr-config = callPackage ./python-modules/lazr/config.nix { };

#   lazr-delegates = callPackage ./python-modules/lazr/delegates.nix { };

#   lazr-restfulclient = callPackage ./python-modules/lazr-restfulclient { };

#   lazr-uri = callPackage ./python-modules/lazr-uri { };

#   lazy = callPackage ./python-modules/lazy { };

#   lazy-import = callPackage ./python-modules/lazy-import { };

#   lazy-imports = callPackage ./python-modules/lazy-imports { };

#   lazy-loader = callPackage ./python-modules/lazy-loader { };

#   lazy-object-proxy = callPackage ./python-modules/lazy-object-proxy { };

#   lc7001 = callPackage ./python-modules/lc7001 { };

#   lcd-i2c = callPackage ./python-modules/lcd-i2c { };

#   lcgit = callPackage ./python-modules/lcgit { };

#   lcov-cobertura = callPackage ./python-modules/lcov-cobertura { };

#   ld2410-ble = callPackage ./python-modules/ld2410-ble { };

#   ldap3 = callPackage ./python-modules/ldap3 { };

#   ldapdomaindump = callPackage ./python-modules/ldapdomaindump { };

#   ldappool = callPackage ./python-modules/ldappool { };

#   ldaptor = callPackage ./python-modules/ldaptor { };

#   ldfparser = callPackage ./python-modules/ldfparser { };

#   leather = callPackage ./python-modules/leather { };

#   leb128 = callPackage ./python-modules/leb128 { };

#   led-ble = callPackage ./python-modules/led-ble { };

#   ledger = (toPythonModule (pkgs.ledger.override {
#     usePython = true;
#     python3 = python;
#   })).py;

#   ledger-agent = callPackage ./python-modules/ledger-agent { };

#   ledger-bitcoin = callPackage ./python-modules/ledger-bitcoin { };

#   ledgerblue = callPackage ./python-modules/ledgerblue { };

#   ledgercomm = callPackage ./python-modules/ledgercomm { };

#   ledgerwallet = callPackage ./python-modules/ledgerwallet {
#     inherit (pkgs.darwin.apple_sdk.frameworks) AppKit;
#   };

#   leidenalg = callPackage ./python-modules/leidenalg {
#     igraph-c = pkgs.igraph;
#   };

#   leveldb = callPackage ./python-modules/leveldb { };

#   levenshtein = callPackage ./python-modules/levenshtein { };

#   lexid = callPackage ./python-modules/lexid { };

#   lexilang = callPackage ./python-modules/lexilang { };

#   lhapdf = toPythonModule (pkgs.lhapdf.override {
#     inherit python;
#   });

#   libagent = callPackage ./python-modules/libagent { };

#   pa-ringbuffer = callPackage ./python-modules/pa-ringbuffer { };

#   libais = callPackage ./python-modules/libais { };

#   libarchive-c = callPackage ./python-modules/libarchive-c {
#     inherit (pkgs) libarchive;
#   };

#   libarcus = callPackage ./python-modules/libarcus {
#     protobuf = pkgs.protobuf_21;
#   };

#   libasyncns = callPackage ./python-modules/libasyncns {
#     inherit (pkgs) libasyncns;
#   };

#   libclang = callPackage ./python-modules/libclang { };

#   libcloud = callPackage ./python-modules/libcloud { };

#   libcomps = lib.pipe pkgs.libcomps [
#     toPythonModule
#     (p: p.overrideAttrs (super: { meta = super.meta // { outputsToInstall = [ "py" ]; }; }))
#     (p: p.override { inherit python; })
#     (p: p.py)
#   ];

#   libcst = callPackage ./python-modules/libcst { };

#   libdnf = lib.pipe pkgs.libdnf [
#     toPythonModule
#     (p: p.overrideAttrs (super: { meta = super.meta // { outputsToInstall = [ "py" ]; }; }))
#     (p: p.override { inherit python; })
#     (p: p.py)
#   ];

#   libevdev = callPackage ./python-modules/libevdev { };

#   libfdt = toPythonModule (pkgs.dtc.override {
#     inherit python;
#     pythonSupport = true;
#   });

#   libfive = toPythonModule (pkgs.libfive.override {
#     inherit python;
#   });

#   libgpiod = callPackage ./python-modules/libgpiod {
#     inherit (pkgs) libgpiod;
#   };

#   libgpuarray = callPackage ./python-modules/libgpuarray {
#     clblas = pkgs.clblas.override { inherit (self) boost; };
#     inherit (pkgs.config) cudaSupport;
#   };

#   libiio = (toPythonModule (pkgs.libiio.override {
#     pythonSupport = true;
#     inherit python;
#   })).python;

#   libkeepass = callPackage ./python-modules/libkeepass { };

#   libknot = callPackage ./python-modules/libknot { };

#   liblarch = callPackage ./python-modules/liblarch { };

#   liblzfse = callPackage ./python-modules/liblzfse {
#     inherit (pkgs) lzfse;
#   };

#   libmambapy = callPackage ./python-modules/libmambapy { };

#   libmodulemd = lib.pipe pkgs.libmodulemd [
#     toPythonModule
#     (p:
#       p.overrideAttrs (super: {
#         meta = super.meta // {
#           outputsToInstall = [ "py" ]; # The package always builds python3 bindings
#           broken = (super.meta.broken or false) || !isPy3k;
#         };
#       }))
#     (p: p.override { python3 = python; })
#     (p: p.py)
#   ];

#   libmr = callPackage ./python-modules/libmr { };

#   libnacl = callPackage ./python-modules/libnacl {
#     inherit (pkgs) libsodium;
#   };

#   libpcap = callPackage ./python-modules/libpcap {
#     pkgsLibpcap = pkgs.libpcap; # Needs the C library
#   };

#   libpurecool = callPackage ./python-modules/libpurecool { };

#   libpyfoscam = callPackage ./python-modules/libpyfoscam { };

#   libpyvivotek = callPackage ./python-modules/libpyvivotek { };

#   libpwquality = lib.pipe pkgs.libpwquality [
#     toPythonModule
#     (p: p.overrideAttrs (super: { meta = super.meta // { outputsToInstall = [ "py" ]; }; }))
#     (p: p.override { enablePython = true; inherit python; })
#     (p: p.py)
#   ];

#   libredwg = toPythonModule (pkgs.libredwg.override {
#     enablePython = true;
#     inherit (self) python libxml2;
#   });

#   librepo = lib.pipe pkgs.librepo [
#     toPythonModule
#     (p: p.overrideAttrs (super: { meta = super.meta // { outputsToInstall = [ "py" ]; }; }))
#     (p: p.override { inherit python; })
#     (p: p.py)
#   ];

#   librespot = callPackage ./python-modules/librespot { };

#   libretranslate = callPackage ./python-modules/libretranslate { };

#   librosa = callPackage ./python-modules/librosa { };

#   librouteros = callPackage ./python-modules/librouteros { };

#   libsass = callPackage ./python-modules/libsass {
#     inherit (pkgs) libsass;
#   };

#   libsavitar = callPackage ./python-modules/libsavitar { };


#   libsixel = callPackage ./python-modules/libsixel {
#     inherit (pkgs) libsixel;
#   };

#   libselinux = lib.pipe pkgs.libselinux [
#     toPythonModule
#     (p:
#       p.overrideAttrs (super: {
#         meta = super.meta // {
#           outputsToInstall = [ "py" ];
#           broken = super.meta.broken or isPy27;
#         };
#       }))
#     (p:
#       p.override {
#         enablePython = true;
#         python3 = python;
#       })
#     (p: p.py)
#   ];

#   libsoundtouch = callPackage ./python-modules/libsoundtouch { };

#   libthumbor = callPackage ./python-modules/libthumbor { };

#   libtmux = callPackage ./python-modules/libtmux { };

#   libtorrent-rasterbar = (toPythonModule (pkgs.libtorrent-rasterbar.override { inherit python; })).python;

#   libusb1 = callPackage ./python-modules/libusb1 {
#     inherit (pkgs) libusb1;
#   };

#   libusbsio = callPackage ./python-modules/libusbsio {
#     inherit (pkgs) libusbsio;
#   };

#   libversion = callPackage ./python-modules/libversion {
#     inherit (pkgs) libversion;
#   };

#   libvirt = callPackage ./python-modules/libvirt {
#     inherit (pkgs) libvirt;
#   };

  libxml2 = (toPythonModule (pkgs.libxml2.override {
    pythonSupport = true;
    inherit python;
  })).py;

#   libxslt = (toPythonModule (pkgs.libxslt.override {
#     pythonSupport = true;
#     inherit (self) python libxml2;
#   })).py;

#   liccheck = callPackage ./python-modules/liccheck { };

#   license-expression = callPackage ./python-modules/license-expression { };

#   lief = (toPythonModule (pkgs.lief.override {
#     inherit python;
#   })).py;

#   life360 = callPackage ./python-modules/life360 { };

#   lifelines = callPackage ./python-modules/lifelines { };

#   lightgbm = callPackage ./python-modules/lightgbm { };

#   lightning-utilities  = callPackage ./python-modules/lightning-utilities { };

#   lightparam = callPackage ./python-modules/lightparam { };

#   lightwave = callPackage ./python-modules/lightwave { };

#   lightwave2 = callPackage ./python-modules/lightwave2 { };

#   lima = callPackage ./python-modules/lima { };

#   lime = callPackage ./python-modules/lime { };

#   limiter= callPackage ./python-modules/limiter { };

#   limitlessled = callPackage ./python-modules/limitlessled { };

#   limits = callPackage ./python-modules/limits { };

#   limnoria = callPackage ./python-modules/limnoria { };

#   linear-garage-door = callPackage ./python-modules/linear-garage-door { };

#   linear-operator = callPackage ./python-modules/linear-operator { };

#   linecache2 = callPackage ./python-modules/linecache2 { };

#   lineedit = callPackage ./python-modules/lineedit { };

#   line-profiler = callPackage ./python-modules/line-profiler { };

#   linetable = callPackage ./python-modules/linetable { };

#   lingua = callPackage ./python-modules/lingua { };

#   lingva = callPackage ./python-modules/lingva { };

#   linien-client = callPackage ./python-modules/linien-client { };

#   linien-common = callPackage ./python-modules/linien-common { };

#   linkify-it-py = callPackage ./python-modules/linkify-it-py { };

#   linknlink = callPackage ./python-modules/linknlink { };

#   linode-api = callPackage ./python-modules/linode-api { };

#   linode = callPackage ./python-modules/linode { };

#   linuxfd = callPackage ./python-modules/linuxfd { };

#   lion-pytorch = callPackage ./python-modules/lion-pytorch { };

#   liquidctl = callPackage ./python-modules/liquidctl { };

#   lirc = toPythonModule (pkgs.lirc.override {
#     python3 = python;
#   });

#   lit = callPackage ./python-modules/lit { };

#   litellm = callPackage ./python-modules/litellm { };

#   litemapy = callPackage ./python-modules/litemapy { };

#   littleutils = callPackage ./python-modules/littleutils { };

#   livelossplot = callPackage ./python-modules/livelossplot { };

#   livereload = callPackage ./python-modules/livereload { };

#   lizard = callPackage ./python-modules/lizard { };

#   llama-index = callPackage ./python-modules/llama-index { };

#   llama-index-agent-openai = callPackage ./python-modules/llama-index-agent-openai { };

#   llama-index-cli = callPackage ./python-modules/llama-index-cli { };

#   llama-index-core = callPackage ./python-modules/llama-index-core { };

#   llama-index-embeddings-gemini = callPackage ./python-modules/llama-index-embeddings-gemini { };

#   llama-index-embeddings-google = callPackage ./python-modules/llama-index-embeddings-google { };

#   llama-index-embeddings-huggingface = callPackage ./python-modules/llama-index-embeddings-huggingface { };

#   llama-index-embeddings-ollama = callPackage ./python-modules/llama-index-embeddings-ollama { };

#   llama-index-embeddings-openai = callPackage ./python-modules/llama-index-embeddings-openai { };

#   llama-index-graph-stores-nebula = callPackage ./python-modules/llama-index-graph-stores-nebula { };

#   llama-index-graph-stores-neo4j = callPackage ./python-modules/llama-index-graph-stores-neo4j { };

#   llama-index-graph-stores-neptune = callPackage ./python-modules/llama-index-graph-stores-neptune { };

#   llama-index-indices-managed-llama-cloud = callPackage ./python-modules/llama-index-indices-managed-llama-cloud { };

#   llama-index-legacy = callPackage ./python-modules/llama-index-legacy { };

#   llama-index-llms-ollama = callPackage ./python-modules/llama-index-llms-ollama { };

#   llama-index-llms-openai = callPackage ./python-modules/llama-index-llms-openai { };

#   llama-index-llms-openai-like = callPackage ./python-modules/llama-index-llms-openai-like { };

#   llama-index-multi-modal-llms-openai = callPackage ./python-modules/llama-index-multi-modal-llms-openai { };

#   llama-index-program-openai = callPackage ./python-modules/llama-index-program-openai { };

#   llama-index-question-gen-openai = callPackage ./python-modules/llama-index-question-gen-openai { };

#   llama-index-readers-database = callPackage ./python-modules/llama-index-readers-database { };

#   llama-index-readers-file = callPackage ./python-modules/llama-index-readers-file { };

#   llama-index-readers-json = callPackage ./python-modules/llama-index-readers-json { };

#   llama-index-readers-llama-parse = callPackage ./python-modules/llama-index-readers-llama-parse { };

#   llama-index-readers-s3 = callPackage ./python-modules/llama-index-readers-s3 { };

#   llama-index-readers-twitter = callPackage ./python-modules/llama-index-readers-twitter { };

#   llama-index-readers-txtai = callPackage ./python-modules/llama-index-readers-txtai { };

#   llama-index-readers-weather = callPackage ./python-modules/llama-index-readers-weather { };

#   llama-index-vector-stores-chroma = callPackage ./python-modules/llama-index-vector-stores-chroma { };

#   llama-index-vector-stores-google = callPackage ./python-modules/llama-index-vector-stores-google { };

#   llama-index-vector-stores-postgres = callPackage ./python-modules/llama-index-vector-stores-postgres { };

#   llama-index-vector-stores-qdrant = callPackage ./python-modules/llama-index-vector-stores-qdrant { };

#   llama-parse = callPackage ./python-modules/llama-parse { };

#   llamaindex-py-client = callPackage ./python-modules/llamaindex-py-client { };

#   llfuse = callPackage ./python-modules/llfuse {
#     inherit (pkgs) fuse;
#   };

#   llm = callPackage ./python-modules/llm { };

#   llvmlite = callPackage ./python-modules/llvmlite {
#     # llvmlite always requires a specific version of llvm.
#     llvm = pkgs.llvm_14;
#   };

#   lmcloud = callPackage ./python-modules/lmcloud { };

#   lmdb = callPackage ./python-modules/lmdb {
#     inherit (pkgs) lmdb;
#   };

#   lmfit = callPackage ./python-modules/lmfit { };

#   lml = callPackage ./python-modules/lml { };

#   lmnotify = callPackage ./python-modules/lmnotify { };

#   lmtpd = callPackage ./python-modules/lmtpd { };

#   lnkparse3 = callPackage ./python-modules/lnkparse3 { };

#   loca = callPackage ./python-modules/loca { };

#   localimport = callPackage ./python-modules/localimport { };

#   localstack = callPackage ./python-modules/localstack { };

#   localstack-client = callPackage ./python-modules/localstack-client { };

#   localstack-ext = callPackage ./python-modules/localstack-ext { };

#   localzone = callPackage ./python-modules/localzone { };

#   locationsharinglib = callPackage ./python-modules/locationsharinglib { };

#   locket = callPackage ./python-modules/locket { };

#   lockfile = callPackage ./python-modules/lockfile { };

#   log-symbols = callPackage ./python-modules/log-symbols { };

#   logbook = callPackage ./python-modules/logbook { };

#   logfury = callPackage ./python-modules/logfury { };

#   logging-journald = callPackage ./python-modules/logging-journald { };

#   logi-circle = callPackage ./python-modules/logi-circle { };

#   logical-unification = callPackage ./python-modules/logical-unification { };

#   logilab-common = callPackage ./python-modules/logilab/common.nix { };

#   logilab-constraint = callPackage ./python-modules/logilab/constraint.nix { };

#   logmatic-python = callPackage ./python-modules/logmatic-python { };

#   logster = callPackage ./python-modules/logster { };

#   loguru = callPackage ./python-modules/loguru { };

#   logutils = callPackage ./python-modules/logutils {
#     redis-server = pkgs.redis;
#   };

#   logzero = callPackage ./python-modules/logzero { };

#   lomond = callPackage ./python-modules/lomond { };

#   loopy = callPackage ./python-modules/loopy { };

#   looseversion = callPackage ./python-modules/looseversion { };

#   loqedapi = callPackage ./python-modules/loqedapi { };

#   losant-rest = callPackage ./python-modules/losant-rest { };

#   lpc-checksum = callPackage ./python-modules/lpc-checksum { };

#   lrcalc-python = callPackage ./python-modules/lrcalc-python { };

#   lru-dict = callPackage ./python-modules/lru-dict { };

#   lsassy = callPackage ./python-modules/lsassy { };

#   lsprotocol = callPackage ./python-modules/lsprotocol { };

#   ltpycld2 = callPackage ./python-modules/ltpycld2 { };

#   lttng = callPackage ./python-modules/lttng { };

#   luddite = callPackage ./python-modules/luddite { };

#   luftdaten = callPackage ./python-modules/luftdaten { };

#   luhn = callPackage ./python-modules/luhn { };

#   lunarcalendar = callPackage ./python-modules/lunarcalendar { };

#   luqum = callPackage ./python-modules/luqum { };

#   luxor = callPackage ./python-modules/luxor { };

#   luxtronik = callPackage ./python-modules/luxtronik { };

#   lupa = callPackage ./python-modules/lupa { };

#   lupupy = callPackage ./python-modules/lupupy { };

#   lxmf= callPackage ./python-modules/lxmf { };

  lxml = callPackage ./python-modules/lxml {
    inherit (pkgs) libxml2 libxslt zlib;
  };

#   lxml-html-clean = callPackage ./python-modules/lxml-html-clean { };

#   lxml-stubs = callPackage ./python-modules/lxml-stubs { };

#   lyricwikia = callPackage ./python-modules/lyricwikia { };

#   lz4 = callPackage ./python-modules/lz4 { };

#   lzallright = callPackage ./python-modules/lzallright { };

#   lzstring = callPackage ./python-modules/lzstring { };

#   m2crypto = callPackage ./python-modules/m2crypto { };

#   m2r = callPackage ./python-modules/m2r { };

#   m3u8 = callPackage ./python-modules/m3u8 { };

#   mac-alias = callPackage ./python-modules/mac-alias { };

#   mac-vendor-lookup = callPackage ./python-modules/mac-vendor-lookup { };

#   macaddress = callPackage ./python-modules/macaddress{ };

#   macfsevents = callPackage ./python-modules/macfsevents {
#     inherit (pkgs.darwin.apple_sdk.frameworks) CoreFoundation CoreServices;
#   };

#   macropy = callPackage ./python-modules/macropy { };

#   maestral = callPackage ./python-modules/maestral { };

#   magic = callPackage ./python-modules/magic { };

#   magicgui = callPackage ./python-modules/magicgui { };

#   magic-filter = callPackage ./python-modules/magic-filter { };

#   magic-wormhole = callPackage ./python-modules/magic-wormhole { };

#   magic-wormhole-mailbox-server = callPackage ./python-modules/magic-wormhole-mailbox-server { };

#   magic-wormhole-transit-relay = callPackage ./python-modules/magic-wormhole-transit-relay { };

#   magika = callPackage ./python-modules/magika { };

#   mahotas = callPackage ./python-modules/mahotas { };

#   mailcap-fix = callPackage ./python-modules/mailcap-fix { };

#   mailchecker = callPackage ./python-modules/mailchecker { };

#   mailchimp = callPackage ./python-modules/mailchimp { };

#   mailmanclient = callPackage ./python-modules/mailmanclient { };

#   rtfde = callPackage ./python-modules/rtfde { };

#   rtfunicode = callPackage ./python-modules/rtfunicode { };

#   rtmixer = callPackage ./python-modules/rtmixer { };

#   regress = callPackage ./python-modules/regress { };

#   macaroonbakery = callPackage ./python-modules/macaroonbakery { };

#   mail-parser = callPackage ./python-modules/mail-parser { };

#   makefun = callPackage ./python-modules/makefun { };

#   mailsuite = callPackage ./python-modules/mailsuite { };

#   maison = callPackage ./python-modules/maison { };

#   mako = callPackage ./python-modules/mako { };

#   malduck = callPackage ./python-modules/malduck { };

#   managesieve = callPackage ./python-modules/managesieve { };

#   mando = callPackage ./python-modules/mando { };

#   mandown = callPackage ./python-modules/mandown { };

#   manga-ocr = callPackage ./python-modules/manga-ocr { };

#   manhole = callPackage ./python-modules/manhole { };

#   manim = callPackage ./python-modules/manim { };

#   manimpango = callPackage ./python-modules/manimpango {
#     inherit (pkgs.darwin.apple_sdk.frameworks) AppKit;
#   };

#   manim-slides = callPackage ./python-modules/manim-slides { };

#   manifest-ml = callPackage ./python-modules/manifest-ml { };

#   manifestoo = callPackage ./python-modules/manifestoo { };

#   manifestoo-core = callPackage ./python-modules/manifestoo-core { };

#   manifestparser = callPackage ./python-modules/marionette-harness/manifestparser.nix { };

#   manuel = callPackage ./python-modules/manuel { };

#   manuf = callPackage ./python-modules/manuf { };

#   mapbox = callPackage ./python-modules/mapbox { };

#   mapbox-earcut = callPackage ./python-modules/mapbox-earcut { };

#   mariadb = callPackage ./python-modules/mariadb { };

#   marimo = callPackage ./python-modules/marimo { };

#   marisa = callPackage ./python-modules/marisa {
#     inherit (pkgs) marisa;
#   };

#   marisa-trie = callPackage ./python-modules/marisa-trie { };

#   markdown2 = callPackage ./python-modules/markdown2 { };

#   markdown = callPackage ./python-modules/markdown { };

#   markdown-include = callPackage ./python-modules/markdown-include { };

#   markdown-it-py = callPackage ./python-modules/markdown-it-py { };

#   markdown-macros = callPackage ./python-modules/markdown-macros { };

#   markdownify  = callPackage ./python-modules/markdownify { };

  markupsafe = callPackage ./python-modules/markupsafe { };

#   markuppy = callPackage ./python-modules/markuppy { };

#   markups = callPackage ./python-modules/markups { };

#   marshmallow = callPackage ./python-modules/marshmallow { };

#   marshmallow-dataclass = callPackage ./python-modules/marshmallow-dataclass { };

#   marshmallow-enum = callPackage ./python-modules/marshmallow-enum { };

#   marshmallow-oneofschema = callPackage ./python-modules/marshmallow-oneofschema { };

#   marshmallow-polyfield = callPackage ./python-modules/marshmallow-polyfield { };

#   marshmallow-sqlalchemy = callPackage ./python-modules/marshmallow-sqlalchemy { };

#   mashumaro = callPackage ./python-modules/mashumaro { };

#   masky = callPackage ./python-modules/masky { };

#   mastodon-py = callPackage ./python-modules/mastodon-py { };

#   mat2 = callPackage ./python-modules/mat2 { };

#   material-color-utilities = callPackage ./python-modules/material-color-utilities { };

#   matchpy = callPackage ./python-modules/matchpy { };

#   mathlibtools = callPackage ./python-modules/mathlibtools { };

#   matlink-gpapi = callPackage ./python-modules/matlink-gpapi { };

#   matplotlib = callPackage ./python-modules/matplotlib {
#     stdenv = if stdenv.isDarwin then pkgs.clangStdenv else pkgs.stdenv;
#     inherit (pkgs.darwin.apple_sdk.frameworks) Cocoa;
#     ghostscript = pkgs.ghostscript_headless;
#   };

#   matplotlib-inline = callPackage ./python-modules/matplotlib-inline { };

#   matplotlib-sixel = callPackage ./python-modules/matplotlib-sixel { };

#   matplotx = callPackage ./python-modules/matplotx { };

#   matrix-api-async = callPackage ./python-modules/matrix-api-async { };

#   matrix-client = callPackage ./python-modules/matrix-client { };

#   matrix-common = callPackage ./python-modules/matrix-common { };

#   matrix-nio = callPackage ./python-modules/matrix-nio { };

#   mattermostdriver = callPackage ./python-modules/mattermostdriver { };

#   maubot = callPackage ../tools/networking/maubot { };

#   mautrix = callPackage ./python-modules/mautrix { };

#   mautrix-appservice = self.mautrix; # alias 2019-12-28

#   maxcube-api = callPackage ./python-modules/maxcube-api { };

#   maxminddb = callPackage ./python-modules/maxminddb { };

#   maya = callPackage ./python-modules/maya { };

#   mayavi = pkgs.libsForQt5.callPackage ./python-modules/mayavi {
#     inherit (self) buildPythonPackage pythonOlder pythonAtLeast pyface pygments numpy packaging vtk traitsui envisage apptools pyqt5;
#   };

#   mayim = callPackage ./python-modules/mayim { };

#   mbddns = callPackage ./python-modules/mbddns { };

#   mbstrdecoder = callPackage ./python-modules/mbstrdecoder { };

#   mccabe = callPackage ./python-modules/mccabe { };

#   mcstatus = callPackage ./python-modules/mcstatus { };

#   mcuuid = callPackage ./python-modules/mcuuid { };

#   md-toc = callPackage ./python-modules/md-toc { };

#   mdx-truly-sane-lists = callPackage ./python-modules/mdx-truly-sane-lists { };

#   md2gemini = callPackage ./python-modules/md2gemini { };

#   mdformat = callPackage ./python-modules/mdformat { };
#   mdformat-admon = callPackage ./python-modules/mdformat-admon { };
#   mdformat-beautysh = callPackage ./python-modules/mdformat-beautysh { };
#   mdformat-footnote = callPackage ./python-modules/mdformat-footnote { };
#   mdformat-frontmatter = callPackage ./python-modules/mdformat-frontmatter { };
#   mdformat-gfm = callPackage ./python-modules/mdformat-gfm { };
#   mdformat-mkdocs = callPackage ./python-modules/mdformat-mkdocs { };
#   mdformat-nix-alejandra = callPackage ./python-modules/mdformat-nix-alejandra { };
#   mdformat-simple-breaks = callPackage ./python-modules/mdformat-simple-breaks { };
#   mdformat-tables = callPackage ./python-modules/mdformat-tables { };
#   mdformat-toc = callPackage ./python-modules/mdformat-toc { };

#   mdit-py-plugins = callPackage ./python-modules/mdit-py-plugins { };

#   mdtraj = callPackage ./python-modules/mdtraj { };

#   mdurl = callPackage ./python-modules/mdurl { };

#   mdutils = callPackage ./python-modules/mdutils { };

#   mdp = callPackage ./python-modules/mdp { };

#   measurement = callPackage ./python-modules/measurement { };

#   meater-python = callPackage ./python-modules/meater-python { };

#   mecab-python3 = callPackage ./python-modules/mecab-python3 { };

#   mechanicalsoup = callPackage ./python-modules/mechanicalsoup { };

#   mechanize = callPackage ./python-modules/mechanize { };

#   mediafile = callPackage ./python-modules/mediafile { };

#   mediafire-dl = callPackage ./python-modules/mediafire-dl { };

#   mediapy = callPackage ./python-modules/mediapy { };

#   medpy = callPackage ./python-modules/medpy { };

#   meeko = callPackage ./python-modules/meeko { };

#   meep = callPackage ./python-modules/meep { };

#   meilisearch = callPackage ./python-modules/meilisearch { };

#   meinheld = callPackage ./python-modules/meinheld { };

#   meld3 = callPackage ./python-modules/meld3 { };

#   memestra = callPackage ./python-modules/memestra { };

#   memory-allocator = callPackage ./python-modules/memory-allocator { };

#   memory-profiler = callPackage ./python-modules/memory-profiler { };

#   meraki = callPackage ./python-modules/meraki { };

#   mercadopago = callPackage ./python-modules/mercadopago { };

#   mercantile = callPackage ./python-modules/mercantile { };

#   mercurial = toPythonModule (pkgs.mercurial.override {
#     python3Packages = self;
#   });

#   merge3 = callPackage ./python-modules/merge3 { };

#   mergedb = callPackage ./python-modules/mergedb { };

#   mergedeep = callPackage ./python-modules/mergedeep { };

#   mergedict = callPackage ./python-modules/mergedict { };

#   merkletools = callPackage ./python-modules/merkletools { };

#   meross-iot = callPackage ./python-modules/meross-iot { };

#   mesa = callPackage ./python-modules/mesa { };

#   meshcat = callPackage ./python-modules/meshcat { };

#   meshio = callPackage ./python-modules/meshio { };

#   meshlabxml = callPackage ./python-modules/meshlabxml { };

#   meshtastic = callPackage ./python-modules/meshtastic { };

#   meson = toPythonModule ((pkgs.meson.override { python3 = python; }).overridePythonAttrs
#     (oldAttrs: { # We do not want the setup hook in Python packages because the build is performed differently.
#       setupHook = null;
#     }));

#   mesonpep517 = callPackage ./python-modules/mesonpep517 { };

#   meson-python = callPackage ./python-modules/meson-python {
#     inherit (pkgs) ninja;
#   };

#   messagebird = callPackage ./python-modules/messagebird { };

#   metakernel = callPackage ./python-modules/metakernel { };

#   metar = callPackage ./python-modules/metar { };

#   metawear = callPackage ./python-modules/metawear { };

#   meteoalertapi = callPackage ./python-modules/meteoalertapi { };

#   meteocalc = callPackage ./python-modules/meteocalc { };

#   meteofrance-api = callPackage ./python-modules/meteofrance-api { };

#   mezzanine = callPackage ./python-modules/mezzanine { };

#   mf2py = callPackage ./python-modules/mf2py { };

#   mhcflurry = callPackage ./python-modules/mhcflurry { };

#   mhcgnomes = callPackage ./python-modules/mhcgnomes { };

#   miauth = callPackage ./python-modules/miauth { };

#   micawber = callPackage ./python-modules/micawber { };

#   microdata = callPackage ./python-modules/microdata { };

#   microsoft-kiota-abstractions = callPackage ./python-modules/microsoft-kiota-abstractions { };

#   microsoft-kiota-authentication-azure = callPackage ./python-modules/microsoft-kiota-authentication-azure { };

#   microsoft-kiota-http = callPackage ./python-modules/microsoft-kiota-http { };

#   microsoft-kiota-serialization-form = callPackage ./python-modules/microsoft-kiota-serialization-form { };

#   microsoft-kiota-serialization-json = callPackage ./python-modules/microsoft-kiota-serialization-json { };

#   microsoft-kiota-serialization-multipart = callPackage ./python-modules/microsoft-kiota-serialization-multipart { };

#   microsoft-kiota-serialization-text = callPackage ./python-modules/microsoft-kiota-serialization-text { };

#   midea-beautiful-air = callPackage ./python-modules/midea-beautiful-air { };

#   midiutil = callPackage ./python-modules/midiutil { };

#   mido = callPackage ./python-modules/mido { };

#   migen = callPackage ./python-modules/migen { };

#   mike = callPackage ./python-modules/mike { };

#   milc = callPackage ./python-modules/milc { };

#   milksnake = callPackage ./python-modules/milksnake { };

#   mill-local = callPackage ./python-modules/mill-local { };

#   millheater = callPackage ./python-modules/millheater { };

#   mindsdb-evaluator = callPackage ./python-modules/mindsdb-evaluator { };

#   minexr = callPackage ./python-modules/minexr { };

#   miniaudio = callPackage ./python-modules/miniaudio {
#     inherit (pkgs) miniaudio;
#     inherit (pkgs.darwin.apple_sdk.frameworks) AudioToolbox CoreAudio;
#   };

#   minichain = callPackage ./python-modules/minichain { };

#   minidb = callPackage ./python-modules/minidb { };

#   minidump = callPackage ./python-modules/minidump { };

#   miniful = callPackage ./python-modules/miniful { };

#   minikanren = callPackage ./python-modules/minikanren { };

#   minikerberos = callPackage ./python-modules/minikerberos { };

#   minimal-snowplow-tracker = callPackage ./python-modules/minimal-snowplow-tracker { };

#   minimock = callPackage ./python-modules/minimock { };

#   mininet-python = (toPythonModule (pkgs.mininet.override {
#     python3 = python;
#   })).py;

#   minio = callPackage ./python-modules/minio { };

#   miniupnpc = callPackage ./python-modules/miniupnpc {
#     inherit (pkgs.darwin) cctools;
#   };

#   mip = callPackage ./python-modules/mip { };

#   mir-eval = callPackage ./python-modules/mir-eval { };

#   mirakuru = callPackage ./python-modules/mirakuru { };

#   misaka = callPackage ./python-modules/misaka { };

#   misoc = callPackage ./python-modules/misoc { };

#   mistletoe = callPackage ./python-modules/mistletoe { };

#   mistune = callPackage ./python-modules/mistune { };

#   mitmproxy = callPackage ./python-modules/mitmproxy { };

#   mitmproxy-macos = callPackage ./python-modules/mitmproxy-macos { };

#   mitmproxy-rs = callPackage ./python-modules/mitmproxy-rs { };

#   mitogen = callPackage ./python-modules/mitogen { };

#   mixins = callPackage ./python-modules/mixins { };

#   mixpanel = callPackage ./python-modules/mixpanel { };

#   mizani = callPackage ./python-modules/mizani { };

  mkdocs = callPackage ./python-modules/mkdocs { };

#   mkdocs-autolinks-plugin = callPackage ./python-modules/mkdocs-autolinks-plugin { };

#   mkdocs-autorefs = callPackage ./python-modules/mkdocs-autorefs { };

#   mkdocs-drawio-exporter = callPackage ./python-modules/mkdocs-drawio-exporter { };

#   mkdocs-exclude = callPackage ./python-modules/mkdocs-exclude { };

#   mkdocs-git-authors-plugin = callPackage ./python-modules/mkdocs-git-authors-plugin { };

#   mkdocs-git-revision-date-localized-plugin = callPackage ./python-modules/mkdocs-git-revision-date-localized-plugin { };

#   mkdocs-gitlab = callPackage ./python-modules/mkdocs-gitlab-plugin { };

#   mkdocs-jupyter = callPackage ./python-modules/mkdocs-jupyter { };

#   mkdocs-linkcheck = callPackage ./python-modules/mkdocs-linkcheck { };

#   mkdocs-macros = callPackage ./python-modules/mkdocs-macros { };

#   mkdocs-material = callPackage ./python-modules/mkdocs-material { };

#   mkdocs-material-extensions = callPackage ./python-modules/mkdocs-material/mkdocs-material-extensions.nix { };

#   mkdocs-mermaid2-plugin = callPackage ./python-modules/mkdocs-mermaid2-plugin { };

#   mkdocs-minify-plugin = callPackage ./python-modules/mkdocs-minify-plugin { };

#   mkdocs-redirects = callPackage ./python-modules/mkdocs-redirects { };

#   mkdocs-redoc-tag = callPackage ./python-modules/mkdocs-redoc-tag { };

#   mkdocs-rss-plugin = callPackage ./python-modules/mkdocs-rss-plugin { };

#   mkdocs-swagger-ui-tag = callPackage ./python-modules/mkdocs-swagger-ui-tag { };

#   mkdocstrings = callPackage ./python-modules/mkdocstrings { };

#   mkdocstrings-python = callPackage ./python-modules/mkdocstrings-python { };

#   mkl-service = callPackage ./python-modules/mkl-service { };

#   ml-collections = callPackage ./python-modules/ml-collections { };

#   ml-dtypes = callPackage ./python-modules/ml-dtypes { };

#   mlflow = callPackage ./python-modules/mlflow { };

#   mlrose = callPackage ./python-modules/mlrose { };

#   mlx = callPackage ./python-modules/mlx { };

#   mlxtend = callPackage ./python-modules/mlxtend { };

#   mlt = toPythonModule (pkgs.mlt.override {
#     python3 = python;
#     enablePython = true;
#   });

#   mmcif-pdbx = callPackage ./python-modules/mmcif-pdbx { };

#   mmcv = callPackage ./python-modules/mmcv { };

#   mmengine = callPackage ./python-modules/mmengine { };

#   mmh3 = callPackage ./python-modules/mmh3 { };

#   mmpython = callPackage ./python-modules/mmpython { };

#   mmtf-python = callPackage ./python-modules/mmtf-python { };

#   mnemonic = callPackage ./python-modules/mnemonic { };

#   mne-python = callPackage ./python-modules/mne-python { };

#   mnist = callPackage ./python-modules/mnist { };

#   moat-ble = callPackage ./python-modules/moat-ble { };

#   mobi = callPackage ./python-modules/mobi { };

#   mobly = callPackage ./python-modules/mobly { };

#   mocket = callPackage ./python-modules/mocket {
#     redis-server = pkgs.redis;
#   };

  mock = callPackage ./python-modules/mock { };

#   mockfs = callPackage ./python-modules/mockfs { };

#   mockito = callPackage ./python-modules/mockito { };

#   mock-open = callPackage ./python-modules/mock-open { };

#   mock-services = callPackage ./python-modules/mock-services { };

#   mock-ssh-server = callPackage ./python-modules/mock-ssh-server { };

#   mockupdb = callPackage ./python-modules/mockupdb { };

#   moddb = callPackage ./python-modules/moddb { };

#   model-bakery = callPackage ./python-modules/model-bakery { };

#   modelcif = callPackage ./python-modules/modelcif { };

#   modeled = callPackage ./python-modules/modeled { };

#   moderngl = callPackage ./python-modules/moderngl { };

#   moderngl-window = callPackage ./python-modules/moderngl-window { };

#   modestmaps = callPackage ./python-modules/modestmaps { };

#   mohawk = callPackage ./python-modules/mohawk { };

#   molecule = callPackage ./python-modules/molecule { };

#   molecule-plugins = callPackage ./python-modules/molecule/plugins.nix { };

#   monai = callPackage ./python-modules/monai { };

#   monai-deploy = callPackage ./python-modules/monai-deploy { };

#   monero = callPackage ./python-modules/monero { };

#   mongomock = callPackage ./python-modules/mongomock { };

#   mongodict = callPackage ./python-modules/mongodict { };

#   mongoengine = callPackage ./python-modules/mongoengine { };

#   mongoquery = callPackage ./python-modules/mongoquery { };

#   monitorcontrol = callPackage ./python-modules/monitorcontrol { };

#   monkeyhex = callPackage ./python-modules/monkeyhex { };

#   monosat = pkgs.monosat.python {
#     inherit buildPythonPackage;
#     inherit (self) cython pytestCheckHook;
#   };

#   monotonic = callPackage ./python-modules/monotonic { };

#   monty = callPackage ./python-modules/monty { };

#   moonraker-api = callPackage ./python-modules/moonraker-api { };

#   mopeka-iot-ble = callPackage ./python-modules/mopeka-iot-ble { };

#   more-itertools = callPackage ./python-modules/more-itertools { };

#   more-properties = callPackage ./python-modules/more-properties { };

#   moreorless = callPackage ./python-modules/moreorless { };

#   moretools = callPackage ./python-modules/moretools { };

#   morfessor = callPackage ./python-modules/morfessor { };

#   morphys = callPackage ./python-modules/morphys { };

#   mortgage = callPackage ./python-modules/mortgage { };

#   motmetrics = callPackage ./python-modules/motmetrics { };

#   motionblinds = callPackage ./python-modules/motionblinds { };

#   motioneye-client = callPackage ./python-modules/motioneye-client { };

#   moto = callPackage ./python-modules/moto { };

#   motor = callPackage ./python-modules/motor { };

#   mouseinfo = callPackage ./python-modules/mouseinfo { };

#   moviepy = callPackage ./python-modules/moviepy { };

#   mox3 = callPackage ./python-modules/mox3 { };

#   mpd2 = callPackage ./python-modules/mpd2 { };

#   mpi4py = callPackage ./python-modules/mpi4py { };

#   mpldatacursor = callPackage ./python-modules/mpldatacursor { };

#   mplfinance = callPackage ./python-modules/mplfinance { };

#   mplhep = callPackage ./python-modules/mplhep { };

#   mplhep-data = callPackage ./python-modules/mplhep-data { };

#   mplleaflet = callPackage ./python-modules/mplleaflet { };

#   mpl-scatter-density = callPackage ./python-modules/mpl-scatter-density { };

#   mpmath = callPackage ./python-modules/mpmath { };

#   mpris-server = callPackage ./python-modules/mpris-server { };

#   mpv = callPackage ./python-modules/mpv {
#     inherit (pkgs) mpv;
#   };

#   mpyq = callPackage ./python-modules/mpyq { };

#   mrjob = callPackage ./python-modules/mrjob { };

#   mrsqm = callPackage ./python-modules/mrsqm { };

#   ms-active-directory = callPackage ./python-modules/ms-active-directory { };

#   ms-cv = callPackage ./python-modules/ms-cv { };

#   msal = callPackage ./python-modules/msal { };

#   msal-extensions = callPackage ./python-modules/msal-extensions { };

#   mscerts = callPackage ./python-modules/mscerts { };

#   msgpack = callPackage ./python-modules/msgpack { };

#   msgpack-numpy = callPackage ./python-modules/msgpack-numpy { };

#   msg-parser = callPackage ./python-modules/msg-parser { };

#   msgspec = callPackage ./python-modules/msgspec { };

#   msldap = callPackage ./python-modules/msldap { };

#   msoffcrypto-tool = callPackage ./python-modules/msoffcrypto-tool { };

#   msprime = callPackage ./python-modules/msprime { };

#   mss = callPackage ./python-modules/mss { };

#   msrestazure = callPackage ./python-modules/msrestazure { };

#   msrest = callPackage ./python-modules/msrest { };

#   mt-940 = callPackage ./python-modules/mt-940 { };

#   mullvad-api = callPackage ./python-modules/mullvad-api { };

#   mullvad-closest = callPackage ./python-modules/mullvad-closest { };

#   mulpyplexer = callPackage ./python-modules/mulpyplexer { };

#   multidict = callPackage ./python-modules/multidict { };

#   multi-key-dict = callPackage ./python-modules/multi-key-dict { };

#   multimethod = callPackage ./python-modules/multimethod { };

#   multipledispatch = callPackage ./python-modules/multipledispatch { };

#   multiprocess = callPackage ./python-modules/multiprocess { };

#   multiset = callPackage ./python-modules/multiset { };

#   multitasking = callPackage ./python-modules/multitasking { };

#   munch = callPackage ./python-modules/munch { };

#   mung = callPackage ./python-modules/mung { };

#   munkres = callPackage ./python-modules/munkres { };

#   murmurhash = callPackage ./python-modules/murmurhash { };

#   muscima = callPackage ./python-modules/muscima { };

#   musicbrainzngs = callPackage ./python-modules/musicbrainzngs { };

#   music-tag = callPackage ./python-modules/music-tag { };

#   mutag = callPackage ./python-modules/mutag { };

#   mutagen = callPackage ./python-modules/mutagen { };

#   mutatormath = callPackage ./python-modules/mutatormath { };

#   mutesync = callPackage ./python-modules/mutesync { };

#   mutf8 = callPackage ./python-modules/mutf8 { };

#   mujoco = callPackage ./python-modules/mujoco {
#     inherit (pkgs) mujoco;
#   };

#   mujson = callPackage ./python-modules/mujson { };

#   mwcli = callPackage ./python-modules/mwcli { };

#   mwclient = callPackage ./python-modules/mwclient { };

#   mwdblib = callPackage ./python-modules/mwdblib { };

#   mwoauth = callPackage ./python-modules/mwoauth { };

#   mwparserfromhell = callPackage ./python-modules/mwparserfromhell { };

#   mwtypes = callPackage ./python-modules/mwtypes { };

#   mwxml = callPackage ./python-modules/mwxml { };

#   mxnet = callPackage ./python-modules/mxnet { };

#   myfitnesspal = callPackage ./python-modules/myfitnesspal { };

#   mygpoclient = callPackage ./python-modules/mygpoclient { };

#   myhdl = callPackage ./python-modules/myhdl {
#     inherit (pkgs) ghdl verilog;
#   };

#   myhome = callPackage ./python-modules/myhome { };

#   myjwt = callPackage ./python-modules/myjwt { };

#   mypy = callPackage ./python-modules/mypy { };

#   mypy-boto3-builder = callPackage ./python-modules/mypy-boto3-builder { };

#   inherit (callPackage ./python-modules/mypy-boto3 { })

#     mypy-boto3-accessanalyzer

#     mypy-boto3-account

#     mypy-boto3-acm

#     mypy-boto3-acm-pca

#     mypy-boto3-alexaforbusiness

#     mypy-boto3-amp

#     mypy-boto3-amplify

#     mypy-boto3-amplifybackend

#     mypy-boto3-amplifyuibuilder

#     mypy-boto3-apigateway

#     mypy-boto3-apigatewaymanagementapi

#     mypy-boto3-apigatewayv2

#     mypy-boto3-appconfig

#     mypy-boto3-appconfigdata

#     mypy-boto3-appfabric

#     mypy-boto3-appflow

#     mypy-boto3-appintegrations

#     mypy-boto3-application-autoscaling

#     mypy-boto3-application-insights

#     mypy-boto3-applicationcostprofiler

#     mypy-boto3-appmesh

#     mypy-boto3-apprunner

#     mypy-boto3-appstream

#     mypy-boto3-appsync

#     mypy-boto3-arc-zonal-shift

#     mypy-boto3-athena

#     mypy-boto3-auditmanager

#     mypy-boto3-autoscaling

#     mypy-boto3-autoscaling-plans

#     mypy-boto3-backup

#     mypy-boto3-backup-gateway

#     mypy-boto3-backupstorage

#     mypy-boto3-batch

#     mypy-boto3-billingconductor

#     mypy-boto3-braket

#     mypy-boto3-budgets

#     mypy-boto3-ce

#     mypy-boto3-chime

#     mypy-boto3-chime-sdk-identity

#     mypy-boto3-chime-sdk-media-pipelines

#     mypy-boto3-chime-sdk-meetings

#     mypy-boto3-chime-sdk-messaging

#     mypy-boto3-chime-sdk-voice

#     mypy-boto3-cleanrooms

#     mypy-boto3-cloud9

#     mypy-boto3-cloudcontrol

#     mypy-boto3-clouddirectory

#     mypy-boto3-cloudformation

#     mypy-boto3-cloudfront

#     mypy-boto3-cloudhsm

#     mypy-boto3-cloudhsmv2

#     mypy-boto3-cloudsearch

#     mypy-boto3-cloudsearchdomain

#     mypy-boto3-cloudtrail

#     mypy-boto3-cloudtrail-data

#     mypy-boto3-cloudwatch

#     mypy-boto3-codeartifact

#     mypy-boto3-codebuild

#     mypy-boto3-codecatalyst

#     mypy-boto3-codecommit

#     mypy-boto3-codedeploy

#     mypy-boto3-codeguru-reviewer

#     mypy-boto3-codeguru-security

#     mypy-boto3-codeguruprofiler

#     mypy-boto3-codepipeline

#     mypy-boto3-codestar

#     mypy-boto3-codestar-connections

#     mypy-boto3-codestar-notifications

#     mypy-boto3-cognito-identity

#     mypy-boto3-cognito-idp

#     mypy-boto3-cognito-sync

#     mypy-boto3-comprehend

#     mypy-boto3-comprehendmedical

#     mypy-boto3-compute-optimizer

#     mypy-boto3-config

#     mypy-boto3-connect

#     mypy-boto3-connect-contact-lens

#     mypy-boto3-connectcampaigns

#     mypy-boto3-connectcases

#     mypy-boto3-connectparticipant

#     mypy-boto3-controltower

#     mypy-boto3-cur

#     mypy-boto3-customer-profiles

#     mypy-boto3-databrew

#     mypy-boto3-dataexchange

#     mypy-boto3-datapipeline

#     mypy-boto3-datasync

#     mypy-boto3-dax

#     mypy-boto3-detective

#     mypy-boto3-devicefarm

#     mypy-boto3-devops-guru

#     mypy-boto3-directconnect

#     mypy-boto3-discovery

#     mypy-boto3-dlm

#     mypy-boto3-dms

#     mypy-boto3-docdb

#     mypy-boto3-docdb-elastic

#     mypy-boto3-drs

#     mypy-boto3-ds

#     mypy-boto3-dynamodb

#     mypy-boto3-dynamodbstreams

#     mypy-boto3-ebs

#     mypy-boto3-ec2

#     mypy-boto3-ec2-instance-connect

#     mypy-boto3-ecr

#     mypy-boto3-ecr-public

#     mypy-boto3-ecs

#     mypy-boto3-efs

#     mypy-boto3-eks

#     mypy-boto3-elastic-inference

#     mypy-boto3-elasticache

#     mypy-boto3-elasticbeanstalk

#     mypy-boto3-elastictranscoder

#     mypy-boto3-elb

#     mypy-boto3-elbv2

#     mypy-boto3-emr

#     mypy-boto3-emr-containers

#     mypy-boto3-emr-serverless

#     mypy-boto3-entityresolution

#     mypy-boto3-es

#     mypy-boto3-events

#     mypy-boto3-evidently

#     mypy-boto3-finspace

#     mypy-boto3-finspace-data

#     mypy-boto3-firehose

#     mypy-boto3-fis

#     mypy-boto3-fms

#     mypy-boto3-forecast

#     mypy-boto3-forecastquery

#     mypy-boto3-frauddetector

#     mypy-boto3-fsx

#     mypy-boto3-gamelift

#     mypy-boto3-gamesparks

#     mypy-boto3-glacier

#     mypy-boto3-globalaccelerator

#     mypy-boto3-glue

#     mypy-boto3-grafana

#     mypy-boto3-greengrass

#     mypy-boto3-greengrassv2

#     mypy-boto3-groundstation

#     mypy-boto3-guardduty

#     mypy-boto3-health

#     mypy-boto3-healthlake

#     mypy-boto3-honeycode

#     mypy-boto3-iam

#     mypy-boto3-identitystore

#     mypy-boto3-imagebuilder

#     mypy-boto3-importexport

#     mypy-boto3-inspector

#     mypy-boto3-inspector2

#     mypy-boto3-internetmonitor

#     mypy-boto3-iot

#     mypy-boto3-iot-data

#     mypy-boto3-iot-jobs-data

#     mypy-boto3-iot-roborunner

#     mypy-boto3-iot1click-devices

#     mypy-boto3-iot1click-projects

#     mypy-boto3-iotanalytics

#     mypy-boto3-iotdeviceadvisor

#     mypy-boto3-iotevents

#     mypy-boto3-iotevents-data

#     mypy-boto3-iotfleethub

#     mypy-boto3-iotfleetwise

#     mypy-boto3-iotsecuretunneling

#     mypy-boto3-iotsitewise

#     mypy-boto3-iotthingsgraph

#     mypy-boto3-iottwinmaker

#     mypy-boto3-iotwireless

#     mypy-boto3-ivs

#     mypy-boto3-ivs-realtime

#     mypy-boto3-ivschat

#     mypy-boto3-kafka

#     mypy-boto3-kafkaconnect

#     mypy-boto3-kendra

#     mypy-boto3-kendra-ranking

#     mypy-boto3-keyspaces

#     mypy-boto3-kinesis

#     mypy-boto3-kinesis-video-archived-media

#     mypy-boto3-kinesis-video-media

#     mypy-boto3-kinesis-video-signaling

#     mypy-boto3-kinesis-video-webrtc-storage

#     mypy-boto3-kinesisanalytics

#     mypy-boto3-kinesisanalyticsv2

#     mypy-boto3-kinesisvideo

#     mypy-boto3-kms

#     mypy-boto3-lakeformation

#     mypy-boto3-lambda

#     mypy-boto3-lex-models

#     mypy-boto3-lex-runtime

#     mypy-boto3-lexv2-models

#     mypy-boto3-lexv2-runtime

#     mypy-boto3-license-manager

#     mypy-boto3-license-manager-linux-subscriptions

#     mypy-boto3-license-manager-user-subscriptions

#     mypy-boto3-lightsail

#     mypy-boto3-location

#     mypy-boto3-logs

#     mypy-boto3-lookoutequipment

#     mypy-boto3-lookoutmetrics

#     mypy-boto3-lookoutvision

#     mypy-boto3-m2

#     mypy-boto3-machinelearning

#     mypy-boto3-macie

#     mypy-boto3-macie2

#     mypy-boto3-managedblockchain

#     mypy-boto3-managedblockchain-query

#     mypy-boto3-marketplace-catalog

#     mypy-boto3-marketplace-entitlement

#     mypy-boto3-marketplacecommerceanalytics

#     mypy-boto3-mediaconnect

#     mypy-boto3-mediaconvert

#     mypy-boto3-medialive

#     mypy-boto3-mediapackage

#     mypy-boto3-mediapackage-vod

#     mypy-boto3-mediapackagev2

#     mypy-boto3-mediastore

#     mypy-boto3-mediastore-data

#     mypy-boto3-mediatailor

#     mypy-boto3-medical-imaging

#     mypy-boto3-memorydb

#     mypy-boto3-meteringmarketplace

#     mypy-boto3-mgh

#     mypy-boto3-mgn

#     mypy-boto3-migration-hub-refactor-spaces

#     mypy-boto3-migrationhub-config

#     mypy-boto3-migrationhuborchestrator

#     mypy-boto3-migrationhubstrategy

#     mypy-boto3-mobile

#     mypy-boto3-mq

#     mypy-boto3-mturk

#     mypy-boto3-mwaa

#     mypy-boto3-neptune

#     mypy-boto3-neptunedata

#     mypy-boto3-network-firewall

#     mypy-boto3-networkmanager

#     mypy-boto3-nimble

#     mypy-boto3-oam

#     mypy-boto3-omics

#     mypy-boto3-opensearch

#     mypy-boto3-opensearchserverless

#     mypy-boto3-opsworks

#     mypy-boto3-opsworkscm

#     mypy-boto3-organizations

#     mypy-boto3-osis

#     mypy-boto3-outposts

#     mypy-boto3-panorama

#     mypy-boto3-payment-cryptography

#     mypy-boto3-payment-cryptography-data

#     mypy-boto3-pca-connector-ad

#     mypy-boto3-personalize

#     mypy-boto3-personalize-events

#     mypy-boto3-personalize-runtime

#     mypy-boto3-pi

#     mypy-boto3-pinpoint

#     mypy-boto3-pinpoint-email

#     mypy-boto3-pinpoint-sms-voice

#     mypy-boto3-pinpoint-sms-voice-v2

#     mypy-boto3-pipes

#     mypy-boto3-polly

#     mypy-boto3-pricing

#     mypy-boto3-privatenetworks

#     mypy-boto3-proton

#     mypy-boto3-qldb

#     mypy-boto3-qldb-session

#     mypy-boto3-quicksight

#     mypy-boto3-ram

#     mypy-boto3-rbin

#     mypy-boto3-rds

#     mypy-boto3-rds-data

#     mypy-boto3-redshift

#     mypy-boto3-redshift-data

#     mypy-boto3-redshift-serverless

#     mypy-boto3-rekognition

#     mypy-boto3-resiliencehub

#     mypy-boto3-resource-explorer-2

#     mypy-boto3-resource-groups

#     mypy-boto3-resourcegroupstaggingapi

#     mypy-boto3-robomaker

#     mypy-boto3-rolesanywhere

#     mypy-boto3-route53

#     mypy-boto3-route53-recovery-cluster

#     mypy-boto3-route53-recovery-control-config

#     mypy-boto3-route53-recovery-readiness

#     mypy-boto3-route53domains

#     mypy-boto3-route53resolver

#     mypy-boto3-rum

#     mypy-boto3-s3

#     mypy-boto3-s3control

#     mypy-boto3-s3outposts

#     mypy-boto3-sagemaker

#     mypy-boto3-sagemaker-a2i-runtime

#     mypy-boto3-sagemaker-edge

#     mypy-boto3-sagemaker-featurestore-runtime

#     mypy-boto3-sagemaker-geospatial

#     mypy-boto3-sagemaker-metrics

#     mypy-boto3-sagemaker-runtime

#     mypy-boto3-savingsplans

#     mypy-boto3-scheduler

#     mypy-boto3-schemas

#     mypy-boto3-sdb

#     mypy-boto3-secretsmanager

#     mypy-boto3-securityhub

#     mypy-boto3-securitylake

#     mypy-boto3-serverlessrepo

#     mypy-boto3-service-quotas

#     mypy-boto3-servicecatalog

#     mypy-boto3-servicecatalog-appregistry

#     mypy-boto3-servicediscovery

#     mypy-boto3-ses

#     mypy-boto3-sesv2

#     mypy-boto3-shield

#     mypy-boto3-signer

#     mypy-boto3-simspaceweaver

#     mypy-boto3-sms

#     mypy-boto3-sms-voice

#     mypy-boto3-snow-device-management

#     mypy-boto3-snowball

#     mypy-boto3-sns

#     mypy-boto3-sqs

#     mypy-boto3-ssm

#     mypy-boto3-ssm-contacts

#     mypy-boto3-ssm-incidents

#     mypy-boto3-ssm-sap

#     mypy-boto3-sso

#     mypy-boto3-sso-admin

#     mypy-boto3-sso-oidc

#     mypy-boto3-stepfunctions

#     mypy-boto3-storagegateway

#     mypy-boto3-sts

#     mypy-boto3-support

#     mypy-boto3-support-app

#     mypy-boto3-swf

#     mypy-boto3-synthetics

#     mypy-boto3-textract

#     mypy-boto3-timestream-query

#     mypy-boto3-timestream-write

#     mypy-boto3-tnb

#     mypy-boto3-transcribe

#     mypy-boto3-transfer

#     mypy-boto3-translate

#     mypy-boto3-verifiedpermissions

#     mypy-boto3-voice-id

#     mypy-boto3-vpc-lattice

#     mypy-boto3-waf

#     mypy-boto3-waf-regional

#     mypy-boto3-wafv2

#     mypy-boto3-wellarchitected

#     mypy-boto3-wisdom

#     mypy-boto3-workdocs

#     mypy-boto3-worklink

#     mypy-boto3-workmail

#     mypy-boto3-workmailmessageflow

#     mypy-boto3-workspaces

#     mypy-boto3-workspaces-web

#     mypy-boto3-xray

#   ;

#   mypy-extensions = callPackage ./python-modules/mypy/extensions.nix { };

#   mypy-protobuf = callPackage ./python-modules/mypy-protobuf { };

#   mysqlclient = callPackage ./python-modules/mysqlclient { };

#   mysql-connector = callPackage ./python-modules/mysql-connector { };

#   myst-docutils = callPackage ./python-modules/myst-docutils { };

#   myst-nb = callPackage ./python-modules/myst-nb { };

#   myst-parser = callPackage ./python-modules/myst-parser { };

#   myuplink = callPackage ./python-modules/myuplink { };

#   n3fit = callPackage ./python-modules/n3fit { };

#   nad-receiver = callPackage ./python-modules/nad-receiver { };

#   nagiosplugin = callPackage ./python-modules/nagiosplugin { };

#   naked = callPackage ./python-modules/naked { };

#   namedlist = callPackage ./python-modules/namedlist { };

#   nameparser = callPackage ./python-modules/nameparser { };

#   names = callPackage ./python-modules/names { };

#   name-that-hash = callPackage ./python-modules/name-that-hash { };

#   nameko = callPackage ./python-modules/nameko { };

#   nampa = callPackage ./python-modules/nampa { };

#   nanobind = callPackage ./python-modules/nanobind { };

#   nanoid = callPackage ./python-modules/nanoid { };

#   nanoleaf = callPackage ./python-modules/nanoleaf { };

#   navec = callPackage ./python-modules/navec { };

#   natasha = callPackage ./python-modules/natasha { };

#   nomadnet = callPackage ./python-modules/nomadnet { };

#   nox = callPackage ./python-modules/nox { };

#   nanomsg-python = callPackage ./python-modules/nanomsg-python {
#     inherit (pkgs) nanomsg;
#   };

#   nanotime = callPackage ./python-modules/nanotime { };

#   napalm = callPackage ./python-modules/napalm { };

#   napalm-hp-procurve = callPackage ./python-modules/napalm/hp-procurve.nix { };

#   napari = callPackage ./python-modules/napari {
#     inherit (pkgs.libsForQt5) mkDerivationWith wrapQtAppsHook;
#   };

#   napari-console = callPackage ./python-modules/napari-console { };

#   napari-npe2 = callPackage ./python-modules/napari-npe2 { };

#   napari-plugin-engine = callPackage ./python-modules/napari-plugin-engine { };

#   napari-svg = callPackage ./python-modules/napari-svg { };

#   nasdaq-data-link = callPackage ./python-modules/nasdaq-data-link { };

#   nats-py = callPackage ./python-modules/nats-py { };

#   nats-python = callPackage ./python-modules/nats-python { };

#   natsort = callPackage ./python-modules/natsort { };

#   naturalsort = callPackage ./python-modules/naturalsort { };

#   nbclassic = callPackage ./python-modules/nbclassic { };

#   nbclient = callPackage ./python-modules/nbclient { };

#   nbconflux = callPackage ./python-modules/nbconflux { };

#   nbconvert = callPackage ./python-modules/nbconvert { };

#   nbdev = callPackage ./python-modules/nbdev { };

#   nbdime = callPackage ./python-modules/nbdime { };

#   nbexec = callPackage ./python-modules/nbexec { };

#   nbformat = callPackage ./python-modules/nbformat { };

#   nbmerge = callPackage ./python-modules/nbmerge { };

#   nbsmoke = callPackage ./python-modules/nbsmoke { };

#   nbsphinx = callPackage ./python-modules/nbsphinx { };

#   nbtlib = callPackage ./python-modules/nbtlib { };

#   nbval = callPackage ./python-modules/nbval { };

#   nbxmpp = callPackage ./python-modules/nbxmpp { };

#   nc-dnsapi = callPackage ./python-modules/nc-dnsapi { };

#   ncclient = callPackage ./python-modules/ncclient { };

#   nclib = callPackage ./python-modules/nclib { };

#   ndeflib = callPackage ./python-modules/ndeflib { };

#   ndg-httpsclient = callPackage ./python-modules/ndg-httpsclient { };

#   ndindex = callPackage ./python-modules/ndindex { };

#   ndjson = callPackage ./python-modules/ndjson { };

#   ndms2-client = callPackage ./python-modules/ndms2-client { };

#   ndspy = callPackage ./python-modules/ndspy { };

#   ndtypes = callPackage ./python-modules/ndtypes { };

#   nebula3-python = callPackage ./python-modules/nebula3-python { };

#   nengo = callPackage ./python-modules/nengo { };

#   neo = callPackage ./python-modules/neo { };

#   neo4j = callPackage ./python-modules/neo4j { };

#   neoteroi-mkdocs = callPackage ./python-modules/neoteroi-mkdocs { };

#   nessclient = callPackage ./python-modules/nessclient { };

#   nest = toPythonModule(pkgs.nest-mpi.override { withPython = true; python3 = python; });

#   nest-asyncio = callPackage ./python-modules/nest-asyncio { };

#   nested-lookup = callPackage ./python-modules/nested-lookup { };

#   nestedtext = callPackage ./python-modules/nestedtext { };

#   netaddr = callPackage ./python-modules/netaddr { };

#   netapp-lib = callPackage ./python-modules/netapp-lib { };

#   netapp-ontap = callPackage ./python-modules/netapp-ontap { };

#   netcdf4 = callPackage ./python-modules/netcdf4 { };

#   netdata = callPackage ./python-modules/netdata { };

#   netdisco = callPackage ./python-modules/netdisco { };

#   nethsm = callPackage ./python-modules/nethsm { };

#   netifaces = callPackage ./python-modules/netifaces { };

#   netmiko = callPackage ./python-modules/netmiko { };

#   netio = callPackage ./python-modules/netio { };

#   nettigo-air-monitor = callPackage ./python-modules/nettigo-air-monitor { };

#   netutils = callPackage ./python-modules/netutils { };

#   networkx = callPackage ./python-modules/networkx { };

#   neuron-full = pkgs.neuron-full.override { python3 = python; };

#   neuronpy = python.pkgs.toPythonModule neuron-full;

#   nevow = callPackage ./python-modules/nevow { };

#   newversion = callPackage ./python-modules/newversion { };

#   newick = callPackage ./python-modules/newick { };

#   nexia = callPackage ./python-modules/nexia { };

#   nextcloudmonitor = callPackage ./python-modules/nextcloudmonitor { };

#   nextcord = callPackage ./python-modules/nextcord { };

#   nextdns = callPackage ./python-modules/nextdns { };

#   nfcpy = callPackage ./python-modules/nfcpy { };

#   nftables = toPythonModule (pkgs.nftables.override {
#     python3 = python;
#     withPython = true;
#   });

#   nh3 = callPackage ./python-modules/nh3 { };

#   niaaml = callPackage ./python-modules/niaaml { };

#   nianet = callPackage ./python-modules/nianet { };

#   niaarm = callPackage ./python-modules/niaarm { };

#   niaclass = callPackage ./python-modules/niaclass { };

#   niapy = callPackage ./python-modules/niapy { };

#   nibabel = callPackage ./python-modules/nibabel { };

#   nibe = callPackage ./python-modules/nibe { };

#   nidaqmx = callPackage ./python-modules/nidaqmx { };

#   nikola = callPackage ./python-modules/nikola { };

#   niko-home-control = callPackage ./python-modules/niko-home-control { };

#   nilearn = callPackage ./python-modules/nilearn { };

#   niluclient = callPackage ./python-modules/niluclient { };

#   nimfa = callPackage ./python-modules/nimfa { };

#   nine = callPackage ./python-modules/nine { };

#   ninebot-ble = callPackage ./python-modules/ninebot-ble { };

#   ninja = callPackage ./python-modules/ninja { inherit (pkgs) ninja; };

#   nipreps-versions = callPackage ./python-modules/nipreps-versions { };

#   nipy = callPackage ./python-modules/nipy { };

#   nipype = callPackage ./python-modules/nipype {
#     inherit (pkgs) which;
#   };

#   nitime = callPackage ./python-modules/nitime { };

#   nitpick = callPackage ../applications/version-management/nitpick { };

#   nitransforms = callPackage ./python-modules/nitransforms { };

#   niworkflows = callPackage ./python-modules/niworkflows { };

#   nix-kernel = callPackage ./python-modules/nix-kernel {
#     inherit (pkgs) nix;
#   };

#   nixpkgs = callPackage ./python-modules/nixpkgs { };

#   nixpkgs-pytools = callPackage ./python-modules/nixpkgs-pytools { };

#   nix-prefetch-github = callPackage ./python-modules/nix-prefetch-github { };

#   nkdfu = callPackage ./python-modules/nkdfu { };

#   nlpcloud = callPackage ./python-modules/nlpcloud { };

#   nltk = callPackage ./python-modules/nltk { };

#   nnpdf = toPythonModule (pkgs.nnpdf.override {
#     python3 = python;
#   });

#   nmapthon2 = callPackage ./python-modules/nmapthon2 { };

#   amaranth-boards = callPackage ./python-modules/amaranth-boards { };

#   amaranth = callPackage ./python-modules/amaranth { };

#   amaranth-soc = callPackage ./python-modules/amaranth-soc { };

#   nocasedict = callPackage ./python-modules/nocasedict { };

#   nocaselist = callPackage ./python-modules/nocaselist { };

#   nocturne = callPackage ./python-modules/nocturne { };

#   nodeenv = callPackage ./python-modules/nodeenv { };

#   nodepy-runtime = callPackage ./python-modules/nodepy-runtime { };

#   node-semver = callPackage ./python-modules/node-semver { };

#   noise = callPackage ./python-modules/noise { };

#   noiseprotocol = callPackage ./python-modules/noiseprotocol { };

#   norfair = callPackage ./python-modules/norfair { };

#   normality = callPackage ./python-modules/normality { };

  nose = callPackage ./python-modules/nose { };

#   nose2 = callPackage ./python-modules/nose2 { };

#   nose3 = callPackage ./python-modules/nose3 { };

#   nose-cov = callPackage ./python-modules/nose-cov { };

#   nose-cprof = callPackage ./python-modules/nose-cprof { };

#   nose-exclude = callPackage ./python-modules/nose-exclude { };

#   nose-timer = callPackage ./python-modules/nose-timer { };

#   nosejs = callPackage ./python-modules/nosejs { };

#   nose-pattern-exclude = callPackage ./python-modules/nose-pattern-exclude { };

#   nose-randomly = callPackage ./python-modules/nose-randomly { };

#   nose-warnings-filters = callPackage ./python-modules/nose-warnings-filters { };

#   nosexcover = callPackage ./python-modules/nosexcover { };

#   notebook = callPackage ./python-modules/notebook { };

#   notebook-shim = callPackage ./python-modules/notebook-shim { };

#   notedown = callPackage ./python-modules/notedown { };

#   notifications-android-tv = callPackage ./python-modules/notifications-android-tv { };

#   notifications-python-client = callPackage ./python-modules/notifications-python-client { };

#   notify-events = callPackage ./python-modules/notify-events { };

#   notify-py = callPackage ./python-modules/notify-py { };

#   notify2 = callPackage ./python-modules/notify2 { };

#   notion-client = callPackage ./python-modules/notion-client { };

#   notmuch = callPackage ./python-modules/notmuch {
#     inherit (pkgs) notmuch;
#   };

#   notmuch2 = callPackage ./python-modules/notmuch2 {
#     inherit (pkgs) notmuch;
#   };

#   nototools = callPackage ./python-modules/nototools { };

#   notus-scanner = callPackage ./python-modules/notus-scanner { };

#   nplusone = callPackage ./python-modules/nplusone { };

#   nptyping  = callPackage ./python-modules/nptyping { };

#   npyscreen = callPackage ./python-modules/npyscreen { };

#   nsapi = callPackage ./python-modules/nsapi { };

#   ntc-templates = callPackage ./python-modules/ntc-templates { };

#   ntplib = callPackage ./python-modules/ntplib { };

#   nuitka = callPackage ./python-modules/nuitka { };

#   nuheat = callPackage ./python-modules/nuheat { };

#   nulltype = callPackage ./python-modules/nulltype { };

#   num2words = callPackage ./python-modules/num2words { };

#   numba = callPackage ./python-modules/numba {
#     inherit (pkgs.config) cudaSupport;
#   };

#   numbaWithCuda = self.numba.override {
#     cudaSupport = true;
#   };

#   numba-scipy = callPackage ./python-modules/numba-scipy { };

#   numcodecs = callPackage ./python-modules/numcodecs { };

#   numdifftools = callPackage ./python-modules/numdifftools { };

#   numericalunits = callPackage ./python-modules/numericalunits { };

#   numexpr = callPackage ./python-modules/numexpr { };

#   numpydoc = callPackage ./python-modules/numpydoc { };

  numpy = callPackage ./python-modules/numpy { };

#   numpy-stl = callPackage ./python-modules/numpy-stl { };

#   numpyro = callPackage ./python-modules/numpyro { };

#   nunavut = callPackage ./python-modules/nunavut { };

#   nutils = callPackage ./python-modules/nutils { };

#   nvchecker = callPackage ./python-modules/nvchecker { };

#   nvdlib = callPackage ./python-modules/nvdlib { };

#   nvidia-ml-py = callPackage ./python-modules/nvidia-ml-py { };

#   nsz = callPackage ./python-modules/nsz { };

#   nxt-python = callPackage ./python-modules/nxt-python { };

#   python-ndn = callPackage ./python-modules/python-ndn { };

#   python-nvd3 = callPackage ./python-modules/python-nvd3 { };

#   python-secp256k1-cardano = callPackage ./python-modules/python-secp256k1-cardano { };

#   python-tds = callPackage ./python-modules/python-tds { };

#   python-yate = callPackage ./python-modules/python-yate { };

#   python-youtube = callPackage ./python-modules/python-youtube { };

#   py-aosmith = callPackage ./python-modules/py-aosmith { };

#   py-deprecate = callPackage ./python-modules/py-deprecate { };

#   py-ecc = callPackage ./python-modules/py-ecc { };

#   py-eth-sig-utils = callPackage ./python-modules/py-eth-sig-utils { };

#   py-expression-eval = callPackage ./python-modules/py-expression-eval { };

#   py-radix-sr = callPackage ./python-modules/py-radix-sr { };

#   nwdiag = callPackage ./python-modules/nwdiag { };

#   oasatelematics = callPackage ./python-modules/oasatelematics { };

#   oath = callPackage ./python-modules/oath { };

#   oauth2 = callPackage ./python-modules/oauth2 { };

#   oauth2client = callPackage ./python-modules/oauth2client { };

#   oauth = callPackage ./python-modules/oauth { };

#   oauthenticator = callPackage ./python-modules/oauthenticator { };

#   oauthlib = callPackage ./python-modules/oauthlib { };

#   obfsproxy = callPackage ./python-modules/obfsproxy { };

#   objax = callPackage ./python-modules/objax { };

#   objsize = callPackage ./python-modules/objsize { };

  objgraph = callPackage ./python-modules/objgraph {
    # requires both the graphviz package and python package
    graphvizPkgs = pkgs.graphviz;
  };

#   obspy = callPackage ./python-modules/obspy { };

#   oca-port = callPackage ./python-modules/oca-port { };

#   ochre = callPackage ./python-modules/ochre { };

#   oci = callPackage ./python-modules/oci { };

#   ocifs = callPackage ./python-modules/ocifs { };

#   ocrmypdf = callPackage ./python-modules/ocrmypdf {
#     tesseract = pkgs.tesseract5;
#   };

#   od = callPackage ./python-modules/od { };

#   odfpy = callPackage ./python-modules/odfpy { };

#   odp-amsterdam = callPackage ./python-modules/odp-amsterdam { };

#   offtrac = callPackage ./python-modules/offtrac { };

#   ofxclient = callPackage ./python-modules/ofxclient { };

#   ofxhome = callPackage ./python-modules/ofxhome { };

#   ofxparse = callPackage ./python-modules/ofxparse { };

#   ofxtools = callPackage ./python-modules/ofxtools { };

#   oemthermostat = callPackage ./python-modules/oemthermostat { };

#   okonomiyaki = callPackage ./python-modules/okonomiyaki { };

#   okta = callPackage ./python-modules/okta { };

#   oldest-supported-numpy = callPackage ./python-modules/oldest-supported-numpy { };

#   olefile = callPackage ./python-modules/olefile { };

#   oletools = callPackage ./python-modules/oletools { };

#   ollama = callPackage ./python-modules/ollama { };

#   omegaconf = callPackage ./python-modules/omegaconf { };

#   omemo-dr = callPackage ./python-modules/omemo-dr { };

#   ome-zarr = callPackage ./python-modules/ome-zarr { };

#   omnikinverter = callPackage ./python-modules/omnikinverter { };

#   omnilogic = callPackage ./python-modules/omnilogic { };

#   omorfi = callPackage ./python-modules/omorfi { };

#   omrdatasettools = callPackage ./python-modules/omrdatasettools { };

#   oncalendar = callPackage ./python-modules/oncalendar { };

#   ondilo = callPackage ./python-modules/ondilo { };

#   onetimepass = callPackage ./python-modules/onetimepass { };

#   onigurumacffi = callPackage ./python-modules/onigurumacffi { };

#   onkyo-eiscp = callPackage ./python-modules/onkyo-eiscp { };

#   online-judge-api-client = callPackage ./python-modules/online-judge-api-client { };

#   online-judge-tools = callPackage ./python-modules/online-judge-tools { };

#   onlykey-solo-python = callPackage ./python-modules/onlykey-solo-python { };

#   onnx = callPackage ./python-modules/onnx {
#     abseil-cpp = pkgs.abseil-cpp_202301;
#   };

#   onnxconverter-common = callPackage ./python-modules/onnxconverter-common {
#     inherit (pkgs) protobuf;
#   };

#   onnxmltools = callPackage ./python-modules/onnxmltools { };

#   onnxruntime = callPackage ./python-modules/onnxruntime {
#     onnxruntime = pkgs.onnxruntime.override {
#       python3Packages = self;
#       pythonSupport = true;
#     };
#   };

#   onnxruntime-tools = callPackage ./python-modules/onnxruntime-tools { };

#   onvif-zeep = callPackage ./python-modules/onvif-zeep { };

#   onvif-zeep-async = callPackage ./python-modules/onvif-zeep-async { };

#   oocsi = callPackage ./python-modules/oocsi { };

#   opcua-widgets = callPackage ./python-modules/opcua-widgets { };

#   open-clip-torch = callPackage ./python-modules/open-clip-torch { };

#   open-garage = callPackage ./python-modules/open-garage { };

#   open-interpreter = callPackage ./python-modules/open-interpreter { };

#   open-meteo = callPackage ./python-modules/open-meteo { };

#   openai-triton = callPackage ./python-modules/openai-triton {
#     llvm = pkgs.openai-triton-llvm;
#     cudaPackages = pkgs.cudaPackages_12_1;
#   };

#   openai-triton-cuda = self.openai-triton.override {
#     cudaSupport = true;
#   };

#   openai-triton-no-cuda = self.openai-triton.override {
#     cudaSupport = false;
#   };

#   openai-triton-bin = callPackage ./python-modules/openai-triton/bin.nix { };

#   openai-whisper = callPackage ./python-modules/openai-whisper { };

#   openant = callPackage ./python-modules/openant { };

#   openapi-schema-validator = callPackage ./python-modules/openapi-schema-validator { };

#   openapi-spec-validator = callPackage ./python-modules/openapi-spec-validator { };

#   openapi3 = callPackage ./python-modules/openapi3 { };

#   openbabel-bindings = callPackage ./python-modules/openbabel-bindings {
#       openbabel = callPackage ../development/libraries/openbabel { inherit (self) python; };
#   };

#   opencensus = callPackage ./python-modules/opencensus { };

#   opencensus-context = callPackage ./python-modules/opencensus-context { };

#   opencensus-ext-azure = callPackage ./python-modules/opencensus-ext-azure { };

#   opencontainers = callPackage ./python-modules/opencontainers { };

#   opencv4 = toPythonModule (pkgs.opencv4.override {
#     enablePython = true;
#     pythonPackages = self;
#   });

#   openerz-api = callPackage ./python-modules/openerz-api { };

#   openevsewifi = callPackage ./python-modules/openevsewifi { };

#   openhomedevice = callPackage ./python-modules/openhomedevice { };

#   openidc-client = callPackage ./python-modules/openidc-client { };

#   openmm = toPythonModule (pkgs.openmm.override {
#     python3Packages = self;
#     enablePython = true;
#   });

#   openpyxl = callPackage ./python-modules/openpyxl { };

#   openrazer = callPackage ./python-modules/openrazer/pylib.nix { };

#   openrazer-daemon = callPackage ./python-modules/openrazer/daemon.nix { };

#   openrgb-python = callPackage ./python-modules/openrgb-python { };

#   openrouteservice = callPackage ./python-modules/openrouteservice { };

#   opensearch-py = callPackage ./python-modules/opensearch-py { };

#   opensensemap-api = callPackage ./python-modules/opensensemap-api { };

#   opensfm = callPackage ./python-modules/opensfm { };

#   openshift = callPackage ./python-modules/openshift { };

#   opensimplex = callPackage ./python-modules/opensimplex { };

#   openstackdocstheme = callPackage ./python-modules/openstackdocstheme { };

#   openstacksdk = callPackage ./python-modules/openstacksdk { };

#   opentimestamps = callPackage ./python-modules/opentimestamps { };

#   opentelemetry-api = callPackage ./python-modules/opentelemetry-api { };

#   opentelemetry-exporter-otlp = callPackage ./python-modules/opentelemetry-exporter-otlp { };

#   opentelemetry-exporter-otlp-proto-common = callPackage ./python-modules/opentelemetry-exporter-otlp-proto-common { };

#   opentelemetry-exporter-otlp-proto-grpc = callPackage ./python-modules/opentelemetry-exporter-otlp-proto-grpc { };

#   opentelemetry-exporter-otlp-proto-http = callPackage ./python-modules/opentelemetry-exporter-otlp-proto-http { };

#   opentelemetry-exporter-prometheus = callPackage ./python-modules/opentelemetry-exporter-prometheus { };

#   opentelemetry-instrumentation = callPackage ./python-modules/opentelemetry-instrumentation { };

#   opentelemetry-instrumentation-aiohttp-client = callPackage ./python-modules/opentelemetry-instrumentation-aiohttp-client { };

#   opentelemetry-instrumentation-asgi = callPackage ./python-modules/opentelemetry-instrumentation-asgi { };

#   opentelemetry-instrumentation-django = callPackage ./python-modules/opentelemetry-instrumentation-django { };

#   opentelemetry-instrumentation-fastapi = callPackage ./python-modules/opentelemetry-instrumentation-fastapi { };

#   opentelemetry-instrumentation-flask = callPackage ./python-modules/opentelemetry-instrumentation-flask { };

#   opentelemetry-instrumentation-grpc = callPackage ./python-modules/opentelemetry-instrumentation-grpc { };

#   opentelemetry-instrumentation-wsgi = callPackage ./python-modules/opentelemetry-instrumentation-wsgi { };

#   opentelemetry-proto = callPackage ./python-modules/opentelemetry-proto { };

#   opentelemetry-semantic-conventions = callPackage ./python-modules/opentelemetry-semantic-conventions { };

#   opentelemetry-sdk = callPackage ./python-modules/opentelemetry-sdk { };

#   opentelemetry-test-utils = callPackage ./python-modules/opentelemetry-test-utils { };

#   opentelemetry-util-http = callPackage ./python-modules/opentelemetry-util-http { };

#   openturns = toPythonModule (pkgs.openturns.override {
#     python3Packages = self;
#     enablePython = true;
#   });

#   opentracing = callPackage ./python-modules/opentracing { };

#   opentsne = callPackage ./python-modules/opentsne { };

#   opentypespec = callPackage ./python-modules/opentypespec { };

#   openvino = callPackage ./python-modules/openvino {
#     openvino-native = pkgs.openvino.override {
#       python3Packages = self;
#     };
#   };

#   openwebifpy = callPackage ./python-modules/openwebifpy { };

#   openwrt-luci-rpc = callPackage ./python-modules/openwrt-luci-rpc { };

#   openwrt-ubus-rpc = callPackage ./python-modules/openwrt-ubus-rpc { };

#   opower = callPackage ./python-modules/opower { };

#   opsdroid-get-image-size = callPackage ./python-modules/opsdroid-get-image-size { };

#   opt-einsum = callPackage ./python-modules/opt-einsum { };

#   optax = callPackage ./python-modules/optax { };

#   optimum = callPackage ./python-modules/optimum { };

#   optuna = callPackage ./python-modules/optuna { };

#   opuslib = callPackage ./python-modules/opuslib { };

#   opytimark = callPackage ./python-modules/opytimark { };

#   oracledb = callPackage ./python-modules/oracledb { };

#   oralb-ble = callPackage ./python-modules/oralb-ble { };

#   orange3 = callPackage ./python-modules/orange3 { };

#   orange-canvas-core = callPackage ./python-modules/orange-canvas-core { };

#   orange-widget-base = callPackage ./python-modules/orange-widget-base { };

#   oras = callPackage ./python-modules/oras { };

#   orbax-checkpoint = callPackage ./python-modules/orbax-checkpoint { };

#   orderedmultidict = callPackage ./python-modules/orderedmultidict { };

#   ordered-set = callPackage ./python-modules/ordered-set { };

#   orderedset = callPackage ./python-modules/orderedset { };

#   orgparse = callPackage ./python-modules/orgparse { };

#   orjson = callPackage ./python-modules/orjson { };

#   orm = callPackage ./python-modules/orm { };

#   ormar = callPackage ./python-modules/ormar { };

#   ortools = (toPythonModule (pkgs.or-tools.override { inherit (self) python; })).python;

#   orvibo = callPackage ./python-modules/orvibo { };

#   os-service-types = callPackage ./python-modules/os-service-types { };

#   osc = callPackage ./python-modules/osc { };

#   osc-diagram = callPackage ./python-modules/osc-diagram { };

#   osc-lib = callPackage ./python-modules/osc-lib { };

#   osc-sdk-python = callPackage ./python-modules/osc-sdk-python { };

#   oscpy = callPackage ./python-modules/oscpy { };

#   oscrypto = callPackage ./python-modules/oscrypto { };

#   oscscreen = callPackage ./python-modules/oscscreen { };

#   oset = callPackage ./python-modules/oset { };

#   osmnx = callPackage ./python-modules/osmnx { };

#   osmpythontools = callPackage ./python-modules/osmpythontools { };

#   oslo-concurrency = callPackage ./python-modules/oslo-concurrency { };

#   oslo-config = callPackage ./python-modules/oslo-config { };

#   oslo-context = callPackage ./python-modules/oslo-context { };

#   oslo-db = callPackage ./python-modules/oslo-db { };

#   oslo-i18n = callPackage ./python-modules/oslo-i18n { };

#   oslo-log = callPackage ./python-modules/oslo-log { };

#   oslo-serialization = callPackage ./python-modules/oslo-serialization { };

#   oslo-utils = callPackage ./python-modules/oslo-utils { };

#   oslotest = callPackage ./python-modules/oslotest { };

#   ospd = callPackage ./python-modules/ospd { };

#   osqp = callPackage ./python-modules/osqp { };

#   oss2 = callPackage ./python-modules/oss2 { };

#   ossfs = callPackage ./python-modules/ossfs { };

#   ots-python = callPackage ./python-modules/ots-python { };

#   outcome = callPackage ./python-modules/outcome { };

#   ovh = callPackage ./python-modules/ovh { };

#   ovmfvartool = callPackage ./python-modules/ovmfvartool { };

#   ovoenergy = callPackage ./python-modules/ovoenergy { };

#   owslib = callPackage ./python-modules/owslib { };

#   oyaml = callPackage ./python-modules/oyaml { };

#   p1monitor = callPackage ./python-modules/p1monitor { };

#   packageurl-python = callPackage ./python-modules/packageurl-python { };

  packaging = callPackage ./python-modules/packaging { };

#   packbits = callPackage ./python-modules/packbits { };

#   packet-python = callPackage ./python-modules/packet-python { };

#   packvers = callPackage ./python-modules/packvers { };

#   pagelabels = callPackage ./python-modules/pagelabels { };

#   paginate = callPackage ./python-modules/paginate { };

#   paho-mqtt = callPackage ./python-modules/paho-mqtt { };

#   palace = callPackage ./python-modules/palace { };

#   palettable = callPackage ./python-modules/palettable { };

  pallets-sphinx-themes = callPackage ./python-modules/pallets-sphinx-themes { };

#   python-docs-theme = callPackage ./python-modules/python-docs-theme { };

#   pamela = callPackage ./python-modules/pamela { };

#   pamqp = callPackage ./python-modules/pamqp { };

#   panacotta = callPackage ./python-modules/panacotta { };

#   panasonic-viera = callPackage ./python-modules/panasonic-viera { };

#   pandas = callPackage ./python-modules/pandas {
#     inherit (pkgs.darwin) adv_cmds;
#   };

#   pandas-datareader = callPackage ./python-modules/pandas-datareader { };

#   pandoc-attributes = callPackage ./python-modules/pandoc-attributes { };

#   pandoc-xnos = callPackage ./python-modules/pandoc-xnos { };

#   pandocfilters = callPackage ./python-modules/pandocfilters { };

#   panel = callPackage ./python-modules/panel { };

#   panflute = callPackage ./python-modules/panflute { };

#   panphon = callPackage ./python-modules/panphon { };

#   papermill = callPackage ./python-modules/papermill { };

#   openpaperwork-core = callPackage ../applications/office/paperwork/openpaperwork-core.nix { };
#   openpaperwork-gtk = callPackage ../applications/office/paperwork/openpaperwork-gtk.nix { };
#   paperwork-backend = callPackage ../applications/office/paperwork/paperwork-backend.nix { };
#   paperwork-shell = callPackage ../applications/office/paperwork/paperwork-shell.nix { };

#   papis = callPackage ./python-modules/papis { };

#   papis-python-rofi = callPackage ./python-modules/papis-python-rofi { };

#   para = callPackage ./python-modules/para { };

#   param = callPackage ./python-modules/param { };

#   parameter-expansion-patched = callPackage ./python-modules/parameter-expansion-patched { };

#   parameterized = callPackage ./python-modules/parameterized { };

#   parametrize-from-file = callPackage ./python-modules/parametrize-from-file { };

#   paramiko = callPackage ./python-modules/paramiko { };

#   paramz = callPackage ./python-modules/paramz { };

#   paranoid-crypto = callPackage ./python-modules/paranoid-crypto { };

#   parfive = callPackage ./python-modules/parfive { };

#   parquet = callPackage ./python-modules/parquet { };

#   parse = callPackage ./python-modules/parse { };

#   parsedatetime = callPackage ./python-modules/parsedatetime { };

#   parsedmarc = callPackage ./python-modules/parsedmarc { };

#   parsel = callPackage ./python-modules/parsel { };

#   parse-type = callPackage ./python-modules/parse-type { };

#   parsimonious = callPackage ./python-modules/parsimonious { };

#   parsley = callPackage ./python-modules/parsley { };

#   parso = callPackage ./python-modules/parso { };

#   parsy = callPackage ./python-modules/parsy { };

#   partd = callPackage ./python-modules/partd { };

#   parts = callPackage ./python-modules/parts { };

#   particle = callPackage ./python-modules/particle { };

#   parver = callPackage ./python-modules/parver { };
#   arpeggio = callPackage ./python-modules/arpeggio { };

#   pasimple = callPackage ./python-modules/pasimple { };

#   passlib = callPackage ./python-modules/passlib { };

#   paste = callPackage ./python-modules/paste { };

#   pastedeploy = callPackage ./python-modules/pastedeploy { };

#   pastel = callPackage ./python-modules/pastel { };

#   pastescript = callPackage ./python-modules/pastescript { };

#   patator = callPackage ./python-modules/patator { };

#   patch = callPackage ./python-modules/patch { };

#   patch-ng = callPackage ./python-modules/patch-ng { };

#   path = callPackage ./python-modules/path { };

#   path-and-address = callPackage ./python-modules/path-and-address { };

#   pathable = callPackage ./python-modules/pathable { };

#   pathlib2 = callPackage ./python-modules/pathlib2 { };

#   pathlib = callPackage ./python-modules/pathlib { };

#   pathlib-abc = callPackage ./python-modules/pathlib-abc { };

#   pathos = callPackage ./python-modules/pathos { };

  pathspec = callPackage ./python-modules/pathspec { };

#   pathtools = callPackage ./python-modules/pathtools { };

#   pathvalidate = callPackage ./python-modules/pathvalidate { };

#   pathy = callPackage ./python-modules/pathy { };

#   patiencediff = callPackage ./python-modules/patiencediff { };

#   patool = callPackage ./python-modules/patool { };

#   patsy = callPackage ./python-modules/patsy { };

#   patrowl4py = callPackage ./python-modules/patrowl4py { };

#   paver = callPackage ./python-modules/paver { };

#   paypal-checkout-serversdk = callPackage ./python-modules/paypal-checkout-serversdk { };

#   paypalhttp = callPackage ./python-modules/paypalhttp { };

#   paypalrestsdk = callPackage ./python-modules/paypalrestsdk { };

#   pbkdf2 = callPackage ./python-modules/pbkdf2 { };

#   pbr = callPackage ./python-modules/pbr { };

#   pbs-installer = callPackage ./python-modules/pbs-installer { };

#   pc-ble-driver-py = toPythonModule (callPackage ./python-modules/pc-ble-driver-py { });

#   pcapy-ng = callPackage ./python-modules/pcapy-ng {
#     inherit (pkgs) libpcap; # Avoid confusion with python package of the same name
#   };

#   pcbnewtransition = callPackage ./python-modules/pcbnewtransition { };

#   pcodedmp = callPackage ./python-modules/pcodedmp { };

#   pcpp = callPackage ./python-modules/pcpp { };

#   pdb2pqr = callPackage ./python-modules/pdb2pqr { };

#   pdbfixer = callPackage ./python-modules/pdbfixer { };

#   pdf2docx = callPackage ./python-modules/pdf2docx { };

#   pdf2image = callPackage ./python-modules/pdf2image { };

#   pdfkit = callPackage ./python-modules/pdfkit { };

#   pdfminer-six = callPackage ./python-modules/pdfminer-six { };

#   pdfplumber = callPackage ./python-modules/pdfplumber { };

#   pdfrw = callPackage ./python-modules/pdfrw { };

#   pdfrw2 = callPackage ./python-modules/pdfrw2 { };

#   pdftotext = callPackage ./python-modules/pdftotext { };

#   pdfx = callPackage ./python-modules/pdfx { };

#   pdm-backend = callPackage ./python-modules/pdm-backend { };

#   pdm-pep517 = callPackage ./python-modules/pdm-pep517 { };

#   pdoc = callPackage ./python-modules/pdoc { };

#   pdoc-pyo3-sample-library = callPackage ./python-modules/pdoc-pyo3-sample-library { };

#   pdoc3 = callPackage ./python-modules/pdoc3 { };

#   peaqevcore = callPackage ./python-modules/peaqevcore { };

#   pegen = callPackage ./python-modules/pegen { };

#   pebble = callPackage ./python-modules/pebble { };

#   pecan = callPackage ./python-modules/pecan { };

#   peco = callPackage ./python-modules/peco { };

#   peewee = callPackage ./python-modules/peewee { };

#   peewee-migrate = callPackage ./python-modules/peewee-migrate { };

#   pefile = callPackage ./python-modules/pefile { };

#   peft = callPackage ./python-modules/peft { };

#   pelican = callPackage ./python-modules/pelican {
#     inherit (pkgs) glibcLocales git;
#   };

#   pem = callPackage ./python-modules/pem { };

#   pendulum = callPackage ./python-modules/pendulum { };

#   pep440 = callPackage ./python-modules/pep440 { };

#   pep517 = callPackage ./python-modules/pep517 { };

#   pep8 = callPackage ./python-modules/pep8 { };

#   pep8-naming = callPackage ./python-modules/pep8-naming { };

#   peppercorn = callPackage ./python-modules/peppercorn { };

#   percol = callPackage ./python-modules/percol { };

#   perfplot = callPackage ./python-modules/perfplot { };

#   periodictable = callPackage ./python-modules/periodictable { };

#   periodiq = callPackage ./python-modules/periodiq { };

#   permissionedforms = callPackage ./python-modules/permissionedforms { };

#   persim = callPackage ./python-modules/persim { };

#   persist-queue = callPackage ./python-modules/persist-queue { };

#   persistent = callPackage ./python-modules/persistent { };

#   persisting-theory = callPackage ./python-modules/persisting-theory { };

#   pescea = callPackage ./python-modules/pescea { };

#   pex = callPackage ./python-modules/pex { };

#   pexif = callPackage ./python-modules/pexif { };

#   pexpect = callPackage ./python-modules/pexpect { };

#   pfzy = callPackage ./python-modules/pfzy { };

#   ping3 = callPackage ./python-modules/ping3 { };

#   pins = callPackage ./python-modules/pins { };

#   pg8000 = callPackage ./python-modules/pg8000 { };

#   pgcli = callPackage ./python-modules/pgcli { };

#   pglast = callPackage ./python-modules/pglast { };

#   pgpdump = callPackage ./python-modules/pgpdump { };

#   pgpy = callPackage ./python-modules/pgpy { };

#   pgsanity = callPackage ./python-modules/pgsanity { };

#   pgspecial = callPackage ./python-modules/pgspecial { };

#   pgvector = callPackage ./python-modules/pgvector { };

#   phe = callPackage ./python-modules/phe { };

#   phik = callPackage ./python-modules/phik { };

#   phone-modem = callPackage ./python-modules/phone-modem { };

#   phonenumbers = callPackage ./python-modules/phonenumbers { };

#   pkgutil-resolve-name = callPackage ./python-modules/pkgutil-resolve-name { };

#   pkg-about = callPackage ./python-modules/pkg-about { };

#   micloud = callPackage ./python-modules/micloud { };

#   mqtt2influxdb = callPackage ./python-modules/mqtt2influxdb { };

#   msgraph-core = callPackage ./python-modules/msgraph-core { };

#   msgraph-sdk = callPackage ./python-modules/msgraph-sdk { };

#   multipart = callPackage ./python-modules/multipart { };

#   netmap = callPackage ./python-modules/netmap { };

#   onetimepad = callPackage ./python-modules/onetimepad { };

#   openai = callPackage ./python-modules/openai { };

#   openaiauth = callPackage ./python-modules/openaiauth { };

#   openapi-core = callPackage ./python-modules/openapi-core { };

#   openusd = callPackage ./python-modules/openusd {
#     alembic = pkgs.alembic;
#   };

#   outlines = callPackage ./python-modules/outlines { };

#   overly = callPackage ./python-modules/overly { };

#   overpy = callPackage ./python-modules/overpy { };

#   overrides = callPackage ./python-modules/overrides { };

#   pandas-stubs = callPackage ./python-modules/pandas-stubs { };

#   pdunehd = callPackage ./python-modules/pdunehd { };

#   pencompy = callPackage ./python-modules/pencompy { };

#   pgmpy = callPackage ./python-modules/pgmpy { };

#   phonopy = callPackage ./python-modules/phonopy { };

#   pixcat = callPackage ./python-modules/pixcat { };

#   pinecone-client = callPackage ./python-modules/pinecone-client { };

#   psrpcore = callPackage ./python-modules/psrpcore { };

#   pybars3 = callPackage ./python-modules/pybars3 { };

#   pymeta3 = callPackage ./python-modules/pymeta3 { };

#   pypemicro = callPackage ./python-modules/pypemicro { };

#   pymeshlab = toPythonModule (pkgs.libsForQt5.callPackage ../applications/graphics/pymeshlab { });

#   pyprecice = callPackage ./python-modules/pyprecice { };

#   pyprobables = callPackage ./python-modules/pyprobables { };

#   pyproject-api = callPackage ./python-modules/pyproject-api { };

  pyproject-hooks = callPackage ./python-modules/pyproject-hooks { };

#   pypsrp = callPackage ./python-modules/pypsrp { };

#   phpserialize = callPackage ./python-modules/phpserialize { };

#   phx-class-registry = callPackage ./python-modules/phx-class-registry { };

#   pi1wire = callPackage ./python-modules/pi1wire { };

#   piano-transcription-inference = callPackage ./python-modules/piano-transcription-inference { };

#   piccata = callPackage ./python-modules/piccata { };

#   pick = callPackage ./python-modules/pick { };

#   pickleshare = callPackage ./python-modules/pickleshare { };

#   picobox = callPackage ./python-modules/picobox { };

#   picos = callPackage ./python-modules/picos { };

#   picosvg = callPackage ./python-modules/picosvg { };

#   piccolo-theme = callPackage ./python-modules/piccolo-theme { };

#   pid = callPackage ./python-modules/pid { };

#   piep = callPackage ./python-modules/piep { };

#   piexif = callPackage ./python-modules/piexif { };

#   pijuice = callPackage ./python-modules/pijuice { };

#   pika = callPackage ./python-modules/pika { };

#   pika-pool = callPackage ./python-modules/pika-pool { };

#   pikepdf = callPackage ./python-modules/pikepdf { };

#   pilkit = callPackage ./python-modules/pilkit { };

#   pillowfight = callPackage ./python-modules/pillowfight { };

#   pillow = callPackage ./python-modules/pillow {
#     inherit (pkgs) freetype libjpeg zlib libtiff libwebp tcl lcms2 tk;
#     inherit (pkgs.xorg) libX11 libxcb;
#   };

#   pillow-heif = callPackage ./python-modules/pillow-heif { };

#   pillow-jpls = callPackage ./python-modules/pillow-jpls { };

#   pillow-simd = callPackage ./python-modules/pillow-simd {
#       inherit (pkgs) freetype libjpeg zlib libtiff libwebp tcl lcms2 tk;
#       inherit (pkgs.xorg) libX11;
#   };

#   pims = callPackage ./python-modules/pims { };

#   pinboard = callPackage ./python-modules/pinboard { };

#   pinocchio = toPythonModule (pkgs.pinocchio.override {
#     pythonSupport = true;
#     python3Packages = self;
#   });

#   pint = callPackage ./python-modules/pint { };

#   pint-pandas = callPackage ./python-modules/pint-pandas { };

#   pip = callPackage ./python-modules/pip { };

#   pipdate = callPackage ./python-modules/pipdate { };

#   pipdeptree = callPackage ./python-modules/pipdeptree { };

#   pipe = callPackage ./python-modules/pipe { };

#   pipenv-poetry-migrate = callPackage ./python-modules/pipenv-poetry-migrate { };

#   piper-phonemize = callPackage ./python-modules/piper-phonemize {
#     onnxruntime-native = pkgs.onnxruntime;
#     piper-phonemize-native = pkgs.piper-phonemize;
#   };

#   pip-api = callPackage ./python-modules/pip-api { };

#   pip-tools = callPackage ./python-modules/pip-tools { };

#   pip-requirements-parser = callPackage ./python-modules/pip-requirements-parser { };

#   pip-system-certs = callPackage ./python-modules/pip-system-certs { };

#   pipx = callPackage ./python-modules/pipx { };

#   pivy = callPackage ./python-modules/pivy {
#     inherit (pkgs.qt5) qtbase qmake;
#     inherit (pkgs.libsForQt5) soqt;
#   };

#   pixelmatch = callPackage ./python-modules/pixelmatch { };

#   pixel-font-builder = callPackage ./python-modules/pixel-font-builder { };

#   pixel-ring = callPackage ./python-modules/pixel-ring { };

#   pjsua2 = (toPythonModule (pkgs.pjsip.override {
#     pythonSupport = true;
#     python3 = self.python;
#   })).py;

#   pkce = callPackage ./python-modules/pkce { };

#   pkgconfig = callPackage ./python-modules/pkgconfig { };

#   pkginfo = callPackage ./python-modules/pkginfo { };

#   pkginfo2 = callPackage ./python-modules/pkginfo2 { };

#   pkuseg = callPackage ./python-modules/pkuseg { };

#   playwright = callPackage ./python-modules/playwright { };

#   playwright-stealth = callPackage ./python-modules/playwright-stealth { };

#   playwrightcapture = callPackage ./python-modules/playwrightcapture { };

#   pmsensor = callPackage ./python-modules/pmsensor { };

#   ppdeep = callPackage ./python-modules/ppdeep { };

#   prodict = callPackage ./python-modules/prodict { };

#   prometheus-pandas = callPackage ./python-modules/prometheus-pandas { };

#   prophet = callPackage ./python-modules/prophet { };

#   propka = callPackage ./python-modules/propka { };

#   proxy-tools = callPackage ./python-modules/proxy-tools { };

#   proxy-db = callPackage ./python-modules/proxy-db { };

#   py-nextbusnext = callPackage ./python-modules/py-nextbusnext { };

#   py65 = callPackage ./python-modules/py65 { };

#   pyaehw4a1 = callPackage ./python-modules/pyaehw4a1 { };

#   pyatag = callPackage ./python-modules/pyatag { };

#   pyatem = callPackage ./python-modules/pyatem { };

#   pyatome = callPackage ./python-modules/pyatome { };

#   pycketcasts = callPackage ./python-modules/pycketcasts { };

#   pycomposefile = callPackage ./python-modules/pycomposefile { };
#   pycontrol4 = callPackage ./python-modules/pycontrol4 { };

#   pycookiecheat = callPackage ./python-modules/pycookiecheat { };

#   pycoolmasternet-async = callPackage ./python-modules/pycoolmasternet-async { };

#   pycrdt = callPackage ./python-modules/pycrdt { };

#   pycrdt-websocket = callPackage ./python-modules/pycrdt-websocket { };

#   pyfibaro = callPackage ./python-modules/pyfibaro { };

#   pyfireservicerota = callPackage ./python-modules/pyfireservicerota { };

#   pyflexit = callPackage ./python-modules/pyflexit { };

#   pyflick = callPackage ./python-modules/pyflick { };

#   pyfluidsynth = callPackage ./python-modules/pyfluidsynth { };

#   pyformlang = callPackage ./python-modules/pyformlang { };

#   pyfreedompro = callPackage ./python-modules/pyfreedompro { };

#   pygments-style-github = callPackage ./python-modules/pygments-style-github { };

#   pygnmi = callPackage ./python-modules/pygnmi { };

#   pygount = callPackage ./python-modules/pygount { };

#   pygti = callPackage ./python-modules/pygti { };

#   pyheck = callPackage ./python-modules/pyheck { };

#   pyheos = callPackage ./python-modules/pyheos { };

#   pyhepmc = callPackage ./python-modules/pyhepmc { };

#   pyhiveapi = callPackage ./python-modules/pyhiveapi { };

#   pyhumps = callPackage ./python-modules/pyhumps { };

#   pyindego = callPackage ./python-modules/pyindego { };

#   pyinstaller-versionfile = callPackage ./python-modules/pyinstaller-versionfile { };

#   pyisemail = callPackage ./python-modules/pyisemail { };

#   pyisy = callPackage ./python-modules/pyisy { };

#   pyixapi = callPackage ./python-modules/pyixapi { };

#   pykrakenapi = callPackage ./python-modules/pykrakenapi { };

#   pylddwrap = callPackage ./python-modules/pylddwrap { };

#   pyngo = callPackage ./python-modules/pyngo { };

#   pyngrok = callPackage ./python-modules/pyngrok { };

#   pynitrokey = callPackage ./python-modules/pynitrokey { };

#   pynndescent = callPackage ./python-modules/pynndescent { };

#   pynobo = callPackage ./python-modules/pynobo { };

#   pynose = callPackage ./python-modules/pynose { };

#   pynotifier = callPackage ./python-modules/pynotifier { };

#   pynuki = callPackage ./python-modules/pynuki { };

#   pynut2 = callPackage ./python-modules/pynut2 { };

#   pynws = callPackage ./python-modules/pynws { };

#   pynx584 = callPackage ./python-modules/pynx584 { };

#   pyorthanc = callPackage ./python-modules/pyorthanc { };

#   pyoutbreaksnearme = callPackage ./python-modules/pyoutbreaksnearme { };

#   pyoverkiz = callPackage ./python-modules/pyoverkiz { };

#   pyownet = callPackage ./python-modules/pyownet { };

#   pypoint = callPackage ./python-modules/pypoint { };

#   pypoolstation = callPackage ./python-modules/pypoolstation { };

#   pyrdfa3 = callPackage ./python-modules/pyrdfa3 { };

#   pyre-extensions = callPackage ./python-modules/pyre-extensions { };

#   pyrender = callPackage ./python-modules/pyrender { };

#   pyrevolve = callPackage ./python-modules/pyrevolve { };

#   pyrfxtrx = callPackage ./python-modules/pyrfxtrx { };

#   pyrogram = callPackage ./python-modules/pyrogram { };

#   pysabnzbd = callPackage ./python-modules/pysabnzbd { };

#   pysbd = callPackage ./python-modules/pysbd { };

#   pysequoia = callPackage ./python-modules/pysequoia { };

#   pyschemes = callPackage ./python-modules/pyschemes { };

#   pyschlage = callPackage ./python-modules/pyschlage { };

#   pyshark = callPackage ./python-modules/pyshark { };

#   pysiaalarm = callPackage ./python-modules/pysiaalarm { };

#   pysilero-vad = callPackage ./python-modules/pysilero-vad { };

#   pysimplesoap = callPackage ./python-modules/pysimplesoap { };

#   pyskyqhub = callPackage ./python-modules/pyskyqhub { };

#   pyskyqremote = callPackage ./python-modules/pyskyqremote { };

#   pysolcast = callPackage ./python-modules/pysolcast { };

#   pysubs2 = callPackage ./python-modules/pysubs2 { };

#   pysuez = callPackage ./python-modules/pysuez { };

#   pysqlitecipher = callPackage ./python-modules/pysqlitecipher { };

#   pysyncthru = callPackage ./python-modules/pysyncthru { };

#   pytest-mockito = callPackage ./python-modules/pytest-mockito { };

#   pytest-pudb = callPackage ./python-modules/pytest-pudb { };

#   pytlv = callPackage ./python-modules/pytlv { };

#   python-codon-tables = callPackage ./python-modules/python-codon-tables { };

#   python-creole = callPackage ./python-modules/python-creole { };

#   python-crfsuite = callPackage ./python-modules/python-crfsuite { };

#   python-csxcad = callPackage ./python-modules/python-csxcad { };

#   python-djvulibre = callPackage ./python-modules/python-djvulibre { };

#   python-ecobee-api = callPackage ./python-modules/python-ecobee-api { };

#   python-flirt = callPackage ./python-modules/python-flirt { };

#   python-fullykiosk = callPackage ./python-modules/python-fullykiosk { };

#   python-fx = callPackage ./python-modules/python-fx { };

#   python-glanceclient = callPackage ./python-modules/python-glanceclient { };

#   python-google-nest = callPackage ./python-modules/python-google-nest { };

#   python-heatclient = callPackage ./python-modules/python-heatclient { };

#   python-hl7 = callPackage ./python-modules/python-hl7 { };

#   python-ipmi = callPackage ./python-modules/python-ipmi { };

#   python-ipware = callPackage ./python-modules/python-ipware { };

#   python-ironicclient = callPackage ./python-modules/python-ironicclient { };

#   python-izone = callPackage ./python-modules/python-izone { };

#   python-juicenet = callPackage ./python-modules/python-juicenet { };

#   python-kasa = callPackage ./python-modules/python-kasa { };

#   python-keycloak = callPackage ./python-modules/python-keycloak { };

#   python-keystoneclient = callPackage ./python-modules/python-keystoneclient { };

#   python-lsp-black = callPackage ./python-modules/python-lsp-black { };

#   python-mbedtls = callPackage ./python-modules/python-mbedtls { };

#   python-memcached = callPackage ./python-modules/python-memcached {
#     inherit (pkgs) memcached;
#   };

#   python-motionmount = callPackage ./python-modules/python-motionmount { };

#   python-otbr-api = callPackage ./python-modules/python-otbr-api { };

#   python-openems = callPackage ./python-modules/python-openems { };

#   python-opensky = callPackage ./python-modules/python-opensky { };

#   python-owasp-zap-v2-4 = callPackage ./python-modules/python-owasp-zap-v2-4 { };

#   python-pptx = callPackage ./python-modules/python-pptx { };

#   python-songpal = callPackage ./python-modules/python-songpal { };

#   python-swiftclient = callPackage ./python-modules/python-swiftclient { };

#   python-tado = callPackage ./python-modules/python-tado { };

#   python-idzip = callPackage ./python-modules/python-idzip { };

#   pythonfinder = callPackage ./python-modules/pythonfinder { };

#   pytomorrowio = callPackage ./python-modules/pytomorrowio { };

#   pyuca = callPackage ./python-modules/pyuca { };

#   pyunpack = callPackage ./python-modules/pyunpack { };

#   pyutil = callPackage ./python-modules/pyutil { };

#   pyzbar = callPackage ./python-modules/pyzbar { };

#   pyzipper = callPackage ./python-modules/pyzipper { };

#   pkutils = callPackage ./python-modules/pkutils { };

#   plac = callPackage ./python-modules/plac { };

#   plaid-python = callPackage ./python-modules/plaid-python { };

#   plantuml = callPackage ./python-modules/plantuml { };

#   plantuml-markdown = callPackage ./python-modules/plantuml-markdown {
#     inherit (pkgs) plantuml;
#   };

#   plaster = callPackage ./python-modules/plaster { };

#   plaster-pastedeploy = callPackage ./python-modules/plaster-pastedeploy { };

#   platformdirs = callPackage ./python-modules/platformdirs { };

#   playsound = callPackage ./python-modules/playsound { };

#   plexapi = callPackage ./python-modules/plexapi { };

#   plexauth = callPackage ./python-modules/plexauth { };

#   plexwebsocket = callPackage ./python-modules/plexwebsocket { };

#   plfit = toPythonModule (pkgs.plfit.override {
#     inherit (self) python;
#   });

#   plone-testing = callPackage ./python-modules/plone-testing { };

#   plotext = callPackage ./python-modules/plotext { };

#   plotly = callPackage ./python-modules/plotly { };

#   plotnine = callPackage ./python-modules/plotnine { };

  pluggy = callPackage ./python-modules/pluggy { };

#   plugincode = callPackage ./python-modules/plugincode { };

#   pluginbase = callPackage ./python-modules/pluginbase { };

#   plugnplay = callPackage ./python-modules/plugnplay { };

#   plugwise = callPackage ./python-modules/plugwise { };

#   plum-py = callPackage ./python-modules/plum-py { };

#   plumbum = callPackage ./python-modules/plumbum { };

#   pluthon = callPackage ./python-modules/pluthon { };

#   plux = callPackage ./python-modules/plux { };

#   ply = callPackage ./python-modules/ply { };

#   plyer = callPackage ./python-modules/plyer { };

#   plyfile = callPackage ./python-modules/plyfile { };

#   plyplus = callPackage ./python-modules/plyplus { };

#   plyvel = callPackage ./python-modules/plyvel { };

#   pmw = callPackage ./python-modules/pmw { };

#   pmdarima = callPackage ./python-modules/pmdarima { };

#   pmdsky-debug-py = callPackage ./python-modules/pmdsky-debug-py { };

#   pnglatex = callPackage ./python-modules/pnglatex { };

#   pocket = callPackage ./python-modules/pocket { };

#   podcastparser = callPackage ./python-modules/podcastparser { };

#   podcats = callPackage ./python-modules/podcats { };

#   podman = callPackage ./python-modules/podman { };

#   poetry-core = callPackage ./python-modules/poetry-core { };

#   poetry-dynamic-versioning = callPackage ./python-modules/poetry-dynamic-versioning { };

#   poetry-semver = callPackage ./python-modules/poetry-semver { };

#   polars = callPackage ./python-modules/polars { };

#   polarizationsolver = callPackage ./python-modules/polarizationsolver { };

#   polling = callPackage ./python-modules/polling { };

#   polib = callPackage ./python-modules/polib { };

#   policy-sentry = callPackage ./python-modules/policy-sentry { };

#   policyuniverse = callPackage ./python-modules/policyuniverse { };

#   polyline = callPackage ./python-modules/polyline { };

#   polygon3 = callPackage ./python-modules/polygon3 { };

#   polyswarm-api = callPackage ./python-modules/polyswarm-api { };

#   pomegranate = callPackage ./python-modules/pomegranate { };

#   pontos = callPackage ./python-modules/pontos { };

#   pony = callPackage ./python-modules/pony { };

#   ponywhoosh = callPackage ./python-modules/ponywhoosh { };

#   pooch = callPackage ./python-modules/pooch { };

#   pook = callPackage ./python-modules/pook { };

#   poolsense = callPackage ./python-modules/poolsense { };

#   poppler-qt5 = callPackage ./python-modules/poppler-qt5 {
#     inherit (pkgs.qt5) qtbase qmake;
#     inherit (pkgs.libsForQt5) poppler;
#   };

#   portalocker = callPackage ./python-modules/portalocker { };

#   portend = callPackage ./python-modules/portend { };

#   port-for = callPackage ./python-modules/port-for { };

#   portpicker = callPackage ./python-modules/portpicker { };

#   posix-ipc = callPackage ./python-modules/posix-ipc { };

#   posthog = callPackage ./python-modules/posthog { };

#   pot = callPackage ./python-modules/pot { };

#   potentials = callPackage ./python-modules/potentials { };

#   potr = callPackage ./python-modules/potr { };

#   power = callPackage ./python-modules/power { };

#   powerline = callPackage ./python-modules/powerline { };

#   powerline-mem-segment = callPackage ./python-modules/powerline-mem-segment { };

#   pox = callPackage ./python-modules/pox { };

#   poyo = callPackage ./python-modules/poyo { };

#   ppft = callPackage ./python-modules/ppft { };

#   pplpy = callPackage ./python-modules/pplpy { };

#   pprintpp = callPackage ./python-modules/pprintpp { };

#   pproxy = callPackage ./python-modules/pproxy { };

#   ppscore = callPackage ./python-modules/ppscore { };

#   pq = callPackage ./python-modules/pq { };

#   prance = callPackage ./python-modules/prance { };

#   prawcore = callPackage ./python-modules/prawcore { };

#   praw = callPackage ./python-modules/praw { };

#   prayer-times-calculator = callPackage ./python-modules/prayer-times-calculator { };

#   precis-i18n = callPackage ./python-modules/precis-i18n { };

#   prefixed = callPackage ./python-modules/prefixed { };

#   pre-commit-hooks = callPackage ./python-modules/pre-commit-hooks { };

#   preggy = callPackage ./python-modules/preggy { };

#   premailer = callPackage ./python-modules/premailer { };

#   preprocess-cancellation = callPackage ./python-modules/preprocess-cancellation { };

#   preshed = callPackage ./python-modules/preshed { };

  pretend = callPackage ./python-modules/pretend { };

#   prettytable = callPackage ./python-modules/prettytable { };

#   primecountpy = callPackage ./python-modules/primecountpy { };

#   primepy = callPackage ./python-modules/primepy { };

#   primer3 = callPackage ./python-modules/primer3 { };

#   priority = callPackage ./python-modules/priority { };

#   prisma = callPackage ./python-modules/prisma { };

#   prison = callPackage ./python-modules/prison { };

#   proboscis = callPackage ./python-modules/proboscis { };

#   process-tests = callPackage ./python-modules/process-tests { };

#   procmon-parser = callPackage ./python-modules/procmon-parser { };

#   proglog = callPackage ./python-modules/proglog { };

#   progressbar2 = callPackage ./python-modules/progressbar2 { };

#   progressbar33 = callPackage ./python-modules/progressbar33 { };

#   progressbar = callPackage ./python-modules/progressbar { };

#   progress = callPackage ./python-modules/progress { };

#   prometheus-api-client = callPackage ./python-modules/prometheus-api-client { };

#   prometheus-client = callPackage ./python-modules/prometheus-client { };

#   prometheus-flask-exporter = callPackage ./python-modules/prometheus-flask-exporter { };

#   prometrix = callPackage ./python-modules/prometrix { };

#   promise = callPackage ./python-modules/promise { };

#   prompt-toolkit = callPackage ./python-modules/prompt-toolkit { };

#   prompthub-py = callPackage ./python-modules/prompthub-py { };

#   property-manager = callPackage ./python-modules/property-manager { };

#   protego = callPackage ./python-modules/protego { };

#   proto-plus = callPackage ./python-modules/proto-plus { };

#   # Protobuf 4.x
#   protobuf = callPackage ./python-modules/protobuf {
#     # If a protobuf upgrade causes many Python packages to fail, please pin it here to the previous version.
#     protobuf = pkgs.protobuf;
#   };

#   # Protobuf 3.x
#   protobuf3 = callPackage ./python-modules/protobuf/3.nix {
#     protobuf = pkgs.protobuf3_20;
#   };

#   protobuf3-to-dict = callPackage ./python-modules/protobuf3-to-dict { };

#   proton-client = callPackage ./python-modules/proton-client { };

#   proton-core = callPackage ./python-modules/proton-core { };

#   proton-keyring-linux = callPackage ./python-modules/proton-keyring-linux { };

#   proton-keyring-linux-secretservice = callPackage ./python-modules/proton-keyring-linux-secretservice { };

#   proton-vpn-api-core = callPackage ./python-modules/proton-vpn-api-core { };

#   proton-vpn-connection = callPackage ./python-modules/proton-vpn-connection { };

#   proton-vpn-killswitch = callPackage ./python-modules/proton-vpn-killswitch { };

#   proton-vpn-killswitch-network-manager = callPackage ./python-modules/proton-vpn-killswitch-network-manager { };

#   proton-vpn-logger = callPackage ./python-modules/proton-vpn-logger { };

#   proton-vpn-network-manager = callPackage ./python-modules/proton-vpn-network-manager { };

#   proton-vpn-network-manager-openvpn = callPackage ./python-modules/proton-vpn-network-manager-openvpn { };

#   proton-vpn-session = callPackage ./python-modules/proton-vpn-session { };

#   protonup-ng = callPackage ./python-modules/protonup-ng { };

#   protonvpn-nm-lib = callPackage ./python-modules/protonvpn-nm-lib {
#     pkgs-systemd = pkgs.systemd;
#   };

#   prov = callPackage ./python-modules/prov { };

#   prox-tv = callPackage ./python-modules/prox-tv { };

#   proxmoxer = callPackage ./python-modules/proxmoxer { };

#   proxy-py = callPackage ./python-modules/proxy-py { };

#   psautohint = callPackage ./python-modules/psautohint { };

#   pscript = callPackage ./python-modules/pscript { };

#   psd-tools = callPackage ./python-modules/psd-tools { };

  psutil = callPackage ./python-modules/psutil {
    stdenv = if pkgs.stdenv.isDarwin then pkgs.overrideSDK pkgs.stdenv "11.0" else pkgs.stdenv;
    inherit (pkgs.darwin.apple_sdk.frameworks) CoreFoundation IOKit;
  };

#   psutil-home-assistant = callPackage ./python-modules/psutil-home-assistant { };

#   psychrolib = callPackage ./python-modules/psychrolib { };

#   psycopg = callPackage ./python-modules/psycopg { };

#   psycopg2 = callPackage ./python-modules/psycopg2 { };

#   psycopg2cffi = callPackage ./python-modules/psycopg2cffi { };

#   psygnal = callPackage ./python-modules/psygnal { };

#   ptable = callPackage ./python-modules/ptable { };

#   ptest = callPackage ./python-modules/ptest { };

#   ptpython = callPackage ./python-modules/ptpython { };

#   ptyprocess = callPackage ./python-modules/ptyprocess { };

#   publicsuffix2 = callPackage ./python-modules/publicsuffix2 { };

#   publicsuffix = callPackage ./python-modules/publicsuffix { };

#   publicsuffixlist = callPackage ./python-modules/publicsuffixlist { };

#   pubnub = callPackage ./python-modules/pubnub { };

#   pubnubsub-handler = callPackage ./python-modules/pubnubsub-handler { };

#   pudb = callPackage ./python-modules/pudb { };

#   pulp = callPackage ./python-modules/pulp { };

#   pulsar-client = callPackage ./python-modules/pulsar-client { };

#   pulsectl-asyncio = callPackage ./python-modules/pulsectl-asyncio { };

#   pulsar = callPackage ./python-modules/pulsar { };

#   pulsectl = callPackage ./python-modules/pulsectl { };

#   pure-cdb = callPackage ./python-modules/pure-cdb { };

#   pure-eval = callPackage ./python-modules/pure-eval { };

#   pure-pcapy3 = callPackage ./python-modules/pure-pcapy3 { };

#   purepng = callPackage ./python-modules/purepng { };

#   pure-protobuf = callPackage ./python-modules/pure-protobuf { };

#   pure-python-adb = callPackage ./python-modules/pure-python-adb { };

#   pure-python-adb-homeassistant = callPackage ./python-modules/pure-python-adb-homeassistant { };

#   puremagic = callPackage ./python-modules/puremagic { };

#   purl = callPackage ./python-modules/purl { };

#   push-receiver = callPackage ./python-modules/push-receiver { };

#   pushbullet-py = callPackage ./python-modules/pushbullet-py { };

#   pushover-complete = callPackage ./python-modules/pushover-complete { };

#   pvextractor = callPackage ./python-modules/pvextractor { };

#   pvlib = callPackage ./python-modules/pvlib { };

#   pvo = callPackage ./python-modules/pvo { };

#   pweave = callPackage ./python-modules/pweave { };

#   pwlf = callPackage ./python-modules/pwlf { };

#   pwndbg = callPackage ./python-modules/pwndbg { };

#   pwntools = callPackage ./python-modules/pwntools {
#     debugger = pkgs.gdb;
#   };

#   pxml = callPackage ./python-modules/pxml { };

#   py-air-control = callPackage ./python-modules/py-air-control { };

#   py-air-control-exporter = callPackage ./python-modules/py-air-control-exporter { };

#   py-bip39-bindings = callPackage ./python-modules/py-bip39-bindings { };

#   py-dmidecode = callPackage ./python-modules/py-dmidecode { };

#   py-dormakaba-dkey = callPackage ./python-modules/py-dormakaba-dkey { };

#   py-nightscout = callPackage ./python-modules/py-nightscout { };

#   py-partiql-parser = callPackage ./python-modules/py-partiql-parser { };

#   py-pdf-parser = callPackage ./python-modules/py-pdf-parser { };

#   py-serializable = callPackage ./python-modules/py-serializable { };

#   py-synologydsm-api = callPackage ./python-modules/py-synologydsm-api { };

#   py-sneakers = callPackage ./python-modules/py-sneakers { };

#   py-sr25519-bindings = callPackage ./python-modules/py-sr25519-bindings { };

#   py-tes = callPackage ./python-modules/py-tes { };

#   py-ubjson = callPackage ./python-modules/py-ubjson { };

#   py-zabbix = callPackage ./python-modules/py-zabbix { };

#   py17track = callPackage ./python-modules/py17track { };

#   py2bit = callPackage ./python-modules/py2bit { };

#   py3buddy = toPythonModule (callPackage ./python-modules/py3buddy { });

#   py3exiv2 = callPackage ./python-modules/py3exiv2 { };

#   py3langid = callPackage ./python-modules/py3langid { };

#   py3nvml = callPackage ./python-modules/py3nvml { };

#   py3rijndael = callPackage ./python-modules/py3rijndael { };

#   py3status = callPackage ./python-modules/py3status { };

#   py3to2 = callPackage ./python-modules/3to2 { };

#   py4j = callPackage ./python-modules/py4j { };

#   pyacaia-async = callPackage ./python-modules/pyacaia-async { };

#   pyacoustid = callPackage ./python-modules/pyacoustid { };

#   pyads = callPackage ./python-modules/pyads { };

#   pyaes = callPackage ./python-modules/pyaes { };

#   pyaftership = callPackage ./python-modules/pyaftership { };

#   pyahocorasick = callPackage ./python-modules/pyahocorasick { };

#   pyairnow = callPackage ./python-modules/pyairnow { };

#   pyairvisual = callPackage ./python-modules/pyairvisual { };

#   pyalgotrade = callPackage ./python-modules/pyalgotrade { };

#   pyamg = callPackage ./python-modules/pyamg { };

#   pyaml = callPackage ./python-modules/pyaml { };

#   pyannotate = callPackage ./python-modules/pyannotate { };

#   pyannote-audio = callPackage ./python-modules/pyannote-audio { };

#   pyannote-pipeline = callPackage ./python-modules/pyannote-pipeline { };

#   pyannote-metrics = callPackage ./python-modules/pyannote-metrics { };

#   pyannote-database = callPackage ./python-modules/pyannote-database { };

#   pyannote-core = callPackage ./python-modules/pyannote-core { };

#   pyarlo = callPackage ./python-modules/pyarlo { };

#   pyarr = callPackage ./python-modules/pyarr { };

#   pyarrow = callPackage ./python-modules/pyarrow {
#     inherit (pkgs) arrow-cpp cmake;
#   };

#   pyarrow-hotfix = callPackage ./python-modules/pyarrow-hotfix { };

#   pyasn = callPackage ./python-modules/pyasn { };

#   pyasn1 = callPackage ./python-modules/pyasn1 { };

#   pyasn1-modules = callPackage ./python-modules/pyasn1-modules { };

#   pyasuswrt = callPackage ./python-modules/pyasuswrt { };

#   pyasyncore = callPackage ./python-modules/pyasyncore { };

#   pyathena = callPackage ./python-modules/pyathena { };

#   pyatmo = callPackage ./python-modules/pyatmo { };

#   pyatspi = callPackage ./python-modules/pyatspi { };

#   pyatv = callPackage ./python-modules/pyatv { };

#   pyaudio = callPackage ./python-modules/pyaudio { };

#   pyaussiebb = callPackage ./python-modules/pyaussiebb { };

#   pyautogui = callPackage ./python-modules/pyautogui { };

#   pyavm = callPackage ./python-modules/pyavm { };

#   pyaxmlparser = callPackage ./python-modules/pyaxmlparser { };

#   pybalboa = callPackage ./python-modules/pybalboa { };

#   pybase64 = callPackage ./python-modules/pybase64 { };

#   pybids = callPackage ./python-modules/pybids { };

#   pybigwig = callPackage ./python-modules/pybigwig { };

#   pybind11 = callPackage ./python-modules/pybind11 { };

#   pybindgen = callPackage ./python-modules/pybindgen { };

#   pyblackbird = callPackage ./python-modules/pyblackbird { };

#   pybloom-live = callPackage ./python-modules/pybloom-live { };

#   pybluez = callPackage ./python-modules/pybluez {
#     inherit (pkgs) bluez;
#   };

#   pybotvac = callPackage ./python-modules/pybotvac { };

#   pybox2d = callPackage ./python-modules/pybox2d { };

#   pybravia = callPackage ./python-modules/pybravia { };

#   pybrowsers = callPackage ./python-modules/pybrowsers { };

#   pybrowserid = callPackage ./python-modules/pybrowserid { };

#   pybtex = callPackage ./python-modules/pybtex { };

#   pybtex-docutils = callPackage ./python-modules/pybtex-docutils { };

#   pybullet = callPackage ./python-modules/pybullet { };

#   pycairo = callPackage ./python-modules/pycairo {
#     inherit (pkgs.buildPackages) meson;
#   };

#   py = callPackage ./python-modules/py { };

#   pycangjie = callPackage ./python-modules/pycangjie { };

#   pycapnp = callPackage ./python-modules/pycapnp { };

#   pycaption = callPackage ./python-modules/pycaption { };

#   pycares = callPackage ./python-modules/pycares { };

#   pycarwings2 = callPackage ./python-modules/pycarwings2 { };

#   pycatch22 = callPackage ./python-modules/pycatch22 { };

#   pycategories = callPackage ./python-modules/pycategories { };

#   pycddl = callPackage ./python-modules/pycddl { };

#   pycdio = callPackage ./python-modules/pycdio { };

#   pycec = callPackage ./python-modules/pycec { };

#   pycep-parser = callPackage ./python-modules/pycep-parser { };

#   pycfdns = callPackage ./python-modules/pycfdns { };

#   pycflow2dot = callPackage ./python-modules/pycflow2dot {
#     inherit (pkgs) graphviz;
#   };

#   pycfmodel = callPackage ./python-modules/pycfmodel { };

#   pychannels = callPackage ./python-modules/pychannels { };

#   pychart = callPackage ./python-modules/pychart { };

#   pychm = callPackage ./python-modules/pychm { };

#   pychromecast = callPackage ./python-modules/pychromecast { };

#   pyclimacell = callPackage ./python-modules/pyclimacell { };

#   pyclip = callPackage ./python-modules/pyclip { };

#   pyclipper = callPackage ./python-modules/pyclipper { };

#   pycm = callPackage ./python-modules/pycm { };

#   pycmarkgfm = callPackage ./python-modules/pycmarkgfm { };

#   pycocotools = callPackage ./python-modules/pycocotools { };

#   pycodestyle = callPackage ./python-modules/pycodestyle { };

#   pycognito = callPackage ./python-modules/pycognito { };

#   pycoin = callPackage ./python-modules/pycoin { };

#   pycollada = callPackage ./python-modules/pycollada { };

#   pycomfoconnect = callPackage ./python-modules/pycomfoconnect { };

#   pycontracts = callPackage ./python-modules/pycontracts { };

#   pycosat = callPackage ./python-modules/pycosat { };

#   pycotap = callPackage ./python-modules/pycotap { };

#   pycountry = callPackage ./python-modules/pycountry { };

  pycparser = callPackage ./python-modules/pycparser { };

#   py-canary = callPackage ./python-modules/py-canary { };

#   py-cid = callPackage ./python-modules/py-cid { };

#   py-cpuinfo = callPackage ./python-modules/py-cpuinfo { };

#   pycardano = callPackage ./python-modules/pycardano { };

#   pycrc = callPackage ./python-modules/pycrc { };

#   pycritty = callPackage ./python-modules/pycritty { };

#   pycron = callPackage ./python-modules/pycron { };

#   pycrypto = callPackage ./python-modules/pycrypto { };

#   pycryptodome = callPackage ./python-modules/pycryptodome { };

#   pycryptodomex = callPackage ./python-modules/pycryptodomex { };

#   pycsdr = callPackage ./python-modules/pycsdr { };

#   pyct = callPackage ./python-modules/pyct { };

#   pyctr = callPackage ./python-modules/pyctr { };

#   pycuda = callPackage ./python-modules/pycuda {
#     inherit (pkgs.stdenv) mkDerivation;
#   };

#   pycups = callPackage ./python-modules/pycups { };

#   pycurl = callPackage ./python-modules/pycurl { };

#   pycxx = callPackage ./python-modules/pycxx { };

#   pycyphal = callPackage ./python-modules/pycyphal { };

#   pydaikin = callPackage ./python-modules/pydaikin { };

#   pydal = callPackage ./python-modules/pydal { };

#   pydanfossair = callPackage ./python-modules/pydanfossair { };

#   pydantic = callPackage ./python-modules/pydantic { };

#   pydantic_1 = callPackage ./python-modules/pydantic/1.nix { };

#   pydantic-compat = callPackage ./python-modules/pydantic-compat { };

#   pydantic-core = callPackage ./python-modules/pydantic-core { };

#   pydantic-extra-types = callPackage ./python-modules/pydantic-extra-types { };

#   pydantic-scim = callPackage ./python-modules/pydantic-scim { };

#   pydantic-settings = callPackage ./python-modules/pydantic-settings { };

#   pydantic-yaml-0 = callPackage ./python-modules/pydantic-yaml-0 { };

#   pydash = callPackage ./python-modules/pydash { };

#   pydata-google-auth = callPackage ./python-modules/pydata-google-auth { };

#   pydata-sphinx-theme = callPackage ./python-modules/pydata-sphinx-theme { };

#   pydateinfer = callPackage ./python-modules/pydateinfer { };

#   pydbus = callPackage ./python-modules/pydbus { };

#   pydeck = callPackage ./python-modules/pydeck { };

#   pydeconz = callPackage ./python-modules/pydeconz { };

#   pydelijn = callPackage ./python-modules/pydelijn { };

#   pydenticon = callPackage ./python-modules/pydenticon { };

#   pydeps = callPackage ./python-modules/pydeps {
#     inherit (pkgs) graphviz;
#   };

#   pydes = callPackage ./python-modules/pydes { };

#   py-desmume = callPackage ./python-modules/py-desmume {
#     inherit (pkgs) libpcap; # Avoid confusion with python package of the same name
#   };

#   pydevccu = callPackage ./python-modules/pydevccu { };

#   pydevd = callPackage ./python-modules/pydevd { };

#   pydevtool = callPackage ./python-modules/pydevtool { };

#   pydexcom = callPackage ./python-modules/pydexcom { };

#   pydicom = callPackage ./python-modules/pydicom { };

#   pydicom-seg = callPackage ./python-modules/pydicom-seg { };

#   pydigiham = callPackage ./python-modules/pydigiham { };

#   pydiscourse = callPackage ./python-modules/pydiscourse { };

#   pydiscovergy = callPackage ./python-modules/pydiscovergy { };

#   pydispatcher = callPackage ./python-modules/pydispatcher { };

#   pydmd = callPackage ./python-modules/pydmd { };

#   pydns = callPackage ./python-modules/py3dns { };

#   pydocstyle = callPackage ./python-modules/pydocstyle { };

#   pydocumentdb = callPackage ./python-modules/pydocumentdb { };

#   pydoods = callPackage ./python-modules/pydoods { };

#   pydoe = callPackage ./python-modules/pydoe { };

#   pydot = callPackage ./python-modules/pydot {
#     inherit (pkgs) graphviz;
#   };

#   pydrawise = callPackage ./python-modules/pydrawise { };

#   pydrive2 = callPackage ./python-modules/pydrive2 { };

#   pydroid-ipcam = callPackage ./python-modules/pydroid-ipcam  { };

#   pydruid = callPackage ./python-modules/pydruid { };

#   pydsdl = callPackage ./python-modules/pydsdl { };

#   pydub = callPackage ./python-modules/pydub { };

#   pyduke-energy = callPackage ./python-modules/pyduke-energy { };

#   pyduotecno = callPackage ./python-modules/pyduotecno { };

#   pydy = callPackage ./python-modules/pydy { };

#   pydyf = callPackage ./python-modules/pydyf { };

#   pyebus = callPackage ./python-modules/pyebus { };

#   pyechonest = callPackage ./python-modules/pyechonest { };

#   pyeclib = callPackage ./python-modules/pyeclib { };

#   pyecoforest = callPackage ./python-modules/pyecoforest { };

#   pyeconet = callPackage ./python-modules/pyeconet { };

#   pyecowitt = callPackage ./python-modules/pyecowitt { };

#   pyedimax = callPackage ./python-modules/pyedimax { };

#   pyee = callPackage ./python-modules/pyee { };

#   pyefergy = callPackage ./python-modules/pyefergy { };

#   pyeight = callPackage ./python-modules/pyeight { };

  pyelftools = callPackage ./python-modules/pyelftools { };

#   pyemby = callPackage ./python-modules/pyemby { };

#   pyemd = callPackage ./python-modules/pyemd { };

#   pyemvue = callPackage ./python-modules/pyemvue { };

#   pyenchant = callPackage ./python-modules/pyenchant {
#     inherit (pkgs) enchant2;
#   };

#   pyenphase = callPackage ./python-modules/pyenphase { };

#   pyenvisalink = callPackage ./python-modules/pyenvisalink { };

#   pyephember = callPackage ./python-modules/pyephember { };

#   pyepsg = callPackage ./python-modules/pyepsg { };

#   pyerfa = callPackage ./python-modules/pyerfa { };

#   pyevmasm = callPackage ./python-modules/pyevmasm { };

#   pyevilgenius = callPackage ./python-modules/pyevilgenius { };

#   pyexcel = callPackage ./python-modules/pyexcel { };

#   pyexcel-io = callPackage ./python-modules/pyexcel-io { };

#   pyexcel-ods = callPackage ./python-modules/pyexcel-ods { };

#   pyexcel-xls = callPackage ./python-modules/pyexcel-xls { };

#   pyexiftool = callPackage ./python-modules/pyexiftool { };

#   pyexploitdb = callPackage ./python-modules/pyexploitdb { };

#   pyezviz = callPackage ./python-modules/pyezviz { };

#   pyface = callPackage ./python-modules/pyface { };

#   pyfaidx = callPackage ./python-modules/pyfaidx { };

#   pyfakefs = callPackage ./python-modules/pyfakefs { };

#   pyfakewebcam = callPackage ./python-modules/pyfakewebcam { };

#   pyfantom = callPackage ./python-modules/pyfantom { };

#   pyfcm = callPackage ./python-modules/pyfcm { };

#   pyfftw = callPackage ./python-modules/pyfftw { };

#   pyfido = callPackage ./python-modules/pyfido { };

#   pyfiglet = callPackage ./python-modules/pyfiglet { };

#   pyfnip = callPackage ./python-modules/pyfnip { };

#   pyflakes = callPackage ./python-modules/pyflakes { };

#   pyflic = callPackage ./python-modules/pyflic { };

#   pyflume = callPackage ./python-modules/pyflume { };

#   pyfma = callPackage ./python-modules/pyfma { };

#   pyfribidi = callPackage ./python-modules/pyfribidi { };

#   pyfritzhome = callPackage ./python-modules/pyfritzhome { };

#   pyfronius = callPackage ./python-modules/pyfronius { };

#   pyftdi = callPackage ./python-modules/pyftdi { };

#   pyftgl = callPackage ./python-modules/pyftgl { };

#   pyftpdlib = callPackage ./python-modules/pyftpdlib { };

#   pyfttt = callPackage ./python-modules/pyfttt { };

#   pyfume = callPackage ./python-modules/pyfume { };

#   pyfuse3 = callPackage ./python-modules/pyfuse3 { };

#   pyfxa = callPackage ./python-modules/pyfxa { };

#   pyfzf = callPackage ./python-modules/pyfzf {
#     inherit (pkgs) fzf;
#   };

#   pygal = callPackage ./python-modules/pygal { };

#   pygame = callPackage ./python-modules/pygame {
#     inherit (pkgs.darwin.apple_sdk.frameworks) AppKit;
#     SDL2_image = pkgs.SDL2_image_2_0;
#   };

#   pygame-ce = callPackage ./python-modules/pygame-ce {
#     inherit (pkgs.darwin.apple_sdk.frameworks) AppKit;
#     SDL2_image = pkgs.SDL2_image_2_0;
#     SDL2_mixer = pkgs.SDL2_mixer_2_0;
#   };

#   pygame-sdl2 = callPackage ./python-modules/pygame-sdl2 { };

#   pygame-gui = callPackage ./python-modules/pygame-gui { };

#   pygatt = callPackage ./python-modules/pygatt { };

#   pygccxml = callPackage ./python-modules/pygccxml { };

#   pygdbmi = callPackage ./python-modules/pygdbmi { };

#   pygeoip = callPackage ./python-modules/pygeoip { };

#   pygeos = callPackage ./python-modules/pygeos { };

#   pygetwindow = callPackage ./python-modules/pygetwindow { };

  pygit2 = callPackage ./python-modules/pygit2 { };

#   pygitguardian = callPackage ./python-modules/pygitguardian { };

#   pygithub = callPackage ./python-modules/pygithub { };

#   pyglet = callPackage ./python-modules/pyglet { };

#   pyglm = callPackage ./python-modules/pyglm { };

#   pygls = callPackage ./python-modules/pygls { };

#   pygltflib = callPackage ./python-modules/pygltflib { };

#   pygmars = callPackage ./python-modules/pygmars { };

#   pygments-better-html = callPackage ./python-modules/pygments-better-html { };

  pygments = callPackage ./python-modules/pygments { };

#   pygments-markdown-lexer = callPackage ./python-modules/pygments-markdown-lexer { };

#   pygmo = callPackage ./python-modules/pygmo { };

#   pygmt = callPackage ./python-modules/pygmt { };

#   pygobject3 = callPackage ./python-modules/pygobject/3.nix {
#     # inherit (pkgs) meson won't work because it won't be spliced
#     inherit (pkgs.buildPackages) meson;
#   };

#   pygobject-stubs = callPackage ./python-modules/pygobject-stubs { };

#   pygogo = callPackage ./python-modules/pygogo { };

#   pygpgme = callPackage ./python-modules/pygpgme { };

#   pygraphviz = callPackage ./python-modules/pygraphviz {
#     inherit (pkgs) graphviz;
#   };

#   pygreat = callPackage ./python-modules/pygreat { };

#   pygrok = callPackage ./python-modules/pygrok { };

#   pygsl = callPackage ./python-modules/pygsl {
#     inherit (pkgs) gsl swig;
#   };

#   pygtfs = callPackage ./python-modules/pygtfs { };

#   pygtail = callPackage ./python-modules/pygtail { };

#   pygtkspellcheck = callPackage ./python-modules/pygtkspellcheck { };

#   pygtrie = callPackage ./python-modules/pygtrie { };

#   pyhamcrest = callPackage ./python-modules/pyhamcrest { };

#   pyhanko = callPackage ./python-modules/pyhanko { };

#   pyhanko-certvalidator = callPackage ./python-modules/pyhanko-certvalidator { };

#   pyhaversion = callPackage ./python-modules/pyhaversion { };

#   pyhcl = callPackage ./python-modules/pyhcl { };

#   pyhocon = callPackage ./python-modules/pyhocon { };

#   pyhomematic = callPackage ./python-modules/pyhomematic { };

#   pyhomepilot = callPackage ./python-modules/pyhomepilot { };

#   pyhomeworks = callPackage ./python-modules/pyhomeworks { };

#   pyheif = callPackage ./python-modules/pyheif { };

#   pyi2cflash = callPackage ./python-modules/pyi2cflash { };

#   pyialarm = callPackage ./python-modules/pyialarm { };

#   pyicloud = callPackage ./python-modules/pyicloud { };

#   pyicu = callPackage ./python-modules/pyicu { };

#   pyimpfuzzy = callPackage ./python-modules/pyimpfuzzy {
#     inherit (pkgs) ssdeep;
#   };

#   pyinotify = callPackage ./python-modules/pyinotify { };

#   pyinputevent = callPackage ./python-modules/pyinputevent { };

#   pyinsteon = callPackage ./python-modules/pyinsteon { };

#   pyinstrument = callPackage ./python-modules/pyinstrument { };

#   pyintesishome = callPackage ./python-modules/pyintesishome { };

#   pyipma = callPackage ./python-modules/pyipma { };

#   pyipp = callPackage ./python-modules/pyipp { };

#   pyipv8 = callPackage ./python-modules/pyipv8 { };

#   pyiqvia = callPackage ./python-modules/pyiqvia { };

#   pyisbn = callPackage ./python-modules/pyisbn { };

#   pyjet = callPackage ./python-modules/pyjet { };

#   pyjks = callPackage ./python-modules/pyjks { };

#   pyjnius = callPackage ./python-modules/pyjnius { };

#   pyjsparser = callPackage ./python-modules/pyjsparser { };

#   pyjwkest = callPackage ./python-modules/pyjwkest { };

#   pyjwt = callPackage ./python-modules/pyjwt { };

#   pykakasi = callPackage ./python-modules/pykakasi { };

#   pykaleidescape = callPackage ./python-modules/pykaleidescape { };

#   pykalman = callPackage ./python-modules/pykalman { };

#   pykdl = callPackage ./python-modules/pykdl { };

#   pykdtree = callPackage ./python-modules/pykdtree {
#     inherit (pkgs.llvmPackages) openmp;
#   };

#   pykeepass = callPackage ./python-modules/pykeepass { };

#   pykerberos = callPackage ./python-modules/pykerberos { };

#   pykeyatome = callPackage ./python-modules/pykeyatome { };

#   pykira = callPackage ./python-modules/pykira { };

#   pykka = callPackage ./python-modules/pykka { };

#   pykmtronic = callPackage ./python-modules/pykmtronic { };

#   pykodi = callPackage ./python-modules/pykodi { };

#   pykoplenti = callPackage ./python-modules/pykoplenti { };

#   pykostalpiko = callPackage ./python-modules/pykostalpiko { };

#   pykulersky = callPackage ./python-modules/pykulersky { };

#   pykwalify = callPackage ./python-modules/pykwalify { };

#   pykwb = callPackage ./python-modules/pykwb { };

#   pylacrosse = callPackage ./python-modules/pylacrosse { };

#   pylacus = callPackage ./python-modules/pylacus { };

#   pylama = callPackage ./python-modules/pylama { };

#   pylast = callPackage ./python-modules/pylast { };

#   pylatex = callPackage ./python-modules/pylatex { };

#   pylatexenc = callPackage ./python-modules/pylatexenc { };

#   pylaunches = callPackage ./python-modules/pylaunches { };

#   pyld = callPackage ./python-modules/pyld { };

#   pyleri = callPackage ./python-modules/pyleri { };

#   pylev = callPackage ./python-modules/pylev { };

#   pylgnetcast = callPackage ./python-modules/pylgnetcast { };

#   pylibacl = callPackage ./python-modules/pylibacl { };

#   pylibconfig2 = callPackage ./python-modules/pylibconfig2 { };

#   pylibdmtx = callPackage ./python-modules/pylibdmtx { };

#   pylibftdi = callPackage ./python-modules/pylibftdi {
#     inherit (pkgs) libusb1;
#   };

#   pylibjpeg = callPackage ./python-modules/pylibjpeg { };

#   pylibjpeg-libjpeg = callPackage ./python-modules/pylibjpeg-libjpeg { };

#   pyliblo = callPackage ./python-modules/pyliblo { };

#   pylibmc = callPackage ./python-modules/pylibmc { };

#   pylink-square = callPackage ./python-modules/pylink-square { };

#   pylint = callPackage ./python-modules/pylint { };

#   pylint-celery = callPackage ./python-modules/pylint-celery { };

#   pylint-django = callPackage ./python-modules/pylint-django { };

#   pylint-flask = callPackage ./python-modules/pylint-flask { };

#   pylint-plugin-utils = callPackage ./python-modules/pylint-plugin-utils { };

#   pylint-venv = callPackage ./python-modules/pylint-venv { };

#   pylion = callPackage ./python-modules/pylion { };

#   pylitterbot = callPackage ./python-modules/pylitterbot { };

#   py-libzfs = callPackage ./python-modules/py-libzfs { };

#   py-lru-cache = callPackage ./python-modules/py-lru-cache { };

#   pylnk3 = callPackage ./python-modules/pylnk3 { };

#   pylru = callPackage ./python-modules/pylru { };

#   pylsqpack = callPackage ./python-modules/pylsqpack { };

#   pyls-flake8 = callPackage ./python-modules/pyls-flake8 { };

#   pyls-isort = callPackage ./python-modules/pyls-isort { };

#   pyls-memestra = callPackage ./python-modules/pyls-memestra { };

#   pyls-spyder = callPackage ./python-modules/pyls-spyder { };

#   pylsp-mypy = callPackage ./python-modules/pylsp-mypy { };

#   pylsp-rope = callPackage ./python-modules/pylsp-rope { };

#   pylpsd = callPackage ./python-modules/pylpsd { };

#   pylti = callPackage ./python-modules/pylti { };

#   pylutron = callPackage ./python-modules/pylutron { };

#   pylutron-caseta = callPackage ./python-modules/pylutron-caseta { };

#   pylyrics = callPackage ./python-modules/pylyrics { };

#   pylxd = callPackage ./python-modules/pylxd { };

#   pylzma = callPackage ./python-modules/pylzma { };

#   pymacaroons = callPackage ./python-modules/pymacaroons { };

#   pymailgunner = callPackage ./python-modules/pymailgunner { };

#   pymanopt = callPackage ./python-modules/pymanopt { };

#   pymarshal = callPackage ./python-modules/pymarshal { };

#   pymata-express = callPackage ./python-modules/pymata-express { };

#   pymatgen = callPackage ./python-modules/pymatgen { };

#   pymatreader = callPackage ./python-modules/pymatreader { };

#   pymatting = callPackage ./python-modules/pymatting { };

#   pymaven-patch = callPackage ./python-modules/pymaven-patch { };

#   pymavlink = callPackage ./python-modules/pymavlink { };

#   pymbolic = callPackage ./python-modules/pymbolic { };

#   pymc = callPackage ./python-modules/pymc { };

#   pymdstat = callPackage ./python-modules/pymdstat { };

#   pymdown-extensions = callPackage ./python-modules/pymdown-extensions { };

#   pymediainfo = callPackage ./python-modules/pymediainfo { };

#   pymediaroom = callPackage ./python-modules/pymediaroom { };

#   pymedio = callPackage ./python-modules/pymedio { };

#   pymeeus = callPackage ./python-modules/pymeeus { };

#   pymelcloud = callPackage ./python-modules/pymelcloud { };

#   pymemcache = callPackage ./python-modules/pymemcache { };

#   pymemoize = callPackage ./python-modules/pymemoize { };

#   pyment = callPackage ./python-modules/pyment { };

#   pymetar = callPackage ./python-modules/pymetar { };

#   pymeteireann = callPackage ./python-modules/pymeteireann { };

#   pymeteoclimatic = callPackage ./python-modules/pymeteoclimatic { };

#   pymetno = callPackage ./python-modules/pymetno { };

#   pymicrobot = callPackage ./python-modules/pymicrobot { };

#   pymiele = callPackage ./python-modules/pymiele { };

#   pymilter = callPackage ./python-modules/pymilter { };

#   pymilvus = callPackage ./python-modules/pymilvus { };

#   pymitv = callPackage ./python-modules/pymitv { };

#   pymfy = callPackage ./python-modules/pymfy { };

#   pymodbus = callPackage ./python-modules/pymodbus { };

#   pymongo = callPackage ./python-modules/pymongo { };

#   pymongo-inmemory = callPackage ./python-modules/pymongo-inmemory { };

#   pymoo = callPackage ./python-modules/pymoo { };

#   pymorphy2 = callPackage ./python-modules/pymorphy2 { };

#   pymorphy2-dicts-ru = callPackage ./python-modules/pymorphy2/dicts-ru.nix { };

#   pymorphy3 = callPackage ./python-modules/pymorphy3 { };

#   pymorphy3-dicts-ru = callPackage ./python-modules/pymorphy3/dicts-ru.nix { };

#   pymorphy3-dicts-uk = callPackage ./python-modules/pymorphy3/dicts-uk.nix { };

#   pympler = callPackage ./python-modules/pympler { };

#   pymsgbox = callPackage ./python-modules/pymsgbox { };

#   pymsteams = callPackage ./python-modules/pymsteams { };

#   py-multiaddr = callPackage ./python-modules/py-multiaddr { };

#   py-multibase = callPackage ./python-modules/py-multibase { };

#   py-multicodec = callPackage ./python-modules/py-multicodec { };

#   py-multihash = callPackage ./python-modules/py-multihash { };

#   pymumble = callPackage ./python-modules/pymumble { };

#   pymunk = callPackage ./python-modules/pymunk {
#     inherit (pkgs.darwin.apple_sdk.frameworks) ApplicationServices;
#   };

#   pymupdf = callPackage ./python-modules/pymupdf { };

#   pymvglive = callPackage ./python-modules/pymvglive { };

#   pymysensors = callPackage ./python-modules/pymysensors { };

#   pymysql = callPackage ./python-modules/pymysql { };

#   pymysqlsa = callPackage ./python-modules/pymysqlsa { };

#   pymystem3 = callPackage ./python-modules/pymystem3 { };

#   pynac = callPackage ./python-modules/pynac { };

#   pynacl = callPackage ./python-modules/pynacl { };

#   pynamecheap = callPackage ./python-modules/pynamecheap { };

#   pynamodb = callPackage ./python-modules/pynamodb { };

#   pynanoleaf = callPackage ./python-modules/pynanoleaf { };

#   pync = callPackage ./python-modules/pync {
#     inherit (pkgs) which;
#   };

#   pynello = callPackage ./python-modules/pynello { };

#   pynest2d = callPackage ./python-modules/pynest2d { };

#   pynetbox = callPackage ./python-modules/pynetbox { };

#   pynetdicom = callPackage ./python-modules/pynetdicom { };

#   pynetgear = callPackage ./python-modules/pynetgear { };

#   pynina = callPackage ./python-modules/pynina { };

#   pynisher = callPackage ./python-modules/pynisher { };

#   pynmea2 = callPackage ./python-modules/pynmea2 { };

#   pynmeagps = callPackage ./python-modules/pynmeagps { };

#   pynput = callPackage ./python-modules/pynput { };

#   pynrrd = callPackage ./python-modules/pynrrd { };

#   pynvim = callPackage ./python-modules/pynvim { };

#   pynvim-pp = callPackage ./python-modules/pynvim-pp { };

#   pynvml = callPackage ./python-modules/pynvml { };

#   pynzb = callPackage ./python-modules/pynzb { };

#   pyobihai = callPackage ./python-modules/pyobihai { };

#   pyocd = callPackage ./python-modules/pyocd { };

#   pyocd-pemicro = callPackage ./python-modules/pyocd-pemicro { };

#   pyocr = callPackage ./python-modules/pyocr {
#     tesseract = pkgs.tesseract4;
#   };

#   pyoctoprintapi = callPackage ./python-modules/pyoctoprintapi { };

#   pyodbc = callPackage ./python-modules/pyodbc { };

#   pyogg = callPackage ./python-modules/pyogg { };

#   pyombi = callPackage ./python-modules/pyombi { };

#   pyomo = callPackage ./python-modules/pyomo { };

#   pypng = callPackage ./python-modules/pypng { };

#   phonemizer = callPackage ./python-modules/phonemizer { };

#   pyopencl = callPackage ./python-modules/pyopencl {
#     mesa_drivers = pkgs.mesa.drivers;
#   };

#   pyopengl = callPackage ./python-modules/pyopengl { };

#   pyopengl-accelerate = callPackage ./python-modules/pyopengl-accelerate { };

#   pyopenssl = callPackage ./python-modules/pyopenssl { };

#   pyopenuv = callPackage ./python-modules/pyopenuv { };

#   pyopnsense = callPackage ./python-modules/pyopnsense { };

#   pyoppleio = callPackage ./python-modules/pyoppleio { };

#   pyosf = callPackage ./python-modules/pyosf { };

#   pyosmium = callPackage ./python-modules/pyosmium {
#     inherit (pkgs) lz4;
#   };

#   pyosohotwaterapi = callPackage ./python-modules/pyosohotwaterapi { };

#   pyotgw = callPackage ./python-modules/pyotgw { };

#   pyotp = callPackage ./python-modules/pyotp { };

#   pyowm = callPackage ./python-modules/pyowm { };

#   pypamtest = toPythonModule (pkgs.libpam-wrapper.override {
#     enablePython = true;
#     inherit python;
#   });

#   pypandoc = callPackage ./python-modules/pypandoc { };

#   pyparser = callPackage ./python-modules/pyparser { };

#   pyparsing = callPackage ./python-modules/pyparsing { };

#   pyparted = callPackage ./python-modules/pyparted { };

#   pypass = callPackage ./python-modules/pypass { };

#   pypblib = callPackage ./python-modules/pypblib { };

#   pypca = callPackage ./python-modules/pypca { };

#   pypcap = callPackage ./python-modules/pypcap {
#     inherit (pkgs) libpcap; # Avoid confusion with python package of the same name
#   };

#   pypck = callPackage ./python-modules/pypck { };

#   pypdf = callPackage ./python-modules/pypdf { };

#   pypdf2 = callPackage ./python-modules/pypdf2 { };

#   pypdf3 = callPackage ./python-modules/pypdf3 { };

#   pypeg2 = callPackage ./python-modules/pypeg2 { };

#   pyperclip = callPackage ./python-modules/pyperclip { };

#   pyperscan = callPackage ./python-modules/pyperscan { };

#   pyperf = callPackage ./python-modules/pyperf { };

#   pyphen = callPackage ./python-modules/pyphen { };

#   pyphotonfile = callPackage ./python-modules/pyphotonfile { };

#   pypika = callPackage ./python-modules/pypika { };

#   pypillowfight = callPackage ./python-modules/pypillowfight { };

#   pypinyin = callPackage ./python-modules/pypinyin { };

#   pypiserver = callPackage ./python-modules/pypiserver { };

#   pypitoken = callPackage ./python-modules/pypitoken { };

#   pyplaato  = callPackage ./python-modules/pyplaato { };

#   pyplatec = callPackage ./python-modules/pyplatec { };

#   pyppeteer = callPackage ./python-modules/pyppeteer { };

#   pypresence = callPackage ./python-modules/pypresence { };

#   pyprind = callPackage ./python-modules/pyprind { };

#   pyprof2calltree = callPackage ./python-modules/pyprof2calltree { };

#   pyproj = callPackage ./python-modules/pyproj { };

#   pyproject-metadata = callPackage ./python-modules/pyproject-metadata { };

#   pyprosegur = callPackage ./python-modules/pyprosegur { };

#   pyprusalink = callPackage ./python-modules/pyprusalink { };

#   pyptlib = callPackage ./python-modules/pyptlib { };

#   pypubsub = callPackage ./python-modules/pypubsub { };

#   pypugjs = callPackage ./python-modules/pypugjs { };

#   pypykatz = callPackage ./python-modules/pypykatz { };

#   pypytools = callPackage ./python-modules/pypytools { };

#   pyqldb = callPackage ./python-modules/pyqldb { };

#   pyqrcode = callPackage ./python-modules/pyqrcode { };

#   pyqt-builder = callPackage ./python-modules/pyqt-builder { };

#   pyqt5 = callPackage ./python-modules/pyqt/5.x.nix { };

#   pyqt5-stubs = callPackage ./python-modules/pyqt5-stubs { };

#   pyqt5-sip = callPackage ./python-modules/pyqt/sip.nix { };

#   pyqt5-multimedia = self.pyqt5.override {
#     withMultimedia = true;
#   };

#   /*
#     `pyqt5-webkit` should not be used by python libraries in
#     pkgs/development/python-modules/*. Putting this attribute in
#     `propagatedBuildInputs` may cause collisions.
#   */
#   pyqt5-webkit = self.pyqt5.override {
#     withWebKit = true;
#   };

#   pyqt6 = callPackage ./python-modules/pyqt/6.x.nix { };

#   pyqt6-charts = callPackage ./python-modules/pyqt6-charts { };

#   pyqt6-sip = callPackage ./python-modules/pyqt/pyqt6-sip.nix { };

#   pyqt6-webengine = callPackage ./python-modules/pyqt6-webengine { };

#   pyqt3d = pkgs.libsForQt5.callPackage ./python-modules/pyqt3d {
#     inherit (self) buildPythonPackage pyqt5 pyqt-builder python pythonOlder
#       setuptools sip;
#   };

#   pyqtchart = pkgs.libsForQt5.callPackage ./python-modules/pyqtchart {
#     inherit (self) buildPythonPackage pyqt5 pyqt-builder python pythonOlder
#       setuptools sip;
#   };

#   pyqtdarktheme = callPackage ./python-modules/pyqtdarktheme { };

#   pyqtdatavisualization = pkgs.libsForQt5.callPackage ./python-modules/pyqtdatavisualization {
#     inherit (self) buildPythonPackage pyqt5 pyqt-builder python pythonOlder
#       setuptools sip;
#   };

#   pyqtgraph = callPackage ./python-modules/pyqtgraph { };

#   pyqtwebengine = pkgs.libsForQt5.callPackage ./python-modules/pyqtwebengine {
#     pythonPackages = self;
#   };

#   pyquery = callPackage ./python-modules/pyquery { };

#   pyquaternion = callPackage ./python-modules/pyquaternion { };

#   pyquil = callPackage ./python-modules/pyquil { };

#   pyqvrpro = callPackage ./python-modules/pyqvrpro { };

#   pyqwikswitch = callPackage ./python-modules/pyqwikswitch { };

#   pyrabbit2 = callPackage ./python-modules/pyrabbit2 { };

#   pyrad = callPackage ./python-modules/pyrad { };

#   pyradiomics = callPackage ./python-modules/pyradiomics { };

#   pyradios = callPackage ./python-modules/pyradios { };

#   pyrainbird = callPackage ./python-modules/pyrainbird { };

#   pyramid-beaker = callPackage ./python-modules/pyramid-beaker { };

#   pyramid = callPackage ./python-modules/pyramid { };

#   pyramid-chameleon = callPackage ./python-modules/pyramid-chameleon { };

#   pyramid-exclog = callPackage ./python-modules/pyramid-exclog { };

#   pyramid-jinja2 = callPackage ./python-modules/pyramid-jinja2 { };

#   pyramid-mako = callPackage ./python-modules/pyramid-mako { };

#   pyramid-multiauth = callPackage ./python-modules/pyramid-multiauth { };

#   pyrate-limiter = callPackage ./python-modules/pyrate-limiter { };

#   pyreaderwriterlock = callPackage ./python-modules/pyreaderwriterlock { };

#   pyreadstat = callPackage ./python-modules/pyreadstat {
#     inherit (pkgs.darwin) libiconv;
#   };

#   pyrealsense2 = toPythonModule (pkgs.librealsense.override {
#     enablePython = true;
#     pythonPackages = self;
#   });

#   pyrealsense2WithCuda = toPythonModule (pkgs.librealsenseWithCuda.override {
#     cudaSupport = true;
#     enablePython = true;
#     pythonPackages = self;
#   });

#   pyrealsense2WithoutCuda = toPythonModule (pkgs.librealsenseWithoutCuda.override {
#     enablePython = true;
#     pythonPackages = self;
#   });

#   pyrect = callPackage ./python-modules/pyrect { };

#   pyregion = callPackage ./python-modules/pyregion { };

#   pyric = callPackage ./python-modules/pyric { };

#   pyring-buffer = callPackage ./python-modules/pyring-buffer { };

#   pyrisco = callPackage ./python-modules/pyrisco { };

#   pyrituals = callPackage ./python-modules/pyrituals { };

#   pyrfc3339 = callPackage ./python-modules/pyrfc3339 { };

#   pyrmvtransport = callPackage ./python-modules/pyrmvtransport { };

#   pyro4 = callPackage ./python-modules/pyro4 { };

#   pyro5 = callPackage ./python-modules/pyro5 { };

#   pyroma = callPackage ./python-modules/pyroma { };

#   pyro-api = callPackage ./python-modules/pyro-api { };

#   pyro-ppl = callPackage ./python-modules/pyro-ppl { };

#   pyroute2 = callPackage ./python-modules/pyroute2 { };

#   pyrr = callPackage ./python-modules/pyrr { };

#   pyrsistent = callPackage ./python-modules/pyrsistent { };

#   pyrss2gen = callPackage ./python-modules/pyrss2gen { };

#   pyrtlsdr = callPackage ./python-modules/pyrtlsdr { };

#   pysaj = callPackage ./python-modules/pysaj { };

#   pysam = callPackage ./python-modules/pysam { };

#   pysaml2 = callPackage ./python-modules/pysaml2 {
#     inherit (pkgs) xmlsec;
#   };

#   pysatochip = callPackage ./python-modules/pysatochip { };

#   pysc2 = callPackage ./python-modules/pysc2 { };

#   pyscard = callPackage ./python-modules/pyscard {
#     inherit (pkgs.darwin.apple_sdk.frameworks) PCSC;
#   };

#   pyscaffold = callPackage ./python-modules/pyscaffold { };

#   pyscaffoldext-cookiecutter = callPackage ./python-modules/pyscaffoldext-cookiecutter { };

#   pyscaffoldext-custom-extension = callPackage ./python-modules/pyscaffoldext-custom-extension { };

#   pyscaffoldext-django = callPackage ./python-modules/pyscaffoldext-django { };

#   pyscaffoldext-dsproject = callPackage ./python-modules/pyscaffoldext-dsproject { };

#   pyscaffoldext-markdown = callPackage ./python-modules/pyscaffoldext-markdown { };

#   pyscaffoldext-travis = callPackage ./python-modules/pyscaffoldext-travis { };

#   pyscf = callPackage ./python-modules/pyscf { };

#   pyschedule = callPackage ./python-modules/pyschedule { };

#   pyscreenshot = callPackage ./python-modules/pyscreenshot { };

#   pyscreeze = callPackage ./python-modules/pyscreeze { };

#   py-scrypt = callPackage ./python-modules/py-scrypt { };

#   pyscrypt = callPackage ./python-modules/pyscrypt { };

#   pyscss = callPackage ./python-modules/pyscss { };

#   pysdcp = callPackage ./python-modules/pysdcp { };

#   pysdl2 = callPackage ./python-modules/pysdl2 { };

#   pysearpc = toPythonModule (pkgs.libsearpc.override {
#     python3 = self.python;
#   });

#   pysecuritas = callPackage ./python-modules/pysecuritas { };

#   pysendfile = callPackage ./python-modules/pysendfile { };

#   pysensibo = callPackage ./python-modules/pysensibo { };

#   pysensors = callPackage ./python-modules/pysensors { };

#   pyserial-asyncio = callPackage ./python-modules/pyserial-asyncio { };

#   pyserial-asyncio-fast = callPackage ./python-modules/pyserial-asyncio-fast { };

#   pyserial = callPackage ./python-modules/pyserial { };

#   pysftp = callPackage ./python-modules/pysftp { };

#   pyshp = callPackage ./python-modules/pyshp { };

#   pyside2-tools = toPythonModule (callPackage ./python-modules/pyside2-tools {
#     inherit (pkgs) cmake qt5;
#   });

#   pyside2 = toPythonModule (callPackage ./python-modules/pyside2 {
#     inherit (pkgs) cmake ninja qt5;
#   });

#   pyside6 = toPythonModule (callPackage ./python-modules/pyside6 {
#     inherit (pkgs) cmake ninja;
#   });

#   pysigma = callPackage ./python-modules/pysigma { };

#   pysigma-backend-elasticsearch = callPackage ./python-modules/pysigma-backend-elasticsearch { };

#   pysigma-backend-opensearch = callPackage ./python-modules/pysigma-backend-opensearch { };

#   pysigma-backend-qradar = callPackage ./python-modules/pysigma-backend-qradar { };

#   pysigma-backend-splunk = callPackage ./python-modules/pysigma-backend-splunk { };

#   pysigma-backend-sqlite = callPackage ./python-modules/pysigma-backend-sqlite { };

#   pysigma-backend-insightidr = callPackage ./python-modules/pysigma-backend-insightidr { };

#   pysigma-pipeline-crowdstrike = callPackage ./python-modules/pysigma-pipeline-crowdstrike { };

#   pysigma-pipeline-sysmon = callPackage ./python-modules/pysigma-pipeline-sysmon { };

#   pysigma-pipeline-windows = callPackage ./python-modules/pysigma-pipeline-windows { };

#   pysignalclirestapi = callPackage ./python-modules/pysignalclirestapi { };

#   pysigset = callPackage ./python-modules/pysigset { };

#   pysim = callPackage ./python-modules/pysim { };

#   pysimplegui = callPackage ./python-modules/pysimplegui { };

#   pysingleton = callPackage ./python-modules/pysingleton { };

#   pyslim = callPackage ./python-modules/pyslim { };

#   pyslurm = callPackage ./python-modules/pyslurm {
#     inherit (pkgs) slurm;
#   };

#   pysma = callPackage ./python-modules/pysma { };

#   pysmappee = callPackage ./python-modules/pysmappee { };

#   pysmart = callPackage ./python-modules/pysmart { };

#   pysmartapp = callPackage ./python-modules/pysmartapp { };

#   pysmartdl = callPackage ./python-modules/pysmartdl { };

#   pysmartthings = callPackage ./python-modules/pysmartthings { };

#   pysmb = callPackage ./python-modules/pysmb { };

#   pysmbc = callPackage ./python-modules/pysmbc { };

#   pysmf = callPackage ./python-modules/pysmf { };

#   pysmi = callPackage ./python-modules/pysmi { };

#   pysmi-lextudio = callPackage ./python-modules/pysmi-lextudio { };

#   pysml = callPackage ./python-modules/pysml { };

#   pysmt = callPackage ./python-modules/pysmt { };

#   pysnmp = callPackage ./python-modules/pysnmp { };

#   pysnmpcrypto = callPackage ./python-modules/pysnmpcrypto { };

#   pysnmp-lextudio = callPackage ./python-modules/pysnmp-lextudio { };

#   pysnmp-pyasn1 = callPackage ./python-modules/pysnmp-pyasn1 { };

#   pysnmp-pysmi = callPackage ./python-modules/pysnmp-pysmi { };

#   pysnmplib = callPackage ./python-modules/pysnmplib { };

#   pysnooper = callPackage ./python-modules/pysnooper { };

#   pysnooz = callPackage ./python-modules/pysnooz { };

#   pysnow = callPackage ./python-modules/pysnow { };

  pysocks = callPackage ./python-modules/pysocks { };

#   pysol-cards = callPackage ./python-modules/pysol-cards { };

#   pysolr = callPackage ./python-modules/pysolr { };

#   pysoma = callPackage ./python-modules/pysoma { };

#   py-sonic = callPackage ./python-modules/py-sonic { };

#   pysonos = callPackage ./python-modules/pysonos { };

#   pysoundfile = self.soundfile; # Alias added 23-06-2019

#   pyspark = callPackage ./python-modules/pyspark { };

#   pyspcwebgw = callPackage ./python-modules/pyspcwebgw { };

#   pyspellchecker = callPackage ./python-modules/pyspellchecker { };

#   pyspf = callPackage ./python-modules/pyspf { };

#   pyspice = callPackage ./python-modules/pyspice { };

#   pyspiflash = callPackage ./python-modules/pyspiflash { };

#   pyspinel = callPackage ./python-modules/pyspinel { };

#   pyspnego = callPackage ./python-modules/pyspnego { };

#   pysptk = callPackage ./python-modules/pysptk { };

#   pyspx = callPackage ./python-modules/pyspx { };

#   pysqlcipher3 = callPackage ./python-modules/pysqlcipher3 {
#     inherit (pkgs) sqlcipher;
#   };

#   pysqueezebox = callPackage ./python-modules/pysqueezebox { };

#   pysrim = callPackage ./python-modules/pysrim { };

#   pysrt = callPackage ./python-modules/pysrt { };

#   pyssim = callPackage ./python-modules/pyssim { };

#   pystache = callPackage ./python-modules/pystache { };

#   pystardict = callPackage ./python-modules/pystardict { };

#   pystatgrab = callPackage ./python-modules/pystatgrab { };

#   pystemd = callPackage ./python-modules/pystemd {
#     inherit (pkgs) systemd;
#   };

  pystemmer = callPackage ./python-modules/pystemmer { };

#   pystray = callPackage ./python-modules/pystray { };

#   py-stringmatching = callPackage ./python-modules/py-stringmatching { };

#   pysvg-py3 = callPackage ./python-modules/pysvg-py3 { };

#   pysvn = callPackage ./python-modules/pysvn {
#     inherit (pkgs) bash subversion apr aprutil expat neon openssl;
#   };

#   pyswitchbee = callPackage ./python-modules/pyswitchbee { };

#   pyswitchbot = callPackage ./python-modules/pyswitchbot { };

#   pysychonaut = callPackage ./python-modules/pysychonaut { };

#   pysyncobj = callPackage ./python-modules/pysyncobj { };

#   pytabix = callPackage ./python-modules/pytabix { };

#   pytablewriter = callPackage ./python-modules/pytablewriter { };

#   pytado = callPackage ./python-modules/pytado { };

#   pytaglib = callPackage ./python-modules/pytaglib { };

#   pytankerkoenig = callPackage ./python-modules/pytankerkoenig { };

#   pytap2 = callPackage ./python-modules/pytap2 { };

#   pytapo = callPackage ./python-modules/pytapo { };

#   pytautulli = callPackage ./python-modules/pytautulli { };

#   pyte = callPackage ./python-modules/pyte { };

#   pytedee-async = callPackage ./python-modules/pytedee-async { };

#   pytenable = callPackage ./python-modules/pytenable { };

#   pytensor = callPackage ./python-modules/pytensor { };

#   pytelegrambotapi = callPackage ./python-modules/pyTelegramBotAPI { };

#   pytesseract = callPackage ./python-modules/pytesseract { };

  pytest = callPackage ./python-modules/pytest { };

#   pytest_7 = callPackage ./python-modules/pytest/7.nix { };

#   pytest7CheckHook = pytestCheckHook.override { pytest = pytest_7; };

#   pytest-aio = callPackage ./python-modules/pytest-aio { };

#   pytest-aiohttp = callPackage ./python-modules/pytest-aiohttp { };

#   pytest-annotate = callPackage ./python-modules/pytest-annotate { };

#   pytest-ansible = callPackage ./python-modules/pytest-ansible { };

#   pytest-arraydiff = callPackage ./python-modules/pytest-arraydiff { };

#   pytest-astropy = callPackage ./python-modules/pytest-astropy { };

#   pytest-astropy-header = callPackage ./python-modules/pytest-astropy-header { };

  pytest-asyncio = callPackage ./python-modules/pytest-asyncio { };

#   pytest-asyncio_0_21 = pytest-asyncio.overridePythonAttrs (old: rec {
#     version = "0.21.1";
#     src = pkgs.fetchFromGitHub {
#       owner = "pytest-dev";
#       repo = "pytest-asyncio";
#       rev = "refs/tags/v${version}";
#       hash = "sha256-Wpo8MpCPGiXrckT2x5/yBYtGlzso/L2urG7yGc7SPkA=";
#     };
#   });

#   pytest-bdd = callPackage ./python-modules/pytest-bdd { };

#   pytest-benchmark = callPackage ./python-modules/pytest-benchmark { };

#   pytest-black = callPackage ./python-modules/pytest-black { };

#   pytest-cache = self.pytestcache; # added 2021-01-04
#   pytestcache = callPackage ./python-modules/pytestcache { };

#   pytest-base-url = callPackage ./python-modules/pytest-base-url { };

#   pytest-cases = callPackage ./python-modules/pytest-cases{ };

#   pytest-catchlog = callPackage ./python-modules/pytest-catchlog { };

#   pytest-celery = callPackage ./python-modules/pytest-celery { };

#   pytest-check = callPackage ./python-modules/pytest-check { };

#   pytest-cid = callPackage ./python-modules/pytest-cid { };

#   pytest-click = callPackage ./python-modules/pytest-click { };

#   pytest-console-scripts = callPackage ./python-modules/pytest-console-scripts { };

#   pytest-cov = callPackage ./python-modules/pytest-cov { };

#   pytest-cram = callPackage ./python-modules/pytest-cram { };

#   pytest-datadir = callPackage ./python-modules/pytest-datadir { };

#   pytest-datafiles = callPackage ./python-modules/pytest-datafiles { };

#   pytest-dependency = callPackage ./python-modules/pytest-dependency { };

#   pytest-describe = callPackage ./python-modules/pytest-describe { };

#   pytest-django = callPackage ./python-modules/pytest-django { };

#   pytest-doctestplus = callPackage ./python-modules/pytest-doctestplus { };

#   pytest-dotenv = callPackage ./python-modules/pytest-dotenv { };

#   pytest-emoji = callPackage ./python-modules/pytest-emoji { };

#   pytest-env = callPackage ./python-modules/pytest-env { };

#   pytest-error-for-skips = callPackage ./python-modules/pytest-error-for-skips { };

#   pytest-examples = callPackage ./python-modules/pytest-examples { };

  pytest-expect = callPackage ./python-modules/pytest-expect { };

#   pytest-factoryboy = callPackage ./python-modules/pytest-factoryboy { };

#   pytest-filter-subpackage = callPackage ./python-modules/pytest-filter-subpackage { };

#   pytest-fixture-config = callPackage ./python-modules/pytest-fixture-config { };

#   pytest-flake8 = callPackage ./python-modules/pytest-flake8 { };

#   pytest-flakes = callPackage ./python-modules/pytest-flakes { };

#   pytest-flask = callPackage ./python-modules/pytest-flask { };

#   pytest-forked = callPackage ./python-modules/pytest-forked { };

#   pytest-freezegun = callPackage ./python-modules/pytest-freezegun { };

#   pytest-freezer = callPackage ./python-modules/pytest-freezer { };

#   pytest-golden = callPackage ./python-modules/pytest-golden { };

#   pytest-grpc = callPackage ./python-modules/pytest-grpc { };

#   pytest-harvest = callPackage ./python-modules/pytest-harvest { };

#   pytest-helpers-namespace = callPackage ./python-modules/pytest-helpers-namespace { };

#   pytest-html = callPackage ./python-modules/pytest-html { };

#   pytest-httpbin = callPackage ./python-modules/pytest-httpbin { };

#   pytest-httpserver = callPackage ./python-modules/pytest-httpserver { };

#   pytest-httpx = callPackage ./python-modules/pytest-httpx { };

#   pytest-image-diff = callPackage ./python-modules/pytest-image-diff { };

#   pytest-instafail = callPackage ./python-modules/pytest-instafail { };

#   pytest-isort = callPackage ./python-modules/pytest-isort { };

#   pytest-json-report = callPackage ./python-modules/pytest-json-report { };

#   pytest-jupyter = callPackage ./python-modules/pytest-jupyter { };

#   pytest-lazy-fixture = callPackage ./python-modules/pytest-lazy-fixture { };

#   pytest-localserver = callPackage ./python-modules/pytest-localserver { };

#   pytest-logdog = callPackage ./python-modules/pytest-logdog { };

#   pytest-md-report = callPackage ./python-modules/pytest-md-report { };

#   pytest-metadata = callPackage ./python-modules/pytest-metadata { };

  pytest-mock = callPackage ./python-modules/pytest-mock { };

#   pytest-mockservers = callPackage ./python-modules/pytest-mockservers { };

#   pytest-mpl = callPackage ./python-modules/pytest-mpl { };

#   pytest-mypy = callPackage ./python-modules/pytest-mypy { };

#   pytest-mypy-plugins = callPackage ./python-modules/pytest-mypy-plugins { };

#   pytest-notebook = callPackage ./python-modules/pytest-notebook { };

#   pytest-openfiles = callPackage ./python-modules/pytest-openfiles { };

#   pytest-order = callPackage ./python-modules/pytest-order { };

#   pytest-param-files = callPackage ./python-modules/pytest-param-files { };

#   pytest-parallel = callPackage ./python-modules/pytest-parallel { };

#   pytest-playwright = callPackage ./python-modules/pytest-playwright {};

#   pytest-plt = callPackage ./python-modules/pytest-plt { };

#   pytest-postgresql = callPackage ./python-modules/pytest-postgresql { };

#   pytest-pylint = callPackage ./python-modules/pytest-pylint { };

#   pytest-pytestrail = callPackage ./python-modules/pytest-pytestrail { };

#   pytest-qt = callPackage ./python-modules/pytest-qt { };

#   pytest-quickcheck = callPackage ./python-modules/pytest-quickcheck { };

#   pytest-raises = callPackage ./python-modules/pytest-raises { };

#   pytest-raisesregexp = callPackage ./python-modules/pytest-raisesregexp { };

#   pytest-raisin = callPackage ./python-modules/pytest-raisin { };

#   pytest-randomly = callPackage ./python-modules/pytest-randomly { };

#   pytest-reverse = callPackage ./python-modules/pytest-reverse { };

#   pytest-random-order = callPackage ./python-modules/pytest-random-order { };

#   pytest-recording = callPackage ./python-modules/pytest-recording { };

#   pytest-regressions = callPackage ./python-modules/pytest-regressions { };

#   pytest-relaxed = callPackage ./python-modules/pytest-relaxed { };

#   pytest-remotedata = callPackage ./python-modules/pytest-remotedata { };

#   pytest-repeat = callPackage ./python-modules/pytest-repeat { };

  pytest-rerunfailures = callPackage ./python-modules/pytest-rerunfailures { };

#   pytest-resource-path = callPackage ./python-modules/pytest-resource-path { };

#   pytest-runner = callPackage ./python-modules/pytest-runner { };

#   pytest-server-fixtures = callPackage ./python-modules/pytest-server-fixtures { };

#   pytest-services = callPackage ./python-modules/pytest-services { };

#   pytest-snapshot = callPackage ./python-modules/pytest-snapshot { };

#   pytest-shutil = callPackage ./python-modules/pytest-shutil { };

#   pytest-spec = callPackage ./python-modules/pytest-spec { };

#   python-status = callPackage ./python-modules/python-status { };

#   python-string-utils = callPackage ./python-modules/python-string-utils { };

#   pytest-socket = callPackage ./python-modules/pytest-socket { };

#   pytest-subprocess = callPackage ./python-modules/pytest-subprocess { };

#   pytest-subtesthack = callPackage ./python-modules/pytest-subtesthack { };

#   pytest-subtests = callPackage ./python-modules/pytest-subtests { };

#   pytest-sugar = callPackage ./python-modules/pytest-sugar { };

#   pytest-tap = callPackage ./python-modules/pytest-tap { };

#   pytest-test-utils = callPackage ./python-modules/pytest-test-utils { };

#   pytest-testinfra = callPackage ./python-modules/pytest-testinfra { };

#   pytest-testmon = callPackage ./python-modules/pytest-testmon { };

#   pytest-textual-snapshot = callPackage ./python-modules/pytest-textual-snapshot { };

  pytest-timeout = callPackage ./python-modules/pytest-timeout { };

#   pytest-tornado = callPackage ./python-modules/pytest-tornado { };

#   pytest-tornasync = callPackage ./python-modules/pytest-tornasync { };

#   pytest-trio = callPackage ./python-modules/pytest-trio { };

#   pytest-twisted = callPackage ./python-modules/pytest-twisted { };

#   pytest-unordered = callPackage ./python-modules/pytest-unordered { };

#   pytest-vcr = callPackage ./python-modules/pytest-vcr { };

#   pytest-virtualenv = callPackage ./python-modules/pytest-virtualenv { };

#   pytest-voluptuous = callPackage ./python-modules/pytest-voluptuous { };

#   pytest-warnings = callPackage ./python-modules/pytest-warnings { };

#   pytest-watch = callPackage ./python-modules/pytest-watch { };

  pytest-xdist = callPackage ./python-modules/pytest-xdist { };

#   pytest-xprocess = callPackage ./python-modules/pytest-xprocess { };

#   pytest-xvfb = callPackage ./python-modules/pytest-xvfb { };

#   python3-application = callPackage ./python-modules/python3-application { };

#   python3-eventlib = callPackage ./python-modules/python3-eventlib { };

#   python3-gnutls = callPackage ./python-modules/python3-gnutls { };

#   python3-openid = callPackage ./python-modules/python3-openid { };

#   python-apt = callPackage ./python-modules/python-apt { };

#   python-arango = callPackage ./python-modules/python-arango { };

#   python-awair = callPackage ./python-modules/python-awair { };

#   python3-saml = callPackage ./python-modules/python3-saml { };

#   python-axolotl = callPackage ./python-modules/python-axolotl { };

#   python-axolotl-curve25519 = callPackage ./python-modules/python-axolotl-curve25519 { };

#   python-barcode = callPackage ./python-modules/python-barcode { };

#   python-baseconv = callPackage ./python-modules/python-baseconv { };

#   python-benedict = callPackage ./python-modules/python-benedict { };

#   python-bidi = callPackage ./python-modules/python-bidi { };

#   python-binance = callPackage ./python-modules/python-binance { };

#   python-box = callPackage ./python-modules/python-box { };

#   python-bring-api = callPackage ./python-modules/python-bring-api { };

#   python-bsblan = callPackage ./python-modules/python-bsblan { };

#   python-cinderclient = callPackage ./python-modules/python-cinderclient { };

#   python-constraint = callPackage ./python-modules/python-constraint { };

#   python-crontab = callPackage ./python-modules/python-crontab { };

#   python-ctags3 = callPackage ./python-modules/python-ctags3 { };

#   python-daemon = callPackage ./python-modules/python-daemon { };

#   python-datemath = callPackage ./python-modules/python-datemath { };

  python-dateutil = callPackage ./python-modules/python-dateutil { };

#   python-dbusmock = callPackage ./python-modules/python-dbusmock { };

#   python-decouple = callPackage ./python-modules/python-decouple { };

#   pythondialog = callPackage ./python-modules/pythondialog { };

#   python-didl-lite = callPackage ./python-modules/python-didl-lite { };

#   python-digitalocean = callPackage ./python-modules/python-digitalocean { };

#   python-docx = callPackage ./python-modules/python-docx { };

#   python-doi = callPackage ./python-modules/python-doi { };

#   python-dotenv = callPackage ./python-modules/python-dotenv { };

#   python-editor = callPackage ./python-modules/python-editor { };

#   python-family-hub-local = callPackage ./python-modules/python-family-hub-local { };

#   python-fsutil = callPackage ./python-modules/python-fsutil { };

#   pythonefl = callPackage ./python-modules/python-efl { };

#   pythonegardia = callPackage ./python-modules/pythonegardia { };

#   python-engineio = callPackage ./python-modules/python-engineio { };

#   python-etcd = callPackage ./python-modules/python-etcd { };

#   python-ethtool = callPackage ./python-modules/python-ethtool { };

#   python-ev3dev2 = callPackage ./python-modules/python-ev3dev2 { };

#   python-fedora = callPackage ./python-modules/python-fedora { };

#   python-fontconfig = callPackage ./python-modules/python-fontconfig { };

#   python-frontmatter = callPackage ./python-modules/python-frontmatter { };

#   python-gammu = callPackage ./python-modules/python-gammu { };

#   python-gitlab = callPackage ./python-modules/python-gitlab { };

#   python-gnupg = callPackage ./python-modules/python-gnupg { };

#   python-gvm = callPackage ./python-modules/python-gvm { };

#   python-hglib = callPackage ./python-modules/python-hglib { };

#   python-homeassistant-analytics = callPackage ./python-modules/python-homeassistant-analytics { };

#   python-homewizard-energy = callPackage ./python-modules/python-homewizard-energy { };

#   python-hosts = callPackage ./python-modules/python-hosts { };

#   python-hpilo = callPackage ./python-modules/python-hpilo { };

#   python-http-client = callPackage ./python-modules/python-http-client { };

#   python-i18n = callPackage ./python-modules/python-i18n { };

#   pythonix = callPackage ./python-modules/pythonix {
#     nix = pkgs.nixVersions.nix_2_3;
#     meson = pkgs.meson.override { python3 = self.python; };
#   };

#   python-jenkins = callPackage ./python-modules/python-jenkins { };

#   python-jose = callPackage ./python-modules/python-jose { };

#   python-json-logger = callPackage ./python-modules/python-json-logger { };

#   python-jsonrpc-server = callPackage ./python-modules/python-jsonrpc-server { };

#   python-ldap = callPackage ./python-modules/python-ldap {
#     inherit (pkgs) openldap cyrus_sasl;
#   };

#   python-ldap-test = callPackage ./python-modules/python-ldap-test { };

#   python-libnmap = callPackage ./python-modules/python-libnmap { };

#   python-linux-procfs = callPackage ./python-modules/python-linux-procfs { };

#   python-logstash = callPackage ./python-modules/python-logstash { };

#   python-louvain = callPackage ./python-modules/python-louvain { };

#   python-lsp-jsonrpc = callPackage ./python-modules/python-lsp-jsonrpc { };

#   python-lsp-ruff = callPackage ./python-modules/python-lsp-ruff { };

#   python-lsp-server = callPackage ./python-modules/python-lsp-server { };

#   python-ly = callPackage ./python-modules/python-ly { };

#   python-lzf = callPackage ./python-modules/python-lzf { };

#   python-lzo = callPackage ./python-modules/python-lzo {
#     inherit (pkgs) lzo;
#   };

#   python-magic = callPackage ./python-modules/python-magic { };

#   python-manilaclient = callPackage ./python-modules/python-manilaclient { };

#   python-mapnik = callPackage ./python-modules/python-mapnik rec {
#     inherit (pkgs) pkg-config cairo icu libjpeg libpng libtiff libwebp proj zlib;
#     boost = pkgs.boost182.override {
#       enablePython = true;
#       inherit python;
#     };
#     harfbuzz = pkgs.harfbuzz.override {
#       withIcu = true;
#     };
#     mapnik = pkgs.mapnik.override {
#       inherit boost harfbuzz;
#     };
#   };

#   python-markdown-math = callPackage ./python-modules/python-markdown-math { };

#   python-matter-server = callPackage ./python-modules/python-matter-server { };

#   python-miio = callPackage ./python-modules/python-miio { };

#   python-mimeparse = callPackage ./python-modules/python-mimeparse { };

#   python-mnist = callPackage ./python-modules/python-mnist { };

#   python-mpv-jsonipc = callPackage ./python-modules/python-mpv-jsonipc { };

#   python-multipart = callPackage ./python-modules/python-multipart { };

#   python-musicpd = callPackage ./python-modules/python-musicpd { };

#   python-mystrom = callPackage ./python-modules/python-mystrom { };

#   python-nest = callPackage ./python-modules/python-nest { };

#   pythonnet = callPackage ./python-modules/pythonnet { };

#   python-nmap = callPackage ./python-modules/python-nmap { };

#   python-nomad = callPackage ./python-modules/python-nomad { };

#   python-novaclient = callPackage ./python-modules/python-novaclient { };

#   python-oauth2 = callPackage ./python-modules/python-oauth2 { };

#   pythonocc-core = toPythonModule (callPackage ./python-modules/pythonocc-core {
#     inherit (pkgs) fontconfig rapidjson;
#     inherit (pkgs.xorg) libX11 libXi libXmu libXext;
#     inherit (pkgs.darwin.apple_sdk.frameworks) Cocoa;
#   });

#   python-olm = callPackage ./python-modules/python-olm { };

#   python-on-whales = callPackage ./python-modules/python-on-whales { };

#   python-opendata-transport = callPackage ./python-modules/python-opendata-transport { };

#   python-openstackclient = callPackage ./python-modules/python-openstackclient { };

#   python-openzwave = callPackage ./python-modules/python-openzwave { };

#   python-osc = callPackage ./python-modules/python-osc { };

#   python-packer = callPackage ./python-modules/python-packer { };

#   python-pae = callPackage ./python-modules/python-pae { };

#   python-pam = callPackage ./python-modules/python-pam {
#     inherit (pkgs) pam;
#   };

#   python-periphery = callPackage ./python-modules/python-periphery { };

#   python-picnic-api = callPackage ./python-modules/python-picnic-api { };

#   python-pidfile = callPackage ./python-modules/python-pidfile { };

#   python-pipedrive = callPackage ./python-modules/python-pipedrive { };

#   python-pkcs11 = callPackage ./python-modules/python-pkcs11 { };

#   python-prctl = callPackage ./python-modules/python-prctl { };

#   python-ptrace = callPackage ./python-modules/python-ptrace { };

#   python-rapidjson = callPackage ./python-modules/python-rapidjson { };

#   python-rabbitair = callPackage ./python-modules/python-rabbitair { };

#   python-redis-lock = callPackage ./python-modules/python-redis-lock { };

#   python-registry = callPackage ./python-modules/python-registry { };

#   python-roborock = callPackage ./python-modules/python-roborock { };

#   python-rtmidi = callPackage ./python-modules/python-rtmidi {
#     inherit (pkgs.darwin.apple_sdk.frameworks) CoreAudio CoreMIDI CoreServices Foundation;
#   };

#   python-sat = callPackage ./python-modules/python-sat { };

#   python-simple-hipchat = callPackage ./python-modules/python-simple-hipchat { };

#   python-slugify = callPackage ./python-modules/python-slugify { };

#   python-smarttub = callPackage ./python-modules/python-smarttub { };

#   python-snap7 = callPackage ./python-modules/python-snap7 {
#     inherit (pkgs) snap7;
#   };

#   python-snappy = callPackage ./python-modules/python-snappy {
#     inherit (pkgs) snappy;
#   };

#   python-socketio = callPackage ./python-modules/python-socketio { };

#   python-socks = callPackage ./python-modules/python-socks { };

#   python-sql = callPackage ./python-modules/python-sql { };

#   python-stdnum = callPackage ./python-modules/python-stdnum { };

#   python-technove = callPackage ./python-modules/python-technove { };

#   python-telegram = callPackage ./python-modules/python-telegram { };

#   python-telegram-bot = callPackage ./python-modules/python-telegram-bot { };

#   python-toolbox = callPackage ./python-modules/python-toolbox { };

#   python-trovo = callPackage ./python-modules/python-trovo { };

#   python-twitch-client = callPackage ./python-modules/python-twitch-client { };

#   python-twitter = callPackage ./python-modules/python-twitter { };

#   python-u2flib-host = callPackage ./python-modules/python-u2flib-host { };

#   python-u2flib-server = callPackage ./python-modules/python-u2flib-server { };

#   python-uinput = callPackage ./python-modules/python-uinput { };

#   python-ulid = callPackage ./python-modules/python-ulid { };

#   python-unshare = callPackage ./python-modules/python-unshare { };

#   python-utils = callPackage ./python-modules/python-utils { };

#   python-vagrant = callPackage ./python-modules/python-vagrant { };

#   python-velbus = callPackage ./python-modules/python-velbus { };

#   python-vipaccess = callPackage ./python-modules/python-vipaccess { };

#   python-vlc = callPackage ./python-modules/python-vlc { };

#   python-whois = callPackage ./python-modules/python-whois { };

#   python-wifi = callPackage ./python-modules/python-wifi { };

#   python-wink = callPackage ./python-modules/python-wink { };

#   python-xmp-toolkit = callPackage ./python-modules/python-xmp-toolkit { };

#   python-xz = callPackage ./python-modules/python-xz { };

#   python-zbar = callPackage ./python-modules/python-zbar { };

#   pythran = callPackage ./python-modules/pythran {
#     inherit (pkgs.llvmPackages) openmp;
#   };

#   pyeapi = callPackage ./python-modules/pyeapi { };

#   pyeverlights = callPackage ./python-modules/pyeverlights { };

#   pyinfra = callPackage ./python-modules/pyinfra { };

#   pytibber = callPackage ./python-modules/pytibber { };

#   pytile = callPackage ./python-modules/pytile { };

#   pytimeparse = callPackage ./python-modules/pytimeparse { };

#   pytimeparse2 = callPackage ./python-modules/pytimeparse2 { };

#   pytikz-allefeld = callPackage ./python-modules/pytikz-allefeld { };

#   pytm = callPackage ./python-modules/pytm { };

#   pytmx = callPackage ./python-modules/pytmx { };

#   pytomlpp = callPackage ./python-modules/pytomlpp { };

#   pytoolconfig = callPackage ./python-modules/pytoolconfig { };

#   pytools = callPackage ./python-modules/pytools { };

#   pytorch-lightning = callPackage ./python-modules/pytorch-lightning { };

#   pytorch-metric-learning = callPackage ./python-modules/pytorch-metric-learning { };

#   pytorch-msssim = callPackage ./python-modules/pytorch-msssim { };

#   pytorch-pfn-extras = callPackage ./python-modules/pytorch-pfn-extras { };

#   pytraccar = callPackage ./python-modules/pytraccar { };

#   pytradfri = callPackage ./python-modules/pytradfri { };

#   pytrafikverket = callPackage ./python-modules/pytrafikverket { };

#   pytransportnsw = callPackage ./python-modules/pytransportnsw { };

#   pytransportnswv2 = callPackage ./python-modules/pytransportnswv2 { };

#   pytrends = callPackage ./python-modules/pytrends { };

#   pytricia = callPackage ./python-modules/pytricia { };

#   pytrydan = callPackage ./python-modules/pytrydan { };

#   pyttsx3 = callPackage ./python-modules/pyttsx3 { };

#   pytube = callPackage ./python-modules/pytube { };

#   pytun = callPackage ./python-modules/pytun { };

#   pyturbojpeg = callPackage ./python-modules/pyturbojpeg { };

#   pytweening = callPackage ./python-modules/pytweening { };

  pytz = callPackage ./python-modules/pytz { };

#   pytz-deprecation-shim = callPackage ./python-modules/pytz-deprecation-shim { };

#   pytzdata = callPackage ./python-modules/pytzdata { };

#   pyu2f = callPackage ./python-modules/pyu2f { };

#   pyudev = callPackage ./python-modules/pyudev {
#     inherit (pkgs) udev;
#   };

#   pyunbound = toPythonModule (callPackage ../tools/networking/unbound/python.nix { });

#   pyunifi = callPackage ./python-modules/pyunifi { };

#   pyunifiprotect = callPackage ./python-modules/pyunifiprotect { };

#   pyupdate = callPackage ./python-modules/pyupdate { };

#   pyupgrade = callPackage ./python-modules/pyupgrade { };

#   pyuptimerobot = callPackage ./python-modules/pyuptimerobot { };

#   pyusb = callPackage ./python-modules/pyusb {
#     inherit (pkgs) libusb1;
#   };

#   pyuseragents = callPackage ./python-modules/pyuseragents { };

#   pyutilib = callPackage ./python-modules/pyutilib { };

#   pyuv = callPackage ./python-modules/pyuv { };

#   py-vapid = callPackage ./python-modules/py-vapid { };

#   pyvcd = callPackage ./python-modules/pyvcd { };

#   pyvera = callPackage ./python-modules/pyvera { };

#   pyverilog = callPackage ./python-modules/pyverilog { };

#   pyversasense = callPackage ./python-modules/pyversasense { };

#   pyvesync = callPackage ./python-modules/pyvesync { };

#   pyvex = callPackage ./python-modules/pyvex { };

#   pyvicare = callPackage ./python-modules/pyvicare { };

#   pyvirtualdisplay = callPackage ./python-modules/pyvirtualdisplay { };

#   pyvis = callPackage ./python-modules/pyvis { };

#   pyvisa = callPackage ./python-modules/pyvisa { };

#   pyvisa-py = callPackage ./python-modules/pyvisa-py { };

#   pyvisa-sim = callPackage ./python-modules/pyvisa-sim { };

#   pyvista = callPackage ./python-modules/pyvista { };

#   pyviz-comms = callPackage ./python-modules/pyviz-comms { };

#   pyvizio = callPackage ./python-modules/pyvizio { };

#   pyvips = callPackage ./python-modules/pyvips {
#     inherit (pkgs) vips glib;
#   };

#   pyvlx = callPackage ./python-modules/pyvlx { };

#   pyvmomi = callPackage ./python-modules/pyvmomi { };

#   pyvo = callPackage ./python-modules/pyvo { };

#   pyvolumio = callPackage ./python-modules/pyvolumio { };

#   pyvoro = callPackage ./python-modules/pyvoro { };

#   pywal = callPackage ./python-modules/pywal { };

#   pywatchman = callPackage ./python-modules/pywatchman { };

#   pywaterkotte = callPackage ./python-modules/pywaterkotte { };

#   pywavefront = callPackage ./python-modules/pywavefront { };

#   pywavelets = callPackage ./python-modules/pywavelets { };

#   pywayland = callPackage ./python-modules/pywayland { };

#   pywaze = callPackage ./python-modules/pywaze { };

#   pywbem = callPackage ./python-modules/pywbem {
#     inherit (pkgs) libxml2;
#   };

#   pyweatherflowrest = callPackage ./python-modules/pyweatherflowrest { };

#   pyweatherflowudp = callPackage ./python-modules/pyweatherflowudp { };

#   pywebpush = callPackage ./python-modules/pywebpush { };

#   pywebview = callPackage ./python-modules/pywebview { };

#   pywemo = callPackage ./python-modules/pywemo { };

#   pywerview = callPackage ./python-modules/pywerview { };

#   pywfa = callPackage ./python-modules/pywfa { };

#   pywilight = callPackage ./python-modules/pywilight { };

#   pywinrm = callPackage ./python-modules/pywinrm { };

#   pywizlight = callPackage ./python-modules/pywizlight { };

#   pywlroots = callPackage ./python-modules/pywlroots {
#     wlroots = pkgs.wlroots_0_16;
#   };

#   pyws66i = callPackage ./python-modules/pyws66i { };

#   pyxattr = callPackage ./python-modules/pyxattr { };

#   pyxlsb = callPackage ./python-modules/pyxlsb { };

#   pyworld = callPackage ./python-modules/pyworld { };

#   pyx = callPackage ./python-modules/pyx { };

#   pyxbe = callPackage ./python-modules/pyxbe { };

#   pyxdg = callPackage ./python-modules/pyxdg { };

#   pyxeoma = callPackage ./python-modules/pyxeoma { };

#   pyxiaomigateway = callPackage ./python-modules/pyxiaomigateway { };

#   pyxl3 = callPackage ./python-modules/pyxl3 { };

#   pyxnat = callPackage ./python-modules/pyxnat { };

#   pyyaml = callPackage ./python-modules/pyyaml { };

#   pyyaml-env-tag = callPackage ./python-modules/pyyaml-env-tag { };

#   pyyaml-include = callPackage ./python-modules/pyyaml-include { };

#   pyyardian = callPackage ./python-modules/pyyardian { };

#   pyzabbix = callPackage ./python-modules/pyzabbix { };

#   pyzerproc = callPackage ./python-modules/pyzerproc { };

#   pyzmq = callPackage ./python-modules/pyzmq { };

#   pyzufall = callPackage ./python-modules/pyzufall { };

#   qbittorrent-api = callPackage ./python-modules/qbittorrent-api { };

#   qasync = callPackage ./python-modules/qasync { };

#   qcelemental = callPackage ./python-modules/qcelemental { };

#   qcengine = callPackage ./python-modules/qcengine { };

#   qcodes = callPackage ./python-modules/qcodes { };

#   qcodes-contrib-drivers = callPackage ./python-modules/qcodes-contrib-drivers { };

#   qcs-api-client = callPackage ./python-modules/qcs-api-client { };

#   qcs-sdk-python = callPackage ./python-modules/qcs-sdk-python { };

#   qdarkstyle = callPackage ./python-modules/qdarkstyle { };

#   qdldl = callPackage ./python-modules/qdldl { };

#   qdrant-client = callPackage ./python-modules/qdrant-client { };

#   qds-sdk = callPackage ./python-modules/qds-sdk { };

#   qgrid = callPackage ./python-modules/qgrid { };

#   qemu = callPackage ./python-modules/qemu {
#     qemu = pkgs.qemu;
#   };

#   qiling = callPackage ./python-modules/qiling { };

#   qimage2ndarray = callPackage ./python-modules/qimage2ndarray { };

#   qingping-ble = callPackage ./python-modules/qingping-ble { };

#   qiskit = callPackage ./python-modules/qiskit { };

#   qiskit-aer = callPackage ./python-modules/qiskit-aer { };

#   qiskit-finance = callPackage ./python-modules/qiskit-finance { };

#   qiskit-ibmq-provider = callPackage ./python-modules/qiskit-ibmq-provider { };

#   qiskit-ignis = callPackage ./python-modules/qiskit-ignis { };

#   qiskit-machine-learning = callPackage ./python-modules/qiskit-machine-learning { };

#   qiskit-nature = callPackage ./python-modules/qiskit-nature { };

#   qiskit-optimization = callPackage ./python-modules/qiskit-optimization { };

#   qiskit-terra = callPackage ./python-modules/qiskit-terra { };

#   qnap-qsw = callPackage ./python-modules/qnap-qsw{ };

#   qnapstats = callPackage ./python-modules/qnapstats { };

#   qpageview = callPackage ./python-modules/qpageview { };

#   qpsolvers = callPackage ./python-modules/qpsolvers { };

#   qrcode = callPackage ./python-modules/qrcode { };

#   qreactor = callPackage ./python-modules/qreactor { };

#   qscintilla-qt5 = pkgs.libsForQt5.callPackage ./python-modules/qscintilla-qt5 {
#     pythonPackages = self;
#   };

#   qscintilla = self.qscintilla-qt5;

#   qstylizer = callPackage ./python-modules/qstylizer { };

#   qt-material = callPackage ./python-modules/qt-material { };

#   qt5reactor = callPackage ./python-modules/qt5reactor { };

#   qt6 = pkgs.qt6.override {
#     python3 = self.python;
#   };

#   qtawesome = callPackage ./python-modules/qtawesome { };

#   qtconsole = callPackage ./python-modules/qtconsole { };

#   qtile = callPackage ./python-modules/qtile {
#     wlroots = pkgs.wlroots_0_16;
#   };
#   qtile-extras = callPackage ./python-modules/qtile-extras { };

#   qtpy = callPackage ./python-modules/qtpy { };

#   quadprog = callPackage ./python-modules/quadprog { };

#   qualysclient = callPackage ./python-modules/qualysclient { };

#   quamash = callPackage ./python-modules/quamash { };

#   quandl = callPackage ./python-modules/quandl { };

#   quantile-forest = callPackage ./python-modules/quantile-forest { };

#   quantities = callPackage ./python-modules/quantities { };

#   quantiphy = callPackage ./python-modules/quantiphy { };

#   quantile-python = callPackage ./python-modules/quantile-python { };

#   quantiphy-eval = callPackage ./python-modules/quantiphy-eval { };

#   quantum-gateway = callPackage ./python-modules/quantum-gateway { };

#   quantulum3 = callPackage ./python-modules/quantulum3 { };

#   quart = callPackage ./python-modules/quart { };

#   quart-cors = callPackage ./python-modules/quart-cors { };

#   quaternion = callPackage ./python-modules/quaternion { };

#   qudida = callPackage ./python-modules/qudida { };

#   querystring-parser = callPackage ./python-modules/querystring-parser { };

#   questionary = callPackage ./python-modules/questionary { };

#   queuelib = callPackage ./python-modules/queuelib { };

#   quil = callPackage ./python-modules/quil { };

#   quixote = callPackage ./python-modules/quixote { };

#   qutip = callPackage ./python-modules/qutip { };

#   qmk-dotty-dict = callPackage ./python-modules/qmk-dotty-dict { };

#   r2pipe = callPackage ./python-modules/r2pipe { };

#   rachiopy = callPackage ./python-modules/rachiopy { };

#   radicale-infcloud = callPackage ./python-modules/radicale-infcloud {
#     radicale = pkgs.radicale.override { python3 = python; };
#   };

#   radian = callPackage ./python-modules/radian { };

#   radio-beam = callPackage ./python-modules/radio-beam { };

#   radios = callPackage ./python-modules/radios { };

#   radiotherm = callPackage ./python-modules/radiotherm { };

#   radish-bdd = callPackage ./python-modules/radish-bdd { };

#   radon = callPackage ./python-modules/radon { };

#   railroad-diagrams = callPackage ./python-modules/railroad-diagrams { };

#   rainbowstream = callPackage ./python-modules/rainbowstream { };

#   raincloudy = callPackage ./python-modules/raincloudy { };

#   ramlfications = callPackage ./python-modules/ramlfications { };

#   random2 = callPackage ./python-modules/random2 { };

#   randomfiletree = callPackage ./python-modules/randomfiletree { };

#   range-typed-integers = callPackage ./python-modules/range-typed-integers { };

#   rangehttpserver = callPackage ./python-modules/rangehttpserver { };

#   rangeparser = callPackage ./python-modules/rangeparser { };

#   rank-bm25 = callPackage ./python-modules/rank-bm25 { };

#   rapidfuzz = callPackage ./python-modules/rapidfuzz { };

#   rapidfuzz-capi = callPackage ./python-modules/rapidfuzz-capi { };

#   rapidgzip = callPackage ./python-modules/rapidgzip { inherit (pkgs) nasm; };

#   rapt-ble = callPackage ./python-modules/rapt-ble { };

#   rarfile = callPackage ./python-modules/rarfile {
#     inherit (pkgs) libarchive;
#   };

#   rasterio = callPackage ./python-modules/rasterio { };

#   ratarmountcore = callPackage ./python-modules/ratarmountcore { inherit (pkgs) zstd; };

#   ratarmount = callPackage ./python-modules/ratarmount { };

#   ratelim = callPackage ./python-modules/ratelim { };

#   ratelimit = callPackage ./python-modules/ratelimit { };

#   rauth = callPackage ./python-modules/rauth { };

#   raven = callPackage ./python-modules/raven { };

#   rawkit = callPackage ./python-modules/rawkit { };

#   ray = callPackage ./python-modules/ray { };

#   razdel = callPackage ./python-modules/razdel { };

#   rbtools = callPackage ./python-modules/rbtools { };

#   rchitect = callPackage ./python-modules/rchitect { };

#   rcssmin = callPackage ./python-modules/rcssmin { };

#   rdflib = callPackage ./python-modules/rdflib { };

#   rdkit = callPackage ./python-modules/rdkit {
#     boost = pkgs.boost182.override {
#       enablePython = true;
#       inherit python;
#     };
#   };

#   re-assert = callPackage ./python-modules/re-assert { };

#   readability-lxml = callPackage ./python-modules/readability-lxml { };

#   readabilipy = callPackage ./python-modules/readabilipy { };

#   readchar = callPackage ./python-modules/readchar { };

#   readlike = callPackage ./python-modules/readlike { };

#   readmdict = callPackage ./python-modules/readmdict { };

#   readme = callPackage ./python-modules/readme { };

#   readme-renderer = callPackage ./python-modules/readme-renderer { };

#   readthedocs-sphinx-ext = callPackage ./python-modules/readthedocs-sphinx-ext { };

#   reactivex = callPackage ./python-modules/reactivex { };

#   rebulk = callPackage ./python-modules/rebulk { };

#   recipe-scrapers = callPackage ./python-modules/recipe-scrapers { };

#   recline = callPackage ./python-modules/recline { };

#   recoll = toPythonModule (pkgs.recoll.override {
#     python3Packages = self;
#   });

  recommonmark = callPackage ./python-modules/recommonmark { };

#   reconplogger = callPackage ./python-modules/reconplogger { };

#   recordlinkage = callPackage ./python-modules/recordlinkage { };

#   recurring-ical-events = callPackage ./python-modules/recurring-ical-events { };

#   recursive-pth-loader = toPythonModule (callPackage ./python-modules/recursive-pth-loader { });

#   red-black-tree-mod = callPackage ./python-modules/red-black-tree-mod { };

#   redbaron = callPackage ./python-modules/redbaron { };

#   redis = callPackage ./python-modules/redis { };

#   redis-om = callPackage ./python-modules/redis-om { };

#   redshift-connector = callPackage ./python-modules/redshift-connector { };

#   reedsolo = callPackage ./python-modules/reedsolo { };

#   referencing = callPackage ./python-modules/referencing { };

#   refery = callPackage ./python-modules/refery { };

#   reflink = callPackage ./python-modules/reflink { };

#   regenmaschine = callPackage ./python-modules/regenmaschine { };

#   regex = callPackage ./python-modules/regex { };

#   regional = callPackage ./python-modules/regional { };

#   reikna = callPackage ./python-modules/reikna { };

#   related = callPackage ./python-modules/related { };

#   relatorio = callPackage ./python-modules/relatorio { };

#   releases = callPackage ./python-modules/releases { };

#   remarshal = callPackage ./python-modules/remarshal { };

#   remi = callPackage ./python-modules/remi { };

#   remote-pdb = callPackage ./python-modules/remote-pdb { };

#   remotezip = callPackage ./python-modules/remotezip { };

#   renault-api = callPackage ./python-modules/renault-api { };

#   rencode = callPackage ./python-modules/rencode { };

#   renson-endura-delta = callPackage ./python-modules/renson-endura-delta { };

#   reorder-python-imports = callPackage ./python-modules/reorder-python-imports { };

#   reolink = callPackage ./python-modules/reolink { };

#   reolink-aio = callPackage ./python-modules/reolink-aio { };

#   reparser = callPackage ./python-modules/reparser { };

#   repath = callPackage ./python-modules/repath { };

#   repeated-test = callPackage ./python-modules/repeated-test { };

#   repocheck = callPackage ./python-modules/repocheck { };

#   reportengine = callPackage ./python-modules/reportengine { };

#   reportlab = callPackage ./python-modules/reportlab { };

#   repoze-lru = callPackage ./python-modules/repoze-lru { };

#   repoze-sphinx-autointerface = callPackage ./python-modules/repoze-sphinx-autointerface { };

#   repoze-who = callPackage ./python-modules/repoze-who { };

#   reproject = callPackage ./python-modules/reproject { };

#   reprshed = callPackage ./python-modules/reprshed { };

#   reptor = callPackage ./python-modules/reptor { };

#   reqif = callPackage ./python-modules/reqif { };

#   requests-aws4auth = callPackage ./python-modules/requests-aws4auth { };

#   requests-cache = callPackage ./python-modules/requests-cache { };

#   requests-credssp = callPackage ./python-modules/requests-credssp { };

#   requests-gssapi = callPackage ./python-modules/requests-gssapi { };

#   requests-hawk = callPackage ./python-modules/requests-hawk { };

  requests = callPackage ./python-modules/requests { };

#   requests-download = callPackage ./python-modules/requests-download { };

#   requestsexceptions = callPackage ./python-modules/requestsexceptions { };

#   requests-file = callPackage ./python-modules/requests-file { };

#   requests-futures = callPackage ./python-modules/requests-futures { };

#   requests-http-signature = callPackage ./python-modules/requests-http-signature { };

#   requests-kerberos = callPackage ./python-modules/requests-kerberos { };

#   requests-mock = callPackage ./python-modules/requests-mock { };

#   requests-ntlm = callPackage ./python-modules/requests-ntlm { };

#   requests-oauthlib = callPackage ./python-modules/requests-oauthlib { };

#   requests-pkcs12 = callPackage ./python-modules/requests-pkcs12 { };

#   requests-ratelimiter = callPackage ./python-modules/requests-ratelimiter { };

#   requests-toolbelt = callPackage ./python-modules/requests-toolbelt { };

#   requests-unixsocket = callPackage ./python-modules/requests-unixsocket { };

#   requests-wsgi-adapter = callPackage ./python-modules/requests-wsgi-adapter { };

#   requirements-detector = callPackage ./python-modules/requirements-detector { };

#   requirements-parser = callPackage ./python-modules/requirements-parser { };

#   reretry = callPackage ./python-modules/reretry { };

#   rerun-sdk = callPackage ./python-modules/rerun-sdk { };

#   resampy = callPackage ./python-modules/resampy { };

#   resend = callPackage ./python-modules/resend { };

#   resize-right = callPackage ./python-modules/resize-right { };

#   resolvelib = callPackage ./python-modules/resolvelib { };

  responses = callPackage ./python-modules/responses { };

#   respx = callPackage ./python-modules/respx { };

#   restfly = callPackage ./python-modules/restfly { };

#   restrictedpython = callPackage ./python-modules/restrictedpython { };

#   restructuredtext-lint = callPackage ./python-modules/restructuredtext-lint { };

#   restview = callPackage ./python-modules/restview { };

#   result = callPackage ./python-modules/result { };

#   rethinkdb = callPackage ./python-modules/rethinkdb { };

#   retry = callPackage ./python-modules/retry { };

#   retry-decorator = callPackage ./python-modules/retry-decorator { };

#   retrying = callPackage ./python-modules/retrying { };

#   returns = callPackage ./python-modules/returns { };

#   reuse = callPackage ./python-modules/reuse { };

#   rfc3339 = callPackage ./python-modules/rfc3339 { };

#   rfc3339-validator = callPackage ./python-modules/rfc3339-validator { };

#   rfc3986 = callPackage ./python-modules/rfc3986 { };

#   rfc3986-validator = callPackage ./python-modules/rfc3986-validator { };

#   rfc3987 = callPackage ./python-modules/rfc3987 { };

#   rfc6555 = callPackage ./python-modules/rfc6555 { };

#   rfc7464 = callPackage ./python-modules/rfc7464 { };

#   rfcat = callPackage ./python-modules/rfcat { };

#   rflink = callPackage ./python-modules/rflink { };

#   rich = callPackage ./python-modules/rich { };

#   rich-argparse = callPackage ./python-modules/rich-argparse { };

#   rich-argparse-plus = callPackage ./python-modules/rich-argparse-plus { };

#   rich-click = callPackage ./python-modules/rich-click { };

#   rich-pixels = callPackage ./python-modules/rich-pixels { };

#   rich-rst = callPackage ./python-modules/rich-rst { };

#   ring-doorbell = callPackage ./python-modules/ring-doorbell { };

#   ripe-atlas-cousteau = callPackage ./python-modules/ripe-atlas-cousteau { };

#   ripe-atlas-sagan = callPackage ./python-modules/ripe-atlas-sagan { };

#   riprova = callPackage ./python-modules/riprova { };

#   ripser = callPackage ./python-modules/ripser { };

#   riscof = callPackage ./python-modules/riscof { };

#   riscv-config = callPackage ./python-modules/riscv-config { };

#   riscv-isac = callPackage ./python-modules/riscv-isac { };

#   rising = callPackage ./python-modules/rising { };

#   ritassist = callPackage ./python-modules/ritassist { };

#   rivet = toPythonModule (pkgs.rivet.override {
#     python3 = python;
#   });

#   rjpl = callPackage ./python-modules/rjpl { };

#   rjsmin = callPackage ./python-modules/rjsmin { };

#   rki-covid-parser = callPackage ./python-modules/rki-covid-parser { };

#   rkm-codes = callPackage ./python-modules/rkm-codes { };

#   rlax = callPackage ./python-modules/rlax { };

#   rlp = callPackage ./python-modules/rlp { };

#   rmcl = callPackage ./python-modules/rmcl { };

#   rmrl = callPackage ./python-modules/rmrl { };

#   rmscene = callPackage ./python-modules/rmscene { };

#   rmsd = callPackage ./python-modules/rmsd { };

#   rnc2rng = callPackage ./python-modules/rnc2rng { };

#   rnginline = callPackage ./python-modules/rnginline { };

#   rns = callPackage ./python-modules/rns { };

#   roadlib = callPackage ./python-modules/roadlib { };

#   roadrecon = callPackage ./python-modules/roadrecon { };

#   roadtools = callPackage ./python-modules/roadtools { };

#   roadtx = callPackage ./python-modules/roadtx { };

#   robomachine = callPackage ./python-modules/robomachine { };

#   robot-detection = callPackage ./python-modules/robot-detection { };

#   robotframework = callPackage ./python-modules/robotframework { };

#   robotframework-databaselibrary = callPackage ./python-modules/robotframework-databaselibrary { };

#   robotframework-excellib = callPackage ./python-modules/robotframework-excellib { };

#   robotframework-pythonlibcore = callPackage ./python-modules/robotframework-pythonlibcore { };

#   robotframework-requests = callPackage ./python-modules/robotframework-requests { };

#   robotframework-selenium2library = callPackage ./python-modules/robotframework-selenium2library { };

#   robotframework-seleniumlibrary = callPackage ./python-modules/robotframework-seleniumlibrary { };

#   robotframework-sshlibrary = callPackage ./python-modules/robotframework-sshlibrary { };

#   robotframework-tools = callPackage ./python-modules/robotframework-tools { };

#   robotstatuschecker = callPackage ./python-modules/robotstatuschecker { };

#   robotsuite = callPackage ./python-modules/robotsuite { };

#   rocket-errbot = callPackage ./python-modules/rocket-errbot { };

#   roku = callPackage ./python-modules/roku { };

#   rokuecp = callPackage ./python-modules/rokuecp { };

#   rollbar = callPackage ./python-modules/rollbar { };

#   roman = callPackage ./python-modules/roman { };

#   romy = callPackage ./python-modules/romy { };

#   roombapy = callPackage ./python-modules/roombapy { };

#   roonapi = callPackage ./python-modules/roonapi { };

#   ronin = callPackage ./python-modules/ronin { };

#   rope = callPackage ./python-modules/rope { };

#   ropgadget = callPackage ./python-modules/ropgadget { };

#   ropper = callPackage ./python-modules/ropper { };

#   rotary-embedding-torch = callPackage ./python-modules/rotary-embedding-torch { };

#   rouge-score = callPackage ./python-modules/rouge-score { };

#   routeros-api = callPackage ./python-modules/routeros-api { };

#   routes = callPackage ./python-modules/routes { };

#   rova = callPackage ./python-modules/rova { };

#   rpcq = callPackage ./python-modules/rpcq { };

#   rpdb = callPackage ./python-modules/rpdb { };

#   rpds-py = callPackage ./python-modules/rpds-py { };

#   rpi-bad-power = callPackage ./python-modules/rpi-bad-power { };

#   rpi-gpio = callPackage ./python-modules/rpi-gpio { };

#   rpi-gpio2 = callPackage ./python-modules/rpi-gpio2 { };

#   rplcd = callPackage ./python-modules/rplcd { };

#   rply = callPackage ./python-modules/rply { };

#   rpm = toPythonModule (pkgs.rpm.override {
#     inherit python;
#   });

#   rpmfile = callPackage ./python-modules/rpmfile { };

#   rpmfluff = callPackage ./python-modules/rpmfluff { };

#   rpy2 = callPackage ./python-modules/rpy2 { };

#   rpyc = callPackage ./python-modules/rpyc { };

#   rpyc4 = callPackage ./python-modules/rpyc4 { };

#   rq = callPackage ./python-modules/rq {
#     redis-server = pkgs.redis;
#   };

#   rsa = callPackage ./python-modules/rsa { };

#   rsskey = callPackage ./python-modules/rsskey { };

#   rst2ansi = callPackage ./python-modules/rst2ansi { };

#   rst2pdf = callPackage ./python-modules/rst2pdf { };

#   rstcheck = callPackage ./python-modules/rstcheck { };

#   rstcheck-core = callPackage ./python-modules/rstcheck-core { };

#   rstr = callPackage ./python-modules/rstr { };

#   rtmidi-python = callPackage ./python-modules/rtmidi-python {
#     inherit (pkgs.darwin.apple_sdk.frameworks) CoreAudio CoreMIDI CoreServices;
#   };

#   rtoml = callPackage ./python-modules/rtoml { };

#   rtp = callPackage ./python-modules/rtp { };

#   rtree = callPackage ./python-modules/rtree {
#     inherit (pkgs) libspatialindex;
#   };

#   rtslib = callPackage ./python-modules/rtslib { };

#   rtsp-to-webrtc = callPackage ./python-modules/rtsp-to-webrtc { };

#   ruamel-base = callPackage ./python-modules/ruamel-base { };

#   ruamel-yaml = callPackage ./python-modules/ruamel-yaml { };

#   ruamel-yaml-clib = callPackage ./python-modules/ruamel-yaml-clib { };

#   rubicon-objc = callPackage ./python-modules/rubicon-objc { };

#   rubymarshal = callPackage ./python-modules/rubymarshal { };

#   ruffus = callPackage ./python-modules/ruffus { };

#   rules = callPackage ./python-modules/rules { };

#   runs = callPackage ./python-modules/runs { };

#   ruuvitag-ble = callPackage ./python-modules/ruuvitag-ble { };

#   ruyaml = callPackage ./python-modules/ruyaml { };

#   rx = callPackage ./python-modules/rx { };

#   rxv = callPackage ./python-modules/rxv { };

#   rzpipe = callPackage ./python-modules/rzpipe { };

#   s2clientprotocol = callPackage ./python-modules/s2clientprotocol { };

#   s3fs = callPackage ./python-modules/s3fs { };

#   s3transfer = callPackage ./python-modules/s3transfer { };

#   s3-credentials = callPackage ./python-modules/s3-credentials { };

#   sabctools = callPackage ./python-modules/sabctools { };

#   sabyenc3 = callPackage ./python-modules/sabyenc3 { };

#   sabyenc = callPackage ./python-modules/sabyenc { };

#   sacn = callPackage ./python-modules/sacn { };

#   sacrebleu = callPackage ./python-modules/sacrebleu { };

#   sacremoses = callPackage ./python-modules/sacremoses { };

#   safe = callPackage ./python-modules/safe { };

#   safe-pysha3 = callPackage ./python-modules/safe-pysha3 { };

#   safeio = callPackage ./python-modules/safeio { };

#   safetensors = callPackage ./python-modules/safetensors { };

#   safety = callPackage ./python-modules/safety { };

#   safety-schemas = callPackage ./python-modules/safety-schemas { };

#   sagemaker = callPackage ./python-modules/sagemaker { };

#   salmon-mail = callPackage ./python-modules/salmon-mail { };

#   sane = callPackage ./python-modules/sane {
#     inherit (pkgs) sane-backends;
#   };

#   saneyaml = callPackage ./python-modules/saneyaml { };

#   sampledata = callPackage ./python-modules/sampledata { };

#   samplerate = callPackage ./python-modules/samplerate {
#     inherit (pkgs) libsamplerate;
#   };

#   samsungctl = callPackage ./python-modules/samsungctl { };

#   samsungtvws = callPackage ./python-modules/samsungtvws { };

#   sanic = callPackage ./python-modules/sanic {
#     # Don't pass any `sanic` to avoid dependency loops.  `sanic-testing`
#     # has special logic to disable tests when this is the case.
#     sanic-testing = self.sanic-testing.override { sanic = null; };
#   };

#   sanic-auth = callPackage ./python-modules/sanic-auth { };

#   sanic-routing = callPackage ./python-modules/sanic-routing { };

#   sanic-testing = callPackage ./python-modules/sanic-testing { };

#   sanix = callPackage ./python-modules/sanix { };

#   sansio-multipart = callPackage ./python-modules/sansio-multipart { };

#   sarif-om = callPackage ./python-modules/sarif-om { };

#   sarge = callPackage ./python-modules/sarge { };

#   sasmodels = callPackage ./python-modules/sasmodels { };

#   scalene = callPackage ./python-modules/scalene { };

#   scales = callPackage ./python-modules/scales { };

#   scancode-toolkit = callPackage ./python-modules/scancode-toolkit { };

#   scapy = callPackage ./python-modules/scapy {
#     inherit (pkgs) libpcap; # Avoid confusion with python package of the same name
#   };

#   schedule = callPackage ./python-modules/schedule { };

#   schema = callPackage ./python-modules/schema { };

#   schemainspect = callPackage ./python-modules/schemainspect { };

#   schema-salad = callPackage ./python-modules/schema-salad { };

#   schemdraw = callPackage ./python-modules/schemdraw { };

#   schiene = callPackage ./python-modules/schiene { };

#   schwifty = callPackage ./python-modules/schwifty { };

#   scim2-filter-parser = callPackage ./python-modules/scim2-filter-parser { };

#   scikit-bio = callPackage ./python-modules/scikit-bio { };

#   scikit-build = callPackage ./python-modules/scikit-build { };

#   scikit-build-core = callPackage ./python-modules/scikit-build-core { };

#   scikit-fmm = callPackage ./python-modules/scikit-fmm { };

#   scikit-fuzzy = callPackage ./python-modules/scikit-fuzzy { };

#   scikit-hep-testdata = callPackage ./python-modules/scikit-hep-testdata { };

#   scikit-image = callPackage ./python-modules/scikit-image { };

#   scikit-learn = callPackage ./python-modules/scikit-learn {
#     inherit (pkgs) gfortran glibcLocales;
#   };

#   scikit-learn-extra = callPackage ./python-modules/scikit-learn-extra { };

#   scikit-misc = callPackage ./python-modules/scikit-misc { };

#   scikit-optimize = callPackage ./python-modules/scikit-optimize { };

#   scikit-posthocs = callPackage ./python-modules/scikit-posthocs { };

#   scikit-rf = callPackage ./python-modules/scikit-rf { };

#   scikits-odes = callPackage ./python-modules/scikits-odes { };

#   scikits-samplerate = callPackage ./python-modules/scikits-samplerate {
#     inherit (pkgs) libsamplerate;
#   };

#   scikit-tda = callPackage ./python-modules/scikit-tda { };

#   scipy = callPackage ./python-modules/scipy { };

#   scmrepo = callPackage ./python-modules/scmrepo { };

#   scour = callPackage ./python-modules/scour { };

#   scooby = callPackage ./python-modules/scooby { };

#   scp = callPackage ./python-modules/scp { };

#   scramp = callPackage ./python-modules/scramp { };

#   scrap-engine = callPackage ./python-modules/scrap-engine { };

#   scrapy = callPackage ./python-modules/scrapy { };

#   scrapy-deltafetch = callPackage ./python-modules/scrapy-deltafetch { };

#   scrapy-fake-useragent = callPackage ./python-modules/scrapy-fake-useragent { };

#   scrapy-splash = callPackage ./python-modules/scrapy-splash { };

#   screed = callPackage ./python-modules/screed { };

#   screeninfo = callPackage ./python-modules/screeninfo { };

#   screenlogicpy = callPackage ./python-modules/screenlogicpy { };

#   scripttest = callPackage ./python-modules/scripttest { };

#   scikit-survival = callPackage ./python-modules/scikit-survival { };

#   scs = callPackage ./python-modules/scs {
#     inherit (pkgs.darwin.apple_sdk.frameworks) Accelerate;
#   };

#   sdds = callPackage ./python-modules/sdds { };

#   sdkmanager = callPackage ./python-modules/sdkmanager { };

#   sdnotify = callPackage ./python-modules/sdnotify { };

#   seaborn = callPackage ./python-modules/seaborn { };

#   seabreeze = callPackage ./python-modules/seabreeze { };

#   seaserv = toPythonModule (pkgs.seafile-server.override {
#     python3 = self.python;
#   });

#   seasonal = callPackage ./python-modules/seasonal { };

#   seatconnect = callPackage ./python-modules/seatconnect { };

#   seccomp = callPackage ./python-modules/seccomp { };

#   secp256k1 = callPackage ./python-modules/secp256k1 {
#     inherit (pkgs) secp256k1;
#   };

#   secretstorage = callPackage ./python-modules/secretstorage { };

#   secure = callPackage ./python-modules/secure { };

#   securesystemslib = callPackage ./python-modules/securesystemslib { };

#   securetar = callPackage ./python-modules/securetar { };

#   securityreporter = callPackage ./python-modules/securityreporter { };

#   sectools = callPackage ./python-modules/sectools { };

#   seedir = callPackage ./python-modules/seedir { };

#   seekpath = callPackage ./python-modules/seekpath { };

#   segments = callPackage ./python-modules/segments { };

#   segno = callPackage ./python-modules/segno { };

#   segyio = toPythonModule (callPackage ./python-modules/segyio {
#     inherit (pkgs) cmake ninja;
#   });

#   selectors2 = callPackage ./python-modules/selectors2 { };

#   selenium = callPackage ./python-modules/selenium { };

#   selenium-wire = callPackage ./python-modules/selenium-wire { };

#   semantic-version = callPackage ./python-modules/semantic-version { };

#   semaphore-bot = callPackage ./python-modules/semaphore-bot { };

#   semver = callPackage ./python-modules/semver { };

#   send2trash = callPackage ./python-modules/send2trash { };

#   sendgrid = callPackage ./python-modules/sendgrid { };

#   sense-energy = callPackage ./python-modules/sense-energy { };

#   sensirion-ble = callPackage ./python-modules/sensirion-ble { };

#   sensor-state-data = callPackage ./python-modules/sensor-state-data { };

#   sensorpro-ble = callPackage ./python-modules/sensorpro-ble { };

#   sensorpush-ble = callPackage ./python-modules/sensorpush-ble { };

#   sentencepiece = callPackage ./python-modules/sentencepiece {
#     inherit (pkgs) sentencepiece;
#   };

#   sentence-splitter = callPackage ./python-modules/sentence-splitter { };

#   sentence-transformers = callPackage ./python-modules/sentence-transformers { };

#   sentinel = callPackage ./python-modules/sentinel { };

#   sentinels = callPackage ./python-modules/sentinels { };

#   sentry-sdk = callPackage ./python-modules/sentry-sdk { };

#   sepaxml = callPackage ./python-modules/sepaxml { };

#   seqdiag = callPackage ./python-modules/seqdiag { };

#   seqeval = callPackage ./python-modules/seqeval { };

#   serialio = callPackage ./python-modules/serialio { };

#   serializable = callPackage ./python-modules/serializable { };

#   serpent = callPackage ./python-modules/serpent { };

#   serpy = callPackage ./python-modules/serpy { };

#   servefile = callPackage ./python-modules/servefile { };

#   serverfiles = callPackage ./python-modules/serverfiles { };

#   serverlessrepo = callPackage ./python-modules/serverlessrepo { };

#   service-identity = callPackage ./python-modules/service-identity { };

  setproctitle = callPackage ./python-modules/setproctitle { };

#   setupmeta = callPackage ./python-modules/setupmeta { };

#   setuptools-changelog-shortener = callPackage ./python-modules/setuptools-changelog-shortener { };

#   setuptools-declarative-requirements = callPackage ./python-modules/setuptools-declarative-requirements { };

#   setuptools-dso = callPackage ./python-modules/setuptools-dso { };

#   setuptools-generate = callPackage ./python-modules/setuptools-generate { };

#   setuptools-gettext = callPackage ./python-modules/setuptools-gettext { };

#   setuptools-git = callPackage ./python-modules/setuptools-git { };

#   setuptools-git-versioning = callPackage ./python-modules/setuptools-git-versioning { };

#   setuptools-lint = callPackage ./python-modules/setuptools-lint { };

#   setuptools-odoo = callPackage ./python-modules/setuptools-odoo { };

#   setuptools-rust = callPackage ./python-modules/setuptools-rust { };

  setuptools-scm = callPackage ./python-modules/setuptools-scm { };

#   setuptools-scm-git-archive = callPackage ./python-modules/setuptools-scm-git-archive { };

#   setuptools-trial = callPackage ./python-modules/setuptools-trial { };

#   seventeentrack = callPackage ./python-modules/seventeentrack { };

#   sev-snp-measure = callPackage ./python-modules/sev-snp-measure { };

#   sexpdata = callPackage ./python-modules/sexpdata { };

#   sfepy = callPackage ./python-modules/sfepy { };

#   sfrbox-api = callPackage ./python-modules/sfrbox-api { };

#   sgmllib3k = callPackage ./python-modules/sgmllib3k { };

#   sgp4 = callPackage ./python-modules/sgp4 { };

#   shamir-mnemonic = callPackage ./python-modules/shamir-mnemonic { };

#   shap = callPackage ./python-modules/shap { };

#   shapely = callPackage ./python-modules/shapely { };

#   shapely_1_8 = callPackage ./python-modules/shapely/1.8.nix { };

#   shaperglot = callPackage ./python-modules/shaperglot { };

#   sharedmem = callPackage ./python-modules/sharedmem { };

#   sharkiq = callPackage ./python-modules/sharkiq { };

#   sharp-aquos-rc = callPackage ./python-modules/sharp-aquos-rc { };

#   shazamio = callPackage ./python-modules/shazamio { };

#   sh = callPackage ./python-modules/sh { };

#   shlib = callPackage ./python-modules/shlib { };

#   shellescape = callPackage ./python-modules/shellescape { };

#   shellingham = callPackage ./python-modules/shellingham { };

#   shiboken2 = toPythonModule (callPackage ./python-modules/shiboken2 {
#     inherit (pkgs) cmake llvmPackages_15 qt5;
#   });

#   shiboken6 = toPythonModule (callPackage ./python-modules/shiboken6 {
#     inherit (pkgs) cmake llvmPackages;
#   });

#   shippai = callPackage ./python-modules/shippai { };

#   shiv = callPackage ./python-modules/shiv { };

#   shodan = callPackage ./python-modules/shodan { };

#   shortuuid = callPackage ./python-modules/shortuuid { };

#   shouldbe = callPackage ./python-modules/shouldbe { };

#   should-dsl = callPackage ./python-modules/should-dsl { };

#   show-in-file-manager = callPackage ./python-modules/show-in-file-manager { };

#   showit = callPackage ./python-modules/showit { };

#   shtab = callPackage ./python-modules/shtab { };

#   shutilwhich = callPackage ./python-modules/shutilwhich { };

#   sievelib = callPackage ./python-modules/sievelib { };

#   signalslot = callPackage ./python-modules/signalslot { };

#   signedjson = callPackage ./python-modules/signedjson { };

#   signxml = callPackage ./python-modules/signxml { };

#   sigrok = callPackage ./python-modules/sigrok { };

#   sigstore = callPackage ./python-modules/sigstore { };

#   sigstore-protobuf-specs = callPackage ./python-modules/sigstore-protobuf-specs { };

#   sigstore-rekor-types = callPackage ./python-modules/sigstore-rekor-types { };

#   sigtools = callPackage ./python-modules/sigtools { };

#   simanneal = callPackage ./python-modules/simanneal { };

#   simber = callPackage ./python-modules/simber { };

#   simple-term-menu = callPackage ./python-modules/simple-term-menu { };

#   simpleaudio = callPackage ./python-modules/simpleaudio { };

#   simplebayes = callPackage ./python-modules/simplebayes { };

#   simpleeval = callPackage ./python-modules/simpleeval { };

#   simplefix = callPackage ./python-modules/simplefix { };

#   simplegeneric = callPackage ./python-modules/simplegeneric { };

#   simplehound = callPackage ./python-modules/simplehound { };

#   simpleitk = callPackage ./python-modules/simpleitk {
#     inherit (pkgs) simpleitk;
#   };

#   simplejson = callPackage ./python-modules/simplejson { };

#   simplekml = callPackage ./python-modules/simplekml { };

#   simplekv = callPackage ./python-modules/simplekv { };

#   simplemma = callPackage ./python-modules/simplemma { };

#   simplenote = callPackage ./python-modules/simplenote { };

#   simplepush = callPackage ./python-modules/simplepush { };

#   simplesat = callPackage ./python-modules/simplesat { };

#   simplesqlite = callPackage ./python-modules/simplesqlite { };

#   simple-dftd3 = callPackage ../development/libraries/science/chemistry/simple-dftd3/python.nix {
#     inherit (pkgs) simple-dftd3;
#   };

#   simple-di = callPackage ./python-modules/simple-di { };

#   simple-rest-client = callPackage ./python-modules/simple-rest-client { };

#   simple-rlp = callPackage ./python-modules/simple-rlp { };

#   simple-salesforce = callPackage ./python-modules/simple-salesforce { };

#   simple-websocket = callPackage ./python-modules/simple-websocket { };

#   simple-websocket-server = callPackage ./python-modules/simple-websocket-server { };

#   simplisafe-python = callPackage ./python-modules/simplisafe-python { };

#   simpful = callPackage ./python-modules/simpful { };

#   simpy = callPackage ./python-modules/simpy { };

#   single-source = callPackage ./python-modules/single-source { };

#   single-version = callPackage ./python-modules/single-version { };

#   signify = callPackage ./python-modules/signify { };

#   siobrultech-protocols = callPackage ./python-modules/siobrultech-protocols { };

#   siosocks = callPackage ./python-modules/siosocks { };

#   sip = callPackage ./python-modules/sip { };

#   sip4 = callPackage ./python-modules/sip/4.x.nix { };

#   sipyco = callPackage ./python-modules/sipyco { };

#   sisyphus-control = callPackage ./python-modules/sisyphus-control { };

#   siuba = callPackage ./python-modules/siuba { };

  six = callPackage ./python-modules/six { };

#   sjcl = callPackage ./python-modules/sjcl { };

#   skein = callPackage ./python-modules/skein { };

#   skidl = callPackage ./python-modules/skidl { };

#   skl2onnx = callPackage ./python-modules/skl2onnx { };

#   sklearn-deap = callPackage ./python-modules/sklearn-deap { };

#   skodaconnect = callPackage ./python-modules/skodaconnect { };

#   skorch = callPackage ./python-modules/skorch { };

#   skrl = callPackage ./python-modules/skrl { };

#   skybellpy = callPackage ./python-modules/skybellpy { };

#   skyfield = callPackage ./python-modules/skyfield { };

#   skytemple-dtef = callPackage ./python-modules/skytemple-dtef { };

#   skytemple-eventserver = callPackage ./python-modules/skytemple-eventserver { };

#   skytemple-files = callPackage ./python-modules/skytemple-files { };

#   skytemple-icons = callPackage ./python-modules/skytemple-icons { };

#   skytemple-rust = callPackage ./python-modules/skytemple-rust {
#     inherit (pkgs.darwin.apple_sdk.frameworks) Foundation;
#   };

#   skytemple-ssb-debugger = callPackage ./python-modules/skytemple-ssb-debugger { };

#   skytemple-ssb-emulator = callPackage ./python-modules/skytemple-ssb-emulator { };

#   slack-bolt = callPackage ./python-modules/slack-bolt { };

#   slack-sdk = callPackage ./python-modules/slack-sdk { };

#   slackclient = callPackage ./python-modules/slackclient { };

#   sleekxmpp = callPackage ./python-modules/sleekxmpp { };

#   sleepyq = callPackage ./python-modules/sleepyq { };

#   slicedimage = callPackage ./python-modules/slicedimage { };

#   slicer = callPackage ./python-modules/slicer { };

#   slicerator = callPackage ./python-modules/slicerator { };

#   slither-analyzer = callPackage ./python-modules/slither-analyzer { };

#   slimit = callPackage ./python-modules/slimit { };

#   slixmpp = callPackage ./python-modules/slixmpp {
#     inherit (pkgs) gnupg;
#   };

#   slob = callPackage ./python-modules/slob { };

#   slovnet = callPackage ./python-modules/slovnet { };

#   slowapi = callPackage ./python-modules/slowapi { };

#   slpp = callPackage ./python-modules/slpp { };

#   slugid = callPackage ./python-modules/slugid { };

#   sly = callPackage ./python-modules/sly { };

#   smart-meter-texas = callPackage ./python-modules/smart-meter-texas { };

#   smart-open = callPackage ./python-modules/smart-open { };

#   smarthab = callPackage ./python-modules/smarthab { };

#   smartypants = callPackage ./python-modules/smartypants { };

#   smbprotocol = callPackage ./python-modules/smbprotocol { };

#   smbus-cffi = callPackage ./python-modules/smbus-cffi { };

#   smbus2 = callPackage ./python-modules/smbus2 { };

#   smdebug-rulesconfig = callPackage ./python-modules/smdebug-rulesconfig { };

#   smhi-pkg = callPackage ./python-modules/smhi-pkg { };

#   smmap = callPackage ./python-modules/smmap { };

#   smpplib = callPackage ./python-modules/smpplib { };

#   smpp-pdu = callPackage ./python-modules/smpp-pdu { };

#   smtpdfix = callPackage ./python-modules/smtpdfix { };

#   snack = toPythonModule (pkgs.newt.override {
#     inherit (self) python;
#   });

#   snakemake = toPythonModule (pkgs.snakemake.override {
#     python3 = python;
#   });

#   snakemake-executor-plugin-cluster-generic = callPackage ./python-modules/snakemake-executor-plugin-cluster-generic { };

#   snakemake-interface-common = callPackage ./python-modules/snakemake-interface-common { };

#   snakemake-interface-executor-plugins = callPackage ./python-modules/snakemake-interface-executor-plugins { };

#   snakemake-interface-report-plugins = callPackage ./python-modules/snakemake-interface-report-plugins { };

#   snakemake-interface-storage-plugins = callPackage ./python-modules/snakemake-interface-storage-plugins { };

#   snakemake-storage-plugin-s3 = callPackage ./python-modules/snakemake-storage-plugin-s3 { };

#   snakemake-storage-plugin-xrootd = callPackage ./python-modules/snakemake-storage-plugin-xrootd { };

#   snakebite = callPackage ./python-modules/snakebite { };

#   snakeviz = callPackage ./python-modules/snakeviz { };

#   snap-helpers = callPackage ./python-modules/snap-helpers { };

#   snapcast = callPackage ./python-modules/snapcast { };

#   snapshottest = callPackage ./python-modules/snapshottest { };

#   snaptime = callPackage ./python-modules/snaptime { };

#   sniffio = callPackage ./python-modules/sniffio { };

#   snitun = callPackage ./python-modules/snitun { };

#   snorkel = callPackage ./python-modules/snorkel { };

  snowballstemmer = callPackage ./python-modules/snowballstemmer { };

#   snowflake-connector-python = callPackage ./python-modules/snowflake-connector-python { };

#   snowflake-sqlalchemy = callPackage ./python-modules/snowflake-sqlalchemy { };

#   snscrape = callPackage ./python-modules/snscrape { };

#   snuggs = callPackage ./python-modules/snuggs { };

#   soapysdr = toPythonModule (pkgs.soapysdr.override {
#     inherit (self) python;
#     usePython = true;
#   });

#   soapysdr-with-plugins = toPythonModule (pkgs.soapysdr-with-plugins.override {
#     inherit (self) python;
#     usePython = true;
#   });

#   socketio-client = callPackage ./python-modules/socketio-client { };

#   social-auth-app-django = callPackage ./python-modules/social-auth-app-django { };

#   social-auth-core = callPackage ./python-modules/social-auth-core { };

#   socialscan = callPackage ./python-modules/socialscan { };

#   socid-extractor =  callPackage ./python-modules/socid-extractor { };

#   sockio = callPackage ./python-modules/sockio { };

#   sockjs = callPackage ./python-modules/sockjs { };

#   sockjs-tornado = callPackage ./python-modules/sockjs-tornado { };

#   socksio = callPackage ./python-modules/socksio { };

#   socksipy-branch = callPackage ./python-modules/socksipy-branch { };

#   soco = callPackage ./python-modules/soco { };

#   softlayer = callPackage ./python-modules/softlayer { };

#   solaredge = callPackage ./python-modules/solaredge { };

#   solax = callPackage ./python-modules/solax { };

#   solc-select = callPackage ./python-modules/solc-select { };

#   solo-python = disabledIf (!pythonAtLeast "3.6") (callPackage ./python-modules/solo-python { });

#   somajo = callPackage ./python-modules/somajo { };

#   somfy-mylink-synergy = callPackage ./python-modules/somfy-mylink-synergy { };

#   sonarr = callPackage ./python-modules/sonarr { };

#   sonos-websocket = callPackage ./python-modules/sonos-websocket { };

#   sopel = callPackage ./python-modules/sopel { };

#   sorl-thumbnail = callPackage ./python-modules/sorl-thumbnail { };

#   sortedcollections = callPackage ./python-modules/sortedcollections { };

#   sortedcontainers = callPackage ./python-modules/sortedcontainers { };

#   soundcloud-v2 = callPackage ./python-modules/soundcloud-v2 { };

#   sounddevice = callPackage ./python-modules/sounddevice { };

#   soundfile = callPackage ./python-modules/soundfile { };

#   soupsieve = callPackage ./python-modules/soupsieve { };

#   sourmash = callPackage ./python-modules/sourmash { };

#   soxr = callPackage ./python-modules/soxr {
#     libsoxr = pkgs.soxr;
#   };

#   spacy = callPackage ./python-modules/spacy { };

#   spacy-alignments = callPackage ./python-modules/spacy-alignments { };

#   spacy-legacy = callPackage ./python-modules/spacy/legacy.nix { };

#   spacy-loggers = callPackage ./python-modules/spacy-loggers { };

#   spacy-lookups-data = callPackage ./python-modules/spacy/lookups-data.nix { };

#   spacy-models = callPackage ./python-modules/spacy/models.nix {
#       inherit (pkgs) jq;
#   };

#   spacy-pkuseg = callPackage ./python-modules/spacy-pkuseg { };

#   spacy-transformers = callPackage ./python-modules/spacy-transformers { };

#   spake2 = callPackage ./python-modules/spake2 { };

#   spark-parser = callPackage ./python-modules/spark-parser { };

#   sparklines = callPackage ./python-modules/sparklines { };

#   sparqlwrapper = callPackage ./python-modules/sparqlwrapper { };

#   sparse = callPackage ./python-modules/sparse { };

#   spatial-image = callPackage ./python-modules/spatial-image { };

#   spdx = callPackage ./python-modules/spdx { };

#   spdx-lookup = callPackage ./python-modules/spdx-lookup { };

#   spdx-tools = callPackage ./python-modules/spdx-tools { };

#   speaklater = callPackage ./python-modules/speaklater { };

#   speaklater3 = callPackage ./python-modules/speaklater3 { };

#   spectral-cube = callPackage ./python-modules/spectral-cube { };

#   speechbrain = callPackage ./python-modules/speechbrain { };

#   speechrecognition = callPackage ./python-modules/speechrecognition { };

#   speedtest-cli = callPackage ./python-modules/speedtest-cli { };

#   speg = callPackage ./python-modules/speg { };

#   spglib = callPackage ./python-modules/spglib { };

#   sphfile = callPackage ./python-modules/sphfile { };

#   spiderpy = callPackage ./python-modules/spiderpy { };

#   spinners = callPackage ./python-modules/spinners { };

#   sphinx-automodapi = callPackage ./python-modules/sphinx-automodapi {
#     graphviz = pkgs.graphviz;
#   };

#   sphinx-better-theme = callPackage ./python-modules/sphinx-better-theme { };

#   sphinx-book-theme = callPackage ./python-modules/sphinx-book-theme { };

#   sphinx-codeautolink = callPackage ./python-modules/sphinx-codeautolink { };

#   sphinx-comments = callPackage ./python-modules/sphinx-comments { };

#   sphinx-design = callPackage ./python-modules/sphinx-design { };

#   sphinx-external-toc = callPackage ./python-modules/sphinx-external-toc { };

#   sphinx-fortran = callPackage ./python-modules/sphinx-fortran { };

#   sphinx-hoverxref = callPackage ./python-modules/sphinx-hoverxref { };

#   sphinx-intl = callPackage ./python-modules/sphinx-intl { };

#   sphinx-jupyterbook-latex = callPackage ./python-modules/sphinx-jupyterbook-latex { };

#   sphinx-multitoc-numbering = callPackage ./python-modules/sphinx-multitoc-numbering { };

#   sphinx-notfound-page = callPackage ./python-modules/sphinx-notfound-page { };

#   sphinx-pytest = callPackage ./python-modules/sphinx-pytest { };

#   sphinx-prompt = callPackage ./python-modules/sphinx-prompt { };

#   sphinx-sitemap = callPackage ./python-modules/sphinx-sitemap { };

#   sphinx-thebe = callPackage ./python-modules/sphinx-thebe { };

#   sphinx-tabs = callPackage ./python-modules/sphinx-tabs { };

#   sphinx-togglebutton = callPackage ./python-modules/sphinx-togglebutton { };

#   sphinxcontrib-actdiag = callPackage ./python-modules/sphinxcontrib-actdiag { };

#   sphinxcontrib-apidoc = callPackage ./python-modules/sphinxcontrib-apidoc { };

  sphinxcontrib-applehelp = callPackage ./python-modules/sphinxcontrib-applehelp { };

#   sphinxcontrib-asyncio = callPackage ./python-modules/sphinxcontrib-asyncio { };

#   sphinx-autoapi = callPackage ./python-modules/sphinx-autoapi { };

#   sphinxcontrib-bayesnet = callPackage ./python-modules/sphinxcontrib-bayesnet { };

#   sphinxcontrib-bibtex = callPackage ./python-modules/sphinxcontrib-bibtex { };

#   sphinxcontrib-blockdiag = callPackage ./python-modules/sphinxcontrib-blockdiag { };

#   sphinxcontrib-confluencebuilder = callPackage ./python-modules/sphinxcontrib-confluencebuilder { };

  sphinxcontrib-devhelp = callPackage ./python-modules/sphinxcontrib-devhelp { };

#   sphinxcontrib-excel-table = callPackage ./python-modules/sphinxcontrib-excel-table { };

#   sphinxcontrib-fulltoc = callPackage ./python-modules/sphinxcontrib-fulltoc { };

  sphinxcontrib-htmlhelp = callPackage ./python-modules/sphinxcontrib-htmlhelp { };

#   sphinxcontrib-httpdomain = callPackage ./python-modules/sphinxcontrib-httpdomain { };

#   sphinxcontrib-jquery = callPackage ./python-modules/sphinxcontrib-jquery { };

  sphinxcontrib-jsmath = callPackage ./python-modules/sphinxcontrib-jsmath { };

#   sphinxcontrib-katex = callPackage ./python-modules/sphinxcontrib-katex { };

#   sphinxcontrib-mscgen = callPackage ./python-modules/sphinxcontrib-mscgen {
#     inherit (pkgs) mscgen;
#   };

  sphinxcontrib-log-cabinet = callPackage ./python-modules/sphinxcontrib-log-cabinet { };

#   sphinxcontrib-nwdiag = callPackage ./python-modules/sphinxcontrib-nwdiag { };

#   sphinxcontrib-newsfeed = callPackage ./python-modules/sphinxcontrib-newsfeed { };

#   sphinxcontrib-openapi = callPackage ./python-modules/sphinxcontrib-openapi { };

#   sphinxcontrib-plantuml = callPackage ./python-modules/sphinxcontrib-plantuml {
#     inherit (pkgs) plantuml;
#   };

#   sphinxcontrib-programoutput = callPackage ./python-modules/sphinxcontrib-programoutput { };

  sphinxcontrib-qthelp = callPackage ./python-modules/sphinxcontrib-qthelp { };

  sphinxcontrib-serializinghtml = callPackage ./python-modules/sphinxcontrib-serializinghtml { };

#   sphinxcontrib-seqdiag = callPackage ./python-modules/sphinxcontrib-seqdiag { };

#   sphinxcontrib-spelling = callPackage ./python-modules/sphinxcontrib-spelling { };

#   sphinxcontrib-tikz = callPackage ./python-modules/sphinxcontrib-tikz { };

#   sphinxcontrib-wavedrom = callPackage ./python-modules/sphinxcontrib-wavedrom { };

  sphinxcontrib-websupport = callPackage ./python-modules/sphinxcontrib-websupport { };

#   sphinxcontrib-youtube = callPackage ./python-modules/sphinxcontrib-youtube { };

  sphinx = callPackage ./python-modules/sphinx { };

#   sphinx-argparse = callPackage ./python-modules/sphinx-argparse { };

#   sphinx-autobuild = callPackage ./python-modules/sphinx-autobuild { };

#   sphinx-autodoc-typehints = callPackage ./python-modules/sphinx-autodoc-typehints { };

#   sphinx-basic-ng = callPackage ./python-modules/sphinx-basic-ng { };

#   sphinx-copybutton = callPackage ./python-modules/sphinx-copybutton { };

#   sphinxemoji = callPackage ./python-modules/sphinxemoji { };

#   sphinx-inline-tabs = callPackage ./python-modules/sphinx-inline-tabs { };

  sphinx-issues = callPackage ./python-modules/sphinx-issues { };

#   sphinx-jinja = callPackage ./python-modules/sphinx-jinja { };

#   sphinx-markdown-parser = callPackage ./python-modules/sphinx-markdown-parser { };

#   sphinx-markdown-tables = callPackage ./python-modules/sphinx-markdown-tables { };

#   sphinx-material = callPackage ./python-modules/sphinx-material { };

#   sphinx-mdinclude = callPackage ./python-modules/sphinx-mdinclude { };

#   sphinx-rtd-dark-mode = callPackage ./python-modules/sphinx-rtd-dark-mode { };

#   sphinx-rtd-theme = callPackage ./python-modules/sphinx-rtd-theme { };

#   sphinx-serve = callPackage ./python-modules/sphinx-serve { };

#   sphinx-testing = callPackage ./python-modules/sphinx-testing { };

#   sphinx-version-warning = callPackage ./python-modules/sphinx-version-warning { };

#   sphinxext-opengraph = callPackage ./python-modules/sphinxext-opengraph { };

#   spidev = callPackage ./python-modules/spidev { };

#   splinter = callPackage ./python-modules/splinter { };

#   spotipy = callPackage ./python-modules/spotipy { };

#   spsdk = callPackage ./python-modules/spsdk { };

#   spur = callPackage ./python-modules/spur { };

#   spyder = callPackage ./python-modules/spyder { };

#   spyder-kernels = callPackage ./python-modules/spyder-kernels { };

#   spylls = callPackage ./python-modules/spylls { };

#   spyse-python = callPackage ./python-modules/spyse-python { };

#   spython = callPackage ./python-modules/spython { };

#   sqids = callPackage ./python-modules/sqids { };

#   sqlalchemy = callPackage ./python-modules/sqlalchemy { };

#   sqlalchemy_1_4 = callPackage ./python-modules/sqlalchemy/1_4.nix { };

#   sqlalchemy-citext = callPackage ./python-modules/sqlalchemy-citext { };

#   sqlalchemy-continuum = callPackage ./python-modules/sqlalchemy-continuum { };

#   sqlalchemy-i18n = callPackage ./python-modules/sqlalchemy-i18n { };

#   sqlalchemy-jsonfield = callPackage ./python-modules/sqlalchemy-jsonfield { };

#   sqlalchemy-migrate = callPackage ./python-modules/sqlalchemy-migrate { };

#   sqlalchemy-mixins = callPackage ./python-modules/sqlalchemy-mixins { };

#   sqlalchemy-utils = callPackage ./python-modules/sqlalchemy-utils { };

#   sqlalchemy-views = callPackage ./python-modules/sqlalchemy-views { };

#   sqlbag = callPackage ./python-modules/sqlbag { };

#   sqlglot = callPackage ./python-modules/sqlglot { };

#   sqlitedict = callPackage ./python-modules/sqlitedict { };

#   sqlite-migrate = callPackage ./python-modules/sqlite-migrate { };

#   sqlite-fts4 = callPackage ./python-modules/sqlite-fts4 { };

#   sqlite-utils = callPackage ./python-modules/sqlite-utils { };

#   sqliteschema = callPackage ./python-modules/sqliteschema { };

#   sqlmap = callPackage ./python-modules/sqlmap { };

#   sqlmodel = callPackage ./python-modules/sqlmodel { };

#   sqlobject = callPackage ./python-modules/sqlobject { };

#   sqlparse = callPackage ./python-modules/sqlparse { };

#   sqlsoup = callPackage ./python-modules/sqlsoup { };

#   sqltrie = callPackage ./python-modules/sqltrie { };

#   squarify = callPackage ./python-modules/squarify { };

#   sre-yield = callPackage ./python-modules/sre-yield { };

#   srp = callPackage ./python-modules/srp { };

#   srpenergy = callPackage ./python-modules/srpenergy { };

#   srptools = callPackage ./python-modules/srptools { };

#   srsly = callPackage ./python-modules/srsly { };

#   srt = callPackage ./python-modules/srt { };

#   srvlookup = callPackage ./python-modules/srvlookup { };

#   ssdeep = callPackage ./python-modules/ssdeep {
#     inherit (pkgs) ssdeep;
#   };

#   ssdp = callPackage ./python-modules/ssdp { };

#   ssdpy = callPackage ./python-modules/ssdpy { };

#   sseclient = callPackage ./python-modules/sseclient { };

#   sseclient-py = callPackage ./python-modules/sseclient-py { };

#   sse-starlette = callPackage ./python-modules/sse-starlette { };

#   sshfs = callPackage ./python-modules/sshfs { };

#   sshpubkeys = callPackage ./python-modules/sshpubkeys { };

#   sshtunnel = callPackage ./python-modules/sshtunnel { };

#   sslib = callPackage ./python-modules/sslib { };

#   ssg = callPackage ./python-modules/ssg { };

#   stack-data = callPackage ./python-modules/stack-data { };

#   stanio = callPackage ./python-modules/stanio { };

#   stanza = callPackage ./python-modules/stanza { };

#   starlette = callPackage ./python-modules/starlette { };

#   starlette-context = callPackage ./python-modules/starlette-context { };

#   starlette-wtf = callPackage ./python-modules/starlette-wtf { };

#   starkbank-ecdsa = callPackage ./python-modules/starkbank-ecdsa { };

#   starline = callPackage ./python-modules/starline { };

#   stashy = callPackage ./python-modules/stashy { };

#   static3 = callPackage ./python-modules/static3 { };

#   staticmap = callPackage ./python-modules/staticmap { };

#   staticjinja = callPackage ./python-modules/staticjinja { };

#   statistics = callPackage ./python-modules/statistics { };

#   statmake = callPackage ./python-modules/statmake { };

#   statsd = callPackage ./python-modules/statsd { };

#   statsmodels = callPackage ./python-modules/statsmodels { };

#   std-uritemplate = callPackage ./python-modules/std-uritemplate { };

#   std2 = callPackage ./python-modules/std2 { };

#   stdiomask = callPackage ./python-modules/stdiomask { };

#   stdlib-list = callPackage ./python-modules/stdlib-list { };

#   stdlibs = callPackage ./python-modules/stdlibs { };

#   steamodd = callPackage ./python-modules/steamodd { };

#   steamship = callPackage ./python-modules/steamship { };

#   stem = callPackage ./python-modules/stem { };

#   stemming = callPackage ./python-modules/stemming { };

#   stestr = callPackage ./python-modules/stestr { };

#   stevedore = callPackage ./python-modules/stevedore { };

#   stickytape = callPackage ./python-modules/stickytape { };

#   stim = callPackage ./python-modules/stim { };

#   stix2-patterns = callPackage ./python-modules/stix2-patterns { };

#   stm32loader = callPackage ./python-modules/stm32loader { };

#   stone = callPackage ./python-modules/stone { };

#   stookalert = callPackage ./python-modules/stookalert { };

#   stopit = callPackage ./python-modules/stopit { };

#   stransi = callPackage ./python-modules/stransi { };

#   strategies = callPackage ./python-modules/strategies { };

#   stravalib = callPackage ./python-modules/stravalib { };

#   strawberry-graphql = callPackage ./python-modules/strawberry-graphql { };

#   strct = callPackage ./python-modules/strct { };

#   streamdeck = callPackage ./python-modules/streamdeck { };

#   streaming-form-data = callPackage ./python-modules/streaming-form-data { };

#   streamlabswater = callPackage ./python-modules/streamlabswater { };

#   streamlit = callPackage ./python-modules/streamlit { };

#   streamz = callPackage ./python-modules/streamz { };

#   strenum =  callPackage ./python-modules/strenum { };

#   strict-rfc3339 = callPackage ./python-modules/strict-rfc3339 { };

#   strictyaml = callPackage ./python-modules/strictyaml { };

#   stringbrewer = callPackage ./python-modules/stringbrewer { };

#   stringcase = callPackage ./python-modules/stringcase { };

#   stringly = callPackage ./python-modules/stringly { };

#   stringparser = callPackage ./python-modules/stringparser { };

#   stripe = callPackage ./python-modules/stripe { };

#   striprtf = callPackage ./python-modules/striprtf { };

#   structlog = callPackage ./python-modules/structlog { };

#   stubserver = callPackage ./python-modules/stubserver { };

#   stumpy = callPackage ./python-modules/stumpy { };

#   stupidartnet = callPackage ./python-modules/stupidartnet { };

#   stups-cli-support = callPackage ./python-modules/stups-cli-support { };

#   stups-fullstop = callPackage ./python-modules/stups-fullstop { };

#   stups-pierone = callPackage ./python-modules/stups-pierone { };

#   stups-tokens = callPackage ./python-modules/stups-tokens { };

#   stups-zign = callPackage ./python-modules/stups-zign { };

#   stytra = callPackage ./python-modules/stytra { };

#   subarulink = callPackage ./python-modules/subarulink { };

#   subliminal = callPackage ./python-modules/subliminal { };

#   subprocess-tee = callPackage ./python-modules/subprocess-tee { };

#   subunit = callPackage ./python-modules/subunit {
#     inherit (pkgs) subunit cppunit check;
#   };

#   subunit2sql = callPackage ./python-modules/subunit2sql { };

#   subzerod = callPackage ./python-modules/subzerod { };

#   succulent = callPackage ./python-modules/succulent { };

#   sudachidict-core = callPackage ./python-modules/sudachidict { };

#   sudachidict-full = callPackage ./python-modules/sudachidict {
#     sudachidict = pkgs.sudachidict.override { dict-type = "full"; };
#   };

#   sudachidict-small = callPackage ./python-modules/sudachidict {
#     sudachidict = pkgs.sudachidict.override { dict-type = "small"; };
#   };

#   sudachipy = callPackage ./python-modules/sudachipy { };

#   sumo = callPackage ./python-modules/sumo { };

#   sumtypes = callPackage ./python-modules/sumtypes { };

#   summarytools = callPackage ./python-modules/summarytools { };

#   sunpy = callPackage ./python-modules/sunpy { };

#   sunwatcher = callPackage ./python-modules/sunwatcher { };

#   sunweg = callPackage ./python-modules/sunweg { };

#   supervise-api = callPackage ./python-modules/supervise-api { };

#   supervisor = callPackage ./python-modules/supervisor { };

#   superqt = callPackage ./python-modules/superqt { };

#   sure = callPackage ./python-modules/sure { };

#   surepy = callPackage ./python-modules/surepy { };

#   surt = callPackage ./python-modules/surt { };

#   survey = callPackage ./python-modules/survey { };

#   svg2tikz = callPackage ./python-modules/svg2tikz { };

#   svglib = callPackage ./python-modules/svglib { };

#   svg-path = callPackage ./python-modules/svg-path { };

#   svg-py = callPackage ./python-modules/svg-py { };

#   svgelements = callPackage ./python-modules/svgelements { };

#   svgutils = callPackage ./python-modules/svgutils { };

#   svgwrite = callPackage ./python-modules/svgwrite { };

#   sv-ttk = callPackage ./python-modules/sv-ttk { };

#   swagger-spec-validator = callPackage ./python-modules/swagger-spec-validator { };

#   swagger-ui-bundle = callPackage ./python-modules/swagger-ui-bundle { };

#   switchbot-api = callPackage ./python-modules/switchbot-api { };

#   swift = callPackage ./python-modules/swift { };

#   swisshydrodata = callPackage ./python-modules/swisshydrodata { };

#   swspotify = callPackage ./python-modules/swspotify { };

#   sybil = callPackage ./python-modules/sybil { };

#   symengine = callPackage ./python-modules/symengine {
#     inherit (pkgs) symengine;
#   };

#   sympy = callPackage ./python-modules/sympy { };

#   symspellpy = callPackage ./python-modules/symspellpy { };

#   syncedlyrics = callPackage ./python-modules/syncedlyrics { };

#   syncer = callPackage ./python-modules/syncer { };

#   synergy = callPackage ./python-modules/synergy { };

#   synologydsm-api = callPackage ./python-modules/synologydsm-api { };

#   syslog-rfc5424-formatter = callPackage ./python-modules/syslog-rfc5424-formatter { };

#   systembridge = callPackage ./python-modules/systembridge { };

#   systembridgeconnector = callPackage ./python-modules/systembridgeconnector { };

#   systembridgemodels = callPackage ./python-modules/systembridgemodels { };

#   systemd = callPackage ./python-modules/systemd {
#     inherit (pkgs) systemd;
#   };

#   sysv-ipc = callPackage ./python-modules/sysv-ipc { };

#   syrupy = callPackage ./python-modules/syrupy { };

#   tabcmd = callPackage ./python-modules/tabcmd { };

#   tableaudocumentapi = callPackage ./python-modules/tableaudocumentapi { };

#   tableauserverclient = callPackage ./python-modules/tableauserverclient { };

#   tabledata = callPackage ./python-modules/tabledata { };

#   tables = callPackage ./python-modules/tables { };

#   tablib = callPackage ./python-modules/tablib { };

#   tabula-py = callPackage ./python-modules/tabula-py { };

#   tabulate = callPackage ./python-modules/tabulate { };

#   tabview = callPackage ./python-modules/tabview { };

#   taco = toPythonModule (pkgs.taco.override {
#     inherit (self) python;
#     enablePython = true;
#   });

#   tadasets = callPackage ./python-modules/tadasets { };

#   tag-expressions = callPackage ./python-modules/tag-expressions { };

#   tago = callPackage ./python-modules/tago { };

#   tagoio-sdk = callPackage ./python-modules/tagoio-sdk { };

#   tahoma-api = callPackage ./python-modules/tahoma-api { };

#   tailer = callPackage ./python-modules/tailer { };

#   tailscale = callPackage ./python-modules/tailscale { };

#   takethetime = callPackage ./python-modules/takethetime { };

#   tank-utility = callPackage ./python-modules/tank-utility { };

#   tappy = callPackage ./python-modules/tappy { };

#   tasklib = callPackage ./python-modules/tasklib { };

#   taskw = callPackage ./python-modules/taskw { };

#   taskw-ng = callPackage ./python-modules/taskw-ng { };

#   tatsu = callPackage ./python-modules/tatsu { };

#   taxi = callPackage ./python-modules/taxi { };

#   tbats = callPackage ./python-modules/tbats { };

#   tblib = callPackage ./python-modules/tblib { };

#   tblite = callPackage ../development/libraries/science/chemistry/tblite/python.nix {
#     inherit (pkgs) tblite meson simple-dftd3;
#   };

#   tbm-utils = callPackage ./python-modules/tbm-utils { };

#   tcolorpy = callPackage ./python-modules/tcolorpy { };

#   tcxparser = callPackage ./python-modules/tcxparser { };

#   tcxreader = callPackage ./python-modules/tcxreader { };

#   tdir = callPackage ./python-modules/tdir { };

#   teamcity-messages = callPackage ./python-modules/teamcity-messages { };

#   telegram = callPackage ./python-modules/telegram { };

#   telegraph = callPackage ./python-modules/telegraph { };

#   telepath = callPackage ./python-modules/telepath { };

#   telethon = callPackage ./python-modules/telethon {
#     inherit (pkgs) openssl;
#   };

#   telethon-session-sqlalchemy = callPackage ./python-modules/telethon-session-sqlalchemy { };

#   teletype = callPackage ./python-modules/teletype { };

#   telfhash = callPackage ./python-modules/telfhash { };

#   telegram-text = callPackage ./python-modules/telegram-text { };

#   temescal = callPackage ./python-modules/temescal { };

#   temperusb = callPackage ./python-modules/temperusb { };

#   tempest = callPackage ./python-modules/tempest { };

#   tempita = callPackage ./python-modules/tempita { };

#   templateflow = callPackage ./python-modules/templateflow { };

#   tempora = callPackage ./python-modules/tempora { };

#   tenacity = callPackage ./python-modules/tenacity { };

#   tencentcloud-sdk-python = callPackage ./python-modules/tencentcloud-sdk-python { };

#   tendo = callPackage ./python-modules/tendo { };

#   tensorboard-data-server = callPackage ./python-modules/tensorboard-data-server { };

#   tensorboard-plugin-profile = callPackage ./python-modules/tensorboard-plugin-profile { };

#   tensorboard-plugin-wit = callPackage ./python-modules/tensorboard-plugin-wit { };

#   tensorboard = callPackage ./python-modules/tensorboard { };

#   tensorboardx = callPackage ./python-modules/tensorboardx { };

#   tensordict = callPackage ./python-modules/tensordict { };

#   tensorflow-bin = callPackage ./python-modules/tensorflow/bin.nix {
#     inherit (pkgs.config) cudaSupport;
#   };

#   tensorflow-build = let
#     compat = rec {
#       protobufTF = pkgs.protobuf_21.override {
#         abseil-cpp = pkgs.abseil-cpp_202301;
#       };
#       grpcTF = (pkgs.grpc.overrideAttrs (
#         oldAttrs: rec {
#           # nvcc fails on recent grpc versions, so we use the latest patch level
#           #  of the grpc version bundled by upstream tensorflow to allow CUDA
#           #  support
#           version = "1.27.3";
#           src = pkgs.fetchFromGitHub {
#             owner = "grpc";
#             repo = "grpc";
#             rev = "v${version}";
#             hash = "sha256-PpiOT4ZJe1uMp5j+ReQulC9jpT0xoR2sAl6vRYKA0AA=";
#             fetchSubmodules = true;
#           };
#           patches = [ ];
#           postPatch = ''
#             sed -i "s/-std=c++11/-std=c++17/" CMakeLists.txt
#             echo "set(CMAKE_CXX_STANDARD 17)" >> CMakeLists.txt
#           '';
#         })
#       ).override {
#         protobuf = protobufTF;
#       };
#       protobuf-pythonTF = self.protobuf.override {
#         protobuf = protobufTF;
#       };
#       grpcioTF = self.grpcio.override {
#         protobuf = protobufTF;
#         grpc = grpcTF;
#       };
#       tensorboard-plugin-profileTF = self.tensorboard-plugin-profile.override {
#         protobuf = protobuf-pythonTF;
#       };
#       tensorboardTF = self.tensorboard.override {
#         grpcio = grpcioTF;
#         protobuf = protobuf-pythonTF;
#         tensorboard-plugin-profile = tensorboard-plugin-profileTF;
#       };
#     };
#   in
#   callPackage ./python-modules/tensorflow {
#     inherit (pkgs.darwin) cctools;
#     inherit (pkgs.config) cudaSupport;
#     inherit (pkgs.darwin.apple_sdk.frameworks) Foundation Security;
#     flatbuffers-core = pkgs.flatbuffers;
#     flatbuffers-python = self.flatbuffers;
#     protobuf-core = compat.protobufTF;
#     protobuf-python = compat.protobuf-pythonTF;
#     grpc = compat.grpcTF;
#     grpcio = compat.grpcioTF;
#     tensorboard = compat.tensorboardTF;
#     abseil-cpp = pkgs.abseil-cpp_202301;

#     # Tensorflow 2.13 doesn't support gcc13:
#     # https://github.com/tensorflow/tensorflow/issues/61289
#     #
#     # We use the nixpkgs' default libstdc++ to stay compatible with other
#     # python modules
#     stdenv = pkgs.stdenvAdapters.useLibsFrom stdenv pkgs.gcc12Stdenv;
#   };

#   tensorflow-datasets = callPackage ./python-modules/tensorflow-datasets { };

#   tensorflow-estimator-bin = callPackage ./python-modules/tensorflow-estimator/bin.nix { };

#   tensorflow-metadata = callPackage ./python-modules/tensorflow-metadata { };

#   tensorflow-probability = callPackage ./python-modules/tensorflow-probability {
#     inherit (pkgs.darwin) cctools;
#   };

#   tensorflow = self.tensorflow-build;

#   tensorflowWithCuda = self.tensorflow.override {
#     cudaSupport = true;
#   };

#   tensorflowWithoutCuda = self.tensorflow.override {
#     cudaSupport = false;
#   };

#   tensorly = callPackage ./python-modules/tensorly { };

#   tensorrt = callPackage ./python-modules/tensorrt { cudaPackages = pkgs.cudaPackages_11; };

#   tensorstore = callPackage ./python-modules/tensorstore { };

#   tellduslive = callPackage ./python-modules/tellduslive { };

#   termcolor = callPackage ./python-modules/termcolor { };

#   termgraph = callPackage ./python-modules/termgraph { };

#   terminado = callPackage ./python-modules/terminado { };

#   terminaltables = callPackage ./python-modules/terminaltables { };

#   termplotlib = callPackage ./python-modules/termplotlib { };

#   termstyle = callPackage ./python-modules/termstyle { };

#   tern = callPackage ./python-modules/tern { };

#   tesla-fleet-api = callPackage ./python-modules/tesla-fleet-api { };

#   tesla-powerwall = callPackage ./python-modules/tesla-powerwall { };

#   tesla-wall-connector = callPackage ./python-modules/tesla-wall-connector { };

#   teslajsonpy = callPackage ./python-modules/teslajsonpy { };

#   tess = callPackage ./python-modules/tess { };

#   tesserocr = callPackage ./python-modules/tesserocr { };

#   testcontainers = callPackage ./python-modules/testcontainers { };

#   testfixtures = callPackage ./python-modules/testfixtures { };

#   texsoup = callPackage ./python-modules/texsoup { };

#   textfsm = callPackage ./python-modules/textfsm { };

#   textile = callPackage ./python-modules/textile { };

#   textparser = callPackage ./python-modules/textparser { };

#   textual = callPackage ./python-modules/textual { };

#   textual-dev = callPackage ./python-modules/textual-dev { };

#   textual-universal-directorytree = callPackage ./python-modules/textual-universal-directorytree { };

#   testbook = callPackage ./python-modules/testbook { };

#   testing-common-database = callPackage ./python-modules/testing-common-database { };

#   testing-postgresql = callPackage ./python-modules/testing-postgresql { };

  testpath = callPackage ./python-modules/testpath { };

#   testrail-api = callPackage ./python-modules/testrail-api { };

#   testrepository = callPackage ./python-modules/testrepository { };

#   testresources = callPackage ./python-modules/testresources { };

#   testscenarios = callPackage ./python-modules/testscenarios { };

#   testtools = callPackage ./python-modules/testtools { };

#   test-tube = callPackage ./python-modules/test-tube { };

#   textdistance = callPackage ./python-modules/textdistance { };

#   textacy = callPackage ./python-modules/textacy { };

#   textnets = callPackage ./python-modules/textnets {
#     en_core_web_sm = spacy-models.en_core_web_sm;
#   };

#   texttable = callPackage ./python-modules/texttable { };

#   text-unidecode = callPackage ./python-modules/text-unidecode { };

#   textwrap3 = callPackage ./python-modules/textwrap3 { };

#   textx = callPackage ./python-modules/textx { };

#   tf2onnx = callPackage ./python-modules/tf2onnx { };

#   tflearn = callPackage ./python-modules/tflearn { };

#   tftpy = callPackage ./python-modules/tftpy { };

#   tgcrypto = callPackage ./python-modules/tgcrypto { };

#   theano-pymc = callPackage ./python-modules/theano-pymc { };

#   theano = callPackage ./python-modules/theano rec {
#     inherit (pkgs.config) cudaSupport;
#     cudnnSupport = cudaSupport;
#   };

#   theanoWithCuda = self.theano.override {
#     cudaSupport = true;
#     cudnnSupport = true;
#   };

#   theanoWithoutCuda = self.theano.override {
#     cudaSupport = false;
#     cudnnSupport = false;
#   };

#   thefuzz = callPackage ./python-modules/thefuzz { };

#   thelogrus = callPackage ./python-modules/thelogrus { };

#   thermobeacon-ble = callPackage ./python-modules/thermobeacon-ble { };

#   thermopro-ble = callPackage ./python-modules/thermopro-ble { };

#   thespian = callPackage ./python-modules/thespian { };

#   thinc = callPackage ./python-modules/thinc {
#     inherit (pkgs.darwin.apple_sdk.frameworks) Accelerate CoreFoundation CoreGraphics CoreVideo;
#   };

#   thorlabspm100 = callPackage ./python-modules/thorlabspm100 { };

#   threadloop = callPackage ./python-modules/threadloop { };

#   threadpool = callPackage ./python-modules/threadpool { };

#   threadpoolctl = callPackage ./python-modules/threadpoolctl { };

#   threat9-test-bed = callPackage ./python-modules/threat9-test-bed { };

#   three-merge = callPackage ./python-modules/three-merge { };

#   thrift = callPackage ./python-modules/thrift { };

#   thriftpy2 = callPackage ./python-modules/thriftpy2 { };

#   throttler = callPackage ./python-modules/throttler { };

#   thttp = callPackage ./python-modules/thttp { };

#   tkinter = callPackage ./python-modules/tkinter {
#     py = python.override { x11Support=true; };
#   };

#   tidalapi = callPackage ./python-modules/tidalapi { };

#   tidyexc = callPackage ./python-modules/tidyexc { };

#   tidylib = callPackage ./python-modules/pytidylib { };

#   tifffile = callPackage ./python-modules/tifffile { };

#   tika = callPackage ./python-modules/tika { };

#   tika-client = callPackage ./python-modules/tika-client { };

#   tiktoken = callPackage ./python-modules/tiktoken { };

#   tikzplotlib = callPackage ./python-modules/tikzplotlib { };

#   tiledb = callPackage ./python-modules/tiledb {
#     inherit (pkgs) tiledb;
#   };

#   tilequant = callPackage ./python-modules/tilequant { };

#   tiler = callPackage ./python-modules/tiler { };

#   tilestache = callPackage ./python-modules/tilestache { };

#   tilt-ble = callPackage ./python-modules/tilt-ble { };

#   timeago = callPackage ./python-modules/timeago { };

#   timecop = callPackage ./python-modules/timecop { };

#   timelib = callPackage ./python-modules/timelib { };

#   time-machine = callPackage ./python-modules/time-machine { };

#   timeout-decorator = callPackage ./python-modules/timeout-decorator { };

#   timeslot = callPackage ./python-modules/timeslot { };

#   timetagger = callPackage ./python-modules/timetagger { };

#   timezonefinder = callPackage ./python-modules/timezonefinder { };

#   timing-asgi = callPackage ./python-modules/timing-asgi { };

#   timm = callPackage ./python-modules/timm { };

#   tiny-cuda-nn = toPythonModule (pkgs.tiny-cuda-nn.override {
#     cudaPackages = self.torch.cudaPackages;
#     python3Packages = self;
#     pythonSupport = true;
#   });

#   tiny-proxy = callPackage ./python-modules/tiny-proxy { };

#   tinycss2 = callPackage ./python-modules/tinycss2 { };

#   tinycss = callPackage ./python-modules/tinycss { };

#   tinydb = callPackage ./python-modules/tinydb { };

#   tinygrad = callPackage ./python-modules/tinygrad { };

#   tinyobjloader-py = callPackage ./python-modules/tinyobjloader-py { };

#   tinyrecord = callPackage ./python-modules/tinyrecord { };

#   tinysegmenter = callPackage ./python-modules/tinysegmenter { };

#   tissue = callPackage ./python-modules/tissue { };

#   titlecase = callPackage ./python-modules/titlecase { };

#   tld = callPackage ./python-modules/tld { };

#   tlds = callPackage ./python-modules/tlds { };

#   tldextract = callPackage ./python-modules/tldextract { };

#   tlsh = callPackage ./python-modules/tlsh { };

#   tlslite-ng = callPackage ./python-modules/tlslite-ng { };

#   tls-client = callPackage ./python-modules/tls-client { };

#   tls-parser = callPackage ./python-modules/tls-parser { };

#   tlv8 = callPackage ./python-modules/tlv8 { };

#   tmb = callPackage ./python-modules/tmb { };

#   todoist = callPackage ./python-modules/todoist { };

#   todoist-api-python = callPackage ./python-modules/todoist-api-python { };

#   toggl-cli = callPackage ./python-modules/toggl-cli { };

#   token-bucket = callPackage ./python-modules/token-bucket { };

#   tokenizers = callPackage ./python-modules/tokenizers {
#     inherit (pkgs.darwin.apple_sdk.frameworks) Security;
#   };

#   tokenize-rt = toPythonModule (callPackage ./python-modules/tokenize-rt { });

#   tokenlib = callPackage ./python-modules/tokenlib { };

#   tokentrim = callPackage ./python-modules/tokentrim { };

#   tololib = callPackage ./python-modules/tololib { };

  toml = callPackage ./python-modules/toml { };

#   toml-adapt = callPackage ./python-modules/toml-adapt { };

  tomli = callPackage ./python-modules/tomli { };

  tomli-w = callPackage ./python-modules/tomli-w { };

#   tomlkit = callPackage ./python-modules/tomlkit { };

#   toolz = callPackage ./python-modules/toolz { };

#   toonapi = callPackage ./python-modules/toonapi { };

#   toposort = callPackage ./python-modules/toposort { };

#   torch = callPackage ./python-modules/torch {
#     inherit (pkgs.darwin.apple_sdk.frameworks) Accelerate CoreServices;
#     inherit (pkgs.darwin) libobjc;
#   };

#   torch-audiomentations = callPackage ./python-modules/torch-audiomentations { };

#   torch-pitch-shift = callPackage ./python-modules/torch-pitch-shift { };

#   torch-bin = callPackage ./python-modules/torch/bin.nix {
#     openai-triton = self.openai-triton-bin;
#   };

#   torchWithCuda = self.torch.override {
#     openai-triton = self.openai-triton-cuda;
#     cudaSupport = true;
#     rocmSupport = false;
#   };

#   torchWithoutCuda = self.torch.override {
#     cudaSupport = false;
#   };

#   torchWithRocm = self.torch.override {
#     openai-triton = self.openai-triton-no-cuda;
#     rocmSupport = true;
#     cudaSupport = false;
#   };

#   torchWithoutRocm = self.torch.override {
#     rocmSupport = false;
#   };

#   torch-tb-profiler = callPackage ./python-modules/torch-tb-profiler/default.nix { };

#   torchaudio = callPackage ./python-modules/torchaudio { };

#   torchaudio-bin = callPackage ./python-modules/torchaudio/bin.nix {
#     cudaPackages = pkgs.cudaPackages_12;
#   };

#   torchdiffeq = callPackage ./python-modules/torchdiffeq { };

#   torchgpipe = callPackage ./python-modules/torchgpipe { };

#   torchmetrics = callPackage ./python-modules/torchmetrics { };

#   torchio = callPackage ./python-modules/torchio { };

#   torchinfo = callPackage ./python-modules/torchinfo { };

#   torchlibrosa = callPackage ./python-modules/torchlibrosa { };

#   torchrl = callPackage ./python-modules/torchrl { };

#   torchsde = callPackage ./python-modules/torchsde { };

#   torchvision = callPackage ./python-modules/torchvision { };

#   torchvision-bin = callPackage ./python-modules/torchvision/bin.nix {
#     cudaPackages = pkgs.cudaPackages_12;
#   };

  tornado = callPackage ./python-modules/tornado { };

#   # Used by circus and grab-site, 2020-08-29
#   tornado_4 = callPackage ./python-modules/tornado/4.nix { };

#   # Used by streamlit, 2021-01-29
#   tornado_5 = callPackage ./python-modules/tornado/5.nix { };

#   torpy = callPackage ./python-modules/torpy { };

#   torrent-parser = callPackage ./python-modules/torrent-parser { };

#   torrequest = callPackage ./python-modules/torrequest { };

#   total-connect-client = callPackage ./python-modules/total-connect-client { };

#   towncrier = callPackage ./python-modules/towncrier {
#     inherit (pkgs) git;
#   };

#   tox = callPackage ./python-modules/tox { };

#   tplink-omada-client = callPackage ./python-modules/tplink-omada-client { };

#   tpm2-pytss = callPackage ./python-modules/tpm2-pytss { };

#   tqdm = callPackage ./python-modules/tqdm { };

#   traceback2 = callPackage ./python-modules/traceback2 { };

#   tracerite = callPackage ./python-modules/tracerite { };

#   tracing = callPackage ./python-modules/tracing { };

#   trackpy = callPackage ./python-modules/trackpy { };

#   trafilatura = callPackage ./python-modules/trafilatura { };

#   trailrunner = callPackage ./python-modules/trailrunner {};

#   trainer = callPackage ./python-modules/trainer {};

#   traitlets = callPackage ./python-modules/traitlets { };

#   traits = callPackage ./python-modules/traits { };

#   traitsui = callPackage ./python-modules/traitsui { };

#   traittypes = callPackage ./python-modules/traittypes { };

#   trampoline = callPackage ./python-modules/trampoline { };

#   transaction = callPackage ./python-modules/transaction { };

#   transformers = callPackage ./python-modules/transformers { };

#   transforms3d = callPackage ./python-modules/transforms3d { };

#   transitions = callPackage ./python-modules/transitions { };

#   translatehtml = callPackage ./python-modules/translatehtml { };

#   translatepy = callPackage ./python-modules/translatepy { };

#   translationstring = callPackage ./python-modules/translationstring { };

#   translitcodec = callPackage ./python-modules/translitcodec { };

#   transmission-rpc = callPackage ./python-modules/transmission-rpc { };

#   transmissionrpc = callPackage ./python-modules/transmissionrpc { };

#   trectools = callPackage ./python-modules/trectools { };

#   tree-sitter = callPackage ./python-modules/tree-sitter { };

#   treelib = callPackage ./python-modules/treelib { };

#   treelog = callPackage ./python-modules/treelog { };

#   treeo = callPackage ./python-modules/treeo { };

#   treex = callPackage ./python-modules/treex { };

#   treq = callPackage ./python-modules/treq { };

#   trezor-agent = callPackage ./python-modules/trezor-agent {
#     pinentry = pkgs.pinentry-curses;
#   };

#   trezor = callPackage ./python-modules/trezor { };

#   trfl = callPackage ./python-modules/trfl { };

#   trimesh = callPackage ./python-modules/trimesh { };

#   trino-python-client = callPackage ./python-modules/trino-python-client { };

#   trio = callPackage ./python-modules/trio {
#     inherit (pkgs) coreutils;
#   };

#   trio-asyncio = callPackage ./python-modules/trio-asyncio { };

#   trio-websocket = callPackage ./python-modules/trio-websocket { };

#   tritonclient = callPackage ./python-modules/tritonclient { };

#   troposphere = callPackage ./python-modules/troposphere { };

  trove-classifiers = callPackage ./python-modules/trove-classifiers { };

#   trueskill = callPackage ./python-modules/trueskill { };

  trustme = callPackage ./python-modules/trustme { };

#   truststore = callPackage ./python-modules/truststore { };

#   trytond = callPackage ./python-modules/trytond { };

#   tsfresh = callPackage ./python-modules/tsfresh { };

#   tskit = callPackage ./python-modules/tskit { };

#   ttach = callPackage ./python-modules/ttach { };

#   ttls = callPackage ./python-modules/ttls { };

#   ttn-client = callPackage ./python-modules/ttn-client { };

#   ttp = callPackage ./python-modules/ttp { };

#   ttp-templates = callPackage ./python-modules/ttp-templates { };

#   ttstokenizer = callPackage ./python-modules/ttstokenizer { };

#   tubes = callPackage ./python-modules/tubes { };

#   tuf = callPackage ./python-modules/tuf { };

#   tunigo = callPackage ./python-modules/tunigo { };

#   tubeup = callPackage ./python-modules/tubeup { };

#   turnt = callPackage ./python-modules/turnt { };

#   tuya-device-sharing-sdk = callPackage ./python-modules/tuya-device-sharing-sdk { };

#   tuya-iot-py-sdk = callPackage ./python-modules/tuya-iot-py-sdk { };

#   tuyaha = callPackage ./python-modules/tuyaha { };

#   tvdb-api = callPackage ./python-modules/tvdb-api { };

#   tweedledum = callPackage ./python-modules/tweedledum { };

#   tweepy = callPackage ./python-modules/tweepy { };

#   twentemilieu = callPackage ./python-modules/twentemilieu { };

#   twiggy = callPackage ./python-modules/twiggy { };

#   twilio = callPackage ./python-modules/twilio { };

#   twill = callPackage ./python-modules/twill { };

#   twine = callPackage ./python-modules/twine { };

#   twinkly-client = callPackage ./python-modules/twinkly-client { };

#   twisted = callPackage ./python-modules/twisted { };

#   twitch-python = callPackage ./python-modules/twitch-python { };

#   twitchapi = callPackage ./python-modules/twitchapi { };

#   twitter = callPackage ./python-modules/twitter { };

#   twitter-common-collections = callPackage ./python-modules/twitter-common-collections { };

#   twitter-common-confluence = callPackage ./python-modules/twitter-common-confluence { };

#   twitter-common-dirutil = callPackage ./python-modules/twitter-common-dirutil { };

#   twitter-common-lang = callPackage ./python-modules/twitter-common-lang { };

#   twitter-common-log = callPackage ./python-modules/twitter-common-log { };

#   twitter-common-options = callPackage ./python-modules/twitter-common-options { };

#   twitterapi = callPackage ./python-modules/twitterapi { };

#   twofish = callPackage ./python-modules/twofish { };

#   txaio = callPackage ./python-modules/txaio { };

#   txamqp = callPackage ./python-modules/txamqp { };

#   txdbus = callPackage ./python-modules/txdbus { };

#   txgithub = callPackage ./python-modules/txgithub { };

#   txi2p-tahoe = callPackage ./python-modules/txi2p-tahoe { };

#   txredisapi = callPackage ./python-modules/txredisapi { };

#   txrequests = callPackage ./python-modules/txrequests { };

#   txtai = callPackage ./python-modules/txtai { };

#   txtorcon = callPackage ./python-modules/txtorcon { };

#   txzmq = callPackage ./python-modules/txzmq { };

#   typechecks = callPackage ./python-modules/typechecks { };

#   typecode = callPackage ./python-modules/typecode { };

#   typecode-libmagic = callPackage ./python-modules/typecode/libmagic.nix {
#     inherit (pkgs) file zlib;
#   };

#   typed-ast = callPackage ./python-modules/typed-ast { };

#   typed-settings = callPackage ./python-modules/typed-settings { };

#   typeguard = callPackage ./python-modules/typeguard { };

#   typepy = callPackage ./python-modules/typepy { };

#   typer = callPackage ./python-modules/typer { };

#   type-infer = callPackage ./python-modules/type-infer { };

#   types-aiobotocore = callPackage ./python-modules/types-aiobotocore { };

#   inherit (callPackage ./python-modules/types-aiobotocore-packages { })

#     types-aiobotocore-accessanalyzer

#     types-aiobotocore-account

#     types-aiobotocore-acm

#     types-aiobotocore-acm-pca

#     types-aiobotocore-alexaforbusiness

#     types-aiobotocore-amp

#     types-aiobotocore-amplify

#     types-aiobotocore-amplifybackend

#     types-aiobotocore-amplifyuibuilder

#     types-aiobotocore-apigateway

#     types-aiobotocore-apigatewaymanagementapi

#     types-aiobotocore-apigatewayv2

#     types-aiobotocore-appconfig

#     types-aiobotocore-appconfigdata

#     types-aiobotocore-appfabric

#     types-aiobotocore-appflow

#     types-aiobotocore-appintegrations

#     types-aiobotocore-application-autoscaling

#     types-aiobotocore-application-insights

#     types-aiobotocore-applicationcostprofiler

#     types-aiobotocore-appmesh

#     types-aiobotocore-apprunner

#     types-aiobotocore-appstream

#     types-aiobotocore-appsync

#     types-aiobotocore-arc-zonal-shift

#     types-aiobotocore-athena

#     types-aiobotocore-auditmanager

#     types-aiobotocore-autoscaling

#     types-aiobotocore-autoscaling-plans

#     types-aiobotocore-backup

#     types-aiobotocore-backup-gateway

#     types-aiobotocore-backupstorage

#     types-aiobotocore-batch

#     types-aiobotocore-billingconductor

#     types-aiobotocore-braket

#     types-aiobotocore-budgets

#     types-aiobotocore-ce

#     types-aiobotocore-chime

#     types-aiobotocore-chime-sdk-identity

#     types-aiobotocore-chime-sdk-media-pipelines

#     types-aiobotocore-chime-sdk-meetings

#     types-aiobotocore-chime-sdk-messaging

#     types-aiobotocore-chime-sdk-voice

#     types-aiobotocore-cleanrooms

#     types-aiobotocore-cloud9

#     types-aiobotocore-cloudcontrol

#     types-aiobotocore-clouddirectory

#     types-aiobotocore-cloudformation

#     types-aiobotocore-cloudfront

#     types-aiobotocore-cloudhsm

#     types-aiobotocore-cloudhsmv2

#     types-aiobotocore-cloudsearch

#     types-aiobotocore-cloudsearchdomain

#     types-aiobotocore-cloudtrail

#     types-aiobotocore-cloudtrail-data

#     types-aiobotocore-cloudwatch

#     types-aiobotocore-codeartifact

#     types-aiobotocore-codebuild

#     types-aiobotocore-codecatalyst

#     types-aiobotocore-codecommit

#     types-aiobotocore-codedeploy

#     types-aiobotocore-codeguru-reviewer

#     types-aiobotocore-codeguru-security

#     types-aiobotocore-codeguruprofiler

#     types-aiobotocore-codepipeline

#     types-aiobotocore-codestar

#     types-aiobotocore-codestar-connections

#     types-aiobotocore-codestar-notifications

#     types-aiobotocore-cognito-identity

#     types-aiobotocore-cognito-idp

#     types-aiobotocore-cognito-sync

#     types-aiobotocore-comprehend

#     types-aiobotocore-comprehendmedical

#     types-aiobotocore-compute-optimizer

#     types-aiobotocore-config

#     types-aiobotocore-connect

#     types-aiobotocore-connect-contact-lens

#     types-aiobotocore-connectcampaigns

#     types-aiobotocore-connectcases

#     types-aiobotocore-connectparticipant

#     types-aiobotocore-controltower

#     types-aiobotocore-cur

#     types-aiobotocore-customer-profiles

#     types-aiobotocore-databrew

#     types-aiobotocore-dataexchange

#     types-aiobotocore-datapipeline

#     types-aiobotocore-datasync

#     types-aiobotocore-dax

#     types-aiobotocore-detective

#     types-aiobotocore-devicefarm

#     types-aiobotocore-devops-guru

#     types-aiobotocore-directconnect

#     types-aiobotocore-discovery

#     types-aiobotocore-dlm

#     types-aiobotocore-dms

#     types-aiobotocore-docdb

#     types-aiobotocore-docdb-elastic

#     types-aiobotocore-drs

#     types-aiobotocore-ds

#     types-aiobotocore-dynamodb

#     types-aiobotocore-dynamodbstreams

#     types-aiobotocore-ebs

#     types-aiobotocore-ec2

#     types-aiobotocore-ec2-instance-connect

#     types-aiobotocore-ecr

#     types-aiobotocore-ecr-public

#     types-aiobotocore-ecs

#     types-aiobotocore-efs

#     types-aiobotocore-eks

#     types-aiobotocore-elastic-inference

#     types-aiobotocore-elasticache

#     types-aiobotocore-elasticbeanstalk

#     types-aiobotocore-elastictranscoder

#     types-aiobotocore-elb

#     types-aiobotocore-elbv2

#     types-aiobotocore-emr

#     types-aiobotocore-emr-containers

#     types-aiobotocore-emr-serverless

#     types-aiobotocore-entityresolution

#     types-aiobotocore-es

#     types-aiobotocore-events

#     types-aiobotocore-evidently

#     types-aiobotocore-finspace

#     types-aiobotocore-finspace-data

#     types-aiobotocore-firehose

#     types-aiobotocore-fis

#     types-aiobotocore-fms

#     types-aiobotocore-forecast

#     types-aiobotocore-forecastquery

#     types-aiobotocore-frauddetector

#     types-aiobotocore-fsx

#     types-aiobotocore-gamelift

#     types-aiobotocore-gamesparks

#     types-aiobotocore-glacier

#     types-aiobotocore-globalaccelerator

#     types-aiobotocore-glue

#     types-aiobotocore-grafana

#     types-aiobotocore-greengrass

#     types-aiobotocore-greengrassv2

#     types-aiobotocore-groundstation

#     types-aiobotocore-guardduty

#     types-aiobotocore-health

#     types-aiobotocore-healthlake

#     types-aiobotocore-honeycode

#     types-aiobotocore-iam

#     types-aiobotocore-identitystore

#     types-aiobotocore-imagebuilder

#     types-aiobotocore-importexport

#     types-aiobotocore-inspector

#     types-aiobotocore-inspector2

#     types-aiobotocore-internetmonitor

#     types-aiobotocore-iot

#     types-aiobotocore-iot-data

#     types-aiobotocore-iot-jobs-data

#     types-aiobotocore-iot-roborunner

#     types-aiobotocore-iot1click-devices

#     types-aiobotocore-iot1click-projects

#     types-aiobotocore-iotanalytics

#     types-aiobotocore-iotdeviceadvisor

#     types-aiobotocore-iotevents

#     types-aiobotocore-iotevents-data

#     types-aiobotocore-iotfleethub

#     types-aiobotocore-iotfleetwise

#     types-aiobotocore-iotsecuretunneling

#     types-aiobotocore-iotsitewise

#     types-aiobotocore-iotthingsgraph

#     types-aiobotocore-iottwinmaker

#     types-aiobotocore-iotwireless

#     types-aiobotocore-ivs

#     types-aiobotocore-ivs-realtime

#     types-aiobotocore-ivschat

#     types-aiobotocore-kafka

#     types-aiobotocore-kafkaconnect

#     types-aiobotocore-kendra

#     types-aiobotocore-kendra-ranking

#     types-aiobotocore-keyspaces

#     types-aiobotocore-kinesis

#     types-aiobotocore-kinesis-video-archived-media

#     types-aiobotocore-kinesis-video-media

#     types-aiobotocore-kinesis-video-signaling

#     types-aiobotocore-kinesis-video-webrtc-storage

#     types-aiobotocore-kinesisanalytics

#     types-aiobotocore-kinesisanalyticsv2

#     types-aiobotocore-kinesisvideo

#     types-aiobotocore-kms

#     types-aiobotocore-lakeformation

#     types-aiobotocore-lambda

#     types-aiobotocore-lex-models

#     types-aiobotocore-lex-runtime

#     types-aiobotocore-lexv2-models

#     types-aiobotocore-lexv2-runtime

#     types-aiobotocore-license-manager

#     types-aiobotocore-license-manager-linux-subscriptions

#     types-aiobotocore-license-manager-user-subscriptions

#     types-aiobotocore-lightsail

#     types-aiobotocore-location

#     types-aiobotocore-logs

#     types-aiobotocore-lookoutequipment

#     types-aiobotocore-lookoutmetrics

#     types-aiobotocore-lookoutvision

#     types-aiobotocore-m2

#     types-aiobotocore-machinelearning

#     types-aiobotocore-macie

#     types-aiobotocore-macie2

#     types-aiobotocore-managedblockchain

#     types-aiobotocore-managedblockchain-query

#     types-aiobotocore-marketplace-catalog

#     types-aiobotocore-marketplace-entitlement

#     types-aiobotocore-marketplacecommerceanalytics

#     types-aiobotocore-mediaconnect

#     types-aiobotocore-mediaconvert

#     types-aiobotocore-medialive

#     types-aiobotocore-mediapackage

#     types-aiobotocore-mediapackage-vod

#     types-aiobotocore-mediapackagev2

#     types-aiobotocore-mediastore

#     types-aiobotocore-mediastore-data

#     types-aiobotocore-mediatailor

#     types-aiobotocore-medical-imaging

#     types-aiobotocore-memorydb

#     types-aiobotocore-meteringmarketplace

#     types-aiobotocore-mgh

#     types-aiobotocore-mgn

#     types-aiobotocore-migration-hub-refactor-spaces

#     types-aiobotocore-migrationhub-config

#     types-aiobotocore-migrationhuborchestrator

#     types-aiobotocore-migrationhubstrategy

#     types-aiobotocore-mobile

#     types-aiobotocore-mq

#     types-aiobotocore-mturk

#     types-aiobotocore-mwaa

#     types-aiobotocore-neptune

#     types-aiobotocore-network-firewall

#     types-aiobotocore-networkmanager

#     types-aiobotocore-nimble

#     types-aiobotocore-oam

#     types-aiobotocore-omics

#     types-aiobotocore-opensearch

#     types-aiobotocore-opensearchserverless

#     types-aiobotocore-opsworks

#     types-aiobotocore-opsworkscm

#     types-aiobotocore-organizations

#     types-aiobotocore-osis

#     types-aiobotocore-outposts

#     types-aiobotocore-panorama

#     types-aiobotocore-payment-cryptography

#     types-aiobotocore-payment-cryptography-data

#     types-aiobotocore-personalize

#     types-aiobotocore-personalize-events

#     types-aiobotocore-personalize-runtime

#     types-aiobotocore-pi

#     types-aiobotocore-pinpoint

#     types-aiobotocore-pinpoint-email

#     types-aiobotocore-pinpoint-sms-voice

#     types-aiobotocore-pinpoint-sms-voice-v2

#     types-aiobotocore-pipes

#     types-aiobotocore-polly

#     types-aiobotocore-pricing

#     types-aiobotocore-privatenetworks

#     types-aiobotocore-proton

#     types-aiobotocore-qldb

#     types-aiobotocore-qldb-session

#     types-aiobotocore-quicksight

#     types-aiobotocore-ram

#     types-aiobotocore-rbin

#     types-aiobotocore-rds

#     types-aiobotocore-rds-data

#     types-aiobotocore-redshift

#     types-aiobotocore-redshift-data

#     types-aiobotocore-redshift-serverless

#     types-aiobotocore-rekognition

#     types-aiobotocore-resiliencehub

#     types-aiobotocore-resource-explorer-2

#     types-aiobotocore-resource-groups

#     types-aiobotocore-resourcegroupstaggingapi

#     types-aiobotocore-robomaker

#     types-aiobotocore-rolesanywhere

#     types-aiobotocore-route53

#     types-aiobotocore-route53-recovery-cluster

#     types-aiobotocore-route53-recovery-control-config

#     types-aiobotocore-route53-recovery-readiness

#     types-aiobotocore-route53domains

#     types-aiobotocore-route53resolver

#     types-aiobotocore-rum

#     types-aiobotocore-s3

#     types-aiobotocore-s3control

#     types-aiobotocore-s3outposts

#     types-aiobotocore-sagemaker

#     types-aiobotocore-sagemaker-a2i-runtime

#     types-aiobotocore-sagemaker-edge

#     types-aiobotocore-sagemaker-featurestore-runtime

#     types-aiobotocore-sagemaker-geospatial

#     types-aiobotocore-sagemaker-metrics

#     types-aiobotocore-sagemaker-runtime

#     types-aiobotocore-savingsplans

#     types-aiobotocore-scheduler

#     types-aiobotocore-schemas

#     types-aiobotocore-sdb

#     types-aiobotocore-secretsmanager

#     types-aiobotocore-securityhub

#     types-aiobotocore-securitylake

#     types-aiobotocore-serverlessrepo

#     types-aiobotocore-service-quotas

#     types-aiobotocore-servicecatalog

#     types-aiobotocore-servicecatalog-appregistry

#     types-aiobotocore-servicediscovery

#     types-aiobotocore-ses

#     types-aiobotocore-sesv2

#     types-aiobotocore-shield

#     types-aiobotocore-signer

#     types-aiobotocore-simspaceweaver

#     types-aiobotocore-sms

#     types-aiobotocore-sms-voice

#     types-aiobotocore-snow-device-management

#     types-aiobotocore-snowball

#     types-aiobotocore-sns

#     types-aiobotocore-sqs

#     types-aiobotocore-ssm

#     types-aiobotocore-ssm-contacts

#     types-aiobotocore-ssm-incidents

#     types-aiobotocore-ssm-sap

#     types-aiobotocore-sso

#     types-aiobotocore-sso-admin

#     types-aiobotocore-sso-oidc

#     types-aiobotocore-stepfunctions

#     types-aiobotocore-storagegateway

#     types-aiobotocore-sts

#     types-aiobotocore-support

#     types-aiobotocore-support-app

#     types-aiobotocore-swf

#     types-aiobotocore-synthetics

#     types-aiobotocore-textract

#     types-aiobotocore-timestream-query

#     types-aiobotocore-timestream-write

#     types-aiobotocore-tnb

#     types-aiobotocore-transcribe

#     types-aiobotocore-transfer

#     types-aiobotocore-translate

#     types-aiobotocore-verifiedpermissions

#     types-aiobotocore-voice-id

#     types-aiobotocore-vpc-lattice

#     types-aiobotocore-waf

#     types-aiobotocore-waf-regional

#     types-aiobotocore-wafv2

#     types-aiobotocore-wellarchitected

#     types-aiobotocore-wisdom

#     types-aiobotocore-workdocs

#     types-aiobotocore-worklink

#     types-aiobotocore-workmail

#     types-aiobotocore-workmailmessageflow

#     types-aiobotocore-workspaces

#     types-aiobotocore-workspaces-web

#     types-aiobotocore-xray

#   ;

#   types-appdirs = callPackage ./python-modules/types-appdirs { };

#   types-awscrt = callPackage ./python-modules/types-awscrt { };

#   types-beautifulsoup4 = callPackage ./python-modules/types-beautifulsoup4 { };

#   types-click = callPackage ./python-modules/types-click { };

#   types-colorama = callPackage ./python-modules/types-colorama { };

#   types-dataclasses = callPackage ./python-modules/types-dataclasses { };

#   types-dateutil = callPackage ./python-modules/types-dateutil { };

#   types-decorator = callPackage ./python-modules/types-decorator { };

#   types-deprecated = callPackage ./python-modules/types-deprecated { };

#   types-docopt = callPackage ./python-modules/types-docopt { };

#   types-docutils = callPackage ./python-modules/types-docutils { };

#   types-enum34 = callPackage ./python-modules/types-enum34 { };

#   types-freezegun = callPackage ./python-modules/types-freezegun { };

#   types-futures = callPackage ./python-modules/types-futures { };

#   types-html5lib = callPackage ./python-modules/types-html5lib { };

#   types-ipaddress = callPackage ./python-modules/types-ipaddress { };

#   types-lxml = callPackage ./python-modules/types-lxml { };

#   types-markdown = callPackage ./python-modules/types-markdown { };

#   types-mock = callPackage ./python-modules/types-mock { };

#   types-pillow = callPackage ./python-modules/types-pillow { };

#   types-protobuf = callPackage ./python-modules/types-protobuf { };

#   types-psutil = callPackage ./python-modules/types-psutil { };

#   types-psycopg2 = callPackage ./python-modules/types-psycopg2 { };

#   types-pyopenssl = callPackage ./python-modules/types-pyopenssl { };

#   types-python-dateutil = callPackage ./python-modules/types-python-dateutil { };

#   types-pytz = callPackage ./python-modules/types-pytz { };

#   types-pyyaml = callPackage ./python-modules/types-pyyaml { };

#   types-redis = callPackage ./python-modules/types-redis { };

#   types-retry = callPackage ./python-modules/types-retry { };

#   types-requests = callPackage ./python-modules/types-requests { };

#   types-s3transfer = callPackage ./python-modules/types-s3transfer { };

#   types-setuptools = callPackage ./python-modules/types-setuptools { };

#   types-tabulate = callPackage ./python-modules/types-tabulate { };

#   types-toml = callPackage ./python-modules/types-toml { };

#   types-tqdm = callPackage ./python-modules/types-tqdm { };

#   types-typed-ast = callPackage ./python-modules/types-typed-ast { };

#   types-ujson = callPackage ./python-modules/types-ujson { };

#   types-urllib3 = callPackage ./python-modules/types-urllib3 { };

#   typesentry = callPackage ./python-modules/typesentry { };

#   typeshed-client = callPackage ./python-modules/typeshed-client { };

#   typesystem = callPackage ./python-modules/typesystem { };

#   typical = callPackage ./python-modules/typical { };

#   typing = null;

  typing-extensions = callPackage ./python-modules/typing-extensions { };

#   typing-inspect = callPackage ./python-modules/typing-inspect { };

#   typing-validation = callPackage ./python-modules/typing-validation { };

#   typish = callPackage ./python-modules/typish { };

#   typogrify = callPackage ./python-modules/typogrify { };

#   tzdata = callPackage ./python-modules/tzdata { };

#   tzlocal = callPackage ./python-modules/tzlocal { };

#   rustworkx = callPackage ./python-modules/rustworkx { };

#   uamqp = callPackage ./python-modules/uamqp {
#     inherit (pkgs.darwin.apple_sdk.frameworks) CFNetwork CoreFoundation Security;
#   };

#   ua-parser = callPackage ./python-modules/ua-parser { };

#   uarray = callPackage ./python-modules/uarray { };

#   uart-devices = callPackage ./python-modules/uart-devices { };

#   uasiren = callPackage ./python-modules/uasiren { };

#   ubelt = callPackage ./python-modules/ubelt { };

#   uc-micro-py = callPackage ./python-modules/uc-micro-py { };

#   ucsmsdk = callPackage ./python-modules/ucsmsdk { };

#   udatetime = callPackage ./python-modules/udatetime { };

#   ueberzug = callPackage ./python-modules/ueberzug {
#     inherit (pkgs.xorg) libX11 libXext;
#   };

#   ufmt = callPackage ./python-modules/ufmt { };

#   ufo2ft = callPackage ./python-modules/ufo2ft { };

#   ufolib2 = callPackage ./python-modules/ufolib2 { };

#   ufolint = callPackage ./python-modules/ufolint { };

#   ufonormalizer = callPackage ./python-modules/ufonormalizer { };

#   ufoprocessor = callPackage ./python-modules/ufoprocessor { };

#   ueagle = callPackage ./python-modules/ueagle { };

#   uharfbuzz = callPackage ./python-modules/uharfbuzz {
#     inherit (pkgs.darwin.apple_sdk.frameworks) ApplicationServices;
#   };

#   uhi = callPackage ./python-modules/uhi { };

#   ujson = callPackage ./python-modules/ujson { };

#   ukkonen = callPackage ./python-modules/ukkonen { };

#   ukpostcodeparser = callPackage ./python-modules/ukpostcodeparser { };

#   ulid-transform = callPackage ./python-modules/ulid-transform { };

#   ultraheat-api = callPackage ./python-modules/ultraheat-api { };

#   umalqurra = callPackage ./python-modules/umalqurra { };

#   umap-learn = callPackage ./python-modules/umap-learn { };

#   umodbus = callPackage ./python-modules/umodbus { };

#   u-msgpack-python = callPackage ./python-modules/u-msgpack-python { };

#   unasync = callPackage ./python-modules/unasync { };

#   uncertainties = callPackage ./python-modules/uncertainties { };

#   uncompyle6 = callPackage ./python-modules/uncompyle6 { };

#   undefined = callPackage ./python-modules/undefined { };

#   unearth = callPackage ./python-modules/unearth { };

#   unicodecsv = callPackage ./python-modules/unicodecsv { };

#   unicodedata2 = callPackage ./python-modules/unicodedata2 { };

#   unicode-rbnf = callPackage ./python-modules/unicode-rbnf { };

#   unicode-slugify = callPackage ./python-modules/unicode-slugify { };

#   unicorn = callPackage ./python-modules/unicorn {
#     unicorn-emu = pkgs.unicorn;
#   };

#   unicurses = callPackage ./python-modules/unicurses { };

#   unicrypto = callPackage ./python-modules/unicrypto { };

#   unidata-blocks = callPackage ./python-modules/unidata-blocks { };

#   unidecode = callPackage ./python-modules/unidecode { };

#   unidic = callPackage ./python-modules/unidic { };

#   unidic-lite = callPackage ./python-modules/unidic-lite { };

#   unidiff = callPackage ./python-modules/unidiff { };

#   unifi = callPackage ./python-modules/unifi { };

#   unifi-discovery = callPackage ./python-modules/unifi-discovery { };

#   unify = callPackage ./python-modules/unify { };

#   unifiled = callPackage ./python-modules/unifiled { };

#   unique-log-filter = callPackage ./python-modules/unique-log-filter { };

#   unittest-data-provider = callPackage ./python-modules/unittest-data-provider { };

#   unittest-xml-reporting = callPackage ./python-modules/unittest-xml-reporting { };

#   univers = callPackage ./python-modules/univers { };

#   universal-pathlib = callPackage ./python-modules/universal-pathlib { };

#   universal-silabs-flasher = callPackage ./python-modules/universal-silabs-flasher { };

#   unix-ar = callPackage ./python-modules/unix-ar { };

#   unpaddedbase64 = callPackage ./python-modules/unpaddedbase64 { };

#   unrardll = callPackage ./python-modules/unrardll { };

#   unrpa = callPackage ./python-modules/unrpa { };

#   unstructured = callPackage ./python-modules/unstructured { };

#   unstructured-api-tools = callPackage ./python-modules/unstructured-api-tools { };

#   unstructured-inference = callPackage ./python-modules/unstructured-inference { };

#   untangle = callPackage ./python-modules/untangle { };

#   untokenize = callPackage ./python-modules/untokenize { };

#   uonet-request-signer-hebe = callPackage ./python-modules/uonet-request-signer-hebe { };

#   upass = callPackage ./python-modules/upass { };

#   upb-lib = callPackage ./python-modules/upb-lib { };

#   upcloud-api = callPackage ./python-modules/upcloud-api { };

#   update-checker = callPackage ./python-modules/update-checker { };

#   update-copyright = callPackage ./python-modules/update-copyright { };

#   update-dotdee = callPackage ./python-modules/update-dotdee { };

#   uplc = callPackage ./python-modules/uplc { };

#   upnpy = callPackage ./python-modules/upnpy { };

#   uproot = callPackage ./python-modules/uproot { };

#   uptime = callPackage ./python-modules/uptime { };

#   uptime-kuma-api = callPackage ./python-modules/uptime-kuma-api { };

#   uptime-kuma-monitor = callPackage ./python-modules/uptime-kuma-monitor { };

#   uqbar = callPackage ./python-modules/uqbar { };

#   uranium = callPackage ./python-modules/uranium { };

#   uritemplate = callPackage ./python-modules/uritemplate { };

#   uri-template = callPackage ./python-modules/uri-template { };

#   uritools = callPackage ./python-modules/uritools { };

#   url-normalize = callPackage ./python-modules/url-normalize { };

#   urlextract = callPackage ./python-modules/urlextract { };

#   urlgrabber = callPackage ./python-modules/urlgrabber { };

  urllib3 = callPackage ./python-modules/urllib3 { };

#   urlman = callPackage ./python-modules/urlman { };

#   urlpy = callPackage ./python-modules/urlpy { };

#   urwid = callPackage ./python-modules/urwid { };

#   urwidgets = callPackage ./python-modules/urwidgets { };

#   urwidtrees = callPackage ./python-modules/urwidtrees { };

#   urwid-readline = callPackage ./python-modules/urwid-readline { };

#   urwid-mitmproxy = callPackage ./python-modules/urwid-mitmproxy { };

#   usb-devices = callPackage ./python-modules/usb-devices { };

#   usbrelay-py = callPackage ../os-specific/linux/usbrelay/python.nix { };

#   usbtmc = callPackage ./python-modules/usbtmc { };

#   us = callPackage ./python-modules/us { };

#   user-agents = callPackage ./python-modules/user-agents { };

#   userpath = callPackage ./python-modules/userpath { };

#   ush = callPackage ./python-modules/ush { };

#   usort = callPackage ./python-modules/usort { };

#   utils = callPackage ./python-modules/utils { };

#   uvcclient = callPackage ./python-modules/uvcclient { };

#   uvicorn = callPackage ./python-modules/uvicorn { };

#   uvloop = callPackage ./python-modules/uvloop {
#     inherit (pkgs.darwin.apple_sdk.frameworks) ApplicationServices CoreServices;
#   };

#   vaa = callPackage ./python-modules/vaa { };

#   vacuum-map-parser-base = callPackage ./python-modules/vacuum-map-parser-base { };

#   vacuum-map-parser-roborock = callPackage ./python-modules/vacuum-map-parser-roborock { };

#   validate-email = callPackage ./python-modules/validate-email { };

#   validator-collection = callPackage ./python-modules/validator-collection { };

#   validators = callPackage ./python-modules/validators { };

#   validobj = callPackage ./python-modules/validobj { };

#   validphys2 = callPackage ./python-modules/validphys2 { };

#   vallox-websocket-api = callPackage ./python-modules/vallox-websocket-api { };

#   vapoursynth = callPackage ./python-modules/vapoursynth {
#     inherit (pkgs) vapoursynth;
#   };

#   variants = callPackage ./python-modules/variants { };

#   varint = callPackage ./python-modules/varint { };

#   vat-moss = callPackage ./python-modules/vat-moss { };

#   vcard = callPackage ./python-modules/vcard { };

#   vcrpy = callPackage ./python-modules/vcrpy { };

#   vcver = callPackage ./python-modules/vcver { };

#   vcversioner = callPackage ./python-modules/vcversioner { };

#   vdf = callPackage ./python-modules/vdf { };

#   vdirsyncer = callPackage ./python-modules/vdirsyncer { };

#   vector = callPackage ./python-modules/vector { };

#   vehicle = callPackage ./python-modules/vehicle { };

#   vega = callPackage ./python-modules/vega { };

#   vega-datasets = callPackage ./python-modules/vega-datasets { };

#   venstarcolortouch = callPackage ./python-modules/venstarcolortouch { };

#   venusian = callPackage ./python-modules/venusian { };

#   velbus-aio = callPackage ./python-modules/velbus-aio { };

#   verboselogs = callPackage ./python-modules/verboselogs { };

#   verlib2 = callPackage ./python-modules/verlib2 { };

#   versioneer = callPackage ./python-modules/versioneer { };

#   versionfinder = callPackage ./python-modules/versionfinder { };

#   versioningit = callPackage ./python-modules/versioningit { };

#   versiontag = callPackage ./python-modules/versiontag { };

#   versiontools = callPackage ./python-modules/versiontools { };

#   verspec = callPackage ./python-modules/verspec { };

#   vertica-python = callPackage ./python-modules/vertica-python { };

#   veryprettytable = callPackage ./python-modules/veryprettytable { };

#   vg = callPackage ./python-modules/vg { };

#   vharfbuzz = callPackage ./python-modules/vharfbuzz { };

#   videocr = callPackage ./python-modules/videocr { };

#   vidstab = callPackage ./python-modules/vidstab { };

#   viennarna = toPythonModule pkgs.viennarna;

#   viewstate = callPackage ./python-modules/viewstate { };

#   vilfo-api-client = callPackage ./python-modules/vilfo-api-client { };

#   vina = callPackage ../applications/science/chemistry/autodock-vina/python-bindings.nix { };

#   vincenty = callPackage ./python-modules/vincenty { };

#   vine = callPackage ./python-modules/vine { };

#   virt-firmware = callPackage ./python-modules/virt-firmware { };

#   virtkey = callPackage ./python-modules/virtkey { };

  virtualenv = callPackage ./python-modules/virtualenv { };

#   virtualenv-clone = callPackage ./python-modules/virtualenv-clone { };

#   virtualenvwrapper = callPackage ./python-modules/virtualenvwrapper { };

#   visitor = callPackage ./python-modules/visitor { };

#   vispy = callPackage ./python-modules/vispy { };

#   vivisect = callPackage ./python-modules/vivisect {
#     inherit (pkgs.libsForQt5) wrapQtAppsHook;
#   };

#   viv-utils = callPackage ./python-modules/viv-utils { };

#   vllm = callPackage ./python-modules/vllm { };

#   vmprof = callPackage ./python-modules/vmprof { };

#   vncdo = callPackage ./python-modules/vncdo { };

#   vobject = callPackage ./python-modules/vobject { };

#   volatile = callPackage ./python-modules/volatile { };

#   volkszaehler = callPackage ./python-modules/volkszaehler { };

#   voluptuous = callPackage ./python-modules/voluptuous { };

#   voluptuous-serialize = callPackage ./python-modules/voluptuous-serialize { };

#   voluptuous-stubs = callPackage ./python-modules/voluptuous-stubs { };

#   volvooncall = callPackage ./python-modules/volvooncall { };

#   vowpalwabbit = callPackage ./python-modules/vowpalwabbit { };

#   vpk = callPackage ./python-modules/vpk { };

#   vprof = callPackage ./python-modules/vprof { };

#   vqgan-jax = callPackage ./python-modules/vqgan-jax { };

#   vsts = callPackage ./python-modules/vsts { };

#   vsts-cd-manager = callPackage ./python-modules/vsts-cd-manager { };

#   vsure = callPackage ./python-modules/vsure { };

#   vt-py = callPackage ./python-modules/vt-py { };

#   vtjp = callPackage ./python-modules/vtjp { };

#   vtk = toPythonModule (pkgs.vtk_9.override {
#     inherit python;
#     enablePython = true;
#   });

#   vulcan-api = callPackage ./python-modules/vulcan-api { };

#   vultr = callPackage ./python-modules/vultr { };

#   vulture = callPackage ./python-modules/vulture { };

#   vxi11 = callPackage ./python-modules/vxi11 { };

#   vyper = callPackage ../development/compilers/vyper { };

#   w1thermsensor = callPackage ./python-modules/w1thermsensor { };

#   w3lib = callPackage ./python-modules/w3lib { };

#   wadllib = callPackage ./python-modules/wadllib { };

#   wagtail = callPackage ./python-modules/wagtail { };

#   wagtail-factories = callPackage ./python-modules/wagtail-factories { };

#   wagtail-localize = callPackage ./python-modules/wagtail-localize { };

#   wagtail-modeladmin = callPackage ./python-modules/wagtail-modeladmin { };

#   waitress = callPackage ./python-modules/waitress { };

#   waitress-django = callPackage ./python-modules/waitress-django { };

#   wakeonlan = callPackage ./python-modules/wakeonlan { };

#   wallbox = callPackage ./python-modules/wallbox { };

#   wallet-py3k = callPackage ./python-modules/wallet-py3k { };

#   walrus = callPackage ./python-modules/walrus { };

#   wand = callPackage ./python-modules/wand { };

#   wandb = callPackage ./python-modules/wandb { };

#   warble = callPackage ./python-modules/warble { };

#   warcio = callPackage ./python-modules/warcio { };

#   ward = callPackage ./python-modules/ward { };

#   warlock = callPackage ./python-modules/warlock { };

#   warrant = callPackage ./python-modules/warrant { };

#   warrant-lite = callPackage ./python-modules/warrant-lite { };

#   waqiasync = callPackage ./python-modules/waqiasync { };

#   wasabi = callPackage ./python-modules/wasabi { };

#   wasserstein = callPackage ./python-modules/wasserstein { };

#   wasmerPackages = pkgs.recurseIntoAttrs (callPackage ./python-modules/wasmer { });
#   inherit (self.wasmerPackages) wasmer wasmer-compiler-cranelift wasmer-compiler-llvm wasmer-compiler-singlepass;

#   watchdog = callPackage ./python-modules/watchdog {
#     inherit (pkgs.darwin.apple_sdk.frameworks) CoreServices;
#   };

#   watchdog-gevent = callPackage ./python-modules/watchdog-gevent { };

#   watchfiles = callPackage ./python-modules/watchfiles {
#     inherit (pkgs.darwin.apple_sdk.frameworks) CoreServices;
#   };

#   watchgod = callPackage ./python-modules/watchgod { };

#   waterfurnace = callPackage ./python-modules/waterfurnace { };

#   watermark = callPackage ./python-modules/watermark { };

#   wavedrom = callPackage ./python-modules/wavedrom { };

#   wavefile = callPackage ./python-modules/wavefile { };

#   wavinsentio = callPackage ./python-modules/wavinsentio { };

#   wazeroutecalculator = callPackage ./python-modules/wazeroutecalculator { };

  wcag-contrast-ratio = callPackage ./python-modules/wcag-contrast-ratio { };

#   wcmatch = callPackage ./python-modules/wcmatch { };

#   wcwidth = callPackage ./python-modules/wcwidth { };

#   weasel = callPackage ./python-modules/weasel { };

#   weasyprint = callPackage ./python-modules/weasyprint { };

#   weaviate-client = callPackage ./python-modules/weaviate-client { };

#   web3 = callPackage ./python-modules/web3 { };

#   webargs = callPackage ./python-modules/webargs { };

#   webassets = callPackage ./python-modules/webassets { };

#   webauthn = callPackage ./python-modules/webauthn { };

#   web = callPackage ./python-modules/web { };

#   web-cache = callPackage ./python-modules/web-cache { };

#   webcolors = callPackage ./python-modules/webcolors { };

#   webdataset = callPackage ./python-modules/webdataset { };

#   webdav4 = callPackage ./python-modules/webdav4 { };

#   webdavclient3 = callPackage ./python-modules/webdavclient3 { };

#   webdriver-manager = callPackage ./python-modules/webdriver-manager { };

  webencodings = callPackage ./python-modules/webencodings { };

#   webexteamssdk = callPackage ./python-modules/webexteamssdk { };

#   webhelpers = callPackage ./python-modules/webhelpers { };

#   webob = callPackage ./python-modules/webob { };

#   weboob = callPackage ./python-modules/weboob { };

#   webrtc-noise-gain = callPackage ./python-modules/webrtc-noise-gain { };

#   webrtcvad = callPackage ./python-modules/webrtcvad { };

#   websocket-client = callPackage ./python-modules/websocket-client { };

#   websockets = callPackage ./python-modules/websockets { };

#   websockify = callPackage ./python-modules/websockify { };

#   webssh = callPackage ./python-modules/webssh { };

#   webtest = callPackage ./python-modules/webtest { };

#   webtest-aiohttp = callPackage ./python-modules/webtest-aiohttp { };

#   webthing = callPackage ./python-modules/webthing { };

#   webthing-ws = callPackage ./python-modules/webthing-ws { };

#   weconnect = callPackage ./python-modules/weconnect { };

#   weconnect-mqtt = callPackage ./python-modules/weconnect-mqtt { };

#   werkzeug = callPackage ./python-modules/werkzeug { };

#   west = callPackage ./python-modules/west { };

#   wfuzz = callPackage ./python-modules/wfuzz { };

#   wget = callPackage ./python-modules/wget { };

#   whatthepatch = callPackage ./python-modules/whatthepatch { };

  wheel = callPackage ./python-modules/wheel { };

#   wheel-filename = callPackage ./python-modules/wheel-filename { };

#   wheel-inspect = callPackage ./python-modules/wheel-inspect { };

#   wheezy-captcha = callPackage ./python-modules/wheezy-captcha { };

#   wheezy-template = callPackage ./python-modules/wheezy-template { };

#   whenever = callPackage ./python-modules/whenever { };

#   whichcraft = callPackage ./python-modules/whichcraft { };

#   whirlpool-sixth-sense = callPackage ./python-modules/whirlpool-sixth-sense { };

#   whisper = callPackage ./python-modules/whisper { };

#   whispers = callPackage ./python-modules/whispers { };

#   whitenoise = callPackage ./python-modules/whitenoise { };

#   whodap = callPackage ./python-modules/whodap { };

#   whois = callPackage ./python-modules/whois { };

#   whois-api = callPackage ./python-modules/whois-api { };

#   whoisdomain = callPackage ./python-modules/whoisdomain { };

#   whoosh = callPackage ./python-modules/whoosh { };

#   widgetsnbextension = callPackage ./python-modules/widgetsnbextension { };

#   widlparser = callPackage ./python-modules/widlparser { };

#   wiffi = callPackage ./python-modules/wiffi { };

#   wifi = callPackage ./python-modules/wifi { };

#   wikipedia = callPackage ./python-modules/wikipedia { };

#   wikipedia2vec = callPackage ./python-modules/wikipedia2vec { };

#   wikipedia-api = callPackage ./python-modules/wikipedia-api { };

#   wikitextparser = callPackage ./python-modules/wikitextparser { };

#   willow = callPackage ./python-modules/willow { };

#   winacl = callPackage ./python-modules/winacl { };

#   winsspi = callPackage ./python-modules/winsspi { };

#   withings-api = callPackage ./python-modules/withings-api { };

#   withings-sync = callPackage ./python-modules/withings-sync { };

#   wktutils = callPackage ./python-modules/wktutils { };

#   wled = callPackage ./python-modules/wled { };

#   wn = callPackage ./python-modules/wn { };

#   woob = callPackage ./python-modules/woob { };

#   woodblock = callPackage ./python-modules/woodblock { };

#   wordcloud = callPackage ./python-modules/wordcloud { };

#   wordfreq = callPackage ./python-modules/wordfreq { };

#   worldengine = callPackage ./python-modules/worldengine { };

#   wrapio = callPackage ./python-modules/wrapio { };

#   wrapt = callPackage ./python-modules/wrapt { };

#   wrf-python = callPackage ./python-modules/wrf-python { };

#   ws4py = callPackage ./python-modules/ws4py { };

#   wsdiscovery = callPackage ./python-modules/wsdiscovery { };

#   wsgi-intercept = callPackage ./python-modules/wsgi-intercept { };

#   wsgidav = callPackage ./python-modules/wsgidav { };

#   wsgiprox = callPackage ./python-modules/wsgiprox { };

#   wsgiproxy2 = callPackage ./python-modules/wsgiproxy2 { };

#   wsgitools = callPackage ./python-modules/wsgitools { };

#   wsme = callPackage ./python-modules/wsme { };

#   wsnsimpy = callPackage ./python-modules/wsnsimpy { };

#   wsproto = callPackage ./python-modules/wsproto { };

#   wtforms = callPackage ./python-modules/wtforms { };

#   wtforms-bootstrap5 = callPackage ./python-modules/wtforms-bootstrap5 { };

#   wunsen = callPackage ./python-modules/wunsen { };

#   wtf-peewee = callPackage ./python-modules/wtf-peewee { };

#   wurlitzer = callPackage ./python-modules/wurlitzer { };

#   wxpython = callPackage ./python-modules/wxpython/4.2.nix {
#     wxGTK = pkgs.wxGTK32.override {
#       withWebKit = true;
#     };
#     inherit (pkgs) mesa;
#   };

#   wyoming = callPackage ./python-modules/wyoming { };

#   x-wr-timezone = callPackage ./python-modules/x-wr-timezone { };

#   x11-hash = callPackage ./python-modules/x11-hash { };

#   x256 = callPackage ./python-modules/x256 { };

#   xapian = callPackage ./python-modules/xapian {
#     inherit (pkgs) xapian;
#   };

#   xapp = callPackage ./python-modules/xapp {
#     inherit (pkgs.buildPackages) meson;
#     inherit (pkgs) gtk3 gobject-introspection polkit;
#     inherit (pkgs.cinnamon) xapp;
#   };

#   xarray = callPackage ./python-modules/xarray { };

#   xarray-dataclasses = callPackage ./python-modules/xarray-dataclasses { };

#   xarray-einstats = callPackage ./python-modules/xarray-einstats { };

#   xattr = callPackage ./python-modules/xattr { };

#   xbox-webapi = callPackage ./python-modules/xbox-webapi { };

#   xboxapi = callPackage ./python-modules/xboxapi { };

#   xcffib = callPackage ./python-modules/xcffib { };

#   xdg = callPackage ./python-modules/xdg { };

#   xdg-base-dirs = callPackage ./python-modules/xdg-base-dirs { };

#   xdis = callPackage ./python-modules/xdis { };

#   xdoctest = callPackage ./python-modules/xdoctest { };

#   xdot = callPackage ./python-modules/xdot {
#     inherit (pkgs) graphviz;
#   };

#   xformers = callPackage ./python-modules/xformers { };

#   xgboost = callPackage ./python-modules/xgboost {
#     inherit (pkgs) xgboost;
#   };

#   xhtml2pdf = callPackage ./python-modules/xhtml2pdf { };

#   xiaomi-ble = callPackage ./python-modules/xiaomi-ble { };

#   xkbcommon = callPackage ./python-modules/xkbcommon { };

#   xkcdpass = callPackage ./python-modules/xkcdpass { };

#   xknx = callPackage ./python-modules/xknx { };

#   xknxproject = callPackage ./python-modules/xknxproject { };

#   xlib = callPackage ./python-modules/xlib { };

#   xlrd = callPackage ./python-modules/xlrd { };

#   xlsx2csv = callPackage ./python-modules/xlsx2csv { };

#   xlsxwriter = callPackage ./python-modules/xlsxwriter { };

#   xlwt = callPackage ./python-modules/xlwt { };

#   xmind = callPackage ./python-modules/xmind { };

#   xml2rfc = callPackage ./python-modules/xml2rfc { };

#   xmldiff = callPackage ./python-modules/xmldiff { };

#   xmljson = callPackage ./python-modules/xmljson { };

  xmlschema = callPackage ./python-modules/xmlschema { };

#   xmlsec = callPackage ./python-modules/xmlsec {
#     inherit (pkgs) libxslt libxml2 libtool pkg-config xmlsec;
#   };

#   xmltodict = callPackage ./python-modules/xmltodict { };

#   xml-marshaller = callPackage ./python-modules/xml-marshaller { };

#   xmod = callPackage ./python-modules/xmod { };

#   xmodem = callPackage ./python-modules/xmodem { };

#   xnatpy = callPackage ./python-modules/xnatpy { };

#   xnd = callPackage ./python-modules/xnd { };

#   xpath-expressions = callPackage ./python-modules/xpath-expressions { };

#   xpybutil = callPackage ./python-modules/xpybutil { };

#   xrootd = callPackage ./python-modules/xrootd {
#     inherit (pkgs) xrootd;
#   };

#   xsdata = callPackage ./python-modules/xsdata { };

#   xstatic-asciinema-player = callPackage ./python-modules/xstatic-asciinema-player { };

#   xstatic-bootbox = callPackage ./python-modules/xstatic-bootbox { };

#   xstatic-bootstrap = callPackage ./python-modules/xstatic-bootstrap { };

#   xstatic = callPackage ./python-modules/xstatic { };

#   xstatic-font-awesome = callPackage ./python-modules/xstatic-font-awesome { };

#   xstatic-jquery = callPackage ./python-modules/xstatic-jquery { };

#   xstatic-jquery-file-upload = callPackage ./python-modules/xstatic-jquery-file-upload { };

#   xstatic-jquery-ui = callPackage ./python-modules/xstatic-jquery-ui { };

#   xstatic-pygments = callPackage ./python-modules/xstatic-pygments { };

#   xtensor-python = callPackage ./python-modules/xtensor-python { };

#   xvfbwrapper = callPackage ./python-modules/xvfbwrapper {
#     inherit (pkgs.xorg) xorgserver;
#   };

#   xxhash = callPackage ./python-modules/xxhash { };

#   xdxf2html = callPackage ./python-modules/xdxf2html { };

#   xyzservices = callPackage ./python-modules/xyzservices { };

#   y-py = callPackage ./python-modules/y-py { };

#   yabadaba = callPackage ./python-modules/yabadaba { };

#   yahooweather = callPackage ./python-modules/yahooweather { };

#   yalesmartalarmclient = callPackage ./python-modules/yalesmartalarmclient { };

#   yalexs = callPackage ./python-modules/yalexs { };

#   yalexs-ble = callPackage ./python-modules/yalexs-ble { };

#   yamale = callPackage ./python-modules/yamale { };

#   yamlfix = callPackage ./python-modules/yamlfix { };

#   yamllint = callPackage ./python-modules/yamllint { };

#   yamlloader = callPackage ./python-modules/yamlloader { };

#   yamlordereddictloader = callPackage ./python-modules/yamlordereddictloader { };

#   yanc = callPackage ./python-modules/yanc { };

#   yangson = callPackage ./python-modules/yangson { };

#   yapf = callPackage ./python-modules/yapf { };

#   yappi = callPackage ./python-modules/yappi { };

#   yapsy = callPackage ./python-modules/yapsy { };

#   yara-python = callPackage ./python-modules/yara-python { };

#   yaramod = callPackage ./python-modules/yaramod { };

#   yarg = callPackage ./python-modules/yarg { };

#   yargy = callPackage ./python-modules/yargy { };

#   yark = callPackage ./python-modules/yark { };

#   yarl = callPackage ./python-modules/yarl { };

#   yasi = callPackage ./python-modules/yasi { };

#   yaspin = callPackage ./python-modules/yaspin { };

#   yaswfp = callPackage ./python-modules/yaswfp { };

#   yattag = callPackage ./python-modules/yattag { };

#   yacs = callPackage ./python-modules/yacs { };

#   ydiff = callPackage ./python-modules/ydiff { };

#   yeelight = callPackage ./python-modules/yeelight { };

#   yfinance = callPackage ./python-modules/yfinance { };

#   yoda = toPythonModule (pkgs.yoda.override { inherit python; });

#   yolink-api = callPackage ./python-modules/yolink-api { };

#   yosys = toPythonModule (pkgs.yosys.override {
#     python3 = python;
#   });

#   youless-api = callPackage ./python-modules/youless-api { };

#   youseedee = callPackage ./python-modules/youseedee { };

#   youtokentome = callPackage ./python-modules/youtokentome { };

#   youtube-dl = callPackage ../tools/misc/youtube-dl { };

#   youtube-dl-light = callPackage ../tools/misc/youtube-dl {
#     ffmpegSupport = false;
#   };

#   youtubeaio = callPackage ./python-modules/youtubeaio { };

#   yoyo-migrations = callPackage ./python-modules/yoyo-migrations { };

#   yt-dlp = callPackage ../tools/misc/yt-dlp {
#     ffmpeg = pkgs.ffmpeg-headless;
#   };

#   yt-dlp-light = callPackage ../tools/misc/yt-dlp {
#     atomicparsleySupport = false;
#     ffmpegSupport = false;
#     rtmpSupport = false;
#   };

#   youtube-search = callPackage ./python-modules/youtube-search { };

#   youtube-search-python = callPackage ./python-modules/youtube-search-python { };

#   youtube-transcript-api = callPackage ./python-modules/youtube-transcript-api { };

#   yowsup = callPackage ./python-modules/yowsup { };

#   ypy-websocket = callPackage ./python-modules/ypy-websocket { };

#   yq = callPackage ./python-modules/yq {
#     inherit (pkgs) jq;
#   };

#   yte = callPackage ./python-modules/yte { };

#   ytmusicapi = callPackage ./python-modules/ytmusicapi { };

#   yubico = callPackage ./python-modules/yubico { };

#   yubico-client = callPackage ./python-modules/yubico-client { };

#   z3c-checkversions = callPackage ./python-modules/z3c-checkversions { };

#   z3-solver = (toPythonModule ((pkgs.z3.override {
#     inherit python;
#   }).overrideAttrs (_: {
#     pname = "z3-solver";
#   }))).python;

#   zadnegoale = callPackage ./python-modules/zadnegoale { };

#   zamg = callPackage ./python-modules/zamg { };

#   zarr = callPackage ./python-modules/zarr { };

#   zc-buildout = callPackage ./python-modules/buildout { };

#   zc-lockfile = callPackage ./python-modules/zc-lockfile { };

#   zcbor = callPackage ./python-modules/zcbor { };

#   zconfig = callPackage ./python-modules/zconfig { };

#   zcs = callPackage ./python-modules/zcs { };

#   zdaemon = callPackage ./python-modules/zdaemon { };

#   zeek = (toPythonModule (pkgs.zeek.broker.override {
#     python3 = python;
#   })).py;

#   zeep = callPackage ./python-modules/zeep { };

#   zeitgeist = (toPythonModule (pkgs.zeitgeist.override {
#     python3 = python;
#   })).py;

#   zephyr-python-api = callPackage ./python-modules/zephyr-python-api { };

#   zeroc-ice = callPackage ./python-modules/zeroc-ice { };

#   zeroconf = callPackage ./python-modules/zeroconf { };

#   zerorpc = callPackage ./python-modules/zerorpc { };

#   zetup = callPackage ./python-modules/zetup { };

#   zeversolarlocal = callPackage ./python-modules/zeversolarlocal { };

#   zfec = callPackage ./python-modules/zfec { };

#   zha = callPackage ./python-modules/zha { };

#   zha-quirks = callPackage ./python-modules/zha-quirks { };

#   ziafont = callPackage ./python-modules/ziafont { };

#   ziamath = callPackage ./python-modules/ziamath { };

#   zict = callPackage ./python-modules/zict { };

#   zigpy = callPackage ./python-modules/zigpy { };

#   zigpy-cc = callPackage ./python-modules/zigpy-cc { };

#   zigpy-deconz = callPackage ./python-modules/zigpy-deconz { };

#   zigpy-xbee = callPackage ./python-modules/zigpy-xbee { };

#   zigpy-zigate = callPackage ./python-modules/zigpy-zigate { };

#   zigpy-znp = callPackage ./python-modules/zigpy-znp { };

#   zimports = callPackage ./python-modules/zimports { };

#   zipfile2 = callPackage ./python-modules/zipfile2 { };

  zipp = callPackage ./python-modules/zipp { };

#   zipstream = callPackage ./python-modules/zipstream { };

#   zipstream-ng = callPackage ./python-modules/zipstream-ng { };

#   zlib-ng = callPackage ./python-modules/zlib-ng {
#     inherit (pkgs) zlib-ng;
#   };

#   zm-py = callPackage ./python-modules/zm-py { };

#   zodb = callPackage ./python-modules/zodb { };

#   zodbpickle = callPackage ./python-modules/zodbpickle { };

#   zope-cachedescriptors = callPackage ./python-modules/zope-cachedescriptors { };

#   zope-component = callPackage ./python-modules/zope-component { };

#   zope-configuration = callPackage ./python-modules/zope-configuration { };

#   zope-contenttype = callPackage ./python-modules/zope-contenttype { };

#   zope-copy = callPackage ./python-modules/zope-copy { };

#   zope-deferredimport = callPackage ./python-modules/zope-deferredimport { };

#   zope-deprecation = callPackage ./python-modules/zope-deprecation { };

#   zope-dottedname = callPackage ./python-modules/zope-dottedname { };

  zope-event = callPackage ./python-modules/zope-event { };

#   zope-exceptions = callPackage ./python-modules/zope-exceptions { };

#   zope-filerepresentation = callPackage ./python-modules/zope-filerepresentation { };

#   zope-hookable = callPackage ./python-modules/zope-hookable { };

#   zope-i18nmessageid = callPackage ./python-modules/zope-i18nmessageid { };

  zope-interface = callPackage ./python-modules/zope-interface { };

#   zope-lifecycleevent = callPackage ./python-modules/zope-lifecycleevent { };

#   zope-location = callPackage ./python-modules/zope-location { };

#   zope-proxy = callPackage ./python-modules/zope-proxy { };

#   zope-schema = callPackage ./python-modules/zope-schema { };

#   zope-size = callPackage ./python-modules/zope-size { };

#   zope-testbrowser = callPackage ./python-modules/zope-testbrowser { };

#   zope-testing = callPackage ./python-modules/zope-testing { };

#   zope-testrunner = callPackage ./python-modules/zope-testrunner { };

#   zopfli = callPackage ./python-modules/zopfli {
#     inherit (pkgs) zopfli;
#   };

#   zstandard = callPackage ./python-modules/zstandard { };

#   zstd = callPackage ./python-modules/zstd {
#     inherit (pkgs) zstd;
#   };

#   zulip = callPackage ./python-modules/zulip { };

#   zwave-me-ws = callPackage ./python-modules/zwave-me-ws { };

#   zwave-js-server-python = callPackage ./python-modules/zwave-js-server-python { };

#   zxcvbn = callPackage ./python-modules/zxcvbn { };

#   zxing-cpp = callPackage ./python-modules/zxing-cpp {
#     libzxing-cpp = pkgs.zxing-cpp;
#   };
}
