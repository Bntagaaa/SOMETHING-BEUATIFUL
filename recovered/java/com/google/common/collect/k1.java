package com.google.common.collect;

import com.google.common.base.Predicates;
import com.google.common.collect.Maps;
import com.google.common.collect.n1;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class k1 extends Maps.f<Object, Collection<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n1.a f4253a;

    public k1(n1.a aVar) {
        this.f4253a = aVar;
    }

    @Override // com.google.common.collect.Maps.f
    public final Map a() {
        return this.f4253a;
    }

    public class a extends AbstractIterator<Map.Entry<Object, Collection<Object>>> {
        public final Iterator c;

        public a() {
            this.c = n1.this.f.asMap().entrySet().iterator();
        }

        @Override // com.google.common.collect.AbstractIterator
        public Map.Entry<Object, Collection<Object>> computeNext() {
            Object key;
            Collection collectionG;
            do {
                Iterator it = this.c;
                if (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    key = entry.getKey();
                    collectionG = n1.g((Collection) entry.getValue(), new n1.c(key));
                } else {
                    return endOfData();
                }
            } while (collectionG.isEmpty());
            return Maps.immutableEntry(key, collectionG);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<Object, Collection<Object>>> iterator() {
        return new a();
    }

    @Override // com.google.common.collect.Maps.f, com.google.common.collect.Sets.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        return n1.this.h(Predicates.in(collection));
    }

    @Override // com.google.common.collect.Maps.f, com.google.common.collect.Sets.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        return n1.this.h(Predicates.not(Predicates.in(collection)));
    }

    @Override // com.google.common.collect.Maps.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return Iterators.size(iterator());
    }
}
