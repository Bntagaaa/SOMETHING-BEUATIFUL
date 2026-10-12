package com.google.common.collect;

import com.google.common.collect.Multisets;

/* loaded from: classes.dex */
class h1 extends Multisets.e<Enum<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4227a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i1 f4228b;

    public h1(i1 i1Var, int i) {
        this.f4228b = i1Var;
        this.f4227a = i;
    }

    @Override // com.google.common.collect.Multiset.Entry
    public Enum<Object> getElement() {
        return this.f4228b.d.d[this.f4227a];
    }

    @Override // com.google.common.collect.Multiset.Entry
    public int getCount() {
        return this.f4228b.d.e[this.f4227a];
    }
}
