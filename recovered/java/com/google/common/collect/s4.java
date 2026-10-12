package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Arrays;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
class s4<K> extends r4<K> {
    public transient long[] i;
    public transient int j;
    public transient int k;

    public s4() {
        super(3, 0);
    }

    @Override // com.google.common.collect.r4
    public final void f(int i) {
        super.f(i);
        this.j = -2;
        this.k = -2;
        long[] jArr = new long[i];
        this.i = jArr;
        Arrays.fill(jArr, -1L);
    }

    @Override // com.google.common.collect.r4
    public final int b() {
        int i = this.j;
        if (i == -2) {
            return -1;
        }
        return i;
    }

    @Override // com.google.common.collect.r4
    public final int i(int i) {
        int i2 = (int) this.i[i];
        if (i2 == -2) {
            return -1;
        }
        return i2;
    }

    public final void o(int i, int i2) {
        if (i != -2) {
            long[] jArr = this.i;
            jArr[i] = (jArr[i] & (-4294967296L)) | (i2 & 4294967295L);
        } else {
            this.j = i2;
        }
        if (i2 != -2) {
            long[] jArr2 = this.i;
            jArr2[i2] = (4294967295L & jArr2[i2]) | (i << 32);
        } else {
            this.k = i;
        }
    }

    @Override // com.google.common.collect.r4
    public final void g(int i, int i2, int i3, Object obj) {
        super.g(i, i2, i3, obj);
        o(this.k, i);
        o(i, -2);
    }

    @Override // com.google.common.collect.r4
    public final void m(int i) {
        super.m(i);
        long[] jArr = this.i;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i);
        this.i = jArrCopyOf;
        Arrays.fill(jArrCopyOf, length, i, -1L);
    }

    @Override // com.google.common.collect.r4
    public void clear() {
        super.clear();
        this.j = -2;
        this.k = -2;
    }

    @Override // com.google.common.collect.r4
    public final void h(int i) {
        int i2 = this.c - 1;
        long j = this.i[i];
        o((int) (j >>> 32), (int) j);
        if (i < i2) {
            o((int) (this.i[i2] >>> 32), i);
            o(i, (int) this.i[i2]);
        }
        super.h(i);
    }

    @Override // com.google.common.collect.r4
    public final int j(int i, int i2) {
        return i == this.c ? i2 : i;
    }
}
