package kotlin.text;

import java.util.Arrays;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.HexFormat;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000:\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\b\u001a\u001d\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a1\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\t\u001aG\u0010\u0011\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u001d\u0010\u0013\u001a\u00020\u0000*\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0013\u0010\u0014\u001aG\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0016\u0010\u0012\u001a\u001d\u0010\u0004\u001a\u00020\u0003*\u00020\u00172\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0018\u001a\u001d\u0010\u0019\u001a\u00020\u0017*\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001d\u0010\u0004\u001a\u00020\u0003*\u00020\u001b2\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u001c\u001a\u001d\u0010\u001d\u001a\u00020\u001b*\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u001d\u0010\u0004\u001a\u00020\u0003*\u00020\u00062\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u001f\u001a\u001d\u0010 \u001a\u00020\u0006*\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b \u0010!\u001a\u001d\u0010\u0004\u001a\u00020\u0003*\u00020\"2\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010#\u001a\u001d\u0010$\u001a\u00020\"*\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b$\u0010%\u001a1\u0010$\u001a\u00020\"*\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0001¢\u0006\u0004\b$\u0010&\" \u0010.\u001a\u00020'8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b(\u0010)\u0012\u0004\b,\u0010-\u001a\u0004\b*\u0010+¨\u0006/"}, d2 = {"", "Lkotlin/text/HexFormat;", "format", "", "toHexString", "([BLkotlin/text/HexFormat;)Ljava/lang/String;", "", "startIndex", "endIndex", "([BIILkotlin/text/HexFormat;)Ljava/lang/String;", "numberOfBytes", "bytesPerLine", "bytesPerGroup", "groupSeparatorLength", "byteSeparatorLength", "bytePrefixLength", "byteSuffixLength", "formattedStringLength", "(IIIIIII)I", "hexToByteArray", "(Ljava/lang/String;Lkotlin/text/HexFormat;)[B", "stringLength", "parsedByteArrayMaxSize", "", "(BLkotlin/text/HexFormat;)Ljava/lang/String;", "hexToByte", "(Ljava/lang/String;Lkotlin/text/HexFormat;)B", "", "(SLkotlin/text/HexFormat;)Ljava/lang/String;", "hexToShort", "(Ljava/lang/String;Lkotlin/text/HexFormat;)S", "(ILkotlin/text/HexFormat;)Ljava/lang/String;", "hexToInt", "(Ljava/lang/String;Lkotlin/text/HexFormat;)I", "", "(JLkotlin/text/HexFormat;)Ljava/lang/String;", "hexToLong", "(Ljava/lang/String;Lkotlin/text/HexFormat;)J", "(Ljava/lang/String;IILkotlin/text/HexFormat;)J", "", "a", "[I", "getBYTE_TO_LOWER_CASE_HEX_DIGITS", "()[I", "getBYTE_TO_LOWER_CASE_HEX_DIGITS$annotations", "()V", "BYTE_TO_LOWER_CASE_HEX_DIGITS", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHexExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,1249:1\n1198#1,7:1251\n1198#1,7:1258\n1198#1,7:1265\n1198#1,7:1272\n1198#1,7:1279\n1198#1,7:1286\n1198#1,7:1293\n1198#1,7:1300\n1209#1,5:1307\n1209#1,5:1312\n1198#1,7:1317\n1198#1,7:1324\n1209#1,5:1331\n1218#1,5:1336\n1#2:1250\n1188#3,3:1341\n1188#3,3:1344\n1188#3,3:1347\n1188#3,3:1350\n*S KotlinDebug\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n*L\n457#1:1251,7\n490#1:1258,7\n494#1:1265,7\n497#1:1272,7\n538#1:1279,7\n541#1:1286,7\n546#1:1293,7\n551#1:1300,7\n558#1:1307,5\n559#1:1312,5\n1153#1:1317,7\n1155#1:1324,7\n1183#1:1331,5\n1191#1:1336,5\n43#1:1341,3\n44#1:1344,3\n55#1:1347,3\n56#1:1350,3\n*E\n"})
/* loaded from: classes2.dex */
public final class HexExtensionsKt {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f6028a;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f6029b;
    public static final int[] c;
    public static final long[] d;

    @ExperimentalStdlibApi
    public static /* synthetic */ void getBYTE_TO_LOWER_CASE_HEX_DIGITS$annotations() {
    }

    @NotNull
    public static final int[] getBYTE_TO_LOWER_CASE_HEX_DIGITS() {
        return f6028a;
    }

    static {
        int[] iArr = new int[256];
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            iArr[i2] = "0123456789abcdef".charAt(i2 & 15) | ("0123456789abcdef".charAt(i2 >> 4) << '\b');
        }
        f6028a = iArr;
        int[] iArr2 = new int[256];
        for (int i3 = 0; i3 < 256; i3++) {
            iArr2[i3] = "0123456789ABCDEF".charAt(i3 & 15) | ("0123456789ABCDEF".charAt(i3 >> 4) << '\b');
        }
        f6029b = iArr2;
        int[] iArr3 = new int[256];
        for (int i4 = 0; i4 < 256; i4++) {
            iArr3[i4] = -1;
        }
        int i5 = 0;
        int i6 = 0;
        while (i5 < "0123456789abcdef".length()) {
            iArr3["0123456789abcdef".charAt(i5)] = i6;
            i5++;
            i6++;
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < "0123456789ABCDEF".length()) {
            iArr3["0123456789ABCDEF".charAt(i7)] = i8;
            i7++;
            i8++;
        }
        c = iArr3;
        long[] jArr = new long[256];
        for (int i9 = 0; i9 < 256; i9++) {
            jArr[i9] = -1;
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < "0123456789abcdef".length()) {
            jArr["0123456789abcdef".charAt(i10)] = i11;
            i10++;
            i11++;
        }
        int i12 = 0;
        while (i < "0123456789ABCDEF".length()) {
            jArr["0123456789ABCDEF".charAt(i)] = i12;
            i++;
            i12++;
        }
        d = jArr;
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(@NotNull byte[] bArr, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return toHexString(bArr, 0, bArr.length, format);
    }

    public static /* synthetic */ String toHexString$default(byte[] bArr, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(bArr, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(byte[] bArr, int i, int i2, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = bArr.length;
        }
        if ((i3 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(bArr, i, i2, hexFormat);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0142 A[SYNTHETIC] */
    @kotlin.SinceKotlin(version = "1.9")
    @kotlin.ExperimentalStdlibApi
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String toHexString(@org.jetbrains.annotations.NotNull byte[] r16, int r17, int r18, @org.jetbrains.annotations.NotNull kotlin.text.HexFormat r19) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.HexExtensionsKt.toHexString(byte[], int, int, kotlin.text.HexFormat):java.lang.String");
    }

    public static final int e(byte[] bArr, int i, int[] iArr, char[] cArr, int i2) {
        int i3 = iArr[bArr[i] & 255];
        cArr[i2] = (char) (i3 >> 8);
        cArr[i2 + 1] = (char) (i3 & 255);
        return i2 + 2;
    }

    public static final int formattedStringLength(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        if (i <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        int i8 = i - 1;
        int i9 = i8 / i2;
        int i10 = (i2 - 1) / i3;
        int i11 = i % i2;
        if (i11 != 0) {
            i2 = i11;
        }
        int i12 = (i10 * i9) + ((i2 - 1) / i3);
        return b(((i6 + 2 + i7) * i) + (((i8 - i9) - i12) * i5) + (i12 * i4) + i9);
    }

    public static final int b(long j) {
        if (0 <= j && j <= 2147483647L) {
            return (int) j;
        }
        throw new IllegalArgumentException("The resulting string length is too big: " + ((Object) ULong.m629toStringimpl(ULong.m625constructorimpl(j))));
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final byte[] hexToByteArray(@NotNull String str, @NotNull HexFormat format) throws Throwable {
        HexFormat.BytesHexFormat bytesHexFormat;
        Throwable th;
        int i;
        int i2;
        String str2;
        int i3;
        int length;
        byte[] bArr;
        HexFormat.BytesHexFormat bytesHexFormat2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        int length2 = str.length();
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(0, length2, str.length());
        if (length2 == 0) {
            return new byte[0];
        }
        HexFormat.BytesHexFormat bytes = format.getBytes();
        if (bytes.getNoLineAndGroupSeparator()) {
            if (bytes.getShortByteSeparatorNoPrefixAndSuffix()) {
                int length3 = bytes.getByteSeparator().length();
                if (length3 > 1) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                if (length3 == 0) {
                    if ((length2 & 1) == 0) {
                        int i4 = length2 >> 1;
                        bArr = new byte[i4];
                        int i5 = 0;
                        for (int i6 = 0; i6 < i4; i6++) {
                            bArr[i6] = g(i5, str);
                            i5 += 2;
                        }
                        bytesHexFormat = bytes;
                        th = null;
                    }
                    bytesHexFormat = bytes;
                    th = null;
                    bArr = null;
                } else {
                    if (length2 % 3 == 2) {
                        int i7 = (length2 / 3) + 1;
                        bArr = new byte[i7];
                        char cCharAt = bytes.getByteSeparator().charAt(0);
                        bArr[0] = g(0, str);
                        int i8 = 1;
                        int i9 = 2;
                        while (i8 < i7) {
                            if (str.charAt(i9) != cCharAt) {
                                String byteSeparator = bytes.getByteSeparator();
                                boolean ignoreCase$kotlin_stdlib = bytes.getIgnoreCase();
                                if (byteSeparator.length() == 0) {
                                    bytesHexFormat2 = bytes;
                                } else {
                                    int length4 = byteSeparator.length();
                                    int i10 = 0;
                                    while (i10 < length4) {
                                        HexFormat.BytesHexFormat bytesHexFormat3 = bytes;
                                        if (!c.equals(byteSeparator.charAt(i10), str.charAt(i9 + i10), ignoreCase$kotlin_stdlib)) {
                                            l(i9, length2, str, byteSeparator, "byte separator");
                                            throw null;
                                        }
                                        i10++;
                                        bytes = bytesHexFormat3;
                                    }
                                    bytesHexFormat2 = bytes;
                                    bArr[i8] = g(i9 + 1, str);
                                    i9 += 3;
                                    i8++;
                                    bytes = bytesHexFormat2;
                                }
                            } else {
                                bytesHexFormat2 = bytes;
                            }
                            bArr[i8] = g(i9 + 1, str);
                            i9 += 3;
                            i8++;
                            bytes = bytesHexFormat2;
                        }
                        bytesHexFormat = bytes;
                        th = null;
                    }
                    bytesHexFormat = bytes;
                    th = null;
                    bArr = null;
                }
            } else {
                bytesHexFormat = bytes;
                th = null;
                String bytePrefix = bytesHexFormat.getBytePrefix();
                String byteSuffix = bytesHexFormat.getByteSuffix();
                String byteSeparator2 = bytesHexFormat.getByteSeparator();
                long length5 = byteSeparator2.length();
                long length6 = bytePrefix.length() + 2 + byteSuffix.length() + length5;
                long j = length2;
                int i11 = (int) ((j + length5) / length6);
                if ((i11 * length6) - length5 != j) {
                    bArr = null;
                } else {
                    boolean ignoreCase$kotlin_stdlib2 = bytesHexFormat.getIgnoreCase();
                    byte[] bArr2 = new byte[i11];
                    if (bytePrefix.length() == 0) {
                        length = 0;
                    } else {
                        int length7 = bytePrefix.length();
                        for (int i12 = 0; i12 < length7; i12++) {
                            if (!c.equals(bytePrefix.charAt(i12), str.charAt(i12), ignoreCase$kotlin_stdlib2)) {
                                l(0, length2, str, bytePrefix, "byte prefix");
                                throw null;
                            }
                        }
                        length = bytePrefix.length();
                    }
                    String strJ = _COROUTINE.a.j(byteSuffix, byteSeparator2, bytePrefix);
                    int i13 = i11 - 1;
                    for (int i14 = 0; i14 < i13; i14++) {
                        bArr2[i14] = g(length, str);
                        length += 2;
                        if (strJ.length() != 0) {
                            int length8 = strJ.length();
                            for (int i15 = 0; i15 < length8; i15++) {
                                if (!c.equals(strJ.charAt(i15), str.charAt(length + i15), ignoreCase$kotlin_stdlib2)) {
                                    l(length, length2, str, strJ, "byte suffix + byte separator + byte prefix");
                                    throw null;
                                }
                            }
                            length = strJ.length() + length;
                        }
                    }
                    bArr2[i13] = g(length, str);
                    int i16 = length + 2;
                    if (byteSuffix.length() != 0) {
                        int length9 = byteSuffix.length();
                        for (int i17 = 0; i17 < length9; i17++) {
                            if (!c.equals(byteSuffix.charAt(i17), str.charAt(i16 + i17), ignoreCase$kotlin_stdlib2)) {
                                l(i16, length2, str, byteSuffix, "byte suffix");
                                throw null;
                            }
                        }
                    }
                    bArr = bArr2;
                }
            }
            if (bArr != null) {
                return bArr;
            }
        } else {
            bytesHexFormat = bytes;
            th = null;
        }
        int bytesPerLine = bytesHexFormat.getBytesPerLine();
        int bytesPerGroup = bytesHexFormat.getBytesPerGroup();
        String bytePrefix2 = bytesHexFormat.getBytePrefix();
        String byteSuffix2 = bytesHexFormat.getByteSuffix();
        String byteSeparator3 = bytesHexFormat.getByteSeparator();
        String groupSeparator = bytesHexFormat.getGroupSeparator();
        boolean ignoreCase$kotlin_stdlib3 = bytesHexFormat.getIgnoreCase();
        int i18 = parsedByteArrayMaxSize(length2, bytesPerLine, bytesPerGroup, groupSeparator.length(), byteSeparator3.length(), bytePrefix2.length(), byteSuffix2.length());
        byte[] bArr3 = new byte[i18];
        int i19 = 0;
        int i20 = 0;
        int length10 = 0;
        int i21 = 0;
        while (length10 < length2) {
            if (i20 == bytesPerLine) {
                i = bytesPerLine;
                if (str.charAt(length10) == '\r') {
                    int i22 = length10 + 1;
                    length10 = (i22 >= length2 || str.charAt(i22) != '\n') ? i22 : length10 + 2;
                } else {
                    if (str.charAt(length10) != '\n') {
                        StringBuilder sbO = _COROUTINE.a.o(length10, "Expected a new line at index ", ", but was ");
                        sbO.append(str.charAt(length10));
                        throw new NumberFormatException(sbO.toString());
                    }
                    length10++;
                }
                i2 = bytesPerGroup;
                i19 = 0;
                i20 = 0;
            } else {
                i = bytesPerLine;
                if (i19 == bytesPerGroup) {
                    if (groupSeparator.length() == 0) {
                        i2 = bytesPerGroup;
                    } else {
                        int length11 = groupSeparator.length();
                        int i23 = 0;
                        while (i23 < length11) {
                            int i24 = length11;
                            int i25 = bytesPerGroup;
                            if (!c.equals(groupSeparator.charAt(i23), str.charAt(length10 + i23), ignoreCase$kotlin_stdlib3)) {
                                l(length10, length2, str, groupSeparator, "group separator");
                                throw th;
                            }
                            i23++;
                            length11 = i24;
                            bytesPerGroup = i25;
                        }
                        i2 = bytesPerGroup;
                        length10 += groupSeparator.length();
                    }
                    i19 = 0;
                } else {
                    i2 = bytesPerGroup;
                    if (i19 != 0 && byteSeparator3.length() != 0) {
                        int length12 = byteSeparator3.length();
                        int i26 = 0;
                        while (i26 < length12) {
                            int i27 = length12;
                            int i28 = i26;
                            if (!c.equals(byteSeparator3.charAt(i26), str.charAt(length10 + i28), ignoreCase$kotlin_stdlib3)) {
                                l(length10, length2, str, byteSeparator3, "byte separator");
                                throw th;
                            }
                            i26 = i28 + 1;
                            length12 = i27;
                        }
                        length10 += byteSeparator3.length();
                    }
                }
            }
            i20++;
            i19++;
            if (bytePrefix2.length() != 0) {
                int length13 = bytePrefix2.length();
                int i29 = 0;
                while (i29 < length13) {
                    int i30 = length13;
                    int i31 = i29;
                    if (!c.equals(bytePrefix2.charAt(i29), str.charAt(length10 + i31), ignoreCase$kotlin_stdlib3)) {
                        l(length10, length2, str, bytePrefix2, "byte prefix");
                        throw th;
                    }
                    i29 = i31 + 1;
                    length13 = i30;
                }
                length10 += bytePrefix2.length();
            }
            if (length2 - 2 < length10) {
                k(str, length10, length2, "exactly", 2);
                throw th;
            }
            int i32 = i21 + 1;
            bArr3[i21] = g(length10, str);
            length10 += 2;
            if (byteSuffix2.length() == 0) {
                str2 = bytePrefix2;
                i3 = i32;
            } else {
                int length14 = byteSuffix2.length();
                int i33 = 0;
                while (i33 < length14) {
                    String str3 = bytePrefix2;
                    int i34 = i32;
                    if (!c.equals(byteSuffix2.charAt(i33), str.charAt(length10 + i33), ignoreCase$kotlin_stdlib3)) {
                        l(length10, length2, str, byteSuffix2, "byte suffix");
                        throw th;
                    }
                    i33++;
                    bytePrefix2 = str3;
                    i32 = i34;
                }
                str2 = bytePrefix2;
                i3 = i32;
                length10 = byteSuffix2.length() + length10;
            }
            bytesPerLine = i;
            bytePrefix2 = str2;
            bytesPerGroup = i2;
            i21 = i3;
        }
        if (i21 == i18) {
            return bArr3;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr3, i21);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }

    public static /* synthetic */ byte[] hexToByteArray$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByteArray(str, hexFormat);
    }

    public static final int parsedByteArrayMaxSize(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        long jA;
        if (i <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        long j = i6 + 2 + i7;
        long jA2 = a(j, i3, i5);
        if (i2 <= i3) {
            jA = a(j, i2, i5);
        } else {
            jA = a(jA2, i2 / i3, i4);
            int i8 = i2 % i3;
            if (i8 != 0) {
                jA = a(j, i8, i5) + jA + i4;
            }
        }
        long j2 = i;
        long jO = o(j2, jA, 1);
        long j3 = j2 - ((jA + 1) * jO);
        long jO2 = o(j3, jA2, i4);
        long j4 = j3 - ((jA2 + i4) * jO2);
        long jO3 = o(j4, j, i5);
        return (int) ((jO2 * i3) + (jO * i2) + jO3 + (j4 - ((j + ((long) i5)) * jO3) > 0 ? 1 : 0));
    }

    public static final long a(long j, int i, int i2) {
        if (i <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        long j2 = i;
        return ((j2 - 1) * i2) + (j * j2);
    }

    public static final long o(long j, long j2, int i) {
        if (j <= 0 || j2 <= 0) {
            return 0L;
        }
        long j3 = i;
        return (j + j3) / (j2 + j3);
    }

    public static /* synthetic */ String toHexString$default(byte b2, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(b2, hexFormat);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(byte b2, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? "0123456789ABCDEF" : "0123456789abcdef";
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((b2 >> 4) & 15), str.charAt(b2 & 15)};
            if (number.getRemoveLeadingZeros()) {
                return q.concatToString$default(cArr, RangesKt.coerceAtMost((Integer.numberOfLeadingZeros(b2 & 255) - 24) >> 2, 1), 0, 2, null);
            }
            return q.concatToString(cArr);
        }
        return n(b2, number, str, 8);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    public static final byte hexToByte(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return (byte) f(str, str.length(), 2, format);
    }

    public static /* synthetic */ byte hexToByte$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToByte(str, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(short s, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(s, hexFormat);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(short s, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? "0123456789ABCDEF" : "0123456789abcdef";
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((s >> 12) & 15), str.charAt((s >> 8) & 15), str.charAt((s >> 4) & 15), str.charAt(s & 15)};
            if (number.getRemoveLeadingZeros()) {
                return q.concatToString$default(cArr, RangesKt.coerceAtMost((Integer.numberOfLeadingZeros(s & UShort.MAX_VALUE) - 16) >> 2, 3), 0, 2, null);
            }
            return q.concatToString(cArr);
        }
        return n(s, number, str, 16);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    public static final short hexToShort(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return (short) f(str, str.length(), 4, format);
    }

    public static /* synthetic */ short hexToShort$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToShort(str, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(int i, HexFormat hexFormat, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(i, hexFormat);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(int i, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? "0123456789ABCDEF" : "0123456789abcdef";
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((i >> 28) & 15), str.charAt((i >> 24) & 15), str.charAt((i >> 20) & 15), str.charAt((i >> 16) & 15), str.charAt((i >> 12) & 15), str.charAt((i >> 8) & 15), str.charAt((i >> 4) & 15), str.charAt(i & 15)};
            if (number.getRemoveLeadingZeros()) {
                return q.concatToString$default(cArr, RangesKt.coerceAtMost(Integer.numberOfLeadingZeros(i) >> 2, 7), 0, 2, null);
            }
            return q.concatToString(cArr);
        }
        return n(i, number, str, 32);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    public static final int hexToInt(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return f(str, str.length(), 8, format);
    }

    public static /* synthetic */ int hexToInt$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToInt(str, hexFormat);
    }

    public static /* synthetic */ String toHexString$default(long j, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return toHexString(j, hexFormat);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    @NotNull
    public static final String toHexString(long j, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String str = format.getUpperCase() ? "0123456789ABCDEF" : "0123456789abcdef";
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnlyAndNoPadding()) {
            char[] cArr = {str.charAt((int) ((j >> 60) & 15)), str.charAt((int) ((j >> 56) & 15)), str.charAt((int) ((j >> 52) & 15)), str.charAt((int) ((j >> 48) & 15)), str.charAt((int) ((j >> 44) & 15)), str.charAt((int) ((j >> 40) & 15)), str.charAt((int) ((j >> 36) & 15)), str.charAt((int) ((j >> 32) & 15)), str.charAt((int) ((j >> 28) & 15)), str.charAt((int) ((j >> 24) & 15)), str.charAt((int) ((j >> 20) & 15)), str.charAt((int) ((j >> 16) & 15)), str.charAt((int) ((j >> 12) & 15)), str.charAt((int) ((j >> 8) & 15)), str.charAt((int) ((j >> 4) & 15)), str.charAt((int) (j & 15))};
            if (number.getRemoveLeadingZeros()) {
                return q.concatToString$default(cArr, RangesKt.coerceAtMost(Long.numberOfLeadingZeros(j) >> 2, 15), 0, 2, null);
            }
            return q.concatToString(cArr);
        }
        return n(j, number, str, 64);
    }

    @SinceKotlin(version = "1.9")
    @ExperimentalStdlibApi
    public static final long hexToLong(@NotNull String str, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return hexToLong(str, 0, str.length(), format);
    }

    public static /* synthetic */ long hexToLong$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToLong(str, hexFormat);
    }

    public static /* synthetic */ long hexToLong$default(String str, int i, int i2, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return hexToLong(str, i, i2, hexFormat);
    }

    public static final String n(long j, HexFormat.NumberHexFormat numberHexFormat, String str, int i) {
        int i2 = i >> 2;
        int minLength = numberHexFormat.getMinLength();
        int iCoerceAtLeast = RangesKt.coerceAtLeast(minLength - i2, 0);
        String prefix = numberHexFormat.getPrefix();
        String suffix = numberHexFormat.getSuffix();
        boolean removeLeadingZeros = numberHexFormat.getRemoveLeadingZeros();
        int iB = b(prefix.length() + iCoerceAtLeast + i2 + suffix.length());
        char[] cArr = new char[iB];
        int iM = m(prefix, cArr, 0);
        if (iCoerceAtLeast > 0) {
            int i3 = iCoerceAtLeast + iM;
            ArraysKt.fill(cArr, str.charAt(0), iM, i3);
            iM = i3;
        }
        int i4 = i;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 -= 4;
            int i6 = (int) ((j >> i4) & 15);
            removeLeadingZeros = removeLeadingZeros && i6 == 0 && (i4 >> 2) >= minLength;
            if (!removeLeadingZeros) {
                cArr[iM] = str.charAt(i6);
                iM++;
            }
        }
        int iM2 = m(suffix, cArr, iM);
        return iM2 == iB ? q.concatToString(cArr) : q.concatToString$default(cArr, 0, iM2, 1, null);
    }

    public static final int m(String str, char[] cArr, int i) {
        int length = str.length();
        if (length != 0) {
            if (length == 1) {
                cArr[i] = str.charAt(0);
            } else {
                int length2 = str.length();
                Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                str.getChars(0, length2, cArr, i);
            }
        }
        return str.length() + i;
    }

    public static final int f(String str, int i, int i2, HexFormat hexFormat) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(0, i, str.length());
        HexFormat.NumberHexFormat number = hexFormat.getNumber();
        if (number.getIsDigitsOnly()) {
            c(str, 0, i, i2);
            return h(0, i, str);
        }
        String prefix = number.getPrefix();
        String suffix = number.getSuffix();
        d(str, 0, i, prefix, suffix, number.getIgnoreCase(), i2);
        return h(prefix.length(), i - suffix.length(), str);
    }

    @ExperimentalStdlibApi
    public static final long hexToLong(@NotNull String str, int i, int i2, @NotNull HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i, i2, str.length());
        HexFormat.NumberHexFormat number = format.getNumber();
        if (number.getIsDigitsOnly()) {
            c(str, i, i2, 16);
            return i(i, i2, str);
        }
        String prefix = number.getPrefix();
        String suffix = number.getSuffix();
        d(str, i, i2, prefix, suffix, number.getIgnoreCase(), 16);
        return i(prefix.length() + i, i2 - suffix.length(), str);
    }

    public static final void d(String str, int i, int i2, String str2, String str3, boolean z, int i3) {
        if ((i2 - i) - str2.length() <= str3.length()) {
            Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = str.substring(i, i2);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            throw new NumberFormatException("Expected a hexadecimal number with prefix \"" + str2 + "\" and suffix \"" + str3 + "\", but was " + strSubstring);
        }
        if (str2.length() != 0) {
            int length = str2.length();
            for (int i4 = 0; i4 < length; i4++) {
                if (!c.equals(str2.charAt(i4), str.charAt(i + i4), z)) {
                    l(i, i2, str, str2, "prefix");
                    throw null;
                }
            }
            i += str2.length();
        }
        int length2 = i2 - str3.length();
        if (str3.length() != 0) {
            int length3 = str3.length();
            for (int i5 = 0; i5 < length3; i5++) {
                if (!c.equals(str3.charAt(i5), str.charAt(length2 + i5), z)) {
                    l(length2, i2, str, str3, "suffix");
                    throw null;
                }
            }
        }
        c(str, i, length2, i3);
    }

    public static final void c(String str, int i, int i2, int i3) {
        int i4 = i2 - i;
        if (i4 < 1) {
            k(str, i, i2, "at least", 1);
            throw null;
        }
        if (i4 > i3) {
            int i5 = (i4 + i) - i3;
            while (i < i5) {
                if (str.charAt(i) != '0') {
                    StringBuilder sbO = _COROUTINE.a.o(i, "Expected the hexadecimal digit '0' at index ", ", but was '");
                    sbO.append(str.charAt(i));
                    sbO.append("'.\nThe result won't fit the type being parsed.");
                    throw new NumberFormatException(sbO.toString());
                }
                i++;
            }
        }
    }

    public static final void k(String str, int i, int i2, String str2, int i3) {
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        throw new NumberFormatException("Expected " + str2 + ' ' + i3 + " hexadecimal digits at index " + i + ", but was \"" + strSubstring + "\" of length " + (i2 - i));
    }

    public static final void l(int i, int i2, String str, String str2, String str3) {
        int iCoerceAtMost = RangesKt.coerceAtMost(str2.length() + i, i2);
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i, iCoerceAtMost);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        throw new NumberFormatException("Expected " + str3 + " \"" + str2 + "\" at index " + i + ", but was " + strSubstring);
    }

    public static final void j(int i, String str) {
        StringBuilder sbO = _COROUTINE.a.o(i, "Expected a hexadecimal digit at index ", ", but was ");
        sbO.append(str.charAt(i));
        throw new NumberFormatException(sbO.toString());
    }

    public static final byte g(int i, String str) {
        int[] iArr;
        int i2;
        int i3;
        char cCharAt = str.charAt(i);
        if ((cCharAt >>> '\b') != 0 || (i2 = (iArr = c)[cCharAt]) < 0) {
            j(i, str);
            throw null;
        }
        int i4 = i + 1;
        char cCharAt2 = str.charAt(i4);
        if ((cCharAt2 >>> '\b') == 0 && (i3 = iArr[cCharAt2]) >= 0) {
            return (byte) ((i2 << 4) | i3);
        }
        j(i4, str);
        throw null;
    }

    public static final int h(int i, int i2, String str) {
        int i3;
        int i4 = 0;
        while (i < i2) {
            int i5 = i4 << 4;
            char cCharAt = str.charAt(i);
            if ((cCharAt >>> '\b') != 0 || (i3 = c[cCharAt]) < 0) {
                j(i, str);
                throw null;
            }
            i4 = i5 | i3;
            i++;
        }
        return i4;
    }

    public static final long i(int i, int i2, String str) {
        long j = 0;
        while (i < i2) {
            long j2 = j << 4;
            char cCharAt = str.charAt(i);
            if ((cCharAt >>> '\b') == 0) {
                long j3 = d[cCharAt];
                if (j3 >= 0) {
                    j = j2 | j3;
                    i++;
                }
            }
            j(i, str);
            throw null;
        }
        return j;
    }
}
