package com.google.common.escape;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.HashMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
public final class Escapers {

    /* renamed from: a, reason: collision with root package name */
    public static final Escaper f4414a = new a();

    private Escapers() {
    }

    public static Escaper nullEscaper() {
        return f4414a;
    }

    public static class a extends CharEscaper {
        @Override // com.google.common.escape.CharEscaper
        public char[] escape(char c) {
            return null;
        }

        @Override // com.google.common.escape.CharEscaper, com.google.common.escape.Escaper
        public String escape(String str) {
            return (String) Preconditions.checkNotNull(str);
        }
    }

    public static Builder builder() {
        return new Builder(0);
    }

    @Beta
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f4415a;

        /* renamed from: b, reason: collision with root package name */
        public char f4416b;
        public char c;
        public String d;

        public /* synthetic */ Builder(int i) {
            this();
        }

        private Builder() {
            this.f4415a = new HashMap();
            this.f4416b = (char) 0;
            this.c = (char) 65535;
            this.d = null;
        }

        @CanIgnoreReturnValue
        public Builder setSafeRange(char c, char c2) {
            this.f4416b = c;
            this.c = c2;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setUnsafeReplacement(@NullableDecl String str) {
            this.d = str;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder addEscape(char c, String str) {
            Preconditions.checkNotNull(str);
            this.f4415a.put(Character.valueOf(c), str);
            return this;
        }

        public class a extends ArrayBasedCharEscaper {
            public final char[] f;

            public a(Builder builder, HashMap map, char c, char c2) {
                super(map, c, c2);
                String str = builder.d;
                this.f = str != null ? str.toCharArray() : null;
            }

            @Override // com.google.common.escape.ArrayBasedCharEscaper
            public char[] escapeUnsafe(char c) {
                return this.f;
            }
        }

        public Escaper build() {
            return new a(this, this.f4415a, this.f4416b, this.c);
        }
    }

    public static String computeReplacement(CharEscaper charEscaper, char c) {
        char[] cArrEscape = charEscaper.escape(c);
        if (cArrEscape == null) {
            return null;
        }
        return new String(cArrEscape);
    }

    public static String computeReplacement(UnicodeEscaper unicodeEscaper, int i) {
        char[] cArrEscape = unicodeEscaper.escape(i);
        if (cArrEscape == null) {
            return null;
        }
        return new String(cArrEscape);
    }
}
