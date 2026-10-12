package com.google.common.collect;

import com.google.common.collect.TreeRangeMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class k6 extends AbstractIterator<Map.Entry<Range<Comparable>, Object>> {
    public final /* synthetic */ Iterator c;
    public final /* synthetic */ TreeRangeMap.d.b d;

    public k6(TreeRangeMap.d.b bVar, Iterator it) {
        this.d = bVar;
        this.c = it;
    }

    @Override // com.google.common.collect.AbstractIterator
    public Map.Entry<Range<Comparable>, Object> computeNext() {
        TreeRangeMap.c cVar;
        TreeRangeMap.d.b bVar;
        do {
            Iterator it = this.c;
            if (it.hasNext()) {
                cVar = (TreeRangeMap.c) it.next();
                w0 w0Var = cVar.f4132a.f4084a;
                bVar = this.d;
                if (w0Var.compareTo(TreeRangeMap.d.this.f4134a.f4085b) >= 0) {
                    return endOfData();
                }
            } else {
                return endOfData();
            }
        } while (cVar.f4132a.f4085b.compareTo(TreeRangeMap.d.this.f4134a.f4084a) <= 0);
        return Maps.immutableEntry(cVar.getKey().intersection(TreeRangeMap.d.this.f4134a), cVar.getValue());
    }
}
