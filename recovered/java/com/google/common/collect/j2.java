package com.google.common.collect;

import java.util.Map;

/* loaded from: classes.dex */
class j2 extends UnmodifiableIterator<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ UnmodifiableIterator f4239a;

    public j2(UnmodifiableIterator unmodifiableIterator) {
        this.f4239a = unmodifiableIterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4239a.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        return ((Map.Entry) this.f4239a.next()).getKey();
    }
}
