package com.google.common.net;

import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Charsets;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multimaps;
import com.google.common.collect.UnmodifiableIterator;
import com.google.errorprone.annotations.Immutable;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import kotlin.text.Typography;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable
@Beta
@GwtCompatible
/* loaded from: classes.dex */
public final class MediaType {

    /* renamed from: a, reason: collision with root package name */
    public final String f4737a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4738b;
    public final ImmutableListMultimap c;
    public String d;
    public int e;
    public Optional f;

    /* renamed from: g, reason: collision with root package name */
    public static final ImmutableListMultimap f4736g = ImmutableListMultimap.of("charset", Ascii.toLowerCase(Charsets.UTF_8.name()));
    public static final CharMatcher h = CharMatcher.ascii().and(CharMatcher.javaIsoControl().negate()).and(CharMatcher.isNot(' ')).and(CharMatcher.noneOf("()<>@,;:\\\"/[]?="));
    public static final CharMatcher i = CharMatcher.ascii().and(CharMatcher.noneOf("\"\\\r"));
    public static final CharMatcher j = CharMatcher.anyOf(" \t\r\n");
    public static final HashMap k = Maps.newHashMap();
    public static final MediaType ANY_TYPE = b("*", "*");
    public static final MediaType ANY_TEXT_TYPE = b(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "*");
    public static final MediaType ANY_IMAGE_TYPE = b("image", "*");
    public static final MediaType ANY_AUDIO_TYPE = b("audio", "*");
    public static final MediaType ANY_VIDEO_TYPE = b("video", "*");
    public static final MediaType ANY_APPLICATION_TYPE = b("application", "*");
    public static final MediaType CACHE_MANIFEST_UTF_8 = c(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "cache-manifest");
    public static final MediaType CSS_UTF_8 = c(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "css");
    public static final MediaType CSV_UTF_8 = c(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "csv");
    public static final MediaType HTML_UTF_8 = c(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "html");
    public static final MediaType I_CALENDAR_UTF_8 = c(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "calendar");
    public static final MediaType PLAIN_TEXT_UTF_8 = c(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "plain");
    public static final MediaType TEXT_JAVASCRIPT_UTF_8 = c(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "javascript");
    public static final MediaType TSV_UTF_8 = c(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "tab-separated-values");
    public static final MediaType VCARD_UTF_8 = c(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "vcard");
    public static final MediaType WML_UTF_8 = c(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "vnd.wap.wml");
    public static final MediaType XML_UTF_8 = c(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "xml");
    public static final MediaType VTT_UTF_8 = c(PropertyTypeConstants.PROPERTY_TYPE_TEXT, "vtt");
    public static final MediaType BMP = b("image", "bmp");
    public static final MediaType CRW = b("image", "x-canon-crw");
    public static final MediaType GIF = b("image", "gif");
    public static final MediaType ICO = b("image", "vnd.microsoft.icon");
    public static final MediaType JPEG = b("image", "jpeg");
    public static final MediaType PNG = b("image", "png");
    public static final MediaType PSD = b("image", "vnd.adobe.photoshop");
    public static final MediaType SVG_UTF_8 = c("image", "svg+xml");
    public static final MediaType TIFF = b("image", "tiff");
    public static final MediaType WEBP = b("image", "webp");
    public static final MediaType HEIF = b("image", "heif");
    public static final MediaType JP2K = b("image", "jp2");
    public static final MediaType MP4_AUDIO = b("audio", "mp4");
    public static final MediaType MPEG_AUDIO = b("audio", "mpeg");
    public static final MediaType OGG_AUDIO = b("audio", "ogg");
    public static final MediaType WEBM_AUDIO = b("audio", "webm");
    public static final MediaType L16_AUDIO = b("audio", "l16");
    public static final MediaType L24_AUDIO = b("audio", "l24");
    public static final MediaType BASIC_AUDIO = b("audio", "basic");
    public static final MediaType AAC_AUDIO = b("audio", "aac");
    public static final MediaType VORBIS_AUDIO = b("audio", "vorbis");
    public static final MediaType WMA_AUDIO = b("audio", "x-ms-wma");
    public static final MediaType WAX_AUDIO = b("audio", "x-ms-wax");
    public static final MediaType VND_REAL_AUDIO = b("audio", "vnd.rn-realaudio");
    public static final MediaType VND_WAVE_AUDIO = b("audio", "vnd.wave");
    public static final MediaType MP4_VIDEO = b("video", "mp4");
    public static final MediaType MPEG_VIDEO = b("video", "mpeg");
    public static final MediaType OGG_VIDEO = b("video", "ogg");
    public static final MediaType QUICKTIME = b("video", "quicktime");
    public static final MediaType WEBM_VIDEO = b("video", "webm");
    public static final MediaType WMV = b("video", "x-ms-wmv");
    public static final MediaType FLV_VIDEO = b("video", "x-flv");
    public static final MediaType THREE_GPP_VIDEO = b("video", "3gpp");
    public static final MediaType THREE_GPP2_VIDEO = b("video", "3gpp2");
    public static final MediaType APPLICATION_XML_UTF_8 = c("application", "xml");
    public static final MediaType ATOM_UTF_8 = c("application", "atom+xml");
    public static final MediaType BZIP2 = b("application", "x-bzip2");
    public static final MediaType DART_UTF_8 = c("application", "dart");
    public static final MediaType APPLE_PASSBOOK = b("application", "vnd.apple.pkpass");
    public static final MediaType EOT = b("application", "vnd.ms-fontobject");
    public static final MediaType EPUB = b("application", "epub+zip");
    public static final MediaType FORM_DATA = b("application", "x-www-form-urlencoded");
    public static final MediaType KEY_ARCHIVE = b("application", "pkcs12");
    public static final MediaType APPLICATION_BINARY = b("application", "binary");
    public static final MediaType GEO_JSON = b("application", "geo+json");
    public static final MediaType GZIP = b("application", "x-gzip");
    public static final MediaType HAL_JSON = b("application", "hal+json");
    public static final MediaType JAVASCRIPT_UTF_8 = c("application", "javascript");
    public static final MediaType JOSE = b("application", "jose");
    public static final MediaType JOSE_JSON = b("application", "jose+json");
    public static final MediaType JSON_UTF_8 = c("application", "json");
    public static final MediaType MANIFEST_JSON_UTF_8 = c("application", "manifest+json");
    public static final MediaType KML = b("application", "vnd.google-earth.kml+xml");
    public static final MediaType KMZ = b("application", "vnd.google-earth.kmz");
    public static final MediaType MBOX = b("application", "mbox");
    public static final MediaType APPLE_MOBILE_CONFIG = b("application", "x-apple-aspen-config");
    public static final MediaType MICROSOFT_EXCEL = b("application", "vnd.ms-excel");
    public static final MediaType MICROSOFT_OUTLOOK = b("application", "vnd.ms-outlook");
    public static final MediaType MICROSOFT_POWERPOINT = b("application", "vnd.ms-powerpoint");
    public static final MediaType MICROSOFT_WORD = b("application", "msword");
    public static final MediaType MEDIA_PRESENTATION_DESCRIPTION = b("application", "dash+xml");
    public static final MediaType WASM_APPLICATION = b("application", "wasm");
    public static final MediaType NACL_APPLICATION = b("application", "x-nacl");
    public static final MediaType NACL_PORTABLE_APPLICATION = b("application", "x-pnacl");
    public static final MediaType OCTET_STREAM = b("application", "octet-stream");
    public static final MediaType OGG_CONTAINER = b("application", "ogg");
    public static final MediaType OOXML_DOCUMENT = b("application", "vnd.openxmlformats-officedocument.wordprocessingml.document");
    public static final MediaType OOXML_PRESENTATION = b("application", "vnd.openxmlformats-officedocument.presentationml.presentation");
    public static final MediaType OOXML_SHEET = b("application", "vnd.openxmlformats-officedocument.spreadsheetml.sheet");
    public static final MediaType OPENDOCUMENT_GRAPHICS = b("application", "vnd.oasis.opendocument.graphics");
    public static final MediaType OPENDOCUMENT_PRESENTATION = b("application", "vnd.oasis.opendocument.presentation");
    public static final MediaType OPENDOCUMENT_SPREADSHEET = b("application", "vnd.oasis.opendocument.spreadsheet");
    public static final MediaType OPENDOCUMENT_TEXT = b("application", "vnd.oasis.opendocument.text");
    public static final MediaType OPENSEARCH_DESCRIPTION_UTF_8 = c("application", "opensearchdescription+xml");
    public static final MediaType PDF = b("application", "pdf");
    public static final MediaType POSTSCRIPT = b("application", "postscript");
    public static final MediaType PROTOBUF = b("application", "protobuf");
    public static final MediaType RDF_XML_UTF_8 = c("application", "rdf+xml");
    public static final MediaType RTF_UTF_8 = c("application", "rtf");
    public static final MediaType SFNT = b("application", "font-sfnt");
    public static final MediaType SHOCKWAVE_FLASH = b("application", "x-shockwave-flash");
    public static final MediaType SKETCHUP = b("application", "vnd.sketchup.skp");
    public static final MediaType SOAP_XML_UTF_8 = c("application", "soap+xml");
    public static final MediaType TAR = b("application", "x-tar");
    public static final MediaType WOFF = b("application", "font-woff");
    public static final MediaType WOFF2 = b("application", "font-woff2");
    public static final MediaType XHTML_UTF_8 = c("application", "xhtml+xml");
    public static final MediaType XRD_UTF_8 = c("application", "xrd+xml");
    public static final MediaType ZIP = b("application", "zip");
    public static final Joiner.MapJoiner l = Joiner.on("; ").withKeyValueSeparator("=");

