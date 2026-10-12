package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.Utf8;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import gnu.expr.Declaration;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class Utf8Safe extends Utf8 {
    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public int encodedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt < 2048) {
                i3 += (127 - cCharAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char cCharAt2 = charSequence.charAt(i2);
                    if (cCharAt2 < 2048) {
                        i += (127 - cCharAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) < 65536) {
                                throw new a(i2, length2);
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i3 + Declaration.TRANSIENT_ACCESS));
    }

    public static String decodeUtf8Array(byte[] bArr, int i, int i2) {
        if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte b2 = bArr[i];
            if (b2 < 0) {
                break;
            }
            i++;
            cArr[i4] = (char) b2;
            i4++;
        }
        int i5 = i4;
        while (i < i3) {
            int i6 = i + 1;
            byte b3 = bArr[i];
            if (b3 >= 0) {
                int i7 = i5 + 1;
                cArr[i5] = (char) b3;
                while (i6 < i3) {
                    byte b4 = bArr[i6];
                    if (b4 < 0) {
                        break;
                    }
                    i6++;
                    cArr[i7] = (char) b4;
                    i7++;
                }
                i5 = i7;
                i = i6;
            } else {
                if (b3 < -32) {
                    if (i6 >= i3) {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                    i += 2;
                    Utf8.a.c(b3, bArr[i6], cArr, i5);
                    i5++;
                } else if (b3 < -16) {
                    if (i6 >= i3 - 1) {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                    int i8 = i + 2;
                    i += 3;
                    Utf8.a.b(b3, bArr[i6], bArr[i8], cArr, i5);
                    i5++;
                } else {
                    if (i6 >= i3 - 2) {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                    byte b5 = bArr[i6];
                    int i9 = i + 3;
                    byte b6 = bArr[i + 2];
                    i += 4;
                    Utf8.a.a(b3, b5, b6, bArr[i9], cArr, i5);
                    i5 += 2;
                }
            }
        }
        return new String(cArr, 0, i5);
    }

    public static String decodeUtf8Buffer(ByteBuffer byteBuffer, int i, int i2) {
        if ((i | i2 | ((byteBuffer.limit() - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte b2 = byteBuffer.get(i);
            if (b2 < 0) {
                break;
            }
            i++;
            cArr[i4] = (char) b2;
            i4++;
        }
        int i5 = i4;
        while (i < i3) {
            int i6 = i + 1;
            byte b3 = byteBuffer.get(i);
            if (b3 >= 0) {
                int i7 = i5 + 1;
                cArr[i5] = (char) b3;
                while (i6 < i3) {
                    byte b4 = byteBuffer.get(i6);
                    if (b4 < 0) {
                        break;
                    }
                    i6++;
                    cArr[i7] = (char) b4;
                    i7++;
                }
                i5 = i7;
                i = i6;
            } else {
                if (b3 < -32) {
                    if (i6 >= i3) {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                    i += 2;
                    Utf8.a.c(b3, byteBuffer.get(i6), cArr, i5);
                    i5++;
                } else if (b3 < -16) {
                    if (i6 >= i3 - 1) {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                    int i8 = i + 2;
                    i += 3;
                    Utf8.a.b(b3, byteBuffer.get(i6), byteBuffer.get(i8), cArr, i5);
                    i5++;
                } else {
                    if (i6 >= i3 - 2) {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                    byte b5 = byteBuffer.get(i6);
                    int i9 = i + 3;
                    byte b6 = byteBuffer.get(i + 2);
                    i += 4;
                    Utf8.a.a(b3, b5, b6, byteBuffer.get(i9), cArr, i5);
                    i5 += 2;
                }
            }
        }
        return new String(cArr, 0, i5);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public String decodeUtf8(ByteBuffer byteBuffer, int i, int i2) throws IllegalArgumentException {
        if (byteBuffer.hasArray()) {
            return decodeUtf8Array(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2);
        }
        return decodeUtf8Buffer(byteBuffer, i, i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        char cCharAt;
        char c = 57343;
        char c2 = 2048;
        int i3 = 0;
        if (!byteBuffer.hasArray()) {
            int length = charSequence.length();
            int iPosition = byteBuffer.position();
            while (i3 < length) {
                try {
                    char cCharAt2 = charSequence.charAt(i3);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    byteBuffer.put(iPosition + i3, (byte) cCharAt2);
                    i3++;
                } catch (IndexOutOfBoundsException unused) {
                }
            }
            if (i3 == length) {
                byteBuffer.position(iPosition + i3);
                return;
            }
            iPosition += i3;
            while (i3 < length) {
                char cCharAt3 = charSequence.charAt(i3);
                if (cCharAt3 < 128) {
                    byteBuffer.put(iPosition, (byte) cCharAt3);
                } else {
                    if (cCharAt3 < 2048) {
                        int i4 = iPosition + 1;
                        try {
                            byteBuffer.put(iPosition, (byte) ((cCharAt3 >>> 6) | FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE));
                            byteBuffer.put(i4, (byte) ((cCharAt3 & '?') | 128));
                            iPosition = i4;
                        } catch (IndexOutOfBoundsException unused2) {
                            iPosition = i4;
                        }
                    } else if (cCharAt3 < 55296 || 57343 < cCharAt3) {
                        int i5 = iPosition + 1;
                        try {
                            byteBuffer.put(iPosition, (byte) ((cCharAt3 >>> '\f') | 224));
                            iPosition += 2;
                            byteBuffer.put(i5, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                            byteBuffer.put(iPosition, (byte) ((cCharAt3 & '?') | 128));
                            i3++;
                            iPosition++;
                        } catch (IndexOutOfBoundsException unused3) {
                            iPosition = i5;
                        }
                    } else {
                        int i6 = i3 + 1;
                        if (i6 != length) {
                            try {
                                char cCharAt4 = charSequence.charAt(i6);
                                if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                    int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                    int i7 = iPosition + 1;
                                    try {
                                        byteBuffer.put(iPosition, (byte) ((codePoint >>> 18) | 240));
                                        int i8 = iPosition + 2;
                                        try {
                                            byteBuffer.put(i7, (byte) (((codePoint >>> 12) & 63) | 128));
                                            iPosition += 3;
                                            byteBuffer.put(i8, (byte) (((codePoint >>> 6) & 63) | 128));
                                            byteBuffer.put(iPosition, (byte) ((codePoint & 63) | 128));
                                            i3 = i6;
                                            i3++;
                                            iPosition++;
                                        } catch (IndexOutOfBoundsException unused4) {
                                            i3 = i6;
                                            iPosition = i8;
                                        }
                                    } catch (IndexOutOfBoundsException unused5) {
                                        iPosition = i7;
                                        i3 = i6;
                                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i3) + " at index " + (Math.max(i3, (iPosition - byteBuffer.position()) + 1) + byteBuffer.position()));
                                    }
                                } else {
                                    i3 = i6;
                                }
                            } catch (IndexOutOfBoundsException unused6) {
                            }
                        }
                        throw new a(i3, length);
                    }
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i3) + " at index " + (Math.max(i3, (iPosition - byteBuffer.position()) + 1) + byteBuffer.position()));
                }
                i3++;
                iPosition++;
            }
            byteBuffer.position(iPosition);
            return;
        }
        int iArrayOffset = byteBuffer.arrayOffset();
        byte[] bArrArray = byteBuffer.array();
        int iPosition2 = byteBuffer.position() + iArrayOffset;
        int iRemaining = byteBuffer.remaining();
        int length2 = charSequence.length();
        int i9 = iRemaining + iPosition2;
        while (i3 < length2) {
            int i10 = i3 + iPosition2;
            if (i10 >= i9 || (cCharAt = charSequence.charAt(i3)) >= 128) {
                break;
            }
            bArrArray[i10] = (byte) cCharAt;
            i3++;
        }
        if (i3 == length2) {
            i = iPosition2 + length2;
        } else {
            i = iPosition2 + i3;
            while (i3 < length2) {
                char cCharAt5 = charSequence.charAt(i3);
                if (cCharAt5 < 128 && i < i9) {
                    bArrArray[i] = (byte) cCharAt5;
                    i++;
                } else if (cCharAt5 < c2 && i <= i9 - 2) {
                    int i11 = i + 1;
                    bArrArray[i] = (byte) ((cCharAt5 >>> 6) | 960);
                    i += 2;
                    bArrArray[i11] = (byte) ((cCharAt5 & '?') | 128);
                } else {
                    if ((cCharAt5 >= 55296 && c >= cCharAt5) || i > i9 - 3) {
                        if (i <= i9 - 4) {
                            int i12 = i3 + 1;
                            if (i12 != charSequence.length()) {
                                char cCharAt6 = charSequence.charAt(i12);
                                if (Character.isSurrogatePair(cCharAt5, cCharAt6)) {
                                    int codePoint2 = Character.toCodePoint(cCharAt5, cCharAt6);
                                    bArrArray[i] = (byte) ((codePoint2 >>> 18) | 240);
                                    bArrArray[i + 1] = (byte) (((codePoint2 >>> 12) & 63) | 128);
                                    int i13 = i + 3;
                                    bArrArray[i + 2] = (byte) (((codePoint2 >>> 6) & 63) | 128);
                                    i += 4;
                                    bArrArray[i13] = (byte) ((codePoint2 & 63) | 128);
                                    i3 = i12;
                                } else {
                                    i3 = i12;
                                }
                            }
                            throw new a(i3 - 1, length2);
                        }
                        if (55296 <= cCharAt5 && cCharAt5 <= 57343 && ((i2 = i3 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt5, charSequence.charAt(i2)))) {
                            throw new a(i3, length2);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt5 + " at index " + i);
                    }
                    bArrArray[i] = (byte) ((cCharAt5 >>> '\f') | 480);
                    int i14 = i + 2;
                    bArrArray[i + 1] = (byte) (((cCharAt5 >>> 6) & 63) | 128);
                    i += 3;
                    bArrArray[i14] = (byte) ((cCharAt5 & '?') | 128);
                }
                i3++;
                c = 57343;
                c2 = 2048;
            }
        }
        byteBuffer.position(i - iArrayOffset);
    }

    public static class a extends IllegalArgumentException {
        public a(int i, int i2) {
            super(_COROUTINE.a.c(i, i2, "Unpaired surrogate at index ", " of "));
        }
    }
}
