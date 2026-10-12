package com.google.thirdparty.publicsuffix;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
public enum PublicSuffixType {
    PRIVATE(':', ','),
    REGISTRY('!', '?');


    /* renamed from: a, reason: collision with root package name */
    public final char f5065a;

    /* renamed from: b, reason: collision with root package name */
    public final char f5066b;

    PublicSuffixType(char c2, char c3) {
        this.f5065a = c2;
        this.f5066b = c3;
    }
}
