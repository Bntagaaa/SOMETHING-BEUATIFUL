package com.google.common.base;

import com.google.appinventor.components.runtime.util.Ev3Constants;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import gnu.expr.Declaration;

@Beta
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Utf8 {
    public static int encodedLength(CharSequence charSequence) {
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
                            if (Character.codePointAt(charSequence, i2) == cCharAt2) {
                                throw new IllegalArgumentException(_COROUTINE.a.d(i2, "Unpaired surrogate at index "));
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

    public static boolean isWellFormed(byte[] bArr) {
        return isWellFormed(bArr, 0, bArr.length);
    }

    public static boolean isWellFormed(byte[] bArr, int i, int i2) {
        byte b2;
        int i3 = i2 + i;
        Preconditions.checkPositionIndexes(i, i3, bArr.length);
        while (i < i3) {
            if (bArr[i] < 0) {
                while (i < i3) {
                    int i4 = i + 1;
                    byte b3 = bArr[i];
                    if (b3 >= 0) {
                        i = i4;
                    } else if (b3 < -32) {
                        if (i4 == i3 || b3 < -62) {
                            return false;
                        }
                        i += 2;
                        if (bArr[i4] > -65) {
                            return false;
                        }
                    } else if (b3 < -16) {
                        int i5 = i + 2;
                        if (i5 >= i3 || (b2 = bArr[i4]) > -65) {
                            return false;
                        }
                        if (b3 == -32 && b2 < -96) {
                            return false;
                        }
                        if (b3 == -19 && -96 <= b2) {
                            return false;
                        }
                        i += 3;
                        if (bArr[i5] > -65) {
                            return false;
                        }
                    } else {
                        int i6 = i + 3;
                        if (i6 >= i3) {
                            return false;
                        }
                        int i7 = i + 2;
                        byte b4 = bArr[i4];
                        if (b4 > -65) {
                            return false;
                        }
                        if ((((b4 + Ev3Constants.Opcode.JR_NEQ8) + (b3 << 28)) >> 30) != 0 || bArr[i7] > -65) {
                            return false;
                        }
                        i += 4;
                        if (bArr[i6] > -65) {
                            return false;
                        }
                    }
                }
                return true;
            }
            i++;
        }
        return true;
    }

    private Utf8() {
    }
}
