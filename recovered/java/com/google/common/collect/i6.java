package com.google.common.collect;

import com.google.common.collect.Multiset;
import com.google.common.collect.TreeMultiset;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
class i6 implements Iterator<Multiset.Entry<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public TreeMultiset.c f4234a;

    /* renamed from: b, reason: collision with root package name */
    public Multiset.Entry f4235b;
    public final /* synthetic */ TreeMultiset c;

    /* JADX WARN: Removed duplicated region for block: B:19:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public i6(com.google.common.collect.TreeMultiset r8) {
        /*
            r7 = this;
            r7.<init>()
            r7.c = r8
            com.google.common.collect.TreeMultiset$d r0 = r8.e
            java.lang.Object r1 = r0.get()
            com.google.common.collect.TreeMultiset$c r1 = (com.google.common.collect.TreeMultiset.c) r1
            r2 = 0
            if (r1 != 0) goto L11
            goto L4d
        L11:
            com.google.common.collect.b2 r1 = r8.f
            boolean r3 = r1.e
            com.google.common.collect.TreeMultiset$c r4 = r8.f4120g
            if (r3 == 0) goto L41
            java.lang.Object r0 = r0.get()
            com.google.common.collect.TreeMultiset$c r0 = (com.google.common.collect.TreeMultiset.c) r0
            java.util.Comparator r3 = r8.comparator()
            java.lang.Object r5 = r1.f
            com.google.common.collect.TreeMultiset$c r0 = r0.g(r3, r5)
            if (r0 != 0) goto L2c
            goto L4d
        L2c:
            com.google.common.collect.BoundType r3 = com.google.common.collect.BoundType.OPEN
            com.google.common.collect.BoundType r6 = r1.f4178g
            if (r6 != r3) goto L43
            java.util.Comparator r8 = r8.comparator()
            java.lang.Object r3 = r0.f4124a
            int r8 = r8.compare(r5, r3)
            if (r8 != 0) goto L43
            com.google.common.collect.TreeMultiset$c r0 = r0.h
            goto L43
        L41:
            com.google.common.collect.TreeMultiset$c r0 = r4.h
        L43:
            if (r0 == r4) goto L4d
            java.lang.Object r8 = r0.f4124a
            boolean r8 = r1.a(r8)
            if (r8 != 0) goto L4e
        L4d:
            r0 = r2
        L4e:
            r7.f4234a = r0
            r7.f4235b = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.i6.<init>(com.google.common.collect.TreeMultiset):void");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        TreeMultiset.c cVar = this.f4234a;
        if (cVar == null) {
            return false;
        }
        if (!this.c.f.d(cVar.f4124a)) {
            return true;
        }
        this.f4234a = null;
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public Multiset.Entry<Object> next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        TreeMultiset.c cVar = this.f4234a;
        int i = TreeMultiset.h;
        TreeMultiset treeMultiset = this.c;
        treeMultiset.getClass();
        g6 g6Var = new g6(treeMultiset, cVar);
        this.f4235b = g6Var;
        TreeMultiset.c cVar2 = this.f4234a.h;
        if (cVar2 == treeMultiset.f4120g) {
            this.f4234a = null;
            return g6Var;
        }
        this.f4234a = cVar2;
        return g6Var;
    }

    @Override // java.util.Iterator
    public void remove() {
        g0.e(this.f4235b != null);
        this.c.setCount(this.f4235b.getElement(), 0);
        this.f4235b = null;
    }
}
