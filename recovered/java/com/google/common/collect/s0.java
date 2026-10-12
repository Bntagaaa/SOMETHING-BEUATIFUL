package com.google.common.collect;

import com.google.common.collect.Multiset;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
class s0 extends AbstractIterator<Multiset.Entry<Object>> {
    public final Iterator c;

    public s0(ConcurrentHashMultiset concurrentHashMultiset) {
        this.c = concurrentHashMultiset.c.entrySet().iterator();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.common.collect.AbstractIterator
    public Multiset.Entry<Object> computeNext() {
        Map.Entry entry;
        int i;
        do {
            Iterator it = this.c;
            if (!it.hasNext()) {
                return endOfData();
            }
            entry = (Map.Entry) it.next();
            i = ((AtomicInteger) entry.getValue()).get();
        } while (i == 0);
        return Multisets.immutableEntry(entry.getKey(), i);
    }
}
