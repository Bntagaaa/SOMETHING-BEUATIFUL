package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.cache.h;
import java.io.Serializable;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
final class e extends h implements Serializable, c {
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00b3, code lost:
    
        if (r13.f3830a != r6) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00b5, code lost:
    
        r5 = new com.google.common.cache.h.a[r7 << 1];
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00ba, code lost:
    
        if (r8 >= r7) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00bc, code lost:
    
        r5[r8] = r6[r8];
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00c5, code lost:
    
        r13.f3830a = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0112 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0049 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007e  */
    @Override // com.google.common.cache.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void add(long r14) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.e.add(long):void");
    }

    @Override // com.google.common.cache.c
    public void increment() {
        add(1L);
    }

    @Override // com.google.common.cache.c
    public long sum() {
        long j = this.f3831b;
        h.a[] aVarArr = this.f3830a;
        if (aVarArr != null) {
            for (h.a aVar : aVarArr) {
                if (aVar != null) {
                    j += aVar.f3833a;
                }
            }
        }
        return j;
    }

    public String toString() {
        return Long.toString(sum());
    }

    @Override // java.lang.Number
    public long longValue() {
        return sum();
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) sum();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return sum();
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return sum();
    }
}
