package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Collection;
import java.util.EnumSet;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
final class i2<E extends Enum<E>> extends ImmutableSet<E> {
    public final transient EnumSet c;
    public transient int d;

    public static class b<E extends Enum<E>> implements Serializable {
    }

    @Override // com.google.common.collect.ImmutableSet
    public final boolean h() {
        return true;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return false;
    }

    public static ImmutableSet i(EnumSet enumSet) {
        int size = enumSet.size();
        if (size == 0) {
            return ImmutableSet.of();
        }
        if (size == 1) {
            return ImmutableSet.of(Iterables.getOnlyElement(enumSet));
        }
        return new i2(enumSet);
    }

    public i2(EnumSet enumSet) {
        this.c = enumSet;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<E> iterator() {
        return Iterators.unmodifiableIterator(this.c.iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.c.size();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.c.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof i2) {
            collection = ((i2) collection).c;
        }
        return this.c.containsAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.c.isEmpty();
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i2) {
            obj = ((i2) obj).c;
        }
        return this.c.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        int i = this.d;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.c.hashCode();
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return this.c.toString();
    }
}
