package com.google.appinventor.components.runtime.util;

import java.io.IOException;
import java.math.BigInteger;
import java.util.Arrays;

/* loaded from: classes.dex */
public class Base58Util {
    public static final char[] ALPHABET;
    private static final char ENCODED_ZERO;
    private static final int[] INDEXES;

    static {
        char[] charArray = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz".toCharArray();
        ALPHABET = charArray;
        int i = 0;
        ENCODED_ZERO = charArray[0];
        int[] iArr = new int[128];
        INDEXES = iArr;
        Arrays.fill(iArr, -1);
        while (true) {
            char[] cArr = ALPHABET;
            if (i >= cArr.length) {
                return;
            }
            INDEXES[cArr[i]] = i;
            i++;
        }
    }

    public static String encode(byte[] bArr) {
        if (bArr.length == 0) {
            return "";
        }
        int i = 0;
        while (i < bArr.length && bArr[i] == 0) {
            i++;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        int length = bArrCopyOf.length * 2;
        char[] cArr = new char[length];
        int i2 = i;
        int i3 = length;
        while (i2 < bArrCopyOf.length) {
            i3--;
            cArr[i3] = ALPHABET[divmod(bArrCopyOf, i2, 256, 58)];
            if (bArrCopyOf[i2] == 0) {
                i2++;
            }
        }
        while (i3 < length && cArr[i3] == ENCODED_ZERO) {
            i3++;
        }
        while (true) {
            i--;
            if (i >= 0) {
                i3--;
                cArr[i3] = ENCODED_ZERO;
            } else {
                return new String(cArr, i3, length - i3);
            }
        }
    }

    public static byte[] decode(String str) throws IOException {
        int i = 0;
        if (str.length() == 0) {
            return new byte[0];
        }
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            int i3 = cCharAt < 128 ? INDEXES[cCharAt] : -1;
            if (i3 < 0) {
                throw new IOException("Illegal character " + cCharAt + " at position " + i2);
            }
            bArr[i2] = (byte) i3;
        }
        while (i < length && bArr[i] == 0) {
            i++;
        }
        int length2 = str.length();
        byte[] bArr2 = new byte[length2];
        int i4 = length2;
        int i5 = i;
        while (i5 < length) {
            i4--;
            bArr2[i4] = divmod(bArr, i5, 58, 256);
            if (bArr[i5] == 0) {
                i5++;
            }
        }
        while (i4 < length2 && bArr2[i4] == 0) {
            i4++;
        }
        return copyOfRange(bArr2, i4 - i, length2);
    }

    public static BigInteger decodeToBigInteger(String str) throws IOException {
        return new BigInteger(1, decode(str));
    }

    private static byte[] copyOfRange(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException(i + " > " + i2);
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
        return bArr2;
    }

    private static byte divmod(byte[] bArr, int i, int i2, int i3) {
        int i4 = 0;
        while (i < bArr.length) {
            int i5 = (i4 * i2) + (bArr[i] & 255);
            bArr[i] = (byte) (i5 / i3);
            i4 = i5 % i3;
            i++;
        }
        return (byte) i4;
    }
}
