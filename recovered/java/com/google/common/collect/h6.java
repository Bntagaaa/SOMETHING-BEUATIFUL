package com.google.common.collect;

import com.google.common.collect.Multiset;
import com.google.common.collect.TreeMultiset;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
class h6 implements Iterator<Multiset.Entry<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public TreeMultiset.c f4230a;

    /* renamed from: b, reason: collision with root package name */
    public Multiset.Entry f4231b;
    public final /* synthetic */ TreeMultiset c;

    /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public h6(com.google.common.collect.TreeMultiset r7) {
        /*
            r6 = this;
            r6.<init>()
            r6.c = r7
            com.google.common.collect.TreeMultiset$d r0 = r7.e
            java.lang.Object r1 = r0.get()
            com.google.common.collect.TreeMultiset$c r1 = (com.google.common.collect.TreeMultiset.c) r1
            if (r1 != 0) goto L10
            goto L4c
        L10:
            com.google.common.collect.b2 r1 = r7.f
            boolean r2 = r1.f4177b
            com.google.common.collect.TreeMultiset$c r3 = r7.f4120g
            if (r2 == 0) goto L40
            java.lang.Object r0 = r0.get()
            com.google.common.collect.TreeMultiset$c r0 = (com.google.common.collect.TreeMultiset.c) r0
            java.util.Comparator r2 = r7.comparator()
            java.lang.Object r4 = r1.c
            com.google.common.collect.TreeMultiset$c r0 = r0.e(r2, r4)
            if (r0 != 0) goto L2b
            goto L4c
        L2b:
            com.google.common.collect.BoundType r2 = com.google.common.collect.BoundType.OPEN
            com.google.common.collect.BoundType r5 = r1.d
            if (r5 != r2) goto L42
            java.util.Comparator r7 = r7.comparator()
            java.lang.Object r2 = r0.f4124a
            int r7 = r7.compare(r4, r2)
            if (r7 != 0) goto L42
            com.google.common.collect.TreeMultiset$c r0 = r0.i
            goto L42
        L40:
            com.google.common.collect.TreeMultiset$c r0 = r3.i
        L42:
            if (r0 == r3) goto L4c
            java.lang.Object r7 = r0.f4124a
            boolean r7 = r1.a(r7)
            if (r7 != 0) goto L4d
        L4c:
            r0 = 0
        L4d:
            r6.f4230a = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.h6.<init>(com.google.common.collect.TreeMultiset):void");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        TreeMultiset.c cVar = this.f4230a;
        if (cVar == null) {
            return false;
        }
        if (!this.c.f.c(cVar.f4124a)) {
            return true;
        }
        this.f4230a = null;
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public Multiset.Entry<Object> next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        TreeMultiset.c cVar = this.f4230a;
        int i = TreeMultiset.h;
        TreeMultiset treeMultiset = this.c;
        treeMultiset.getClass();
        g6 g6Var = new g6(treeMultiset, cVar);
        this.f4231b = g6Var;
        TreeMultiset.c cVar2 = this.f4230a.i;
        if (cVar2 == treeMultiset.f4120g) {
            this.f4230a = null;
            return g6Var;
        }
        this.f4230a = cVar2;
        return g6Var;
    }

    @Override // java.util.Iterator
    public void remove() {
        g0.e(this.f4231b != null);
        this.c.setCount(this.f4231b.getElement(), 0);
        this.f4231b = null;
    }
}
