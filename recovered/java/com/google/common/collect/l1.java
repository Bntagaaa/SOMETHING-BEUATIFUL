package com.google.common.collect;

import com.google.common.base.Predicates;
import com.google.common.collect.Maps;
import com.google.common.collect.n1;
import java.util.Collection;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
class l1 extends Maps.n<Object, Collection<Object>> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n1.a f4262b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l1(n1.a aVar) {
        super(aVar);
        this.f4262b = aVar;
    }

    @Override // com.google.common.collect.Sets.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        return n1.this.h(Predicates.compose(Predicates.in(collection), Maps.e.f4009a));
    }

    @Override // com.google.common.collect.Sets.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        return n1.this.h(Predicates.compose(Predicates.not(Predicates.in(collection)), Maps.e.f4009a));
    }

    @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(@NullableDecl Object obj) {
        return this.f4262b.remove(obj) != null;
    }
}
