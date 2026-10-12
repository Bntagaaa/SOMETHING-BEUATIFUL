package gnu.kawa.xml;

import _COROUTINE.a;

/* loaded from: classes2.dex */
public class HexBinary extends BinaryObject {
    public static char forHexDigit(int i) {
        return (char) (i < 10 ? i + 48 : i + 55);
    }

    public HexBinary(byte[] bArr) {
        this.data = bArr;
    }

    public static HexBinary valueOf(String str) {
        return new HexBinary(parseHexBinary(str));
    }

    public static byte[] parseHexBinary(String str) {
        String strTrim = str.trim();
        int length = strTrim.length();
        if ((length & 1) != 0) {
            throw new IllegalArgumentException("hexBinary string length not a multiple of 2");
        }
        int i = length >> 1;
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 * 2;
            int iDigit = Character.digit(strTrim.charAt(i3), 16);
            int i4 = i3 + 1;
            int iDigit2 = Character.digit(strTrim.charAt(i4), 16);
            if (iDigit >= 0) {
                i3 = iDigit2 < 0 ? i4 : -1;
            }
            if (i3 >= 0) {
                throw new IllegalArgumentException(a.d(i3, "invalid hexBinary character at position "));
            }
            bArr[i2] = (byte) ((iDigit * 16) + iDigit2);
        }
        return bArr;
    }

    public StringBuffer toString(StringBuffer stringBuffer) {
        for (byte b2 : this.data) {
            stringBuffer.append(forHexDigit((b2 >> 4) & 15));
            stringBuffer.append(forHexDigit(b2 & 15));
        }
        return stringBuffer;
    }

    public String toString() {
        return toString(new StringBuffer()).toString();
    }
}
