package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Maps;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
final class u1<K, V> extends AbstractCollection<V> {

    /* renamed from: a, reason: collision with root package name */
    public final t1 f4344a;

    public u1(t1 t1Var) {
        this.f4344a = (t1) Preconditions.checkNotNull(t1Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<V> iterator() {
        return new s3(this.f4344a.entries().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return this.f4344a.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f4344a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(@NullableDecl Object obj) {
        t1 t1Var = this.f4344a;
        Predicate<? super Map.Entry<K, V>> predicateEntryPredicate = t1Var.entryPredicate();
        Iterator<Map.Entry<K, V>> it = t1Var.unfiltered().entries().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (predicateEntryPredicate.apply(next) && Objects.equal(next.getValue(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        t1 t1Var = this.f4344a;
        return Iterables.removeIf(t1Var.unfiltered().entries(), Predicates.and(t1Var.entryPredicate(), Predicates.compose(Predicates.in(collection), Maps.e.f4010b)));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        t1 t1Var = this.f4344a;
        return Iterables.removeIf(t1Var.unfiltered().entries(), Predicates.and(t1Var.entryPredicate(), Predicates.compose(Predicates.not(Predicates.in(collection)), Maps.e.f4010b)));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f4344a.clear();
    }
}
