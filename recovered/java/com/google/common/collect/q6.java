package com.google.common.collect;

import com.google.common.collect.TreeRangeSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class q6 extends AbstractIterator<Map.Entry<w0<Comparable<?>>, Range<Comparable<?>>>> {
    public final /* synthetic */ Iterator c;
    public final /* synthetic */ TreeRangeSet.g d;

    public q6(TreeRangeSet.g gVar, Iterator it) {
        this.d = gVar;
        this.c = it;
    }

    @Override // com.google.common.collect.AbstractIterator
    public Map.Entry<w0<Comparable<?>>, Range<Comparable<?>>> computeNext() {
        Iterator it = this.c;
        if (!it.hasNext()) {
            return endOfData();
        }
        Range range = (Range) it.next();
        TreeRangeSet.g gVar = this.d;
        if (gVar.f4149b.f4084a.compareTo(range.f4085b) >= 0) {
            return endOfData();
        }
        Range rangeIntersection = range.intersection(gVar.f4149b);
        if (gVar.f4148a.contains(rangeIntersection.f4084a)) {
            return Maps.immutableEntry(rangeIntersection.f4084a, rangeIntersection);
        }
        return endOfData();
    }
}
