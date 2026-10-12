package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@GwtIncompatible
/* loaded from: classes.dex */
final class h extends e implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Pattern f3738a;

    public h(Pattern pattern) {
        this.f3738a = (Pattern) Preconditions.checkNotNull(pattern);
    }

    @Override // com.google.common.base.e
    public d matcher(CharSequence charSequence) {
        return new a(this.f3738a.matcher(charSequence));
    }

    @Override // com.google.common.base.e
    public String pattern() {
        return this.f3738a.pattern();
    }

    @Override // com.google.common.base.e
    public int flags() {
        return this.f3738a.flags();
    }

    public String toString() {
        return this.f3738a.toString();
    }

    public static final class a extends d {

        /* renamed from: a, reason: collision with root package name */
        public final Matcher f3739a;

        public a(Matcher matcher) {
            this.f3739a = (Matcher) Preconditions.checkNotNull(matcher);
        }

        @Override // com.google.common.base.d
        public boolean matches() {
            return this.f3739a.matches();
        }

        @Override // com.google.common.base.d
        public boolean find() {
            return this.f3739a.find();
        }

        @Override // com.google.common.base.d
        public boolean find(int i) {
            return this.f3739a.find(i);
        }

        @Override // com.google.common.base.d
        public int end() {
            return this.f3739a.end();
        }

        @Override // com.google.common.base.d
        public int start() {
            return this.f3739a.start();
        }
    }
}
