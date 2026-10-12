package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.CharMatcher;
import java.util.BitSet;

@GwtIncompatible
/* loaded from: classes.dex */
final class n extends CharMatcher.u {

    /* renamed from: b, reason: collision with root package name */
    public final char[] f3747b;
    public final boolean c;
    public final long d;

    public n(char[] cArr, long j, boolean z, String str) {
        super(str);
        this.f3747b = cArr;
        this.d = j;
        this.c = z;
    }

    @Override // com.google.common.base.CharMatcher
    public boolean matches(char c) {
        if (c == 0) {
            return this.c;
        }
        if (1 != ((this.d >> c) & 1)) {
            return false;
        }
        char[] cArr = this.f3747b;
        int length = cArr.length - 1;
        int iRotateLeft = (Integer.rotateLeft(11601 * c, 15) * 461845907) & length;
        int i = iRotateLeft;
        do {
            char c2 = cArr[i];
            if (c2 == 0) {
                return false;
            }
            if (c2 == c) {
                return true;
            }
            i = (i + 1) & length;
        } while (i != iRotateLeft);
        return false;
    }

    @Override // com.google.common.base.CharMatcher
    public final void d(BitSet bitSet) {
        if (this.c) {
            bitSet.set(0);
        }
        for (char c : this.f3747b) {
            if (c != 0) {
                bitSet.set(c);
            }
        }
    }
}
