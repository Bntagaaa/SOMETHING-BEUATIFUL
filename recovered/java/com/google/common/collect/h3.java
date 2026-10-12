package com.google.common.collect;

import com.google.common.collect.LinkedListMultimap;
import java.util.AbstractSequentialList;
import java.util.ListIterator;
import java.util.Map;

/* loaded from: classes.dex */
class h3 extends AbstractSequentialList<Map.Entry<Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LinkedListMultimap f4229a;

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f4229a.i;
    }

    public h3(LinkedListMultimap linkedListMultimap) {
        this.f4229a = linkedListMultimap;
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public ListIterator<Map.Entry<Object, Object>> listIterator(int i) {
        return new LinkedListMultimap.e(i);
    }
}
