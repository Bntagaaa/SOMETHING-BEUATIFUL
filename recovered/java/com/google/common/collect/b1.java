package com.google.common.collect;

import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.Iterator;

/* loaded from: classes.dex */
class b1 extends Multisets.h<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c1 f4175a;

    public b1(c1 c1Var) {
        this.f4175a = c1Var;
    }

    @Override // com.google.common.collect.Multisets.h
    public final Multiset a() {
        return this.f4175a;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Multiset.Entry<Object>> iterator() {
        return this.f4175a.entryIterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f4175a.a().entrySet().size();
    }
}