    public static MediaType b(String str, String str2) {
        MediaType mediaType = new MediaType(str, str2, ImmutableListMultimap.of());
        k.put(mediaType, mediaType);
        mediaType.f = Optional.absent();
        return mediaType;
    }

    public static MediaType c(String str, String str2) {
        MediaType mediaType = new MediaType(str, str2, f4736g);
        k.put(mediaType, mediaType);
        mediaType.f = Optional.of(Charsets.UTF_8);
        return mediaType;
    }

    public MediaType(String str, String str2, ImmutableListMultimap immutableListMultimap) {
        this.f4737a = str;
        this.f4738b = str2;
        this.c = immutableListMultimap;
    }

    public String type() {
        return this.f4737a;
    }

    public String subtype() {
        return this.f4738b;
    }

    public ImmutableListMultimap<String, String> parameters() {
        return this.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Optional<Charset> charset() {
        Optional<Charset> optionalAbsent = this.f;
        if (optionalAbsent == null) {
            optionalAbsent = Optional.absent();
            UnmodifiableIterator it = this.c.get((ImmutableListMultimap) "charset").iterator();
            String str = null;
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (str == null) {
                    optionalAbsent = Optional.of(Charset.forName(str2));
                    str = str2;
                } else if (!str.equals(str2)) {
                    throw new IllegalStateException("Multiple charset values defined: " + str + ", " + str2);
                }
            }
            this.f = optionalAbsent;
        }
        return optionalAbsent;
    }

