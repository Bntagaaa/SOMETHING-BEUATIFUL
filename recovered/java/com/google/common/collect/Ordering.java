package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class Ordering<T> implements Comparator<T> {
    @Override // java.util.Comparator
    @CanIgnoreReturnValue
    public abstract int compare(@NullableDecl T t, @NullableDecl T t2);

    @GwtCompatible(serializable = true)
    public static <C extends Comparable> Ordering<C> natural() {
        return o4.c;
    }

    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> from(Comparator<T> comparator) {
        return comparator instanceof Ordering ? (Ordering) comparator : new p0(comparator);
    }

    @GwtCompatible(serializable = true)
    @Deprecated
    public static <T> Ordering<T> from(Ordering<T> ordering) {
        return (Ordering) Preconditions.checkNotNull(ordering);
    }

    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> explicit(List<T> list) {
        return new j1(list);
    }

    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> explicit(T t, T... tArr) {
        return explicit(Lists.asList(t, tArr));
    }

    @GwtCompatible(serializable = true)
    public static Ordering<Object> allEqual() {
        return w.f4371a;
    }

    @GwtCompatible(serializable = true)
    public static Ordering<Object> usingToString() {
        return s6.f4338a;
    }

    public static Ordering<Object> arbitrary() {
        return b.f4082a;
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static final Ordering f4082a = new a();

        private b() {
        }
    }

    public <E extends T> List<E> sortedCopy(Iterable<E> iterable) {
        Object[] array = (iterable instanceof Collection ? (Collection) iterable : Lists.newArrayList(iterable.iterator())).toArray();
        Arrays.sort(array, this);
        return Lists.newArrayList(Arrays.asList(array));
    }

    @VisibleForTesting
    public static class a extends Ordering<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final AtomicInteger f4080a = new AtomicInteger(0);

        /* renamed from: b, reason: collision with root package name */
        public final ConcurrentMap f4081b = new MapMaker().weakKeys().makeMap();

        public String toString() {
            return "Ordering.arbitrary()";
        }

        @Override // com.google.common.collect.Ordering, java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == obj2) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            int iIdentityHashCode = System.identityHashCode(obj);
            int iIdentityHashCode2 = System.identityHashCode(obj2);
            if (iIdentityHashCode != iIdentityHashCode2) {
                return iIdentityHashCode < iIdentityHashCode2 ? -1 : 1;
            }
            ConcurrentMap concurrentMap = this.f4081b;
            Integer numValueOf = (Integer) concurrentMap.get(obj);
            AtomicInteger atomicInteger = this.f4080a;
            if (numValueOf == null) {
                numValueOf = Integer.valueOf(atomicInteger.getAndIncrement());
                Integer num = (Integer) concurrentMap.putIfAbsent(obj, numValueOf);
                if (num != null) {
                    numValueOf = num;
                }
            }
            Integer numValueOf2 = (Integer) concurrentMap.get(obj2);
            if (numValueOf2 == null) {
                numValueOf2 = Integer.valueOf(atomicInteger.getAndIncrement());
                Integer num2 = (Integer) concurrentMap.putIfAbsent(obj2, numValueOf2);
                if (num2 != null) {
                    numValueOf2 = num2;
                }
            }
            int iCompareTo = numValueOf.compareTo(numValueOf2);
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            throw new AssertionError();
        }
    }

    @GwtCompatible(serializable = true)
    public <S extends T> Ordering<S> reverse() {
        return new j5(this);
    }

    @GwtCompatible(serializable = true)
    public <S extends T> Ordering<S> nullsFirst() {
        return new p4(this);
    }

    @GwtCompatible(serializable = true)
    public <S extends T> Ordering<S> nullsLast() {
        return new q4(this);
    }

    @GwtCompatible(serializable = true)
    public <F> Ordering<F> onResultOf(Function<F, ? extends T> function) {
        return new e0(function, this);
    }

    @GwtCompatible(serializable = true)
    public <U extends T> Ordering<U> compound(Comparator<? super U> comparator) {
        return new q0(this, (Comparator) Preconditions.checkNotNull(comparator));
    }

    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> compound(Iterable<? extends Comparator<? super T>> iterable) {
        return new q0(iterable);
    }

    @GwtCompatible(serializable = true)
    public <S extends T> Ordering<Iterable<S>> lexicographical() {
        return new e3(this);
    }

    public <E extends T> E min(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) min(next, it.next());
        }
        return next;
    }

    public <E extends T> E min(Iterable<E> iterable) {
        return (E) min(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E min(@NullableDecl E e, @NullableDecl E e2) {
        return compare(e, e2) <= 0 ? e : e2;
    }

    public <E extends T> E min(@NullableDecl E e, @NullableDecl E e2, @NullableDecl E e3, E... eArr) {
        E e4 = (E) min(min(e, e2), e3);
        for (E e5 : eArr) {
            e4 = (E) min(e4, e5);
        }
        return e4;
    }

    public <E extends T> E max(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) max(next, it.next());
        }
        return next;
    }

    public <E extends T> E max(Iterable<E> iterable) {
        return (E) max(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E max(@NullableDecl E e, @NullableDecl E e2) {
        return compare(e, e2) >= 0 ? e : e2;
    }

    public <E extends T> E max(@NullableDecl E e, @NullableDecl E e2, @NullableDecl E e3, E... eArr) {
        E e4 = (E) max(max(e, e2), e3);
        for (E e5 : eArr) {
            e4 = (E) max(e4, e5);
        }
        return e4;
    }

    public <E extends T> List<E> leastOf(Iterable<E> iterable, int i) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= i * 2) {
                Object[] array = collection.toArray();
                Arrays.sort(array, this);
                if (array.length > i) {
                    array = Arrays.copyOf(array, i);
                }
                return Collections.unmodifiableList(Arrays.asList(array));
            }
        }
        return leastOf(iterable.iterator(), i);
    }

    public <E extends T> List<E> leastOf(Iterator<E> it, int i) {
        Preconditions.checkNotNull(it);
        g0.b(i, "k");
        if (i == 0 || !it.hasNext()) {
            return Collections.EMPTY_LIST;
        }
        if (i >= 1073741823) {
            ArrayList arrayListNewArrayList = Lists.newArrayList(it);
            Collections.sort(arrayListNewArrayList, this);
            if (arrayListNewArrayList.size() > i) {
                arrayListNewArrayList.subList(i, arrayListNewArrayList.size()).clear();
            }
            arrayListNewArrayList.trimToSize();
            return Collections.unmodifiableList(arrayListNewArrayList);
        }
        b6 b6VarLeast = b6.least(i, this);
        b6VarLeast.offerAll(it);
        return b6VarLeast.topK();
    }

    public <E extends T> List<E> greatestOf(Iterable<E> iterable, int i) {
        return reverse().leastOf(iterable, i);
    }

    public <E extends T> List<E> greatestOf(Iterator<E> it, int i) {
        return reverse().leastOf(it, i);
    }

    public <E extends T> ImmutableList<E> immutableSortedCopy(Iterable<E> iterable) {
        return ImmutableList.sortedCopyOf(this, iterable);
    }

    public boolean isOrdered(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (compare(next, next2) > 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public boolean isStrictlyOrdered(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (compare(next, next2) >= 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    @Deprecated
    public int binarySearch(List<? extends T> list, @NullableDecl T t) {
        return Collections.binarySearch(list, t, this);
    }

    @VisibleForTesting
    public static class c extends ClassCastException {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4083a;

        public c(Object obj) {
            super("Cannot compare value: " + obj);
            this.f4083a = obj;
        }
    }
}
