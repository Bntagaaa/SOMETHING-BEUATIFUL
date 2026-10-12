package com.google.common.collect;

import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.Iterator;

/* loaded from: classes.dex */
class j4 extends AbstractIterator<Object> {
    public final /* synthetic */ Iterator c;
    public final /* synthetic */ Multisets.d d;

    public j4(Multisets.d dVar, Iterator it) {
        this.d = dVar;
        this.c = it;
    }

    @Override // com.google.common.collect.AbstractIterator
    public Object computeNext() {
        Multiset.Entry entry;
        Object element;
        do {
            Iterator it = this.c;
            if (it.hasNext()) {
                entry = (Multiset.Entry) it.next();
                element = entry.getElement();
            } else {
                return endOfData();
            }
        } while (entry.getCount() <= this.d.d.count(element));
        return element;
    }
}
