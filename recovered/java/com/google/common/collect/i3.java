package com.google.common.collect;

import com.google.common.collect.LinkedListMultimap;
import com.google.common.collect.Sets;
import java.util.Iterator;

/* loaded from: classes.dex */
class i3 extends Sets.k<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LinkedListMultimap f4232a;

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f4232a.h.size();
    }

    public i3(LinkedListMultimap linkedListMultimap) {
        this.f4232a = linkedListMultimap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Object> iterator() {
        return new LinkedListMultimap.b();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f4232a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return !this.f4232a.removeAll(obj).isEmpty();
    }
}
