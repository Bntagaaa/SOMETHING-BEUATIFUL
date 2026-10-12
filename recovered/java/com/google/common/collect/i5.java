package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Iterator;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class i5 extends Ordering<Comparable> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final i5 f4233a = new i5();

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(Comparable comparable, Comparable comparable2) {
        Preconditions.checkNotNull(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    @Override // com.google.common.collect.Ordering
    public <S extends Comparable> Ordering<S> reverse() {
        return Ordering.natural();
    }

    @Override // com.google.common.collect.Ordering
    public <E extends Comparable> E min(E e, E e2) {
        return (E) o4.c.max(e, e2);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends Comparable> E min(E e, E e2, E e3, E... eArr) {
        return (E) o4.c.max(e, e2, e3, eArr);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends Comparable> E min(Iterator<E> it) {
        return (E) o4.c.max(it);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends Comparable> E min(Iterable<E> iterable) {
        return (E) o4.c.max(iterable);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends Comparable> E max(E e, E e2) {
        return (E) o4.c.min(e, e2);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends Comparable> E max(E e, E e2, E e3, E... eArr) {
        return (E) o4.c.min(e, e2, e3, eArr);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends Comparable> E max(Iterator<E> it) {
        return (E) o4.c.min(it);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends Comparable> E max(Iterable<E> iterable) {
        return (E) o4.c.min(iterable);
    }

    public String toString() {
        return "Ordering.natural().reverse()";
    }

    private i5() {
    }
}
