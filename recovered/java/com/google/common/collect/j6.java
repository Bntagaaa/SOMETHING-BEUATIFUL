package com.google.common.collect;

import com.google.common.collect.TreeRangeMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class j6 extends AbstractIterator<Map.Entry<Range<Comparable>, Object>> {
    public final /* synthetic */ Iterator c;
    public final /* synthetic */ TreeRangeMap.d.a d;

    public j6(TreeRangeMap.d.a aVar, Iterator it) {
        this.d = aVar;
        this.c = it;
    }

    @Override // com.google.common.collect.AbstractIterator
    public Map.Entry<Range<Comparable>, Object> computeNext() {
        Iterator it = this.c;
        if (it.hasNext()) {
            TreeRangeMap.c cVar = (TreeRangeMap.c) it.next();
            w0 w0Var = cVar.f4132a.f4085b;
            TreeRangeMap.d.a aVar = this.d;
            if (w0Var.compareTo(TreeRangeMap.d.this.f4134a.f4084a) <= 0) {
                return endOfData();
            }
            return Maps.immutableEntry(cVar.getKey().intersection(TreeRangeMap.d.this.f4134a), cVar.getValue());
        }
        return endOfData();
    }
}
