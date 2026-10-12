package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.primitives.Ints;
import java.util.Collections;
import java.util.Comparator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
final class e5<E> extends ImmutableSortedMultiset<E> {
    public static final long[] j = {0};
    public static final ImmutableSortedMultiset k = new e5(Ordering.natural());
    public final transient f5 f;

    /* renamed from: g, reason: collision with root package name */
    public final transient long[] f4200g;
    public final transient int h;
    public final transient int i;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset headMultiset(Object obj, BoundType boundType) {
        return headMultiset((e5<E>) obj, boundType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset tailMultiset(Object obj, BoundType boundType) {
        return tailMultiset((e5<E>) obj, boundType);
    }

    public e5(Comparator comparator) {
        this.f = ImmutableSortedSet.k(comparator);
        this.f4200g = j;
        this.h = 0;
        this.i = 0;
    }

    public e5(f5 f5Var, long[] jArr, int i, int i2) {
        this.f = f5Var;
        this.f4200g = jArr;
        this.h = i;
        this.i = i2;
    }

    @Override // com.google.common.collect.ImmutableMultiset
    public final Multiset.Entry f(int i) {
        E e = this.f.asList().get(i);
        int i2 = this.h + i;
        long[] jArr = this.f4200g;
        return Multisets.immutableEntry(e, (int) (jArr[i2 + 1] - jArr[i2]));
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return f(0);
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return f(this.i - 1);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@NullableDecl Object obj) {
        f5 f5Var = this.f;
        f5Var.getClass();
        int i = -1;
        if (obj != null) {
            try {
                int iBinarySearch = Collections.binarySearch(f5Var.e, obj, f5Var.c);
                if (iBinarySearch >= 0) {
                    i = iBinarySearch;
                }
            } catch (ClassCastException unused) {
            }
        }
        if (i < 0) {
            return 0;
        }
        int i2 = this.h + i;
        long[] jArr = this.f4200g;
        return (int) (jArr[i2 + 1] - jArr[i2]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        int i = this.i;
        int i2 = this.h;
        long[] jArr = this.f4200g;
        return Ints.saturatedCast(jArr[i + i2] - jArr[i2]);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.Multiset
    public ImmutableSortedSet<E> elementSet() {
        return this.f;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> headMultiset(E e, BoundType boundType) {
        return i(0, this.f.p(e, Preconditions.checkNotNull(boundType) == BoundType.CLOSED));
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> tailMultiset(E e, BoundType boundType) {
        return i(this.f.q(e, Preconditions.checkNotNull(boundType) == BoundType.CLOSED), this.i);
    }

    public final ImmutableSortedMultiset i(int i, int i2) {
        int i3 = this.i;
        Preconditions.checkPositionIndexes(i, i2, i3);
        if (i == i2) {
            return ImmutableSortedMultiset.h(comparator());
        }
        if (i == 0 && i2 == i3) {
            return this;
        }
        return new e5(this.f.o(i, i2), this.f4200g, this.h + i, i2 - i);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        if (this.h <= 0) {
            if (this.i >= this.f4200g.length - 1) {
                return false;
            }
        }
        return true;
    }
}
