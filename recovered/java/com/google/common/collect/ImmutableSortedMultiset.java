package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.Multiset;
import com.google.common.math.IntMath;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

@GwtIncompatible
/* loaded from: classes.dex */
public abstract class ImmutableSortedMultiset<E> extends x2<E> implements SortedMultiset<E> {
    public transient ImmutableSortedMultiset e;

    public static final class a<E> implements Serializable {
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.Multiset
    public abstract ImmutableSortedSet<E> elementSet();

    @Override // com.google.common.collect.SortedMultiset
    public abstract ImmutableSortedMultiset<E> headMultiset(E e, BoundType boundType);

    @Override // com.google.common.collect.SortedMultiset
    public abstract ImmutableSortedMultiset<E> tailMultiset(E e, BoundType boundType);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset headMultiset(Object obj, BoundType boundType) {
        return headMultiset((ImmutableSortedMultiset<E>) obj, boundType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return subMultiset((BoundType) obj, boundType, (BoundType) obj2, boundType2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset tailMultiset(Object obj, BoundType boundType) {
        return tailMultiset((ImmutableSortedMultiset<E>) obj, boundType);
    }

    public static <E> ImmutableSortedMultiset<E> of() {
        return e5.k;
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable) {
        return new e5((f5) ImmutableSortedSet.of(comparable), new long[]{0, 1}, 0, 1);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2, comparable3));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2, comparable3, comparable4));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2, comparable3, comparable4, comparable5));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(comparableArr.length + 6);
        Collections.addAll(arrayListNewArrayListWithCapacity, comparable, comparable2, comparable3, comparable4, comparable5, comparable6);
        Collections.addAll(arrayListNewArrayListWithCapacity, comparableArr);
        return copyOf(Ordering.natural(), arrayListNewArrayListWithCapacity);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset copyOf(Comparable[] comparableArr) {
        return copyOf(Ordering.natural(), Arrays.asList(comparableArr));
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(Ordering.natural(), iterable);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterator<? extends E> it) {
        return copyOf(Ordering.natural(), it);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        Preconditions.checkNotNull(comparator);
        return new Builder(comparator).addAll((Iterator) it).build();
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableSortedMultiset) {
            ImmutableSortedMultiset<E> immutableSortedMultiset = (ImmutableSortedMultiset) iterable;
            if (comparator.equals(immutableSortedMultiset.comparator())) {
                return immutableSortedMultiset.isPartialView() ? g(comparator, immutableSortedMultiset.entrySet().asList()) : immutableSortedMultiset;
            }
        }
        return new Builder(comparator).addAll((Iterable) iterable).build();
    }

    public static <E> ImmutableSortedMultiset<E> copyOfSorted(SortedMultiset<E> sortedMultiset) {
        return g(sortedMultiset.comparator(), Lists.newArrayList(sortedMultiset.entrySet()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ImmutableSortedMultiset g(Comparator comparator, AbstractCollection abstractCollection) {
        if (abstractCollection.isEmpty()) {
            return h(comparator);
        }
        ImmutableList.Builder builder = new ImmutableList.Builder(abstractCollection.size());
        long[] jArr = new long[abstractCollection.size() + 1];
        Iterator<E> it = abstractCollection.iterator();
        int i = 0;
        while (it.hasNext()) {
            builder.add((ImmutableList.Builder) ((Multiset.Entry) it.next()).getElement());
            int i2 = i + 1;
            jArr[i2] = jArr[i] + r5.getCount();
            i = i2;
        }
        return new e5(new f5(builder.build(), comparator), jArr, 0, abstractCollection.size());
    }

    public static ImmutableSortedMultiset h(Comparator comparator) {
        if (Ordering.natural().equals(comparator)) {
            return e5.k;
        }
        return new e5(comparator);
    }

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.o5
    public final Comparator<? super E> comparator() {
        return elementSet().comparator();
    }

    @Override // com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> descendingMultiset() {
        ImmutableSortedMultiset<E> immutableSortedMultisetH = this.e;
        if (immutableSortedMultisetH == null) {
            immutableSortedMultisetH = isEmpty() ? h(Ordering.from(comparator()).reverse()) : new z0<>(this);
            this.e = immutableSortedMultisetH;
        }
        return immutableSortedMultisetH;
    }

    @Override // com.google.common.collect.SortedMultiset
    @CanIgnoreReturnValue
    @Deprecated
    public final Multiset.Entry<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.SortedMultiset
    @CanIgnoreReturnValue
    @Deprecated
    public final Multiset.Entry<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> subMultiset(E e, BoundType boundType, E e2, BoundType boundType2) {
        Preconditions.checkArgument(comparator().compare(e, e2) <= 0, "Expected lowerBound <= upperBound but %s > %s", e, e2);
        return tailMultiset((ImmutableSortedMultiset<E>) e, boundType).headMultiset((ImmutableSortedMultiset<E>) e2, boundType2);
    }

    public static <E> Builder<E> orderedBy(Comparator<E> comparator) {
        return new Builder<>(comparator);
    }

    public static <E extends Comparable<?>> Builder<E> reverseOrder() {
        return new Builder<>(Ordering.natural().reverse());
    }

    public static <E extends Comparable<?>> Builder<E> naturalOrder() {
        return new Builder<>(Ordering.natural());
    }

    public static class Builder<E> extends ImmutableMultiset.Builder<E> {
        public final Comparator d;
        public Object[] e;
        public int[] f;

        /* renamed from: g, reason: collision with root package name */
        public int f3921g;
        public boolean h;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableMultiset.Builder, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ ImmutableCollection.Builder add(Object obj) {
            return add((Builder<E>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableMultiset.Builder, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ ImmutableMultiset.Builder add(Object obj) {
            return add((Builder<E>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableMultiset.Builder
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ ImmutableMultiset.Builder addCopies(Object obj, int i) {
            return addCopies((Builder<E>) obj, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableMultiset.Builder
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ ImmutableMultiset.Builder setCount(Object obj, int i) {
            return setCount((Builder<E>) obj, i);
        }

        public Builder(Comparator<? super E> comparator) {
            this.f3908b = false;
            this.c = false;
            this.f3907a = null;
            this.d = (Comparator) Preconditions.checkNotNull(comparator);
            this.e = new Object[4];
            this.f = new int[4];
        }

        public final void b(boolean z) {
            int i = this.f3921g;
            if (i == 0) {
                return;
            }
            Object[] objArrCopyOf = Arrays.copyOf(this.e, i);
            Comparator comparator = this.d;
            Arrays.sort(objArrCopyOf, comparator);
            int i2 = 1;
            for (int i3 = 1; i3 < objArrCopyOf.length; i3++) {
                if (comparator.compare(objArrCopyOf[i2 - 1], objArrCopyOf[i3]) < 0) {
                    objArrCopyOf[i2] = objArrCopyOf[i3];
                    i2++;
                }
            }
            Arrays.fill(objArrCopyOf, i2, this.f3921g, (Object) null);
            if (z) {
                int i4 = i2 * 4;
                int i5 = this.f3921g;
                if (i4 > i5 * 3) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, IntMath.saturatedAdd(i5, (i5 / 2) + 1));
                }
            }
            int[] iArr = new int[objArrCopyOf.length];
            for (int i6 = 0; i6 < this.f3921g; i6++) {
                int iBinarySearch = Arrays.binarySearch(objArrCopyOf, 0, i2, this.e[i6], comparator);
                int i7 = this.f[i6];
                if (i7 >= 0) {
                    iArr[iBinarySearch] = iArr[iBinarySearch] + i7;
                } else {
                    iArr[iBinarySearch] = ~i7;
                }
            }
            this.e = objArrCopyOf;
            this.f = iArr;
            this.f3921g = i2;
        }

        @Override // com.google.common.collect.ImmutableMultiset.Builder, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E e) {
            return addCopies((Builder<E>) e, 1);
        }

        @Override // com.google.common.collect.ImmutableMultiset.Builder, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E... eArr) {
            for (E e : eArr) {
                add((Builder<E>) e);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.Builder
        @CanIgnoreReturnValue
        public Builder<E> addCopies(E e, int i) {
            Preconditions.checkNotNull(e);
            g0.b(i, "occurrences");
            if (i == 0) {
                return this;
            }
            int i2 = this.f3921g;
            Object[] objArr = this.e;
            if (i2 == objArr.length) {
                b(true);
            } else if (this.h) {
                this.e = Arrays.copyOf(objArr, objArr.length);
            }
            this.h = false;
            Object[] objArr2 = this.e;
            int i3 = this.f3921g;
            objArr2[i3] = e;
            this.f[i3] = i;
            this.f3921g = i3 + 1;
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.Builder
        @CanIgnoreReturnValue
        public Builder<E> setCount(E e, int i) {
            Preconditions.checkNotNull(e);
            g0.b(i, "count");
            int i2 = this.f3921g;
            Object[] objArr = this.e;
            if (i2 == objArr.length) {
                b(true);
            } else if (this.h) {
                this.e = Arrays.copyOf(objArr, objArr.length);
            }
            this.h = false;
            Object[] objArr2 = this.e;
            int i3 = this.f3921g;
            objArr2[i3] = e;
            this.f[i3] = ~i;
            this.f3921g = i3 + 1;
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.Builder, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            if (iterable instanceof Multiset) {
                for (Multiset.Entry<E> entry : ((Multiset) iterable).entrySet()) {
                    addCopies((Builder<E>) entry.getElement(), entry.getCount());
                }
            } else {
                Iterator<? extends E> it = iterable.iterator();
                while (it.hasNext()) {
                    add((Builder<E>) it.next());
                }
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.Builder, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterator<? extends E> it) {
            while (it.hasNext()) {
                add((Builder<E>) it.next());
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.Builder, com.google.common.collect.ImmutableCollection.Builder
        public ImmutableSortedMultiset<E> build() {
            int i;
            b(false);
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = this.f3921g;
                if (i2 >= i) {
                    break;
                }
                int[] iArr = this.f;
                int i4 = iArr[i2];
                if (i4 > 0) {
                    Object[] objArr = this.e;
                    objArr[i3] = objArr[i2];
                    iArr[i3] = i4;
                    i3++;
                }
                i2++;
            }
            Arrays.fill(this.e, i3, i, (Object) null);
            Arrays.fill(this.f, i3, this.f3921g, 0);
            this.f3921g = i3;
            Comparator comparator = this.d;
            if (i3 == 0) {
                return ImmutableSortedMultiset.h(comparator);
            }
            f5 f5Var = (f5) ImmutableSortedSet.i(comparator, i3, this.e);
            long[] jArr = new long[this.f3921g + 1];
            int i5 = 0;
            while (i5 < this.f3921g) {
                int i6 = i5 + 1;
                jArr[i6] = jArr[i5] + this.f[i5];
                i5 = i6;
            }
            this.h = true;
            return new e5(f5Var, jArr, 0, this.f3921g);
        }
    }
}
