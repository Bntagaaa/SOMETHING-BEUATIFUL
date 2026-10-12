package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@DoNotMock("Use ImmutableList.of or another implementation")
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final Object[] f3893a = new Object[0];

    public Object[] b() {
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(@NullableDecl Object obj);

    public abstract boolean isPartialView();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract UnmodifiableIterator<E> iterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f3893a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public final <T> T[] toArray(T[] tArr) {
        Preconditions.checkNotNull(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] objArrB = b();
            if (objArrB != null) {
                return (T[]) Arrays.copyOfRange(objArrB, d(), c(), tArr.getClass());
            }
            tArr = (T[]) ObjectArrays.newArray(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        a(0, tArr);
        return tArr;
    }

    public static abstract class a<E> extends Builder<E> {

        /* renamed from: a, reason: collision with root package name */
        public Object[] f3894a;

        /* renamed from: b, reason: collision with root package name */
        public int f3895b;
        public boolean c;

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E... eArr) {
            ObjectArrays.a(eArr.length, eArr);
            b(this.f3895b + eArr.length);
            System.arraycopy(eArr, 0, this.f3894a, this.f3895b, eArr.length);
            this.f3895b += eArr.length;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ Builder add(Object obj) {
            return add((a<E>) obj);
        }

        public a(int i) {
            g0.b(i, "initialCapacity");
            this.f3894a = new Object[i];
            this.f3895b = 0;
        }

        public final void b(int i) {
            Object[] objArr = this.f3894a;
            if (objArr.length < i) {
                this.f3894a = Arrays.copyOf(objArr, Builder.a(objArr.length, i));
                this.c = false;
            } else if (this.c) {
                this.f3894a = (Object[]) objArr.clone();
                this.c = false;
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public a<E> add(E e) {
            Preconditions.checkNotNull(e);
            b(this.f3895b + 1);
            Object[] objArr = this.f3894a;
            int i = this.f3895b;
            this.f3895b = i + 1;
            objArr[i] = e;
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                b(collection.size() + this.f3895b);
                if (collection instanceof ImmutableCollection) {
                    this.f3895b = ((ImmutableCollection) collection).a(this.f3895b, this.f3894a);
                    return this;
                }
            }
            super.addAll(iterable);
            return this;
        }
    }

    public int d() {
        throw new UnsupportedOperationException();
    }

    public int c() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> asList() {
        if (isEmpty()) {
            return ImmutableList.of();
        }
        Object[] array = toArray();
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f3896b;
        return ImmutableList.e(array.length, array);
    }

    public int a(int i, Object[] objArr) {
        UnmodifiableIterator<E> it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    @DoNotMock
    public static abstract class Builder<E> {
        @CanIgnoreReturnValue
        public abstract Builder<E> add(E e);

        public abstract ImmutableCollection<E> build();

        public static int a(int i, int i2) {
            if (i2 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = i + (i >> 1) + 1;
            if (iHighestOneBit < i2) {
                iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }

        @CanIgnoreReturnValue
        public Builder<E> add(E... eArr) {
            for (E e : eArr) {
                add((Builder<E>) e);
            }
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                add((Builder<E>) it.next());
            }
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterator<? extends E> it) {
            while (it.hasNext()) {
                add((Builder<E>) it.next());
            }
            return this;
        }
    }
}
