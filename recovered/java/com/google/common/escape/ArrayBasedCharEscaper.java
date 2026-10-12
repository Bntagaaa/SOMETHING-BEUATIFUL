package com.google.common.escape;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Map;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
public abstract class ArrayBasedCharEscaper extends CharEscaper {

    /* renamed from: b, reason: collision with root package name */
    public final char[][] f4404b;
    public final int c;
    public final char d;
    public final char e;

    public abstract char[] escapeUnsafe(char c);

    public ArrayBasedCharEscaper(Map<Character, String> map, char c, char c2) {
        this(ArrayBasedEscaperMap.create(map), c, c2);
    }

    public ArrayBasedCharEscaper(ArrayBasedEscaperMap arrayBasedEscaperMap, char c, char c2) {
        Preconditions.checkNotNull(arrayBasedEscaperMap);
        char[][] cArr = arrayBasedEscaperMap.f4406a;
        this.f4404b = cArr;
        this.c = cArr.length;
        if (c2 < c) {
            c2 = 0;
            c = 65535;
        }
        this.d = c;
        this.e = c2;
    }

    @Override // com.google.common.escape.CharEscaper, com.google.common.escape.Escaper
    public final String escape(String str) {
        Preconditions.checkNotNull(str);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < this.c && this.f4404b[cCharAt] != null) || cCharAt > this.e || cCharAt < this.d) {
                return escapeSlow(str, i);
            }
        }
        return str;
    }

    @Override // com.google.common.escape.CharEscaper
    public final char[] escape(char c) {
        char[] cArr;
        if (c < this.c && (cArr = this.f4404b[c]) != null) {
            return cArr;
        }
        if (c < this.d || c > this.e) {
            return escapeUnsafe(c);
        }
        return null;
    }
}
