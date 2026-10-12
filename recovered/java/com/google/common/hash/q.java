package com.google.common.hash;

import com.google.common.hash.x;
import java.io.Serializable;

/* loaded from: classes.dex */
final class q extends x implements Serializable, o {
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00b3, code lost:
    
        if (r13.f4604a != r6) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00b5, code lost:
    
        r5 = new com.google.common.hash.x.a[r7 << 1];
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
    
        r13.f4604a = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0112 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0049 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007e  */
    @Override // com.google.common.hash.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void add(long r14) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.hash.q.add(long):void");
    }

    @Override // com.google.common.hash.o
    public void increment() {
        add(1L);
    }

    @Override // com.google.common.hash.o
    public long sum() {
        long j = this.f4605b;
        x.a[] aVarArr = this.f4604a;
        if (aVarArr != null) {
            for (x.a aVar : aVarArr) {
                if (aVar != null) {
                    j += aVar.f4607a;
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
