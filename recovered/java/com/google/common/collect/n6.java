package com.google.common.collect;

import com.google.common.collect.TreeRangeSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class n6 extends AbstractIterator<Map.Entry<w0<Comparable<?>>, Range<Comparable<?>>>> {
    public final /* synthetic */ Iterator c;
    public final /* synthetic */ TreeRangeSet.e d;

    public n6(TreeRangeSet.e eVar, Iterator it) {
        this.d = eVar;
        this.c = it;
    }

    @Override // com.google.common.collect.AbstractIterator
    public Map.Entry<w0<Comparable<?>>, Range<Comparable<?>>> computeNext() {
        Iterator it = this.c;
        if (!it.hasNext()) {
            return endOfData();
        }
        Range range = (Range) it.next();
        if (this.d.f4147b.f4085b.g(range.f4085b)) {
            return endOfData();
        }
        return Maps.immutableEntry(range.f4085b, range);
    }
}
