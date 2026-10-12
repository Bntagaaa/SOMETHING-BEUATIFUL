package com.google.common.escape;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
public abstract class CharEscaper extends Escaper {
    public abstract char[] escape(char c);

    @Override // com.google.common.escape.Escaper
    public String escape(String str) {
        Preconditions.checkNotNull(str);
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (escape(str.charAt(i)) != null) {
                return escapeSlow(str, i);
            }
        }
        return str;
    }

    public final String escapeSlow(String str, int i) {
        int length = str.length();
        char[] cArr = (char[]) b.f4417a.get();
        int length2 = cArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            char[] cArrEscape = escape(str.charAt(i));
            if (cArrEscape != null) {
                int length3 = cArrEscape.length;
                int i4 = i - i2;
                int i5 = i3 + i4;
                int i6 = i5 + length3;
                if (length2 < i6) {
                    length2 = ((length - i) * 2) + i6;
                    if (length2 < 0) {
                        throw new AssertionError("Cannot increase internal buffer any further");
                    }
                    char[] cArr2 = new char[length2];
                    if (i3 > 0) {
                        System.arraycopy(cArr, 0, cArr2, 0, i3);
                    }
                    cArr = cArr2;
                }
                if (i4 > 0) {
                    str.getChars(i2, i, cArr, i3);
                    i3 = i5;
                }
                if (length3 > 0) {
                    System.arraycopy(cArrEscape, 0, cArr, i3, length3);
                    i3 += length3;
                }
                i2 = i + 1;
            }
            i++;
        }
        int i7 = length - i2;
        if (i7 > 0) {
            int i8 = i7 + i3;
            if (length2 < i8) {
                if (i8 < 0) {
                    throw new AssertionError("Cannot increase internal buffer any further");
                }
                char[] cArr3 = new char[i8];
                if (i3 > 0) {
                    System.arraycopy(cArr, 0, cArr3, 0, i3);
                }
                cArr = cArr3;
            }
            str.getChars(i2, length, cArr, i3);
            i3 = i8;
        }
        return new String(cArr, 0, i3);
    }
}
