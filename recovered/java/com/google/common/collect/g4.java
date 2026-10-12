package com.google.common.collect;

import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.Iterator;

/* loaded from: classes.dex */
class g4 extends AbstractIterator<Multiset.Entry<Object>> {
    public final /* synthetic */ Iterator c;
    public final /* synthetic */ Iterator d;
    public final /* synthetic */ Multisets.a e;

    public g4(Multisets.a aVar, Iterator it, Iterator it2) {
        this.e = aVar;
        this.c = it;
        this.d = it2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.common.collect.AbstractIterator
    public Multiset.Entry<Object> computeNext() {
        Multiset.Entry entry;
        Object element;
        Iterator it = this.c;
        boolean zHasNext = it.hasNext();
        Multisets.a aVar = this.e;
        if (zHasNext) {
            Multiset.Entry entry2 = (Multiset.Entry) it.next();
            Object element2 = entry2.getElement();
            return Multisets.immutableEntry(element2, Math.max(entry2.getCount(), aVar.d.count(element2)));
        }
        do {
            Iterator it2 = this.d;
            if (it2.hasNext()) {
                entry = (Multiset.Entry) it2.next();
                element = entry.getElement();
            } else {
                return endOfData();
            }
        } while (aVar.c.contains(element));
        return Multisets.immutableEntry(element, entry.getCount());
    }
}
