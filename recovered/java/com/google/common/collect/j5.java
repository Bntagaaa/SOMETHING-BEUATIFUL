package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class j5<T> extends Ordering<T> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Ordering f4242a;

    public j5(Ordering ordering) {
        this.f4242a = (Ordering) Preconditions.checkNotNull(ordering);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(T t, T t2) {
        return this.f4242a.compare(t2, t);
    }

    @Override // com.google.common.collect.Ordering
    public <S extends T> Ordering<S> reverse() {
        return this.f4242a;
    }

    @Override // com.google.common.collect.Ordering
    public <E extends T> E min(E e, E e2) {
        return (E) this.f4242a.max(e, e2);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends T> E min(E e, E e2, E e3, E... eArr) {
        return (E) this.f4242a.max(e, e2, e3, eArr);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends T> E min(Iterator<E> it) {
        return (E) this.f4242a.max(it);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends T> E min(Iterable<E> iterable) {
        return (E) this.f4242a.max(iterable);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends T> E max(E e, E e2) {
        return (E) this.f4242a.min(e, e2);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends T> E max(E e, E e2, E e3, E... eArr) {
        return (E) this.f4242a.min(e, e2, e3, eArr);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends T> E max(Iterator<E> it) {
        return (E) this.f4242a.min(it);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends T> E max(Iterable<E> iterable) {
        return (E) this.f4242a.min(iterable);
    }

    public int hashCode() {
        return -this.f4242a.hashCode();
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j5) {
            return this.f4242a.equals(((j5) obj).f4242a);
        }
        return false;
    }

    public String toString() {
        return this.f4242a + ".reverse()";
    }
}
