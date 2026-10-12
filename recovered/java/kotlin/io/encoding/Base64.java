package kotlin.io.encoding;

import java.io.IOException;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.collections.AbstractList;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;

@ExperimentalEncodingApi
@SinceKotlin(version = "1.8")
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0017\u0018\u0000 @2\u00020\u0001:\u0002A@J\u0017\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J)\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ;\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0013J?\u0010\u0017\u001a\u00028\u0000\"\f\b\u0000\u0010\u0016*\u00060\u0014j\u0002`\u00152\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00028\u00002\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\fJ;\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u001a\u0010\u0010J)\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u001b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\u001cJ;\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u001a\u0010\u001dJ'\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0000¢\u0006\u0004\b\u001e\u0010\fJ7\u0010!\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0000¢\u0006\u0004\b \u0010\u0010J\u0017\u0010%\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\bH\u0000¢\u0006\u0004\b#\u0010$J'\u0010(\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0000¢\u0006\u0004\b&\u0010'J'\u0010*\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u001b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0000¢\u0006\u0004\b)\u0010\u001cJ\u0017\u0010-\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b+\u0010,J'\u00101\u001a\u00020.2\u0006\u0010\"\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0000¢\u0006\u0004\b/\u00100R\u001a\u00107\u001a\u0002028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u001a\u0010:\u001a\u0002028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b8\u00104\u001a\u0004\b9\u00106R\u001a\u0010?\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>¨\u0006B"}, d2 = {"Lkotlin/io/encoding/Base64;", "", "Lkotlin/io/encoding/Base64$PaddingOption;", "option", "withPadding", "(Lkotlin/io/encoding/Base64$PaddingOption;)Lkotlin/io/encoding/Base64;", "", "source", "", "startIndex", "endIndex", "encodeToByteArray", "([BII)[B", "destination", "destinationOffset", "encodeIntoByteArray", "([B[BIII)I", "", "encode", "([BII)Ljava/lang/String;", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "A", "encodeToAppendable", "([BLjava/lang/Appendable;II)Ljava/lang/Appendable;", "decode", "decodeIntoByteArray", "", "(Ljava/lang/CharSequence;II)[B", "(Ljava/lang/CharSequence;[BIII)I", "encodeToByteArrayImpl$kotlin_stdlib", "encodeToByteArrayImpl", "encodeIntoByteArrayImpl$kotlin_stdlib", "encodeIntoByteArrayImpl", "sourceSize", "encodeSize$kotlin_stdlib", "(I)I", "encodeSize", "decodeSize$kotlin_stdlib", "([BII)I", "decodeSize", "charsToBytesImpl$kotlin_stdlib", "charsToBytesImpl", "bytesToStringImpl$kotlin_stdlib", "([B)Ljava/lang/String;", "bytesToStringImpl", "", "checkSourceBounds$kotlin_stdlib", "(III)V", "checkSourceBounds", "", "a", "Z", "isUrlSafe$kotlin_stdlib", "()Z", "isUrlSafe", "b", "isMimeScheme$kotlin_stdlib", "isMimeScheme", "c", "Lkotlin/io/encoding/Base64$PaddingOption;", "getPaddingOption$kotlin_stdlib", "()Lkotlin/io/encoding/Base64$PaddingOption;", "paddingOption", "Default", "PaddingOption", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public class Base64 {
    public static final int bytesPerGroup = 3;
    public static final Base64 e;
    public static final Base64 f;
    public static final int mimeLineLength = 76;
    public static final byte padSymbol = 61;
    public static final int symbolsPerGroup = 4;

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final boolean isUrlSafe;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final boolean isMimeScheme;

    /* renamed from: c, reason: from kotlin metadata */
    public final PaddingOption paddingOption;

    /* renamed from: Default, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final byte[] d = {13, 10};

    public /* synthetic */ Base64(boolean z, boolean z2, PaddingOption paddingOption, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, paddingOption);
    }

    public Base64(boolean z, boolean z2, PaddingOption paddingOption) {
        this.isUrlSafe = z;
        this.isMimeScheme = z2;
        this.paddingOption = paddingOption;
        if (z && z2) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    /* renamed from: isUrlSafe$kotlin_stdlib, reason: from getter */
    public final boolean getIsUrlSafe() {
        return this.isUrlSafe;
    }

    /* renamed from: isMimeScheme$kotlin_stdlib, reason: from getter */
    public final boolean getIsMimeScheme() {
        return this.isMimeScheme;
    }

    @NotNull
    /* renamed from: getPaddingOption$kotlin_stdlib, reason: from getter */
    public final PaddingOption getPaddingOption() {
        return this.paddingOption;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @SinceKotlin(version = "2.0")
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/io/encoding/Base64$PaddingOption;", "", "PRESENT", "ABSENT", "PRESENT_OPTIONAL", "ABSENT_OPTIONAL", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class PaddingOption {
        public static final PaddingOption ABSENT;
        public static final PaddingOption ABSENT_OPTIONAL;
        public static final PaddingOption PRESENT;
        public static final PaddingOption PRESENT_OPTIONAL;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ PaddingOption[] f5783a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ EnumEntries f5784b;

        @NotNull
        public static EnumEntries<PaddingOption> getEntries() {
            return f5784b;
        }

        static {
            PaddingOption paddingOption = new PaddingOption("PRESENT", 0);
            PRESENT = paddingOption;
            PaddingOption paddingOption2 = new PaddingOption("ABSENT", 1);
            ABSENT = paddingOption2;
            PaddingOption paddingOption3 = new PaddingOption("PRESENT_OPTIONAL", 2);
            PRESENT_OPTIONAL = paddingOption3;
            PaddingOption paddingOption4 = new PaddingOption("ABSENT_OPTIONAL", 3);
            ABSENT_OPTIONAL = paddingOption4;
            PaddingOption[] paddingOptionArr = {paddingOption, paddingOption2, paddingOption3, paddingOption4};
            f5783a = paddingOptionArr;
            f5784b = EnumEntriesKt.enumEntries(paddingOptionArr);
        }

        public static PaddingOption valueOf(String str) {
            return (PaddingOption) Enum.valueOf(PaddingOption.class, str);
        }

        public static PaddingOption[] values() {
            return (PaddingOption[]) f5783a.clone();
        }
    }

    @SinceKotlin(version = "2.0")
    @NotNull
    public final Base64 withPadding(@NotNull PaddingOption option) {
        Intrinsics.checkNotNullParameter(option, "option");
        return this.paddingOption == option ? this : new Base64(this.isUrlSafe, this.isMimeScheme, option);
    }

    public static /* synthetic */ byte[] encodeToByteArray$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeToByteArray");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return base64.encodeToByteArray(bArr, i, i2);
    }

    @NotNull
    public final byte[] encodeToByteArray(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        return encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex);
    }

    public static /* synthetic */ int encodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeIntoByteArray");
        }
        if ((i4 & 4) != 0) {
            i = 0;
        }
        if ((i4 & 8) != 0) {
            i2 = 0;
        }
        if ((i4 & 16) != 0) {
            i3 = bArr.length;
        }
        return base64.encodeIntoByteArray(bArr, bArr2, i, i2, i3);
    }

    public final int encodeIntoByteArray(@NotNull byte[] source, @NotNull byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        return encodeIntoByteArrayImpl$kotlin_stdlib(source, destination, destinationOffset, startIndex, endIndex);
    }

    public static /* synthetic */ String encode$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encode");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return base64.encode(bArr, i, i2);
    }

    @NotNull
    public final String encode(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        return new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1);
    }

    public static /* synthetic */ Appendable encodeToAppendable$default(Base64 base64, byte[] bArr, Appendable appendable, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeToAppendable");
        }
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = bArr.length;
        }
        return base64.encodeToAppendable(bArr, appendable, i, i2);
    }

    @NotNull
    public final <A extends Appendable> A encodeToAppendable(@NotNull byte[] source, @NotNull A destination, int startIndex, int endIndex) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        destination.append(new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1));
        return destination;
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decode");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return base64.decode(bArr, i, i2);
    }

    @NotNull
    public final byte[] decode(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        int iDecodeSize$kotlin_stdlib = decodeSize$kotlin_stdlib(source, startIndex, endIndex);
        byte[] bArr = new byte[iDecodeSize$kotlin_stdlib];
        if (b(source, bArr, 0, startIndex, endIndex) == iDecodeSize$kotlin_stdlib) {
            return bArr;
        }
        throw new IllegalStateException("Check failed.");
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
        }
        if ((i4 & 4) != 0) {
            i = 0;
        }
        if ((i4 & 8) != 0) {
            i2 = 0;
        }
        if ((i4 & 16) != 0) {
            i3 = bArr.length;
        }
        return base64.decodeIntoByteArray(bArr, bArr2, i, i2, i3);
    }

    public final int decodeIntoByteArray(@NotNull byte[] source, @NotNull byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        a(destination.length, destinationOffset, decodeSize$kotlin_stdlib(source, startIndex, endIndex));
        return b(source, destination, destinationOffset, startIndex, endIndex);
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decode");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = charSequence.length();
        }
        return base64.decode(charSequence, i, i2);
    }

    @NotNull
    public final byte[] decode(@NotNull CharSequence source, int startIndex, int endIndex) {
        byte[] bArrCharsToBytesImpl$kotlin_stdlib;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source instanceof String) {
            String str = (String) source;
            checkSourceBounds$kotlin_stdlib(str.length(), startIndex, endIndex);
            String strSubstring = str.substring(startIndex, endIndex);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            Charset charset = Charsets.ISO_8859_1;
            Intrinsics.checkNotNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
            bArrCharsToBytesImpl$kotlin_stdlib = strSubstring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bArrCharsToBytesImpl$kotlin_stdlib, "getBytes(...)");
        } else {
            bArrCharsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, startIndex, endIndex);
        }
        return decode$default(this, bArrCharsToBytesImpl$kotlin_stdlib, 0, 0, 6, (Object) null);
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, CharSequence charSequence, byte[] bArr, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
        }
        if ((i4 & 4) != 0) {
            i = 0;
        }
        if ((i4 & 8) != 0) {
            i2 = 0;
        }
        if ((i4 & 16) != 0) {
            i3 = charSequence.length();
        }
        return base64.decodeIntoByteArray(charSequence, bArr, i, i2, i3);
    }

    public final int decodeIntoByteArray(@NotNull CharSequence source, @NotNull byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        byte[] bArrCharsToBytesImpl$kotlin_stdlib;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (source instanceof String) {
            String str = (String) source;
            checkSourceBounds$kotlin_stdlib(str.length(), startIndex, endIndex);
            String strSubstring = str.substring(startIndex, endIndex);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            Charset charset = Charsets.ISO_8859_1;
            Intrinsics.checkNotNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
            bArrCharsToBytesImpl$kotlin_stdlib = strSubstring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bArrCharsToBytesImpl$kotlin_stdlib, "getBytes(...)");
        } else {
            bArrCharsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, startIndex, endIndex);
        }
        return decodeIntoByteArray$default(this, bArrCharsToBytesImpl$kotlin_stdlib, destination, destinationOffset, 0, 0, 24, (Object) null);
    }

    @NotNull
    public final byte[] encodeToByteArrayImpl$kotlin_stdlib(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        byte[] bArr = new byte[encodeSize$kotlin_stdlib(endIndex - startIndex)];
        encodeIntoByteArrayImpl$kotlin_stdlib(source, bArr, 0, startIndex, endIndex);
        return bArr;
    }

    public final int encodeIntoByteArrayImpl$kotlin_stdlib(@NotNull byte[] source, @NotNull byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        int i;
        int i2 = startIndex;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        checkSourceBounds$kotlin_stdlib(source.length, i2, endIndex);
        a(destination.length, destinationOffset, encodeSize$kotlin_stdlib(endIndex - i2));
        byte[] bArr = this.isUrlSafe ? Base64Kt.c : Base64Kt.f5785a;
        int i3 = this.isMimeScheme ? 19 : Integer.MAX_VALUE;
        int i4 = destinationOffset;
        while (true) {
            i = i2 + 2;
            if (i >= endIndex) {
                break;
            }
            int iMin = Math.min((endIndex - i2) / 3, i3);
            for (int i5 = 0; i5 < iMin; i5++) {
                int i6 = source[i2] & 255;
                int i7 = i2 + 2;
                int i8 = source[i2 + 1] & 255;
                i2 += 3;
                int i9 = (i8 << 8) | (i6 << 16) | (source[i7] & 255);
                destination[i4] = bArr[i9 >>> 18];
                destination[i4 + 1] = bArr[(i9 >>> 12) & 63];
                int i10 = i4 + 3;
                destination[i4 + 2] = bArr[(i9 >>> 6) & 63];
                i4 += 4;
                destination[i10] = bArr[i9 & 63];
            }
            if (iMin == i3 && i2 != endIndex) {
                int i11 = i4 + 1;
                byte[] bArr2 = d;
                destination[i4] = bArr2[0];
                i4 += 2;
                destination[i11] = bArr2[1];
            }
        }
        int i12 = endIndex - i2;
        PaddingOption paddingOption = this.paddingOption;
        if (i12 == 1) {
            int i13 = i2 + 1;
            int i14 = (source[i2] & 255) << 4;
            destination[i4] = bArr[i14 >>> 6];
            int i15 = i4 + 2;
            destination[i4 + 1] = bArr[i14 & 63];
            if (paddingOption == PaddingOption.PRESENT || paddingOption == PaddingOption.PRESENT_OPTIONAL) {
                int i16 = i4 + 3;
                destination[i15] = 61;
                i4 += 4;
                destination[i16] = 61;
                i2 = i13;
            } else {
                i2 = i13;
                i4 = i15;
            }
        } else if (i12 == 2) {
            int i17 = ((source[i2 + 1] & 255) << 2) | ((source[i2] & 255) << 10);
            destination[i4] = bArr[i17 >>> 12];
            destination[i4 + 1] = bArr[(i17 >>> 6) & 63];
            int i18 = i4 + 3;
            destination[i4 + 2] = bArr[i17 & 63];
            if (paddingOption == PaddingOption.PRESENT || paddingOption == PaddingOption.PRESENT_OPTIONAL) {
                i4 += 4;
                destination[i18] = 61;
            } else {
                i4 = i18;
            }
            i2 = i;
        }
        if (i2 == endIndex) {
            return i4 - destinationOffset;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final int encodeSize$kotlin_stdlib(int sourceSize) {
        int i = sourceSize / 3;
        int i2 = sourceSize % 3;
        int i3 = 4;
        int i4 = i * 4;
        if (i2 != 0) {
            PaddingOption paddingOption = PaddingOption.PRESENT;
            PaddingOption paddingOption2 = this.paddingOption;
            if (paddingOption2 != paddingOption && paddingOption2 != PaddingOption.PRESENT_OPTIONAL) {
                i3 = i2 + 1;
            }
            i4 += i3;
        }
        if (this.isMimeScheme) {
            i4 += ((i4 - 1) / 76) * 2;
        }
        if (i4 >= 0) {
            return i4;
        }
        throw new IllegalArgumentException("Input is too big");
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0144, code lost:
    
        if (r6 == (-2)) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0147, code lost:
    
        if (r6 == (-8)) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0149, code lost:
    
        if (r16 != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x014d, code lost:
    
        if (r13 == kotlin.io.encoding.Base64.PaddingOption.PRESENT) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0157, code lost:
    
        throw new java.lang.IllegalArgumentException("The padding option is set to PRESENT, but the input is not properly padded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0158, code lost:
    
        if (r7 != 0) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x015a, code lost:
    
        if (r12 != false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x015d, code lost:
    
        if (r5 >= r25) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x016a, code lost:
    
        if (kotlin.io.encoding.Base64Kt.f5786b[r21[r5] & 255] == (-1)) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x016d, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0170, code lost:
    
        if (r5 < r25) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0174, code lost:
    
        return r8 - r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0175, code lost:
    
        r1 = r21[r5] & 255;
        r4 = new java.lang.StringBuilder("Symbol '");
        r4.append((char) r1);
        r4.append("'(");
        r1 = java.lang.Integer.toString(r1, kotlin.text.CharsKt.checkRadix(8));
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, "toString(...)");
        r4.append(r1);
        r4.append(") at index ");
        r4.append(r5 - 1);
        r4.append(" is prohibited after the pad character");
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01ab, code lost:
    
        throw new java.lang.IllegalArgumentException(r4.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01b3, code lost:
    
        throw new java.lang.IllegalArgumentException("The pad bits must be zeros");
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01bb, code lost:
    
        throw new java.lang.IllegalArgumentException("The last unit of input does not have enough bits");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int b(byte[] r21, byte[] r22, int r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.encoding.Base64.b(byte[], byte[], int, int, int):int");
    }

    public final int decodeSize$kotlin_stdlib(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        int i = endIndex - startIndex;
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            throw new IllegalArgumentException(_COROUTINE.a.c(startIndex, endIndex, "Input should have at least 2 symbols for Base64 decoding, startIndex: ", ", endIndex: "));
        }
        if (this.isMimeScheme) {
            while (true) {
                if (startIndex >= endIndex) {
                    break;
                }
                int i2 = Base64Kt.f5786b[source[startIndex] & 255];
                if (i2 < 0) {
                    if (i2 == -2) {
                        i -= endIndex - startIndex;
                        break;
                    }
                    i--;
                }
                startIndex++;
            }
        } else if (source[endIndex - 1] == 61) {
            i = source[endIndex + (-2)] == 61 ? i - 2 : i - 1;
        }
        return (int) ((i * 6) / 8);
    }

    @NotNull
    public final byte[] charsToBytesImpl$kotlin_stdlib(@NotNull CharSequence source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length(), startIndex, endIndex);
        byte[] bArr = new byte[endIndex - startIndex];
        int i = 0;
        while (startIndex < endIndex) {
            char cCharAt = source.charAt(startIndex);
            if (cCharAt <= 255) {
                bArr[i] = (byte) cCharAt;
                i++;
            } else {
                bArr[i] = 63;
                i++;
            }
            startIndex++;
        }
        return bArr;
    }

    @NotNull
    public final String bytesToStringImpl$kotlin_stdlib(@NotNull byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        StringBuilder sb = new StringBuilder(source.length);
        for (byte b2 : source) {
            sb.append((char) b2);
        }
        return sb.toString();
    }

    public final void checkSourceBounds$kotlin_stdlib(int sourceSize, int startIndex, int endIndex) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(startIndex, endIndex, sourceSize);
    }

    public static void a(int i, int i2, int i3) {
        if (i2 < 0 || i2 > i) {
            throw new IndexOutOfBoundsException(_COROUTINE.a.c(i2, i, "destination offset: ", ", destination size: "));
        }
        int i4 = i2 + i3;
        if (i4 < 0 || i4 > i) {
            StringBuilder sbN = _COROUTINE.a.n(i2, i, "The destination array does not have enough capacity, destination offset: ", ", destination size: ", ", capacity needed: ");
            sbN.append(i3);
            throw new IndexOutOfBoundsException(sbN.toString());
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013¨\u0006\u0016"}, d2 = {"Lkotlin/io/encoding/Base64$Default;", "Lkotlin/io/encoding/Base64;", "<init>", "()V", "bitsPerByte", "", "bitsPerSymbol", "bytesPerGroup", "symbolsPerGroup", "padSymbol", "", "mimeLineLength", "mimeGroupsPerLine", "mimeLineSeparatorSymbols", "", "getMimeLineSeparatorSymbols$kotlin_stdlib", "()[B", "UrlSafe", "getUrlSafe", "()Lkotlin/io/encoding/Base64;", "Mime", "getMime", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* renamed from: kotlin.io.encoding.Base64$Default, reason: from kotlin metadata */
    public static final class Companion extends Base64 {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private Companion() {
            boolean z = false;
            super(z, z, PaddingOption.PRESENT, null);
        }

        @NotNull
        public final byte[] getMimeLineSeparatorSymbols$kotlin_stdlib() {
            return Base64.d;
        }

        @NotNull
        public final Base64 getUrlSafe() {
            return Base64.e;
        }

        @NotNull
        public final Base64 getMime() {
            return Base64.f;
        }
    }

    static {
        PaddingOption paddingOption = PaddingOption.PRESENT;
        e = new Base64(true, false, paddingOption);
        f = new Base64(false, true, paddingOption);
    }
}
