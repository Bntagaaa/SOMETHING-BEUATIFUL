package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Lists;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class ForwardingList<E> extends ForwardingCollection<E> implements List<E> {
    @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public abstract List<E> delegate();

    @Override // java.util.List
    public void add(int i, E e) {
        delegate().add(i, e);
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    public boolean addAll(int i, Collection<? extends E> collection) {
        return delegate().addAll(i, collection);
    }

    @Override // java.util.List
    public E get(int i) {
        return delegate().get(i);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return delegate().indexOf(obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return delegate().lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return delegate().listIterator();
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return delegate().listIterator(i);
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    public E remove(int i) {
        return delegate().remove(i);
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    public E set(int i, E e) {
        return delegate().set(i, e);
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return delegate().subList(i, i2);
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return delegate().hashCode();
    }

    public boolean standardAdd(E e) {
        add(size(), e);
        return true;
    }

    public int standardIndexOf(@NullableDecl Object obj) {
        return Lists.b(this, obj);
    }

    public int standardLastIndexOf(@NullableDecl Object obj) {
        return Lists.c(this, obj);
    }

    public Iterator<E> standardIterator() {
        return listIterator();
    }

    public ListIterator<E> standardListIterator() {
        return listIterator(0);
    }

    @Beta
    public boolean standardEquals(@NullableDecl Object obj) {
        return Lists.a(this, obj);
    }

    @Beta
    public int standardHashCode() {
        Iterator<E> it = iterator();
        int i = 1;
        while (it.hasNext()) {
            E next = it.next();
            i = ~(~((i * 31) + (next == null ? 0 : next.hashCode())));
        }
        return i;
    }

    public boolean standardAddAll(int i, Iterable<? extends E> iterable) {
        ListIterator<E> listIterator = listIterator(i);
        Iterator<? extends E> it = iterable.iterator();
        boolean z = false;
        while (it.hasNext()) {
            listIterator.add(it.next());
            z = true;
        }
        return z;
    }

    @Beta
    public ListIterator<E> standardListIterator(int i) {
        return new Lists.a(this).listIterator(i);
    }

    @Beta
    public List<E> standardSubList(int i, int i2) {
        List l3Var;
        if (!(this instanceof RandomAccess)) {
            l3Var = new l3(this);
        } else {
            l3Var = new k3(this);
        }
        return l3Var.subList(i, i2);
    }
}
