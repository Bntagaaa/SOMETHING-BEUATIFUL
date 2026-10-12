package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
abstract class m<E> extends AbstractCollection<E> implements Multiset<E> {

    /* renamed from: a, reason: collision with root package name */
    public transient Set f4265a;

    /* renamed from: b, reason: collision with root package name */
    public transient Set f4266b;

    public abstract int b();

    public abstract Iterator c();

    public abstract Iterator d();

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean contains(@NullableDecl Object obj) {
        return count(obj) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public final boolean add(@NullableDecl E e) {
        add(e, 1);
        return true;
    }

    @CanIgnoreReturnValue
    public int add(@NullableDecl E e, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public final boolean remove(@NullableDecl Object obj) {
        return remove(obj, 1) > 0;
    }

    @CanIgnoreReturnValue
    public int remove(@NullableDecl Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public final boolean addAll(Collection<? extends E> collection) {
        return Multisets.a(this, collection);
    }

    public Set<E> elementSet() {
        Set<E> set = this.f4265a;
        if (set != null) {
            return set;
        }
        Set<E> setA = a();
        this.f4265a = setA;
        return setA;
    }

    public Set a() {
        return new a();
    }

    public class a extends Multisets.g<E> {
        public a() {
        }

        @Override // com.google.common.collect.Multisets.g
        public final Multiset a() {
            return m.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return m.this.c();
        }
    }

    public Set<Multiset.Entry<E>> entrySet() {
        Set<Multiset.Entry<E>> set = this.f4266b;
        if (set != null) {
            return set;
        }
        Set<Multiset.Entry<E>> setCreateEntrySet = createEntrySet();
        this.f4266b = setCreateEntrySet;
        return setCreateEntrySet;
    }

    public class b extends Multisets.h<E> {
        public b() {
        }

        @Override // com.google.common.collect.Multisets.h
        public Multiset a() {
            return m.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Multiset.Entry<E>> iterator() {
            return m.this.d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return m.this.b();
        }
    }

    public Set createEntrySet() {
        return new b();
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public final boolean equals(@NullableDecl Object obj) {
        return Multisets.b(this, obj);
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.AbstractCollection, com.google.common.collect.Multiset
    public final String toString() {
        return entrySet().toString();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public final boolean removeAll(Collection<?> collection) {
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        return elementSet().removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public final boolean retainAll(Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        return elementSet().retainAll(collection);
    }

    @CanIgnoreReturnValue
    public int setCount(@NullableDecl E e, int i) {
        g0.b(i, "count");
        int iCount = count(e);
        int i2 = i - iCount;
        if (i2 > 0) {
            add(e, i2);
            return iCount;
        }
        if (i2 < 0) {
            remove(e, -i2);
        }
        return iCount;
    }

    @CanIgnoreReturnValue
    public boolean setCount(@NullableDecl E e, int i, int i2) {
        g0.b(i, "oldCount");
        g0.b(i2, "newCount");
        if (count(e) != i) {
            return false;
        }
        setCount(e, i2);
        return true;
    }
}
