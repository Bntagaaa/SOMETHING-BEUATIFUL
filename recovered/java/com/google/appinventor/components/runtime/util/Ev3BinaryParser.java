package com.google.appinventor.components.runtime.util;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class Ev3BinaryParser {
    private static byte PRIMPAR_1_BYTE = 1;
    private static byte PRIMPAR_2_BYTES = 2;
    private static byte PRIMPAR_4_BYTES = 3;
    private static byte PRIMPAR_ADDR = 8;
    private static byte PRIMPAR_BYTES = 7;
    private static byte PRIMPAR_CONST = 0;
    private static byte PRIMPAR_CONST_SIGN = 32;
    private static byte PRIMPAR_GLOBAL = 32;
    private static byte PRIMPAR_HANDLE = 16;
    private static byte PRIMPAR_INDEX = 31;
    private static byte PRIMPAR_LOCAL = 0;
    private static byte PRIMPAR_LONG = -128;
    private static byte PRIMPAR_SHORT = 0;
    private static byte PRIMPAR_STRING = 4;
    private static byte PRIMPAR_STRING_OLD = 0;
    private static byte PRIMPAR_VALUE = 63;
    private static byte PRIMPAR_VARIABEL = 64;

    public static class FormatLiteral {
        public int size;
        public char symbol;

        public FormatLiteral(char c, int i) {
            this.symbol = c;
            this.size = i;
        }
    }

    public static byte[] pack(String str, Object... objArr) throws IllegalArgumentException {
        int i;
        boolean z;
        int i2;
        int i3;
        int i4;
        String[] strArrSplit = str.split("(?<=\\D)");
        int length = strArrSplit.length;
        FormatLiteral[] formatLiteralArr = new FormatLiteral[length];
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < strArrSplit.length; i7++) {
            String str2 = strArrSplit[i7];
            char cCharAt = str2.charAt(str2.length() - 1);
            if (str2.length() != 1) {
                i = Integer.parseInt(str2.substring(0, str2.length() - 1));
                if (i < 1) {
                    throw new IllegalArgumentException("Illegal format string");
                }
                z = true;
            } else {
                i = 1;
                z = false;
            }
            if (cCharAt == 'B') {
                i6 += i;
                i5++;
            } else if (cCharAt == 'F') {
                i2 = i * 4;
                i3 = i2 + i6;
                i5++;
                i6 = i3;
            } else {
                if (cCharAt == 'L') {
                    i2 = i * 8;
                } else if (cCharAt == 'S') {
                    if (z) {
                        throw new IllegalArgumentException("Illegal format string");
                    }
                    int length2 = ((String) objArr[i5]).length() + 1 + i6;
                    i5++;
                    i6 = length2;
                } else if (cCharAt == 'b') {
                    i6 += i;
                    i5 += i;
                } else if (cCharAt == 'f') {
                    i4 = i * 4;
                    i3 = i4 + i6;
                    i5 += i;
                    i6 = i3;
                } else {
                    if (cCharAt == 'l') {
                        i4 = i * 8;
                    } else if (cCharAt == 's') {
                        if (i != ((String) objArr[i5]).length()) {
                            throw new IllegalArgumentException("Illegal format string");
                        }
                        i6 += i;
                        i5++;
                    } else if (cCharAt == 'x') {
                        i6 += i;
                    } else if (cCharAt != 'H') {
                        if (cCharAt != 'I') {
                            if (cCharAt != 'h') {
                                if (cCharAt != 'i') {
                                    throw new IllegalArgumentException("Illegal format string");
                                }
                                i4 = i * 4;
                            } else {
                                i4 = i * 2;
                            }
                        }
                        i2 = i * 4;
                    } else {
                        i2 = i * 2;
                    }
                    i3 = i4 + i6;
                    i5 += i;
                    i6 = i3;
                }
                i3 = i2 + i6;
                i5++;
                i6 = i3;
            }
            formatLiteralArr[i7] = new FormatLiteral(cCharAt, i);
        }
        if (i5 != objArr.length) {
            throw new IllegalArgumentException("Illegal format string");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i6);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        int i8 = 0;
        for (int i9 = 0; i9 < length; i9++) {
            FormatLiteral formatLiteral = formatLiteralArr[i9];
            char c = formatLiteral.symbol;
            if (c == 'B') {
                byteBufferAllocate.put((byte[]) objArr[i8]);
            } else if (c == 'F') {
                for (int i10 = 0; i10 < formatLiteral.size; i10++) {
                    byteBufferAllocate.putFloat(((float[]) objArr[i8])[i10]);
                }
            } else if (c == 'L') {
                for (int i11 = 0; i11 < formatLiteral.size; i11++) {
                    byteBufferAllocate.putLong(((long[]) objArr[i8])[i11]);
                }
            } else if (c != 'S') {
                if (c == 'b') {
                    for (int i12 = 0; i12 < formatLiteral.size; i12++) {
                        byteBufferAllocate.put(((Byte) objArr[i8]).byteValue());
                        i8++;
                    }
                } else if (c == 'f') {
                    for (int i13 = 0; i13 < formatLiteral.size; i13++) {
                        byteBufferAllocate.putFloat(((Float) objArr[i8]).floatValue());
                        i8++;
                    }
                } else if (c == 'l') {
                    for (int i14 = 0; i14 < formatLiteral.size; i14++) {
                        byteBufferAllocate.putLong(((Long) objArr[i8]).longValue());
                        i8++;
                    }
                } else if (c == 's') {
                    try {
                        byteBufferAllocate.put(((String) objArr[i8]).getBytes("US-ASCII"));
                    } catch (UnsupportedEncodingException unused) {
                        throw new IllegalArgumentException();
                    }
                } else if (c != 'x') {
                    if (c == 'H') {
                        for (int i15 = 0; i15 < formatLiteral.size; i15++) {
                            byteBufferAllocate.putShort(((short[]) objArr[i8])[i15]);
                        }
                    } else if (c == 'I') {
                        for (int i16 = 0; i16 < formatLiteral.size; i16++) {
                            byteBufferAllocate.putInt(((int[]) objArr[i8])[i16]);
                        }
                    } else if (c == 'h') {
                        for (int i17 = 0; i17 < formatLiteral.size; i17++) {
                            byteBufferAllocate.putShort(((Short) objArr[i8]).shortValue());
                            i8++;
                        }
                    } else if (c == 'i') {
                        for (int i18 = 0; i18 < formatLiteral.size; i18++) {
                            byteBufferAllocate.putInt(((Integer) objArr[i8]).intValue());
                            i8++;
                        }
                    }
                    i8++;
                } else {
                    for (int i19 = 0; i19 < formatLiteral.size; i19++) {
                        byteBufferAllocate.put((byte) 0);
                    }
                }
            } else {
                try {
                    byteBufferAllocate.put(((String) objArr[i8]).getBytes("US-ASCII"));
                    byteBufferAllocate.put((byte) 0);
                } catch (UnsupportedEncodingException unused2) {
                    throw new IllegalArgumentException();
                }
            }
            i8++;
        }
        return byteBufferAllocate.array();
    }

    public static Object[] unpack(String str, byte[] bArr) throws IllegalArgumentException {
        int i;
        String[] strArrSplit = str.split("(?<=\\D)");
        ArrayList arrayList = new ArrayList();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        for (String str2 : strArrSplit) {
            boolean z = true;
            char cCharAt = str2.charAt(str2.length() - 1);
            if (str2.length() > 1) {
                i = Integer.parseInt(str2.substring(0, str2.length() - 1));
                if (i < 1) {
                    throw new IllegalArgumentException("Illegal format string");
                }
            } else {
                i = 1;
                z = false;
            }
            if (cCharAt != '$') {
                if (cCharAt == 'B') {
                    byte[] bArr2 = new byte[i];
                    byteBufferWrap.get(bArr2, 0, i);
                    arrayList.add(bArr2);
                } else if (cCharAt == 'F') {
                    float[] fArr = new float[i];
                    for (int i2 = 0; i2 < i; i2++) {
                        fArr[i2] = byteBufferWrap.getFloat();
                    }
                    arrayList.add(fArr);
                } else if (cCharAt == 'L') {
                    long[] jArr = new long[i];
                    for (int i3 = 0; i3 < i; i3++) {
                        jArr[i3] = byteBufferWrap.getLong();
                    }
                    arrayList.add(jArr);
                } else if (cCharAt == 'S') {
                    if (z) {
                        throw new IllegalArgumentException("Illegal format string");
                    }
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        byte b2 = byteBufferWrap.get();
                        if (b2 == 0) {
                            break;
                        }
                        stringBuffer.append((char) b2);
                    }
                    arrayList.add(stringBuffer.toString());
                } else if (cCharAt == 'b') {
                    for (int i4 = 0; i4 < i; i4++) {
                        arrayList.add(Byte.valueOf(byteBufferWrap.get()));
                    }
                } else if (cCharAt == 'f') {
                    for (int i5 = 0; i5 < i; i5++) {
                        arrayList.add(Float.valueOf(byteBufferWrap.getFloat()));
                    }
                } else if (cCharAt == 'l') {
                    for (int i6 = 0; i6 < i; i6++) {
                        arrayList.add(Long.valueOf(byteBufferWrap.getLong()));
                    }
                } else if (cCharAt == 's') {
                    byte[] bArr3 = new byte[i];
                    byteBufferWrap.get(bArr3, 0, i);
                    try {
                        arrayList.add(new String(bArr3, "US-ASCII"));
                    } catch (UnsupportedEncodingException unused) {
                        throw new IllegalArgumentException();
                    }
                } else if (cCharAt == 'x') {
                    for (int i7 = 0; i7 < i; i7++) {
                        byteBufferWrap.get();
                    }
                } else if (cCharAt == 'H') {
                    short[] sArr = new short[i];
                    for (short s = 0; s < i; s = (short) (s + 1)) {
                        sArr[s] = byteBufferWrap.getShort();
                    }
                    arrayList.add(sArr);
                } else if (cCharAt == 'I') {
                    int[] iArr = new int[i];
                    for (int i8 = 0; i8 < i; i8++) {
                        iArr[i8] = byteBufferWrap.getInt();
                    }
                    arrayList.add(iArr);
                } else if (cCharAt == 'h') {
                    for (int i9 = 0; i9 < i; i9++) {
                        arrayList.add(Short.valueOf(byteBufferWrap.getShort()));
                    }
                } else if (cCharAt == 'i') {
                    for (int i10 = 0; i10 < i; i10++) {
                        arrayList.add(Integer.valueOf(byteBufferWrap.getInt()));
                    }
                }
            } else {
                if (z) {
                    throw new IllegalArgumentException("Illegal format string");
                }
                if (byteBufferWrap.hasRemaining()) {
                    throw new IllegalArgumentException("Illegal format string");
                }
            }
            throw new IllegalArgumentException("Illegal format string");
        }
        return arrayList.toArray();
    }

    public static byte[] encodeLC0(byte b2) {
        if (b2 < -31 || b2 > 31) {
            throw new IllegalArgumentException("Encoded value must be in range [0, 127]");
        }
        return new byte[]{(byte) (b2 & PRIMPAR_VALUE)};
    }

    public static byte[] encodeLC1(byte b2) {
        return new byte[]{(byte) (((byte) (PRIMPAR_LONG | PRIMPAR_CONST)) | PRIMPAR_1_BYTE), (byte) (b2 & 255)};
    }

    public static byte[] encodeLC2(short s) {
        return new byte[]{(byte) (((byte) (PRIMPAR_LONG | PRIMPAR_CONST)) | PRIMPAR_2_BYTES), (byte) (s & 255), (byte) ((s >>> 8) & 255)};
    }

    public static byte[] encodeLC4(int i) {
        return new byte[]{(byte) (((byte) (PRIMPAR_LONG | PRIMPAR_CONST)) | PRIMPAR_4_BYTES), (byte) (i & 255), (byte) ((i >>> 8) & 255), (byte) ((i >>> 16) & 255), (byte) ((i >>> 24) & 255)};
    }

    public static byte[] encodeLV0(int i) {
        return new byte[]{(byte) ((i & PRIMPAR_INDEX) | PRIMPAR_SHORT | PRIMPAR_VARIABEL | PRIMPAR_LOCAL)};
    }

    public static byte[] encodeLV1(int i) {
        return new byte[]{(byte) (PRIMPAR_LONG | PRIMPAR_VARIABEL | PRIMPAR_LOCAL | PRIMPAR_1_BYTE), (byte) (i & 255)};
    }

    public static byte[] encodeLV2(int i) {
        return new byte[]{(byte) (PRIMPAR_LONG | PRIMPAR_VARIABEL | PRIMPAR_LOCAL | PRIMPAR_2_BYTES), (byte) (i & 255), (byte) ((i >>> 8) & 255)};
    }

    public static byte[] encodeLV4(int i) {
        return new byte[]{(byte) (PRIMPAR_LONG | PRIMPAR_VARIABEL | PRIMPAR_LOCAL | PRIMPAR_4_BYTES), (byte) (i & 255), (byte) ((i >>> 8) & 255), (byte) ((i >>> 16) & 255), (byte) ((i >>> 24) & 255)};
    }

    public static byte[] encodeGV0(int i) {
        return new byte[]{(byte) ((i & PRIMPAR_INDEX) | PRIMPAR_SHORT | PRIMPAR_VARIABEL | PRIMPAR_GLOBAL)};
    }

    public static byte[] encodeGV1(int i) {
        return new byte[]{(byte) (PRIMPAR_LONG | PRIMPAR_VARIABEL | PRIMPAR_GLOBAL | PRIMPAR_1_BYTE), (byte) (i & 255)};
    }

    public static byte[] encodeGV2(int i) {
        return new byte[]{(byte) (PRIMPAR_LONG | PRIMPAR_VARIABEL | PRIMPAR_GLOBAL | PRIMPAR_2_BYTES), (byte) (i & 255), (byte) ((i >>> 8) & 255)};
    }

    public static byte[] encodeGV4(int i) {
        return new byte[]{(byte) (PRIMPAR_LONG | PRIMPAR_VARIABEL | PRIMPAR_GLOBAL | PRIMPAR_4_BYTES), (byte) (i & 255), (byte) ((i >>> 8) & 255), (byte) ((i >>> 16) & 255), (byte) ((i >>> 24) & 255)};
    }

    public static byte[] encodeSystemCommand(byte b2, boolean z, Object... objArr) {
        int length = objArr.length;
        int length2 = 2;
        int i = 0;
        while (true) {
            if (i < length) {
                Object obj = objArr[i];
                if (obj instanceof Byte) {
                    length2++;
                } else if (obj instanceof Short) {
                    length2 += 2;
                } else if (obj instanceof Integer) {
                    length2 += 4;
                } else if (obj instanceof String) {
                    length2 = ((String) obj).length() + 1 + length2;
                } else {
                    throw new IllegalArgumentException("Parameters should be one of the class types: Byte, Short, Integer, String");
                }
                i++;
            } else {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length2);
                byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
                byteBufferAllocate.put(z ? (byte) 1 : (byte) -127);
                byteBufferAllocate.put(b2);
                for (Object obj2 : objArr) {
                    if (obj2 instanceof Byte) {
                        byteBufferAllocate.put(((Byte) obj2).byteValue());
                    } else if (obj2 instanceof Short) {
                        byteBufferAllocate.putShort(((Short) obj2).shortValue());
                    } else if (obj2 instanceof Integer) {
                        byteBufferAllocate.putInt(((Integer) obj2).intValue());
                    } else if (obj2 instanceof String) {
                        try {
                            byteBufferAllocate.put(((String) obj2).getBytes("US-ASCII"));
                            byteBufferAllocate.put((byte) 0);
                        } catch (UnsupportedEncodingException unused) {
                            throw new IllegalArgumentException("Non-ASCII string encoding is not supported");
                        }
                    } else {
                        throw new IllegalArgumentException("Parameters should be one of the class types: Byte, Short, Integer, String");
                    }
                }
                return byteBufferAllocate.array();
            }
        }
    }

    public static byte[] encodeDirectCommand(byte b2, boolean z, int i, int i2, String str, Object... objArr) {
        if (i < 0 || i > 1023 || i2 < 0 || i2 > 63 || str.length() != objArr.length) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < str.length(); i3++) {
            char cCharAt = str.charAt(i3);
            Object obj = objArr[i3];
            if (cCharAt != 'c') {
                if (cCharAt != 'g') {
                    if (cCharAt != 'l') {
                        if (cCharAt == 's') {
                            if (!(obj instanceof String)) {
                                throw new IllegalArgumentException();
                            }
                            try {
                                arrayList.add((((String) obj) + "\u0000").getBytes("US-ASCII"));
                            } catch (UnsupportedEncodingException unused) {
                                throw new IllegalArgumentException();
                            }
                        } else {
                            throw new IllegalArgumentException("Illegal format string");
                        }
                    } else if (obj instanceof Byte) {
                        Byte b3 = (Byte) obj;
                        if (b3.byteValue() <= 31 && b3.byteValue() >= -31) {
                            arrayList.add(encodeLV0(b3.byteValue()));
                        } else {
                            arrayList.add(encodeLV1(b3.byteValue()));
                        }
                    } else if (obj instanceof Short) {
                        arrayList.add(encodeLV2(((Short) obj).shortValue()));
                    } else if (obj instanceof Integer) {
                        arrayList.add(encodeLV4(((Integer) obj).intValue()));
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else if (obj instanceof Byte) {
                    Byte b4 = (Byte) obj;
                    if (b4.byteValue() <= 31 && b4.byteValue() >= -31) {
                        arrayList.add(encodeGV0(b4.byteValue()));
                    } else {
                        arrayList.add(encodeGV1(b4.byteValue()));
                    }
                } else if (obj instanceof Short) {
                    arrayList.add(encodeGV2(((Short) obj).shortValue()));
                } else if (obj instanceof Integer) {
                    arrayList.add(encodeGV4(((Integer) obj).intValue()));
                } else {
                    throw new IllegalArgumentException();
                }
            } else if (obj instanceof Byte) {
                Byte b5 = (Byte) obj;
                if (b5.byteValue() <= 31 && b5.byteValue() >= -31) {
                    arrayList.add(encodeLC0(b5.byteValue()));
                } else {
                    arrayList.add(encodeLC1(b5.byteValue()));
                }
            } else if (obj instanceof Short) {
                arrayList.add(encodeLC2(((Short) obj).shortValue()));
            } else if (obj instanceof Integer) {
                arrayList.add(encodeLC4(((Integer) obj).intValue()));
            } else {
                throw new IllegalArgumentException();
            }
        }
        Iterator it = arrayList.iterator();
        int length = 4;
        while (it.hasNext()) {
            length += ((byte[]) it.next()).length;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put(z ? (byte) 0 : (byte) -128);
        byteBufferAllocate.put(new byte[]{(byte) (i & 255), (byte) (((i >>> 8) & 3) | (i2 << 2))});
        byteBufferAllocate.put(b2);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            byteBufferAllocate.put((byte[]) it2.next());
        }
        return byteBufferAllocate.array();
    }
}
