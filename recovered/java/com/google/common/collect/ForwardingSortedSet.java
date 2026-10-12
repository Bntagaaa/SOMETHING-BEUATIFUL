package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class ForwardingSortedSet<E> extends ForwardingSet<E> implements SortedSet<E> {
    @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public abstract SortedSet<E> delegate();

    @Override // java.util.SortedSet
    public Comparator<? super E> comparator() {
        return delegate().comparator();
    }

    @Override // java.util.SortedSet
    public E first() {
        return delegate().first();
    }

    @Override // java.util.SortedSet
    public SortedSet<E> headSet(E e) {
        return delegate().headSet(e);
    }

    @Override // java.util.SortedSet
    public E last() {
        return delegate().last();
    }

    @Override // java.util.SortedSet
    public SortedSet<E> subSet(E e, E e2) {
        return delegate().subSet(e, e2);
    }

    @Override // java.util.SortedSet
    public SortedSet<E> tailSet(E e) {
        return delegate().tailSet(e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ForwardingCollection
    @Beta
    public boolean standardContains(@NullableDecl Object obj) {
        int iCompare;
        try {
            E eFirst = tailSet(obj).first();
            Comparator<? super E> comparator = comparator();
            if (comparator == null) {
                iCompare = ((Comparable) eFirst).compareTo(obj);
            } else {
                iCompare = comparator.compare(eFirst, obj);
            }
            return iCompare == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ForwardingCollection
    @Beta
    public boolean standardRemove(@NullableDecl Object obj) {
        int iCompare;
        try {
            Iterator<E> it = tailSet(obj).iterator();
            if (!it.hasNext()) {
                return false;
            }
            E next = it.next();
            Comparator<? super E> comparator = comparator();
            if (comparator == null) {
                iCompare = ((Comparable) next).compareTo(obj);
            } else {
                iCompare = comparator.compare(next, obj);
            }
            if (iCompare != 0) {
                return false;
            }
            it.remove();
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Beta
    public SortedSet<E> standardSubSet(E e, E e2) {
        return tailSet(e).headSet(e2);
    }
}
