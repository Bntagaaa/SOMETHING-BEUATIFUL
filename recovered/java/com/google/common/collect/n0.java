package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

@GwtIncompatible
/* loaded from: classes.dex */
class n0<K, V> extends k0<K, V> {
    public transient long[] k;
    public transient int l;
    public transient int m;

    @Override // com.google.common.collect.k0
    public final void a(int i) {
    }

    public static <K, V> n0<K, V> createWithExpectedSize(int i) {
        return new n0<>(i);
    }

    public n0() {
        super(3);
    }

    @Override // com.google.common.collect.k0
    public final void l(int i) {
        super.l(i);
        this.l = -2;
        this.m = -2;
    }

    @Override // com.google.common.collect.k0
    public final int c() {
        int iC = super.c();
        this.k = new long[iC];
        return iC;
    }

    @Override // com.google.common.collect.k0
    public final LinkedHashMap e(int i) {
        return new LinkedHashMap(i, 1.0f, false);
    }

    @Override // com.google.common.collect.k0
    public final Map d() {
        Map mapD = super.d();
        this.k = null;
        return mapD;
    }

    @Override // com.google.common.collect.k0
    public final int h(int i) {
        return ((int) this.k[i]) - 1;
    }

    public final void s(int i, int i2) {
        if (i != -2) {
            long[] jArr = this.k;
            jArr[i] = (jArr[i] & (-4294967296L)) | ((i2 + 1) & 4294967295L);
        } else {
            this.l = i2;
        }
        if (i2 != -2) {
            long[] jArr2 = this.k;
            jArr2[i2] = (4294967295L & jArr2[i2]) | ((i + 1) << 32);
        } else {
            this.m = i;
        }
    }

    @Override // com.google.common.collect.k0
    public final void m(int i, Object obj, Object obj2, int i2, int i3) {
        super.m(i, obj, obj2, i2, i3);
        s(this.m, i);
        s(i, -2);
    }

    @Override // com.google.common.collect.k0
    public final void n(int i, int i2) {
        int size = size() - 1;
        super.n(i, i2);
        s(((int) (this.k[i] >>> 32)) - 1, h(i));
        if (i < size) {
            s(((int) (this.k[size] >>> 32)) - 1, i);
            s(i, h(size));
        }
        this.k[size] = 0;
    }

    @Override // com.google.common.collect.k0
    public final void q(int i) {
        super.q(i);
        this.k = Arrays.copyOf(this.k, i);
    }

    @Override // com.google.common.collect.k0
    public final int g() {
        return this.l;
    }

    @Override // com.google.common.collect.k0
    public final int b(int i, int i2) {
        return i >= size() ? i2 : i;
    }

    @Override // com.google.common.collect.k0, java.util.AbstractMap, java.util.Map
    public void clear() {
        if (o()) {
            return;
        }
        this.l = -2;
        this.m = -2;
        long[] jArr = this.k;
        if (jArr != null) {
            Arrays.fill(jArr, 0, size(), 0L);
        }
        super.clear();
    }
}
