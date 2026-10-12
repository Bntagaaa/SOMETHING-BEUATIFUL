package com.google.common.collect;

import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.Iterator;

/* loaded from: classes.dex */
class k4 extends AbstractIterator<Multiset.Entry<Object>> {
    public final /* synthetic */ Iterator c;
    public final /* synthetic */ Multisets.d d;

    public k4(Multisets.d dVar, Iterator it) {
        this.d = dVar;
        this.c = it;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.common.collect.AbstractIterator
    public Multiset.Entry<Object> computeNext() {
        Object element;
        int count;
        do {
            Iterator it = this.c;
            if (it.hasNext()) {
                Multiset.Entry entry = (Multiset.Entry) it.next();
                element = entry.getElement();
                count = entry.getCount() - this.d.d.count(element);
            } else {
                return endOfData();
            }
        } while (count <= 0);
        return Multisets.immutableEntry(element, count);
    }
}
