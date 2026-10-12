package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.BiMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.UnmodifiableIterator;
import java.util.AbstractSet;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
final class q<E> extends AbstractSet<E> {

    /* renamed from: a, reason: collision with root package name */
    public final Map f4533a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4534b;

    public q(BiMap biMap, Object obj) {
        this.f4533a = (Map) Preconditions.checkNotNull(biMap);
        this.f4534b = Preconditions.checkNotNull(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        Object obj2 = this.f4533a.get(this.f4534b);
        return obj2 != null && obj2.equals(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public UnmodifiableIterator<E> iterator() {
        Object obj = this.f4533a.get(this.f4534b);
        if (obj == null) {
            return ImmutableSet.of().iterator();
        }
        return Iterators.singletonIterator(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f4533a.get(this.f4534b) == null ? 0 : 1;
    }
}
