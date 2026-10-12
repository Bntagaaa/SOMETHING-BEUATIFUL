package com.google.zxing.oned;

import gnu.bytecode.Access;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class CodaBarWriter extends OneDimensionalCodeWriter {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f5227a = {'A', 'B', Access.CLASS_CONTEXT, 'D'};

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f5228b = {'T', 'N', '*', 'E'};

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int i;
        char[] cArr = f5227a;
        if (!CodaBarReader.b(cArr, Character.toUpperCase(str.charAt(0)))) {
            throw new IllegalArgumentException("Codabar should start with one of the following: " + Arrays.toString(cArr));
        }
        char[] cArr2 = f5228b;
        if (!CodaBarReader.b(cArr2, Character.toUpperCase(str.charAt(str.length() - 1)))) {
            throw new IllegalArgumentException("Codabar should end with one of the following: " + Arrays.toString(cArr2));
        }
        char[] cArr3 = {'/', ':', '+', '.'};
        int i2 = 20;
        for (int i3 = 1; i3 < str.length() - 1; i3++) {
            if (Character.isDigit(str.charAt(i3)) || str.charAt(i3) == '-' || str.charAt(i3) == '$') {
                i2 += 9;
            } else {
                if (!CodaBarReader.b(cArr3, str.charAt(i3))) {
                    throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i3) + '\'');
                }
                i2 += 10;
            }
        }
        boolean[] zArr = new boolean[(str.length() - 1) + i2];
        int i4 = 0;
        for (int i5 = 0; i5 < str.length(); i5++) {
            char upperCase = Character.toUpperCase(str.charAt(i5));
            if (i5 == str.length() - 1) {
                if (upperCase == '*') {
                    upperCase = Access.CLASS_CONTEXT;
                } else if (upperCase == 'E') {
                    upperCase = 'D';
                } else if (upperCase == 'N') {
                    upperCase = 'B';
                } else if (upperCase == 'T') {
                    upperCase = 'A';
                }
            }
            int i6 = 0;
            while (true) {
                char[] cArr4 = CodaBarReader.d;
                if (i6 >= cArr4.length) {
                    i = 0;
                    break;
                }
                if (upperCase == cArr4[i6]) {
                    i = CodaBarReader.e[i6];
                    break;
                }
                i6++;
            }
            int i7 = 0;
            boolean z = true;
            while (true) {
                int i8 = 0;
                while (i7 < 7) {
                    zArr[i4] = z;
                    i4++;
                    if (((i >> (6 - i7)) & 1) == 0 || i8 == 1) {
                        break;
                    }
                    i8++;
                }
                z = !z;
                i7++;
            }
            if (i5 < str.length() - 1) {
                zArr[i4] = false;
                i4++;
            }
        }
        return zArr;
    }
}
