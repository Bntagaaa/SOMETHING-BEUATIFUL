package com.google.zxing.oned.rss.expanded;

import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;

/* loaded from: classes2.dex */
final class b {

    /* renamed from: a, reason: collision with root package name */
    public final DataCharacter f5260a;

    /* renamed from: b, reason: collision with root package name */
    public final DataCharacter f5261b;
    public final FinderPattern c;

    public b(DataCharacter dataCharacter, DataCharacter dataCharacter2, FinderPattern finderPattern, boolean z) {
        this.f5260a = dataCharacter;
        this.f5261b = dataCharacter2;
        this.c = finderPattern;
    }

    public boolean mustBeLast() {
        return this.f5261b == null;
    }
}
