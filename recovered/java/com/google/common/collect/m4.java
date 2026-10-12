package com.google.common.collect;

import com.google.common.base.Predicate;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;

/* loaded from: classes.dex */
class m4 implements Predicate<Multiset.Entry<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Multisets.i f4297a;

    public m4(Multisets.i iVar) {
        this.f4297a = iVar;
    }

    @Override // com.google.common.base.Predicate
    public boolean apply(Multiset.Entry<Object> entry) {
        return this.f4297a.d.apply(entry.getElement());
    }
}
