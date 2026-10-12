package com.google.common.escape;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
public abstract class ArrayBasedUnicodeEscaper extends UnicodeEscaper {

    /* renamed from: b, reason: collision with root package name */
    public final char[][] f4407b;
    public final int c;
    public final int d;
    public final int e;
    public final char f;

    /* renamed from: g, reason: collision with root package name */
    public final char f4408g;

    public abstract char[] escapeUnsafe(int i);

    public ArrayBasedUnicodeEscaper(Map<Character, String> map, int i, int i2, @NullableDecl String str) {
        this(ArrayBasedEscaperMap.create(map), i, i2, str);
    }

    public ArrayBasedUnicodeEscaper(ArrayBasedEscaperMap arrayBasedEscaperMap, int i, int i2, @NullableDecl String str) {
        Preconditions.checkNotNull(arrayBasedEscaperMap);
        char[][] cArr = arrayBasedEscaperMap.f4406a;
        this.f4407b = cArr;
        this.c = cArr.length;
        if (i2 < i) {
            i2 = -1;
            i = Integer.MAX_VALUE;
        }
        this.d = i;
        this.e = i2;
        if (i >= 55296) {
            this.f = (char) 65535;
            this.f4408g = (char) 0;
        } else {
            this.f = (char) i;
            this.f4408g = (char) Math.min(i2, 55295);
        }
    }

    @Override // com.google.common.escape.UnicodeEscaper, com.google.common.escape.Escaper
    public final String escape(String str) {
        Preconditions.checkNotNull(str);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < this.c && this.f4407b[cCharAt] != null) || cCharAt > this.f4408g || cCharAt < this.f) {
                return escapeSlow(str, i);
            }
        }
        return str;
    }

    @Override // com.google.common.escape.UnicodeEscaper
    public final char[] escape(int i) {
        char[] cArr;
        if (i < this.c && (cArr = this.f4407b[i]) != null) {
            return cArr;
        }
        if (i < this.d || i > this.e) {
            return escapeUnsafe(i);
        }
        return null;
    }

    @Override // com.google.common.escape.UnicodeEscaper
    public final int nextEscapeIndex(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            char cCharAt = charSequence.charAt(i);
            if ((cCharAt < this.c && this.f4407b[cCharAt] != null) || cCharAt > this.f4408g || cCharAt < this.f) {
                break;
            }
            i++;
        }
        return i;
    }
}
