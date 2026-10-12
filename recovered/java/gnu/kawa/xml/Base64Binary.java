package gnu.kawa.xml;

import _COROUTINE.a;

/* loaded from: classes2.dex */
public class Base64Binary extends BinaryObject {
    public static final String ENCODING = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

    public Base64Binary(byte[] bArr) {
        this.data = bArr;
    }

    public static Base64Binary valueOf(String str) {
        return new Base64Binary(str);
    }

    public Base64Binary(String str) {
        int i;
        int length = str.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (!Character.isWhitespace(cCharAt) && cCharAt != '=') {
                i2++;
            }
        }
        int i4 = (i2 * 3) / 4;
        byte[] bArr = new byte[i4];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < length; i9++) {
            char cCharAt2 = str.charAt(i9);
            if (cCharAt2 >= 'A' && cCharAt2 <= 'Z') {
                i = cCharAt2 - 65;
            } else if (cCharAt2 >= 'a' && cCharAt2 <= 'z') {
                i = cCharAt2 - 71;
            } else if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                i = cCharAt2 + 4;
            } else if (cCharAt2 == '+') {
                i = 62;
            } else if (cCharAt2 == '/') {
                i = 63;
            } else {
                if (Character.isWhitespace(cCharAt2)) {
                    continue;
                } else if (cCharAt2 == '=') {
                    i6++;
                } else {
                    i = -1;
                }
            }
            if (i < 0 || i6 > 0) {
                throw new IllegalArgumentException(a.d(i9, "illegal character in base64Binary string at position "));
            }
            i8 = (i8 << 6) + i;
            i5++;
            if (i5 == 4) {
                bArr[i7] = (byte) (i8 >> 16);
                int i10 = i7 + 2;
                bArr[i7 + 1] = (byte) (i8 >> 8);
                i7 += 3;
                bArr[i10] = (byte) i8;
                i5 = 0;
            }
        }
        int i11 = i5 + i6;
        if (i11 <= 0 ? i7 != i4 : !(i11 == 4 && (((1 << i6) - 1) & i8) == 0 && (i7 + 3) - i6 == i4)) {
            throw new IllegalArgumentException();
        }
        if (i6 == 1) {
            bArr[i7] = (byte) (i8 << 10);
            bArr[i7 + 1] = (byte) (i8 >> 2);
        } else if (i6 == 2) {
            bArr[i7] = (byte) (i8 >> 4);
        }
        this.data = bArr;
    }

    public StringBuffer toString(StringBuffer stringBuffer) {
        byte[] bArr = this.data;
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            i2 = (i2 << 8) | (bArr[i] & 255);
            i++;
            if (i % 3 == 0) {
                stringBuffer.append(ENCODING.charAt((i2 >> 18) & 63));
                stringBuffer.append(ENCODING.charAt((i2 >> 12) & 63));
                stringBuffer.append(ENCODING.charAt((i2 >> 6) & 63));
                stringBuffer.append(ENCODING.charAt(i2 & 63));
            }
        }
        int i3 = length % 3;
        if (i3 == 1) {
            stringBuffer.append(ENCODING.charAt((i2 >> 2) & 63));
            stringBuffer.append(ENCODING.charAt((i2 << 4) & 63));
            stringBuffer.append("==");
            return stringBuffer;
        }
        if (i3 != 2) {
            return stringBuffer;
        }
        stringBuffer.append(ENCODING.charAt((i2 >> 10) & 63));
        stringBuffer.append(ENCODING.charAt((i2 >> 4) & 63));
        stringBuffer.append(ENCODING.charAt((i2 << 2) & 63));
        stringBuffer.append('=');
        return stringBuffer;
    }

    public String toString() {
        return toString(new StringBuffer()).toString();
    }
}
