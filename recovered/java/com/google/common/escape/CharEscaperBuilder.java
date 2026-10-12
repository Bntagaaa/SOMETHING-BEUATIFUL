package com.google.common.escape;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.HashMap;
import java.util.Map;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
public final class CharEscaperBuilder {

    /* renamed from: b, reason: collision with root package name */
    public int f4410b = -1;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f4409a = new HashMap();

    public static class a extends CharEscaper {

        /* renamed from: b, reason: collision with root package name */
        public final char[][] f4411b;
        public final int c;

        public a(char[][] cArr) {
            this.f4411b = cArr;
            this.c = cArr.length;
        }

        @Override // com.google.common.escape.CharEscaper, com.google.common.escape.Escaper
        public String escape(String str) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                char[][] cArr = this.f4411b;
                if (cCharAt < cArr.length && cArr[cCharAt] != null) {
                    return escapeSlow(str, i);
                }
            }
            return str;
        }

        @Override // com.google.common.escape.CharEscaper
        public char[] escape(char c) {
            if (c < this.c) {
                return this.f4411b[c];
            }
            return null;
        }
    }

    @CanIgnoreReturnValue
    public CharEscaperBuilder addEscape(char c, String str) {
        this.f4409a.put(Character.valueOf(c), Preconditions.checkNotNull(str));
        if (c > this.f4410b) {
            this.f4410b = c;
        }
        return this;
    }

    @CanIgnoreReturnValue
    public CharEscaperBuilder addEscapes(char[] cArr, String str) {
        Preconditions.checkNotNull(str);
        for (char c : cArr) {
            addEscape(c, str);
        }
        return this;
    }

    public char[][] toArray() {
        char[][] cArr = new char[this.f4410b + 1][];
        for (Map.Entry entry : this.f4409a.entrySet()) {
            cArr[((Character) entry.getKey()).charValue()] = ((String) entry.getValue()).toCharArray();
        }
        return cArr;
    }

    public Escaper toEscaper() {
        return new a(toArray());
    }
}
