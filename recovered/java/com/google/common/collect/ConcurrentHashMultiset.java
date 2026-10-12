package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
public final class ConcurrentHashMultiset<E> extends m<E> implements Serializable {
    public final transient ConcurrentMap c;

    @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@NullableDecl Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    public static class b {
        private b() {
        }

        static {
            k5.a(ConcurrentHashMultiset.class, "countMap");
        }
    }

    public static <E> ConcurrentHashMultiset<E> create() {
        return new ConcurrentHashMultiset<>(new ConcurrentHashMap());
    }

    public static <E> ConcurrentHashMultiset<E> create(Iterable<? extends E> iterable) {
        ConcurrentHashMultiset<E> concurrentHashMultisetCreate = create();
        Iterables.addAll(concurrentHashMultisetCreate, iterable);
        return concurrentHashMultisetCreate;
    }

    @Beta
    public static <E> ConcurrentHashMultiset<E> create(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        return new ConcurrentHashMultiset<>(concurrentMap);
    }

    public ConcurrentHashMultiset(ConcurrentMap concurrentMap) {
        Preconditions.checkArgument(concurrentMap.isEmpty(), "the backing map (%s) must be empty", concurrentMap);
        this.c = concurrentMap;
    }

    @Override // com.google.common.collect.Multiset
    public int count(@NullableDecl Object obj) {
        AtomicInteger atomicInteger = (AtomicInteger) Maps.h(this.c, obj);
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        long j = 0;
        while (this.c.values().iterator().hasNext()) {
            j += ((AtomicInteger) r0.next()).get();
        }
        return Ints.saturatedCast(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return e().toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) e().toArray(tArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ArrayList e() {
        ArrayList arrayListNewArrayListWithExpectedSize = Lists.newArrayListWithExpectedSize(size());
        for (Multiset.Entry entry : entrySet()) {
            Object element = entry.getElement();
            for (int count = entry.getCount(); count > 0; count--) {
                arrayListNewArrayListWithExpectedSize.add(element);
            }
        }
        return arrayListNewArrayListWithExpectedSize;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int add(E e, int i) {
        ConcurrentMap concurrentMap;
        AtomicInteger atomicInteger;
        int i2;
        AtomicInteger atomicInteger2;
        Preconditions.checkNotNull(e);
        if (i == 0) {
            return count(e);
        }
        g0.d(i, "occurences");
        do {
            concurrentMap = this.c;
            atomicInteger = (AtomicInteger) Maps.h(concurrentMap, e);
            if (atomicInteger == null && (atomicInteger = (AtomicInteger) concurrentMap.putIfAbsent(e, new AtomicInteger(i))) == null) {
                return 0;
            }
            do {
                i2 = atomicInteger.get();
                if (i2 == 0) {
                    atomicInteger2 = new AtomicInteger(i);
                    if (concurrentMap.putIfAbsent(e, atomicInteger2) == null) {
                        break;
                    }
                } else {
                    try {
                    } catch (ArithmeticException unused) {
                        throw new IllegalArgumentException(_COROUTINE.a.c(i, i2, "Overflow adding ", " occurrences to a count of "));
                    }
                }
            } while (!atomicInteger.compareAndSet(i2, IntMath.checkedAdd(i2, i)));
            return i2;
        } while (!concurrentMap.replace(e, atomicInteger, atomicInteger2));
        return 0;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int remove(@NullableDecl Object obj, int i) {
        int i2;
        int iMax;
        if (i == 0) {
            return count(obj);
        }
        g0.d(i, "occurences");
        ConcurrentMap concurrentMap = this.c;
        AtomicInteger atomicInteger = (AtomicInteger) Maps.h(concurrentMap, obj);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 == 0) {
                return 0;
            }
            iMax = Math.max(0, i2 - i);
        } while (!atomicInteger.compareAndSet(i2, iMax));
        if (iMax == 0) {
            concurrentMap.remove(obj, atomicInteger);
        }
        return i2;
    }

    @CanIgnoreReturnValue
    public boolean removeExactly(@NullableDecl Object obj, int i) {
        int i2;
        int i3;
        if (i == 0) {
            return true;
        }
        g0.d(i, "occurences");
        ConcurrentMap concurrentMap = this.c;
        AtomicInteger atomicInteger = (AtomicInteger) Maps.h(concurrentMap, obj);
        if (atomicInteger == null) {
            return false;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 < i) {
                return false;
            }
            i3 = i2 - i;
        } while (!atomicInteger.compareAndSet(i2, i3));
        if (i3 == 0) {
            concurrentMap.remove(obj, atomicInteger);
        }
        return true;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int setCount(E e, int i) {
        ConcurrentMap concurrentMap;
        AtomicInteger atomicInteger;
        int i2;
        AtomicInteger atomicInteger2;
        Preconditions.checkNotNull(e);
        g0.b(i, "count");
        do {
            concurrentMap = this.c;
            atomicInteger = (AtomicInteger) Maps.h(concurrentMap, e);
            if (atomicInteger == null && (i == 0 || (atomicInteger = (AtomicInteger) concurrentMap.putIfAbsent(e, new AtomicInteger(i))) == null)) {
                return 0;
            }
            do {
                i2 = atomicInteger.get();
                if (i2 == 0) {
                    if (i == 0) {
                        return 0;
                    }
                    atomicInteger2 = new AtomicInteger(i);
                    if (concurrentMap.putIfAbsent(e, atomicInteger2) == null) {
                        return 0;
                    }
                }
            } while (!atomicInteger.compareAndSet(i2, i));
            if (i == 0) {
                concurrentMap.remove(e, atomicInteger);
            }
            return i2;
        } while (!concurrentMap.replace(e, atomicInteger, atomicInteger2));
        return 0;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public boolean setCount(E e, int i, int i2) {
        Preconditions.checkNotNull(e);
        g0.b(i, "oldCount");
        g0.b(i2, "newCount");
        ConcurrentMap concurrentMap = this.c;
        AtomicInteger atomicInteger = (AtomicInteger) Maps.h(concurrentMap, e);
        if (atomicInteger != null) {
            int i3 = atomicInteger.get();
            if (i3 != i) {
                return false;
            }
            if (i3 == 0) {
                if (i2 == 0) {
                    concurrentMap.remove(e, atomicInteger);
                    return true;
                }
                AtomicInteger atomicInteger2 = new AtomicInteger(i2);
                if (concurrentMap.putIfAbsent(e, atomicInteger2) != null && !concurrentMap.replace(e, atomicInteger, atomicInteger2)) {
                    return false;
                }
            } else {
                if (!atomicInteger.compareAndSet(i3, i2)) {
                    return false;
                }
                if (i2 == 0) {
                    concurrentMap.remove(e, atomicInteger);
                }
            }
        } else {
            if (i != 0) {
                return false;
            }
            if (i2 != 0 && concurrentMap.putIfAbsent(e, new AtomicInteger(i2)) != null) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.common.collect.m
    public final Set a() {
        return new r0(this.c.keySet());
    }

    @Override // com.google.common.collect.m
    public final Iterator c() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.m
    @Deprecated
    public Set<Multiset.Entry<E>> createEntrySet() {
        return new a();
    }

    @Override // com.google.common.collect.m
    public final int b() {
        return this.c.size();
    }

    @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.c.isEmpty();
    }

    @Override // com.google.common.collect.m
    public final Iterator d() {
        return new t0(this, new s0(this));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return Multisets.c(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.c.clear();
    }

    public class a extends m<E>.b {
        public a() {
            super();
        }

        @Override // com.google.common.collect.m.b, com.google.common.collect.Multisets.h
        public final Multiset a() {
            return ConcurrentHashMultiset.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            ArrayList arrayListNewArrayListWithExpectedSize = Lists.newArrayListWithExpectedSize(size());
            Iterators.addAll(arrayListNewArrayListWithExpectedSize, iterator());
            return arrayListNewArrayListWithExpectedSize.toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            ArrayList arrayListNewArrayListWithExpectedSize = Lists.newArrayListWithExpectedSize(size());
            Iterators.addAll(arrayListNewArrayListWithExpectedSize, iterator());
            return (T[]) arrayListNewArrayListWithExpectedSize.toArray(tArr);
        }
    }
}
