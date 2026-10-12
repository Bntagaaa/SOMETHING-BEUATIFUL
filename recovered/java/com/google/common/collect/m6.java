package com.google.common.collect;

import com.google.common.collect.TreeRangeSet;
import com.google.common.collect.w0;
import java.util.Map;

/* loaded from: classes.dex */
class m6 extends AbstractIterator<Map.Entry<w0<Comparable<?>>, Range<Comparable<?>>>> {
    public w0 c;
    public final /* synthetic */ PeekingIterator d;
    public final /* synthetic */ TreeRangeSet.d e;

    public m6(TreeRangeSet.d dVar, w0 w0Var, PeekingIterator peekingIterator) {
        this.e = dVar;
        this.d = peekingIterator;
        this.c = w0Var;
    }

    @Override // com.google.common.collect.AbstractIterator
    public Map.Entry<w0<Comparable<?>>, Range<Comparable<?>>> computeNext() {
        w0 w0Var = this.c;
        w0.d dVar = w0.d.f4375b;
        if (w0Var == dVar) {
            return endOfData();
        }
        PeekingIterator peekingIterator = this.d;
        boolean zHasNext = peekingIterator.hasNext();
        TreeRangeSet.d dVar2 = this.e;
        if (zHasNext) {
            Range range = (Range) peekingIterator.next();
            Range range2 = new Range(range.f4085b, this.c);
            this.c = range.f4084a;
            w0 w0Var2 = dVar2.c.f4084a;
            w0 w0Var3 = range2.f4084a;
            if (w0Var2.g(w0Var3)) {
                return Maps.immutableEntry(w0Var3, range2);
            }
        } else if (dVar2.c.f4084a.g(dVar)) {
            Range range3 = new Range(dVar, this.c);
            this.c = dVar;
            return Maps.immutableEntry(dVar, range3);
        }
        return endOfData();
    }
}
