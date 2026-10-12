package com.google.common.collect;

import com.google.common.collect.Iterators;

/* loaded from: classes.dex */
class q2 extends UnmodifiableIterator<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final UnmodifiableIterator f4319a;

    /* renamed from: b, reason: collision with root package name */
    public UnmodifiableIterator f4320b = Iterators.j.d;

    public q2(ImmutableMultimap immutableMultimap) {
        this.f4319a = immutableMultimap.f.values().iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4320b.hasNext() || this.f4319a.hasNext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public Object next() {
        if (!this.f4320b.hasNext()) {
            this.f4320b = ((ImmutableCollection) this.f4319a.next()).iterator();
        }
        return this.f4320b.next();
    }
}
