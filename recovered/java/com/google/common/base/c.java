package com.google.common.base;

import com.google.common.base.CharMatcher;

/* loaded from: classes.dex */
class c extends CharMatcher.w {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f3735b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(CharMatcher charMatcher, String str) {
        super(charMatcher);
        this.f3735b = str;
    }

    @Override // com.google.common.base.CharMatcher.v, com.google.common.base.CharMatcher
    public String toString() {
        return this.f3735b;
    }
}
