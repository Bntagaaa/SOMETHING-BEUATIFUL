package com.google.common.collect;

import java.util.Collection;
import java.util.SortedSet;

/* loaded from: classes.dex */
final class v3 extends ForwardingSortedSet<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SortedSet f4350a;

    public v3(SortedSet sortedSet) {
        this.f4350a = sortedSet;
    }

    @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public SortedSet<Object> delegate() {
        return this.f4350a;
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
    public boolean addAll(Collection<Object> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
    public SortedSet<Object> headSet(Object obj) {
        return new v3(super.headSet(obj));
    }

    @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
    public SortedSet<Object> subSet(Object obj, Object obj2) {
        return new v3(super.subSet(obj, obj2));
    }

    @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
    public SortedSet<Object> tailSet(Object obj) {
        return new v3(super.tailSet(obj));
    }
}
