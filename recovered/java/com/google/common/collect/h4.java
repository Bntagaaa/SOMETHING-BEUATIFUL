package com.google.common.collect;

import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.Iterator;

/* loaded from: classes.dex */
class h4 extends AbstractIterator<Multiset.Entry<Object>> {
    public final /* synthetic */ Iterator c;
    public final /* synthetic */ Multisets.b d;

    public h4(Multisets.b bVar, Iterator it) {
        this.d = bVar;
        this.c = it;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.common.collect.AbstractIterator
    public Multiset.Entry<Object> computeNext() {
        Object element;
        int iMin;
        do {
            Iterator it = this.c;
            if (it.hasNext()) {
                Multiset.Entry entry = (Multiset.Entry) it.next();
                element = entry.getElement();
                iMin = Math.min(entry.getCount(), this.d.d.count(element));
            } else {
                return endOfData();
            }
        } while (iMin <= 0);
        return Multisets.immutableEntry(element, iMin);
    }
}
