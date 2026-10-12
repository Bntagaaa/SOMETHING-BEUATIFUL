package com.google.common.collect;

import java.util.Collection;
import java.util.Set;

/* loaded from: classes.dex */
final class u3 extends ForwardingSet<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Set f4345a;

    public u3(Set set) {
        this.f4345a = set;
    }

    @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public Set<Object> delegate() {
        return this.f4345a;
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
    public boolean addAll(Collection<Object> collection) {
        throw new UnsupportedOperationException();
    }
}
