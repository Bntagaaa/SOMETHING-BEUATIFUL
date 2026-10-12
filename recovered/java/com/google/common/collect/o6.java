package com.google.common.collect;

import com.google.common.collect.TreeRangeSet;
import java.util.Map;

/* loaded from: classes.dex */
class o6 extends AbstractIterator<Map.Entry<w0<Comparable<?>>, Range<Comparable<?>>>> {
    public final /* synthetic */ PeekingIterator c;
    public final /* synthetic */ TreeRangeSet.e d;

    public o6(TreeRangeSet.e eVar, PeekingIterator peekingIterator) {
        this.d = eVar;
        this.c = peekingIterator;
    }

    @Override // com.google.common.collect.AbstractIterator
    public Map.Entry<w0<Comparable<?>>, Range<Comparable<?>>> computeNext() {
        PeekingIterator peekingIterator = this.c;
        if (!peekingIterator.hasNext()) {
            return endOfData();
        }
        Range range = (Range) peekingIterator.next();
        if (this.d.f4147b.f4084a.g(range.f4085b)) {
            return Maps.immutableEntry(range.f4085b, range);
        }
        return endOfData();
    }
}
