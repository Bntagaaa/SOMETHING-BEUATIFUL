package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {

    /* renamed from: b, reason: collision with root package name */
    public transient ImmutableList f3918b;

    public static class a implements Serializable {
    }

    public boolean h() {
        return this instanceof d1;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract UnmodifiableIterator<E> iterator();

    public static <E> ImmutableSet<E> of() {
        return d5.h;
    }

    public static <E> ImmutableSet<E> of(E e) {
        return new m5(e);
    }

    public static <E> ImmutableSet<E> of(E e, E e2) {
        return f(2, e, e2);
    }

    public static <E> ImmutableSet<E> of(E e, E e2, E e3) {
        return f(3, e, e2, e3);
    }

    public static <E> ImmutableSet<E> of(E e, E e2, E e3, E e4) {
        return f(4, e, e2, e3, e4);
    }

    public static <E> ImmutableSet<E> of(E e, E e2, E e3, E e4, E e5) {
        return f(5, e, e2, e3, e4, e5);
    }

    @SafeVarargs
    public static <E> ImmutableSet<E> of(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        Preconditions.checkArgument(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return f(length, objArr);
    }

    public static ImmutableSet f(int i, Object... objArr) {
        if (i == 0) {
            return of();
        }
        if (i == 1) {
            return of(objArr[0]);
        }
        int iE = e(i);
        Object[] objArr2 = new Object[iE];
        int i2 = iE - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj = objArr[i5];
            if (obj == null) {
                throw new NullPointerException(_COROUTINE.a.d(i5, "at index "));
            }
            int iHashCode = obj.hashCode();
            int iB = e2.b(iHashCode);
            while (true) {
                int i6 = iB & i2;
                Object obj2 = objArr2[i6];
                if (obj2 == null) {
                    objArr[i4] = obj;
                    objArr2[i6] = obj;
                    i3 += iHashCode;
                    i4++;
                    break;
                }
                if (obj2.equals(obj)) {
                    break;
                }
                iB++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            return new m5(objArr[0], i3);
        }
        if (e(i4) < iE / 2) {
            return f(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new d5(objArr, objArr2, i3, i2, i4);
    }

    public static int e(int i) {
        int iMax = Math.max(i, 2);
        if (iMax < 751619276) {
            int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
            while (iHighestOneBit * 0.7d < iMax) {
                iHighestOneBit <<= 1;
            }
            return iHighestOneBit;
        }
        Preconditions.checkArgument(iMax < 1073741824, "collection too large");
        return 1073741824;
    }

    public static <E> ImmutableSet<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.isPartialView()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return f(array.length, array);
    }

    public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection) iterable);
        }
        return copyOf(iterable.iterator());
    }

    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new Builder().add((Builder) next).addAll((Iterator) it).build();
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        int length = eArr.length;
        if (length == 0) {
            return of();
        }
        if (length == 1) {
            return of((Object) eArr[0]);
        }
        return f(eArr.length, (Object[]) eArr.clone());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && h() && ((ImmutableSet) obj).h() && hashCode() != obj.hashCode()) {
            return false;
        }
        return Sets.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.b(this);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.f3918b;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList<E> immutableListG = g();
        this.f3918b = immutableListG;
        return immutableListG;
    }

    public ImmutableList g() {
        Object[] array = toArray();
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f3896b;
        return ImmutableList.e(array.length, array);
    }

    public static <E> Builder<E> builder() {
        return new Builder<>();
    }

    @Beta
    public static <E> Builder<E> builderWithExpectedSize(int i) {
        g0.b(i, "expectedSize");
        Builder<E> builder = new Builder<>(i);
        builder.d = new Object[e(i)];
        return builder;
    }

    public static class Builder<E> extends ImmutableCollection.a<E> {
        public Object[] d;
        public int e;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableCollection.a, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ ImmutableCollection.Builder add(Object obj) {
            return add((Builder<E>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableCollection.a, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ ImmutableCollection.a add(Object obj) {
            return add((Builder<E>) obj);
        }

        public Builder() {
            super(4);
        }

        @Override // com.google.common.collect.ImmutableCollection.a, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E e) {
            Preconditions.checkNotNull(e);
            if (this.d != null) {
                int iE = ImmutableSet.e(this.f3895b);
                Object[] objArr = this.d;
                if (iE <= objArr.length) {
                    int length = objArr.length - 1;
                    int iHashCode = e.hashCode();
                    int iB = e2.b(iHashCode);
                    while (true) {
                        int i = iB & length;
                        Object[] objArr2 = this.d;
                        Object obj = objArr2[i];
                        if (obj == null) {
                            objArr2[i] = e;
                            this.e += iHashCode;
                            super.add((Builder<E>) e);
                            return this;
                        }
                        if (obj.equals(e)) {
                            return this;
                        }
                        iB = i + 1;
                    }
                }
            }
            this.d = null;
            super.add((Builder<E>) e);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.a, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E... eArr) {
            if (this.d != null) {
                for (E e : eArr) {
                    add((Builder<E>) e);
                }
                return this;
            }
            super.add((Object[]) eArr);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.a, com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            Preconditions.checkNotNull(iterable);
            if (this.d != null) {
                Iterator<? extends E> it = iterable.iterator();
                while (it.hasNext()) {
                    add((Builder<E>) it.next());
                }
                return this;
            }
            super.addAll((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterator<? extends E> it) {
            Preconditions.checkNotNull(it);
            while (it.hasNext()) {
                add((Builder<E>) it.next());
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public ImmutableSet<E> build() {
            ImmutableSet<E> immutableSetF;
            int i = this.f3895b;
            if (i == 0) {
                return ImmutableSet.of();
            }
            if (i == 1) {
                return ImmutableSet.of(this.f3894a[0]);
            }
            if (this.d == null || ImmutableSet.e(i) != this.d.length) {
                immutableSetF = ImmutableSet.f(this.f3895b, this.f3894a);
                this.f3895b = immutableSetF.size();
            } else {
                int i2 = this.f3895b;
                Object[] objArrCopyOf = this.f3894a;
                int length = objArrCopyOf.length;
                if (i2 < (length >> 1) + (length >> 2)) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, i2);
                }
                int i3 = this.e;
                immutableSetF = new d5<>(objArrCopyOf, this.d, i3, r5.length - 1, this.f3895b);
            }
            this.c = true;
            this.d = null;
            return immutableSetF;
        }
    }
}
