package com.google.zxing.pdf417.decoder;

import com.google.appinventor.components.runtime.util.ErrorMessages;
import java.math.BigInteger;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f5284a = {';', Typography.less, Typography.greater, '@', '[', '\\', '}', '_', '`', '~', '!', '\r', '\t', ',', ':', '\n', '-', '.', Typography.dollar, '/', Typography.quote, '|', '*', '(', ')', '?', '{', '}', '\''};

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f5285b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', Typography.amp, '\r', '\t', ',', ':', '#', '-', '.', Typography.dollar, '/', '+', '%', '*', '=', '^'};
    public static final BigInteger[] c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.zxing.pdf417.decoder.b$b, reason: collision with other inner class name */
    public static final class EnumC0150b {

        /* renamed from: a, reason: collision with root package name */
        public static final EnumC0150b f5287a;

        /* renamed from: b, reason: collision with root package name */
        public static final EnumC0150b f5288b;
        public static final EnumC0150b c;
        public static final EnumC0150b d;
        public static final EnumC0150b e;
        public static final EnumC0150b f;

        /* renamed from: g, reason: collision with root package name */
        public static final /* synthetic */ EnumC0150b[] f5289g;

        public static EnumC0150b[] values() {
            return (EnumC0150b[]) f5289g.clone();
        }

        static {
            EnumC0150b enumC0150b = new EnumC0150b("ALPHA", 0);
            f5287a = enumC0150b;
            EnumC0150b enumC0150b2 = new EnumC0150b("LOWER", 1);
            f5288b = enumC0150b2;
            EnumC0150b enumC0150b3 = new EnumC0150b("MIXED", 2);
            c = enumC0150b3;
            EnumC0150b enumC0150b4 = new EnumC0150b("PUNCT", 3);
            d = enumC0150b4;
            EnumC0150b enumC0150b5 = new EnumC0150b("ALPHA_SHIFT", 4);
            e = enumC0150b5;
            EnumC0150b enumC0150b6 = new EnumC0150b("PUNCT_SHIFT", 5);
            f = enumC0150b6;
            f5289g = new EnumC0150b[]{enumC0150b, enumC0150b2, enumC0150b3, enumC0150b4, enumC0150b5, enumC0150b6};
        }
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        c = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = bigIntegerValueOf;
        int i = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = c;
            if (i >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i] = bigIntegerArr2[i - 1].multiply(bigIntegerValueOf);
            i++;
        }
    }

    private b() {
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0033. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int b(int[] r19, int r20, java.lang.StringBuilder r21) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.b.b(int[], int, java.lang.StringBuilder):int");
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5286a;

        static {
            int[] iArr = new int[EnumC0150b.values().length];
            f5286a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5286a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5286a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5286a[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5286a[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5286a[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static int a(int i, int[] iArr, int i2, StringBuilder sb) {
        boolean z;
        int i3;
        int i4;
        int i5 = 922;
        int i6 = 923;
        long j = 0;
        int i7 = ErrorMessages.ERROR_INVALID_SCREEN_ORIENTATION;
        if (i != 901) {
            if (i != 924) {
                return i2;
            }
            int i8 = i2;
            boolean z2 = false;
            int i9 = 0;
            while (i8 < iArr[0] && !z2) {
                int i10 = i8 + 1;
                int i11 = iArr[i8];
                if (i11 < 900) {
                    i9++;
                    j = (j * 900) + i11;
                    i8 = i10;
                } else {
                    if (i11 != 900 && i11 != i7 && i11 != 902 && i11 != 924 && i11 != 928) {
                        if (i11 != 923 && i11 != 922) {
                            i8 = i10;
                        }
                    }
                    z2 = true;
                }
                if (i9 % 5 != 0 || i9 <= 0) {
                    z = z2;
                } else {
                    char[] cArr = new char[6];
                    int i12 = 0;
                    while (i12 < 6) {
                        cArr[5 - i12] = (char) (j & 255);
                        j >>= 8;
                        i12++;
                        z2 = z2;
                    }
                    z = z2;
                    sb.append(cArr);
                    i9 = 0;
                }
                z2 = z;
                i7 = ErrorMessages.ERROR_INVALID_SCREEN_ORIENTATION;
            }
            return i8;
        }
        char[] cArr2 = new char[6];
        int[] iArr2 = new int[6];
        int i13 = i2 + 1;
        int i14 = iArr[i2];
        boolean z3 = false;
        int i15 = 0;
        while (true) {
            i3 = iArr[0];
            if (i13 >= i3 || z3) {
                break;
            }
            int i16 = i15 + 1;
            iArr2[i15] = i14;
            j = (j * 900) + i14;
            int i17 = i13 + 1;
            i14 = iArr[i13];
            if (i14 == 900 || i14 == 901 || i14 == 902 || i14 == 924 || i14 == 928 || i14 == i6 || i14 == i5) {
                i15 = i16;
                i5 = 922;
                i6 = 923;
                z3 = true;
            } else if (i16 % 5 != 0 || i16 <= 0) {
                i13 = i17;
                i15 = i16;
                i5 = 922;
                i6 = 923;
            } else {
                for (int i18 = 0; i18 < 6; i18++) {
                    cArr2[5 - i18] = (char) (j % 256);
                    j >>= 8;
                }
                sb.append(cArr2);
                i13 = i17;
                i5 = 922;
                i6 = 923;
                i15 = 0;
            }
        }
        if (i13 != i3 || i14 >= 900) {
            i4 = i15;
        } else {
            i4 = i15 + 1;
            iArr2[i15] = i14;
        }
        for (int i19 = 0; i19 < i4; i19++) {
            sb.append((char) iArr2[i19]);
        }
        return i13;
    }
}
