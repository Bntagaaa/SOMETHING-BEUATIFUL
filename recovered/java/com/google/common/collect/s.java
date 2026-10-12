package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.s5;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
abstract class s<E> extends m<E> implements SortedMultiset<E> {
    public final Comparator c;
    public transient SortedMultiset d;

    public abstract Iterator e();

    public s() {
        this(Ordering.natural());
    }

    public s(Comparator comparator) {
        this.c = (Comparator) Preconditions.checkNotNull(comparator);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    public NavigableSet<E> elementSet() {
        return (NavigableSet) super.elementSet();
    }

    @Override // com.google.common.collect.m
    public final Set a() {
        return new s5.b(this);
    }

    public Comparator<? super E> comparator() {
        return this.c;
    }

    public Multiset.Entry<E> firstEntry() {
        Iterator itD = d();
        if (itD.hasNext()) {
            return (Multiset.Entry) itD.next();
        }
        return null;
    }

    public Multiset.Entry<E> lastEntry() {
        Iterator itE = e();
        if (itE.hasNext()) {
            return (Multiset.Entry) itE.next();
        }
        return null;
    }

    public Multiset.Entry<E> pollFirstEntry() {
        Iterator itD = d();
        if (!itD.hasNext()) {
            return null;
        }
        Multiset.Entry entry = (Multiset.Entry) itD.next();
        Multiset.Entry<E> entryImmutableEntry = Multisets.immutableEntry(entry.getElement(), entry.getCount());
        itD.remove();
        return entryImmutableEntry;
    }

    public Multiset.Entry<E> pollLastEntry() {
        Iterator itE = e();
        if (!itE.hasNext()) {
            return null;
        }
        Multiset.Entry entry = (Multiset.Entry) itE.next();
        Multiset.Entry<E> entryImmutableEntry = Multisets.immutableEntry(entry.getElement(), entry.getCount());
        itE.remove();
        return entryImmutableEntry;
    }

    public SortedMultiset<E> subMultiset(@NullableDecl E e, BoundType boundType, @NullableDecl E e2, BoundType boundType2) {
        Preconditions.checkNotNull(boundType);
        Preconditions.checkNotNull(boundType2);
        return tailMultiset(e, boundType).headMultiset(e2, boundType2);
    }

    public SortedMultiset<E> descendingMultiset() {
        SortedMultiset<E> sortedMultiset = this.d;
        if (sortedMultiset != null) {
            return sortedMultiset;
        }
        r rVar = new r(this);
        this.d = rVar;
        return rVar;
    }
}
