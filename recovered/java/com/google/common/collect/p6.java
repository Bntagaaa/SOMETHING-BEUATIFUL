package com.google.common.collect;

import com.google.common.collect.TreeRangeSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class p6 extends AbstractIterator<Map.Entry<w0<Comparable<?>>, Range<Comparable<?>>>> {
    public final /* synthetic */ Iterator c;
    public final /* synthetic */ w0 d;
    public final /* synthetic */ TreeRangeSet.g e;

    public p6(TreeRangeSet.g gVar, Iterator it, w0 w0Var) {
        this.e = gVar;
        this.c = it;
        this.d = w0Var;
    }

    @Override // com.google.common.collect.AbstractIterator
    public Map.Entry<w0<Comparable<?>>, Range<Comparable<?>>> computeNext() {
        Iterator it = this.c;
        if (!it.hasNext()) {
            return endOfData();
        }
        Range range = (Range) it.next();
        if (this.d.g(range.f4084a)) {
            return endOfData();
        }
        Range rangeIntersection = range.intersection(this.e.f4149b);
        return Maps.immutableEntry(rangeIntersection.f4084a, rangeIntersection);
    }
}
