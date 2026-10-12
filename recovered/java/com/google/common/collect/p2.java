package com.google.common.collect;

import com.google.common.collect.Iterators;
import java.util.Map;

/* loaded from: classes.dex */
class p2 extends UnmodifiableIterator<Map.Entry<Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final UnmodifiableIterator f4313a;

    /* renamed from: b, reason: collision with root package name */
    public Object f4314b = null;
    public UnmodifiableIterator c = Iterators.j.d;

    public p2(ImmutableMultimap immutableMultimap) {
        this.f4313a = immutableMultimap.f.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.c.hasNext() || this.f4313a.hasNext();
    }

    @Override // java.util.Iterator
    public Map.Entry<Object, Object> next() {
        if (!this.c.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f4313a.next();
            this.f4314b = entry.getKey();
            this.c = ((ImmutableCollection) entry.getValue()).iterator();
        }
        return Maps.immutableEntry(this.f4314b, this.c.next());
    }
}
