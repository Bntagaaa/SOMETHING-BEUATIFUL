package kotlin.text;

import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0006R\u0011\u0010\u000e\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0010\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0012\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\u0011\u0010\r¨\u0006\u0013"}, d2 = {"Lkotlin/text/Charsets;", "", "<init>", "()V", "Ljava/nio/charset/Charset;", "UTF_8", "Ljava/nio/charset/Charset;", "UTF_16", "UTF_16BE", "UTF_16LE", "US_ASCII", "ISO_8859_1", "UTF32", "()Ljava/nio/charset/Charset;", "UTF_32", "UTF32_LE", "UTF_32LE", "UTF32_BE", "UTF_32BE", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class Charsets {

    @NotNull
    public static final Charsets INSTANCE = new Charsets();

    @JvmField
    @NotNull
    public static final Charset ISO_8859_1;

    @JvmField
    @NotNull
    public static final Charset US_ASCII;

    @JvmField
    @NotNull
    public static final Charset UTF_16;

    @JvmField
    @NotNull
    public static final Charset UTF_16BE;

    @JvmField
    @NotNull
    public static final Charset UTF_16LE;

    @JvmField
    @NotNull
    public static final Charset UTF_8;

    /* renamed from: a, reason: collision with root package name */
    public static volatile Charset f6022a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile Charset f6023b;
    public static volatile Charset c;

    private Charsets() {
    }

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
        UTF_8 = charsetForName;
        Charset charsetForName2 = Charset.forName("UTF-16");
        Intrinsics.checkNotNullExpressionValue(charsetForName2, "forName(...)");
        UTF_16 = charsetForName2;
        Charset charsetForName3 = Charset.forName("UTF-16BE");
        Intrinsics.checkNotNullExpressionValue(charsetForName3, "forName(...)");
        UTF_16BE = charsetForName3;
        Charset charsetForName4 = Charset.forName("UTF-16LE");
        Intrinsics.checkNotNullExpressionValue(charsetForName4, "forName(...)");
        UTF_16LE = charsetForName4;
        Charset charsetForName5 = Charset.forName("US-ASCII");
        Intrinsics.checkNotNullExpressionValue(charsetForName5, "forName(...)");
        US_ASCII = charsetForName5;
        Charset charsetForName6 = Charset.forName("ISO-8859-1");
        Intrinsics.checkNotNullExpressionValue(charsetForName6, "forName(...)");
        ISO_8859_1 = charsetForName6;
    }

    @JvmName(name = "UTF32")
    @NotNull
    public final Charset UTF32() {
        Charset charset = f6022a;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32");
        Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
        f6022a = charsetForName;
        return charsetForName;
    }

    @JvmName(name = "UTF32_LE")
    @NotNull
    public final Charset UTF32_LE() {
        Charset charset = f6023b;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32LE");
        Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
        f6023b = charsetForName;
        return charsetForName;
    }

    @JvmName(name = "UTF32_BE")
    @NotNull
    public final Charset UTF32_BE() {
        Charset charset = c;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32BE");
        Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
        c = charsetForName;
        return charsetForName;
    }
}
