package com.google.common.collect;

import com.google.common.collect.Multisets;
import com.google.common.collect.TreeMultiset;

/* loaded from: classes.dex */
class g6 extends Multisets.e<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TreeMultiset.c f4225a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TreeMultiset f4226b;

    public g6(TreeMultiset treeMultiset, TreeMultiset.c cVar) {
        this.f4226b = treeMultiset;
        this.f4225a = cVar;
    }

    @Override // com.google.common.collect.Multiset.Entry
    public Object getElement() {
        return this.f4225a.f4124a;
    }

    @Override // com.google.common.collect.Multiset.Entry
    public int getCount() {
        int i = this.f4225a.f4125b;
        return i == 0 ? this.f4226b.count(getElement()) : i;
    }
}