    public MediaType withoutParameters() {
        return this.c.isEmpty() ? this : create(this.f4737a, this.f4738b);
    }

    public MediaType withParameters(Multimap<String, String> multimap) {
        return a(this.f4737a, this.f4738b, multimap);
    }

    public MediaType withParameters(String str, Iterable<String> iterable) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(iterable);
        String strD = d(str);
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        UnmodifiableIterator it = this.c.entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str2 = (String) entry.getKey();
            if (!strD.equals(str2)) {
                builder.put((ImmutableListMultimap.Builder) str2, (String) entry.getValue());
            }
        }
        for (String lowerCase : iterable) {
            Preconditions.checkNotNull(lowerCase);
            Preconditions.checkArgument(CharMatcher.ascii().matchesAllOf(lowerCase), "parameter values must be ASCII: %s", lowerCase);
            if ("charset".equals(strD)) {
                lowerCase = Ascii.toLowerCase(lowerCase);
            }
            builder.put((ImmutableListMultimap.Builder) strD, lowerCase);
        }
        MediaType mediaType = new MediaType(this.f4737a, this.f4738b, builder.build());
        if (!strD.equals("charset")) {
            mediaType.f = this.f;
        }
        return (MediaType) MoreObjects.firstNonNull(k.get(mediaType), mediaType);
    }

    public MediaType withParameter(String str, String str2) {
        return withParameters(str, ImmutableSet.of(str2));
    }

    public MediaType withCharset(Charset charset) {
        Preconditions.checkNotNull(charset);
        MediaType mediaTypeWithParameter = withParameter("charset", charset.name());
        mediaTypeWithParameter.f = Optional.of(charset);
        return mediaTypeWithParameter;
    }

    public boolean hasWildcard() {
        return "*".equals(this.f4737a) || "*".equals(this.f4738b);
    }

    public boolean is(MediaType mediaType) {
        if (!mediaType.f4737a.equals("*") && !mediaType.f4737a.equals(this.f4737a)) {
            return false;
        }
        String str = mediaType.f4738b;
        return (str.equals("*") || str.equals(this.f4738b)) && this.c.entries().containsAll(mediaType.c.entries());
    }

    public static MediaType create(String str, String str2) {
        MediaType mediaTypeA = a(str, str2, ImmutableListMultimap.of());
        mediaTypeA.f = Optional.absent();
        return mediaTypeA;
    }

    public static MediaType a(String str, String str2, Multimap multimap) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        Preconditions.checkNotNull(multimap);
        String strD = d(str);
        String strD2 = d(str2);
        Preconditions.checkArgument(!"*".equals(strD) || "*".equals(strD2), "A wildcard type cannot be used with a non-wildcard subtype");
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        for (Map.Entry entry : multimap.entries()) {
            String strD3 = d((String) entry.getKey());
            String lowerCase = (String) entry.getValue();
            Preconditions.checkNotNull(lowerCase);
            Preconditions.checkArgument(CharMatcher.ascii().matchesAllOf(lowerCase), "parameter values must be ASCII: %s", lowerCase);
            if ("charset".equals(strD3)) {
                lowerCase = Ascii.toLowerCase(lowerCase);
            }
            builder.put((ImmutableListMultimap.Builder) strD3, lowerCase);
        }
        MediaType mediaType = new MediaType(strD, strD2, builder.build());
        return (MediaType) MoreObjects.firstNonNull(k.get(mediaType), mediaType);
    }

    public static String d(String str) {
        Preconditions.checkArgument(h.matchesAllOf(str));
        Preconditions.checkArgument(!str.isEmpty());
        return Ascii.toLowerCase(str);
    }

    public static MediaType parse(String str) {
        String strB;
        CharMatcher charMatcher = h;
        Preconditions.checkNotNull(str);
        a aVar = new a(str);
        try {
            String strB2 = aVar.b(charMatcher);
            aVar.a('/');
            String strB3 = aVar.b(charMatcher);
            ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
            while (aVar.d()) {
                CharMatcher charMatcher2 = j;
                aVar.c(charMatcher2);
                aVar.a(';');
                aVar.c(charMatcher2);
                String strB4 = aVar.b(charMatcher);
                aVar.a('=');
                if ('\"' == aVar.e()) {
                    aVar.a(Typography.quote);
                    StringBuilder sb = new StringBuilder();
                    while ('\"' != aVar.e()) {
                        if ('\\' == aVar.e()) {
                            aVar.a('\\');
                            CharMatcher charMatcherAscii = CharMatcher.ascii();
                            Preconditions.checkState(aVar.d());
                            char cE = aVar.e();
                            Preconditions.checkState(charMatcherAscii.matches(cE));
                            aVar.f4740b++;
                            sb.append(cE);
                        } else {
                            sb.append(aVar.b(i));
                        }
                    }
                    strB = sb.toString();
                    aVar.a(Typography.quote);
                } else {
                    strB = aVar.b(charMatcher);
                }
                builder.put((ImmutableListMultimap.Builder) strB4, strB);
            }
            return a(strB2, strB3, builder.build());
        } catch (IllegalStateException e) {
            throw new IllegalArgumentException(_COROUTINE.a.A("Could not parse '", str, "'"), e);
        }
    }

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f4739a;

        /* renamed from: b, reason: collision with root package name */
        public int f4740b = 0;

        public a(String str) {
            this.f4739a = str;
        }

        public final String c(CharMatcher charMatcher) {
            Preconditions.checkState(d());
            int i = this.f4740b;
            CharMatcher charMatcherNegate = charMatcher.negate();
            String str = this.f4739a;
            this.f4740b = charMatcherNegate.indexIn(str, i);
            return d() ? str.substring(i, this.f4740b) : str.substring(i);
        }

        public final String b(CharMatcher charMatcher) {
            int i = this.f4740b;
            String strC = c(charMatcher);
            Preconditions.checkState(this.f4740b != i);
            return strC;
        }

        public final void a(char c) {
            Preconditions.checkState(d());
            Preconditions.checkState(e() == c);
            this.f4740b++;
        }

        public final char e() {
            Preconditions.checkState(d());
            return this.f4739a.charAt(this.f4740b);
        }

        public final boolean d() {
            int i = this.f4740b;
            return i >= 0 && i < this.f4739a.length();
        }
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MediaType)) {
            return false;
        }
        MediaType mediaType = (MediaType) obj;
        return this.f4737a.equals(mediaType.f4737a) && this.f4738b.equals(mediaType.f4738b) && Maps.transformValues(this.c.asMap(), new com.google.common.net.a()).equals(Maps.transformValues(mediaType.c.asMap(), new com.google.common.net.a()));
    }

    public int hashCode() {
        int i2 = this.e;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = Objects.hashCode(this.f4737a, this.f4738b, Maps.transformValues(this.c.asMap(), new com.google.common.net.a()));
        this.e = iHashCode;
        return iHashCode;
    }

    public String toString() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4737a);
        sb.append('/');
        sb.append(this.f4738b);
        ImmutableListMultimap immutableListMultimap = this.c;
        if (!immutableListMultimap.isEmpty()) {
            sb.append("; ");
            l.appendTo(sb, Multimaps.transformValues((ListMultimap) immutableListMultimap, (Function) new b()).entries());
        }
        String string = sb.toString();
        this.d = string;
        return string;
    }
}
