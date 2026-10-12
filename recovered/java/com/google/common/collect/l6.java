package com.google.common.collect;

import com.google.common.collect.TreeRangeSet;
import com.google.common.collect.w0;
import java.util.Map;

/* loaded from: classes.dex */
class l6 extends AbstractIterator<Map.Entry<w0<Comparable<?>>, Range<Comparable<?>>>> {
    public w0 c;
    public final /* synthetic */ PeekingIterator d;
    public final /* synthetic */ TreeRangeSet.d e;

    @Override // com.google.common.collect.AbstractIterator
    public Map.Entry<w0<Comparable<?>>, Range<Comparable<?>>> computeNext() {
        Range range;
        if (!this.e.c.f4085b.g(this.c)) {
            w0 w0Var = this.c;
            w0.b bVar = w0.b.f4374b;
            if (w0Var != bVar) {
                PeekingIterator peekingIterator = this.d;
                if (!peekingIterator.hasNext()) {
                    range = new Range(this.c, bVar);
                    this.c = bVar;
                } else {
                    Range range2 = (Range) peekingIterator.next();
                    range = new Range(this.c, range2.f4084a);
                    this.c = range2.f4085b;
                }
                return Maps.immutableEntry(range.f4084a, range);
            }
        }
        return endOfData();
    }

    public l6(TreeRangeSet.d dVar, w0 w0Var, PeekingIterator peekingIterator) {
        this.e = dVar;
        this.d = peekingIterator;
        this.c = w0Var;
    }
}
