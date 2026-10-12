package com.google.common.collect;

import com.google.common.collect.Multiset;
import java.util.Iterator;

/* loaded from: classes.dex */
class t0 extends ForwardingIterator<Multiset.Entry<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public Multiset.Entry f4339a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterator f4340b;
    public final /* synthetic */ ConcurrentHashMultiset c;

    public t0(ConcurrentHashMultiset concurrentHashMultiset, Iterator it) {
        this.c = concurrentHashMultiset;
        this.f4340b = it;
    }

    @Override // com.google.common.collect.ForwardingIterator, com.google.common.collect.ForwardingObject
    public Iterator<Multiset.Entry<Object>> delegate() {
        return this.f4340b;
    }

    @Override // com.google.common.collect.ForwardingIterator, java.util.Iterator
    public Multiset.Entry<Object> next() {
        Multiset.Entry<Object> entry = (Multiset.Entry) super.next();
        this.f4339a = entry;
        return entry;
    }

    @Override // com.google.common.collect.ForwardingIterator, java.util.Iterator
    public void remove() {
        g0.e(this.f4339a != null);
        this.c.setCount(this.f4339a.getElement(), 0);
        this.f4339a = null;
    }
}
