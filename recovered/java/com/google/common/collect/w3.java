package com.google.common.collect;

import java.util.Collection;
import java.util.NavigableSet;
import java.util.SortedSet;

/* loaded from: classes.dex */
final class w3 extends ForwardingNavigableSet<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NavigableSet f4377a;

    public w3(NavigableSet navigableSet) {
        this.f4377a = navigableSet;
    }

    @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public NavigableSet<Object> delegate() {
        return this.f4377a;
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

    @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
    public NavigableSet<Object> headSet(Object obj, boolean z) {
        return new w3(super.headSet(obj, z));
    }

    @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
    public SortedSet<Object> subSet(Object obj, Object obj2) {
        return new v3(super.subSet(obj, obj2));
    }

    @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
    public NavigableSet<Object> subSet(Object obj, boolean z, Object obj2, boolean z2) {
        return new w3(super.subSet(obj, z, obj2, z2));
    }

    @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
    public SortedSet<Object> tailSet(Object obj) {
        return new v3(super.tailSet(obj));
    }

    @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
    public NavigableSet<Object> tailSet(Object obj, boolean z) {
        return new w3(super.tailSet(obj, z));
    }

    @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
    public NavigableSet<Object> descendingSet() {
        return new w3(super.descendingSet());
    }
}
