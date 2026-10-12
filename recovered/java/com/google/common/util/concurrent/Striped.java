package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.collect.MapMaker;
import com.google.common.math.IntMath;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public abstract class Striped<L> {

    /* renamed from: a, reason: collision with root package name */
    public static final Supplier f4993a = new e();

    /* renamed from: b, reason: collision with root package name */
    public static final Supplier f4994b = new f();

    public static class j extends Semaphore {
    }

    public abstract int a(Object obj);

    public abstract L get(Object obj);

    public abstract L getAt(int i2);

    public abstract int size();

    public /* synthetic */ Striped(int i2) {
        this();
    }

    private Striped() {
    }

    public Iterable<L> bulkGet(Iterable<?> iterable) {
        Object[] array = Iterables.toArray(iterable, Object.class);
        if (array.length == 0) {
            return ImmutableList.of();
        }
        int[] iArr = new int[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            iArr[i2] = a(array[i2]);
        }
        Arrays.sort(iArr);
        int i3 = iArr[0];
        array[0] = getAt(i3);
        for (int i4 = 1; i4 < array.length; i4++) {
            int i5 = iArr[i4];
            if (i5 == i3) {
                array[i4] = array[i4 - 1];
            } else {
                array[i4] = getAt(i5);
                i3 = i5;
            }
        }
        return Collections.unmodifiableList(Arrays.asList(array));
    }

    public static Striped<Lock> lock(int i2) {
        return new g(i2, new a());
    }

    public static class a implements Supplier<Lock> {
        @Override // com.google.common.base.Supplier
        public Lock get() {
            return new i();
        }
    }

    public static Striped<Lock> lazyWeakLock(int i2) {
        b bVar = new b();
        return i2 < 1024 ? new l(i2, bVar) : new h(i2, bVar);
    }

    public static class b implements Supplier<Lock> {
        @Override // com.google.common.base.Supplier
        public Lock get() {
            return new ReentrantLock(false);
        }
    }

    public static Striped<Semaphore> semaphore(int i2, int i3) {
        return new g(i2, new c(i3));
    }

    public static class c implements Supplier<Semaphore> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f4995a;

        public c(int i) {
            this.f4995a = i;
        }

        @Override // com.google.common.base.Supplier
        public Semaphore get() {
            return new j(this.f4995a, false);
        }
    }

    public static Striped<Semaphore> lazyWeakSemaphore(int i2, int i3) {
        d dVar = new d(i3);
        return i2 < 1024 ? new l(i2, dVar) : new h(i2, dVar);
    }

    public static class d implements Supplier<Semaphore> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f4996a;

        public d(int i) {
            this.f4996a = i;
        }

        @Override // com.google.common.base.Supplier
        public Semaphore get() {
            return new Semaphore(this.f4996a, false);
        }
    }

    public static Striped<ReadWriteLock> readWriteLock(int i2) {
        return new g(i2, f4993a);
    }

    public static Striped<ReadWriteLock> lazyWeakReadWriteLock(int i2) {
        Supplier supplier = f4994b;
        return i2 < 1024 ? new l(i2, supplier) : new h(i2, supplier);
    }

    public static class e implements Supplier<ReadWriteLock> {
        @Override // com.google.common.base.Supplier
        public ReadWriteLock get() {
            return new ReentrantReadWriteLock();
        }
    }

    public static class f implements Supplier<ReadWriteLock> {
        @Override // com.google.common.base.Supplier
        public ReadWriteLock get() {
            return new o();
        }
    }

    public static final class o implements ReadWriteLock {

        /* renamed from: a, reason: collision with root package name */
        public final ReentrantReadWriteLock f5001a = new ReentrantReadWriteLock();

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock readLock() {
            return new n(this.f5001a.readLock(), this);
        }

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock writeLock() {
            return new n(this.f5001a.writeLock(), this);
        }
    }

    public static final class n extends s {

        /* renamed from: a, reason: collision with root package name */
        public final Lock f5000a;

        public n(Lock lock, o oVar) {
            this.f5000a = lock;
        }

        @Override // com.google.common.util.concurrent.s
        public final Lock a() {
            return this.f5000a;
        }

        @Override // com.google.common.util.concurrent.s, java.util.concurrent.locks.Lock
        public Condition newCondition() {
            return new m(this.f5000a.newCondition());
        }
    }

    public static final class m extends q {

        /* renamed from: a, reason: collision with root package name */
        public final Condition f4999a;

        public m(Condition condition) {
            this.f4999a = condition;
        }

        @Override // com.google.common.util.concurrent.q
        public final Condition a() {
            return this.f4999a;
        }
    }

    public static abstract class k<L> extends Striped<L> {
        public final int c;

        /* JADX WARN: Multi-variable type inference failed */
        public k(int i) {
            super(0 == true ? 1 : 0);
            Preconditions.checkArgument(i > 0, "Stripes must be positive");
            this.c = i > 1073741824 ? -1 : (1 << IntMath.log2(i, RoundingMode.CEILING)) - 1;
        }

        @Override // com.google.common.util.concurrent.Striped
        public final int a(Object obj) {
            int iHashCode = obj.hashCode();
            int i = iHashCode ^ ((iHashCode >>> 20) ^ (iHashCode >>> 12));
            return ((i >>> 4) ^ ((i >>> 7) ^ i)) & this.c;
        }

        @Override // com.google.common.util.concurrent.Striped
        public final L get(Object obj) {
            return getAt(a(obj));
        }
    }

    public static class g<L> extends k<L> {
        public final Object[] d;

        public g(int i, Supplier supplier) {
            super(i);
            int i2 = 0;
            Preconditions.checkArgument(i <= 1073741824, "Stripes must be <= 2^30)");
            this.d = new Object[this.c + 1];
            while (true) {
                Object[] objArr = this.d;
                if (i2 >= objArr.length) {
                    return;
                }
                objArr[i2] = supplier.get();
                i2++;
            }
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            return (L) this.d[i];
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.d.length;
        }
    }

    @VisibleForTesting
    public static class l<L> extends k<L> {
        public final AtomicReferenceArray d;
        public final Supplier e;
        public final int f;

        /* renamed from: g, reason: collision with root package name */
        public final ReferenceQueue f4997g;

        public l(int i, Supplier supplier) {
            super(i);
            this.f4997g = new ReferenceQueue();
            int i2 = this.c;
            int i3 = i2 == -1 ? Integer.MAX_VALUE : i2 + 1;
            this.f = i3;
            this.d = new AtomicReferenceArray(i3);
            this.e = supplier;
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            int i2;
            if (this.f != Integer.MAX_VALUE) {
                Preconditions.checkElementIndex(i, size());
            }
            AtomicReferenceArray atomicReferenceArray = this.d;
            a aVar = (a) atomicReferenceArray.get(i);
            L l = aVar == null ? null : aVar.get();
            if (l != null) {
                return l;
            }
            L l2 = (L) this.e.get();
            ReferenceQueue referenceQueue = this.f4997g;
            a aVar2 = new a(l2, referenceQueue, i);
            while (!atomicReferenceArray.compareAndSet(i, aVar, aVar2)) {
                if (atomicReferenceArray.get(i) != aVar) {
                    aVar = (a) atomicReferenceArray.get(i);
                    L l3 = aVar == null ? null : aVar.get();
                    if (l3 != null) {
                        return l3;
                    }
                }
            }
            while (true) {
                Reference referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return l2;
                }
                a aVar3 = (a) referencePoll;
                do {
                    i2 = aVar3.f4998a;
                    if (atomicReferenceArray.compareAndSet(i2, aVar3, null)) {
                        break;
                    }
                } while (atomicReferenceArray.get(i2) == aVar3);
            }
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.f;
        }

        public static final class a<L> extends WeakReference<L> {

            /* renamed from: a, reason: collision with root package name */
            public final int f4998a;

            public a(Object obj, ReferenceQueue referenceQueue, int i) {
                super(obj, referenceQueue);
                this.f4998a = i;
            }
        }
    }

    @VisibleForTesting
    public static class h<L> extends k<L> {
        public final ConcurrentMap d;
        public final Supplier e;
        public final int f;

        public h(int i, Supplier supplier) {
            super(i);
            int i2 = this.c;
            this.f = i2 == -1 ? Integer.MAX_VALUE : i2 + 1;
            this.e = supplier;
            this.d = new MapMaker().weakValues().makeMap();
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            if (this.f != Integer.MAX_VALUE) {
                Preconditions.checkElementIndex(i, size());
            }
            Integer numValueOf = Integer.valueOf(i);
            ConcurrentMap concurrentMap = this.d;
            L l = (L) concurrentMap.get(numValueOf);
            if (l != null) {
                return l;
            }
            Object obj = this.e.get();
            return (L) MoreObjects.firstNonNull(concurrentMap.putIfAbsent(Integer.valueOf(i), obj), obj);
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.f;
        }
    }

    public static class i extends ReentrantLock {
        public i() {
            super(false);
        }
    }
}
