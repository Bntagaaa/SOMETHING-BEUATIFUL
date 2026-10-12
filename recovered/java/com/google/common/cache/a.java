package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.collect.AbstractSequentialIterator;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.primitives.Ints;
import com.google.common.util.concurrent.ExecutionError;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.common.util.concurrent.Uninterruptibles;
import java.io.Serializable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
class a<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {
    public static final Logger w = Logger.getLogger(a.class.getName());
    public static final C0094a x = new C0094a();
    public static final Queue y = new b();

    /* renamed from: a, reason: collision with root package name */
    public final int f3779a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3780b;
    public final r[] c;
    public final int d;
    public final Equivalence e;
    public final Equivalence f;

    /* renamed from: g, reason: collision with root package name */
    public final t f3781g;
    public final t h;
    public final long i;
    public final Weigher j;
    public final long k;
    public final long l;
    public final long m;
    public final AbstractQueue n;
    public final RemovalListener o;
    public final Ticker p;
    public final f q;
    public final AbstractCache.StatsCounter r;
    public final CacheLoader s;
    public Set t;
    public Collection u;
    public Set v;

    /* renamed from: com.google.common.cache.a$a, reason: collision with other inner class name */
    public static class C0094a implements a0<Object, Object> {
        @Override // com.google.common.cache.a.a0
        public a0<Object, Object> copyFor(ReferenceQueue<Object> referenceQueue, @NullableDecl Object obj, com.google.common.cache.f<Object, Object> fVar) {
            return this;
        }

        @Override // com.google.common.cache.a.a0
        public Object get() {
            return null;
        }

        @Override // com.google.common.cache.a.a0
        public com.google.common.cache.f<Object, Object> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.a.a0
        public int getWeight() {
            return 0;
        }

        @Override // com.google.common.cache.a.a0
        public boolean isActive() {
            return false;
        }

        @Override // com.google.common.cache.a.a0
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.a.a0
        public void notifyNewValue(Object obj) {
        }

        @Override // com.google.common.cache.a.a0
        public Object waitForValue() {
            return null;
        }
    }

    public interface a0<K, V> {
        a0<K, V> copyFor(ReferenceQueue<V> referenceQueue, @NullableDecl V v, com.google.common.cache.f<K, V> fVar);

        @NullableDecl
        V get();

        @NullableDecl
        com.google.common.cache.f<K, V> getEntry();

        int getWeight();

        boolean isActive();

        boolean isLoading();

        void notifyNewValue(@NullableDecl V v);

        V waitForValue() throws ExecutionException;
    }

    public static class p<K, V> extends ForwardingCache<K, V> implements Serializable {
        @Override // com.google.common.cache.ForwardingCache, com.google.common.collect.ForwardingObject
        public Cache<K, V> delegate() {
            return null;
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class q implements com.google.common.cache.f<Object, Object> {

        /* renamed from: a, reason: collision with root package name */
        public static final q f3813a = new q("INSTANCE", 0);

        @Override // com.google.common.cache.f
        public long getAccessTime() {
            return 0L;
        }

        @Override // com.google.common.cache.f
        public int getHash() {
            return 0;
        }

        @Override // com.google.common.cache.f
        public Object getKey() {
            return null;
        }

        @Override // com.google.common.cache.f
        public com.google.common.cache.f<Object, Object> getNext() {
            return null;
        }

        @Override // com.google.common.cache.f
        public com.google.common.cache.f<Object, Object> getNextInAccessQueue() {
            return this;
        }

        @Override // com.google.common.cache.f
        public com.google.common.cache.f<Object, Object> getNextInWriteQueue() {
            return this;
        }

        @Override // com.google.common.cache.f
        public com.google.common.cache.f<Object, Object> getPreviousInAccessQueue() {
            return this;
        }

        @Override // com.google.common.cache.f
        public com.google.common.cache.f<Object, Object> getPreviousInWriteQueue() {
            return this;
        }

        @Override // com.google.common.cache.f
        public a0<Object, Object> getValueReference() {
            return null;
        }

        @Override // com.google.common.cache.f
        public long getWriteTime() {
            return 0L;
        }

        @Override // com.google.common.cache.f
        public void setAccessTime(long j) {
        }

        @Override // com.google.common.cache.f
        public void setNextInAccessQueue(com.google.common.cache.f<Object, Object> fVar) {
        }

        @Override // com.google.common.cache.f
        public void setNextInWriteQueue(com.google.common.cache.f<Object, Object> fVar) {
        }

        @Override // com.google.common.cache.f
        public void setPreviousInAccessQueue(com.google.common.cache.f<Object, Object> fVar) {
        }

        @Override // com.google.common.cache.f
        public void setPreviousInWriteQueue(com.google.common.cache.f<Object, Object> fVar) {
        }

        @Override // com.google.common.cache.f
        public void setValueReference(a0<Object, Object> a0Var) {
        }

        @Override // com.google.common.cache.f
        public void setWriteTime(long j) {
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.cache.a, java.util.AbstractMap] */
    public a(CacheBuilder cacheBuilder, CacheLoader cacheLoader) {
        long j2;
        Collection concurrentLinkedQueue;
        ?? abstractMap = new AbstractMap();
        int i2 = cacheBuilder.c;
        abstractMap.d = Math.min(i2 == -1 ? 4 : i2, 65536);
        t tVar = cacheBuilder.f3754g;
        t.C0101a c0101a = t.f3818a;
        t tVar2 = (t) MoreObjects.firstNonNull(tVar, c0101a);
        abstractMap.f3781g = tVar2;
        abstractMap.h = (t) MoreObjects.firstNonNull(cacheBuilder.h, c0101a);
        abstractMap.e = (Equivalence) MoreObjects.firstNonNull(null, ((t) MoreObjects.firstNonNull(cacheBuilder.f3754g, c0101a)).a());
        abstractMap.f = (Equivalence) MoreObjects.firstNonNull(null, ((t) MoreObjects.firstNonNull(cacheBuilder.h, c0101a)).a());
        if (cacheBuilder.i == 0 || cacheBuilder.j == 0) {
            j2 = 0;
        } else {
            j2 = cacheBuilder.f == null ? cacheBuilder.d : cacheBuilder.e;
        }
        abstractMap.i = j2;
        Weigher weigher = cacheBuilder.f;
        CacheBuilder.e eVar = CacheBuilder.e.f3756a;
        Weigher weigher2 = (Weigher) MoreObjects.firstNonNull(weigher, eVar);
        abstractMap.j = weigher2;
        long j3 = cacheBuilder.j;
        abstractMap.k = j3 == -1 ? 0L : j3;
        long j4 = cacheBuilder.i;
        abstractMap.l = j4 == -1 ? 0L : j4;
        long j5 = cacheBuilder.k;
        j5 = j5 == -1 ? 0L : j5;
        abstractMap.m = j5;
        RemovalListener removalListener = cacheBuilder.l;
        CacheBuilder.d dVar = CacheBuilder.d.f3755a;
        RemovalListener removalListener2 = (RemovalListener) MoreObjects.firstNonNull(removalListener, dVar);
        abstractMap.o = removalListener2;
        if (removalListener2 != dVar) {
            concurrentLinkedQueue = new ConcurrentLinkedQueue();
        } else {
            concurrentLinkedQueue = y;
        }
        abstractMap.n = (AbstractQueue) concurrentLinkedQueue;
        int i3 = 0;
        int i4 = 1;
        boolean z2 = (abstractMap.d() || (j5 > 0L ? 1 : (j5 == 0L ? 0 : -1)) > 0) || abstractMap.c();
        Ticker ticker = cacheBuilder.m;
        abstractMap.p = ticker == null ? z2 ? Ticker.systemTicker() : CacheBuilder.r : ticker;
        abstractMap.q = f.f3792a[(tVar2 == t.c ? (char) 4 : (char) 0) | ((abstractMap.c() || abstractMap.b() || abstractMap.c()) ? (char) 1 : (char) 0) | (abstractMap.d() || abstractMap.d() || (j5 > 0L ? 1 : (j5 == 0L ? 0 : -1)) > 0 ? 2 : 0)];
        abstractMap.r = (AbstractCache.StatsCounter) cacheBuilder.n.get();
        abstractMap.s = cacheLoader;
        int i5 = cacheBuilder.f3753b;
        int iMin = Math.min(i5 == -1 ? 16 : i5, 1073741824);
        if (abstractMap.b() && weigher2 == eVar) {
            iMin = (int) Math.min(iMin, j2);
        }
        int i6 = 1;
        int i7 = 0;
        while (i6 < abstractMap.d && (!abstractMap.b() || i6 * 20 <= abstractMap.i)) {
            i7++;
            i6 <<= 1;
        }
        abstractMap.f3780b = 32 - i7;
        abstractMap.f3779a = i6 - 1;
        abstractMap.c = new r[i6];
        int i8 = iMin / i6;
        while (i4 < (i8 * i6 < iMin ? i8 + 1 : i8)) {
            i4 <<= 1;
        }
        if (abstractMap.b()) {
            long j6 = abstractMap.i;
            long j7 = i6;
            long j8 = (j6 / j7) + 1;
            long j9 = j6 % j7;
            while (true) {
                r[] rVarArr = abstractMap.c;
                if (i3 >= rVarArr.length) {
                    return;
                }
                if (i3 == j9) {
                    j8--;
                }
                long j10 = j8;
                int i9 = i4;
                rVarArr[i3] = new r(abstractMap, i9, j10, (AbstractCache.StatsCounter) cacheBuilder.n.get());
                i3++;
                i4 = i9;
                j8 = j10;
            }
        } else {
            int i10 = i4;
            a<K, V> aVar = abstractMap;
            while (true) {
                r[] rVarArr2 = aVar.c;
                if (i3 >= rVarArr2.length) {
                    return;
                }
                rVarArr2[i3] = new r(aVar, i10, -1L, (AbstractCache.StatsCounter) cacheBuilder.n.get());
                i3++;
                aVar = this;
            }
        }
    }

    public final boolean b() {
        return this.i >= 0;
    }

    public final boolean d() {
        return this.l > 0;
    }

    public final boolean c() {
        return this.k > 0;
    }

    public static class r<K, V> extends ReentrantLock {

        /* renamed from: a, reason: collision with root package name */
        public final a f3814a;

        /* renamed from: b, reason: collision with root package name */
        public volatile int f3815b;
        public long c;
        public int d;
        public int e;
        public volatile AtomicReferenceArray f;

        /* renamed from: g, reason: collision with root package name */
        public final long f3816g;
        public final ReferenceQueue h;
        public final ReferenceQueue i;
        public final AbstractQueue j;
        public final AtomicInteger k = new AtomicInteger();
        public final AbstractQueue l;
        public final AbstractQueue m;
        public final AbstractCache.StatsCounter n;

        public final Object x(com.google.common.cache.f fVar, Object obj, int i, Object obj2, long j, CacheLoader cacheLoader) {
            Object objQ;
            a aVar = this.f3814a;
            return (aVar.m <= 0 || j - fVar.getWriteTime() <= aVar.m || fVar.getValueReference().isLoading() || (objQ = q(obj, i, cacheLoader, true)) == null) ? obj2 : objQ;
        }

        public final void o(com.google.common.cache.f fVar, long j) {
            if (this.f3814a.c()) {
                fVar.setAccessTime(j);
            }
            this.m.add(fVar);
        }

        public final void p(com.google.common.cache.f fVar, long j) {
            if (this.f3814a.c()) {
                fVar.setAccessTime(j);
            }
            this.j.add(fVar);
        }

        public r(a aVar, int i, long j, AbstractCache.StatsCounter statsCounter) {
            Collection concurrentLinkedQueue;
            Collection k0Var;
            Collection eVar;
            this.f3814a = aVar;
            this.f3816g = j;
            this.n = (AbstractCache.StatsCounter) Preconditions.checkNotNull(statsCounter);
            AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(i);
            int length = (atomicReferenceArray.length() * 3) / 4;
            this.e = length;
            if (aVar.j == CacheBuilder.e.f3756a && length == j) {
                this.e = length + 1;
            }
            this.f = atomicReferenceArray;
            t.C0101a c0101a = t.f3818a;
            this.h = aVar.f3781g != c0101a ? new ReferenceQueue() : null;
            this.i = aVar.h != c0101a ? new ReferenceQueue() : null;
            if (!aVar.c() && !aVar.b()) {
                concurrentLinkedQueue = a.y;
            } else {
                concurrentLinkedQueue = new ConcurrentLinkedQueue();
            }
            this.j = (AbstractQueue) concurrentLinkedQueue;
            if (!aVar.d()) {
                k0Var = a.y;
            } else {
                k0Var = new k0();
            }
            this.l = (AbstractQueue) k0Var;
            if (!aVar.c() && !aVar.b()) {
                eVar = a.y;
            } else {
                eVar = new e();
            }
            this.m = (AbstractQueue) eVar;
        }

        public final com.google.common.cache.f a(com.google.common.cache.f fVar, com.google.common.cache.f fVar2) {
            if (fVar.getKey() == null) {
                return null;
            }
            a0<K, V> valueReference = fVar.getValueReference();
            V v = valueReference.get();
            if (v == null && valueReference.isActive()) {
                return null;
            }
            com.google.common.cache.f fVarB = this.f3814a.q.b(this, fVar, fVar2);
            fVarB.setValueReference(valueReference.copyFor(this.i, v, fVarB));
            return fVarB;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void y(com.google.common.cache.f fVar, Object obj, Object obj2, long j) {
            a0<K, V> valueReference = fVar.getValueReference();
            a aVar = this.f3814a;
            int iWeigh = aVar.j.weigh(obj, obj2);
            Preconditions.checkState(iWeigh >= 0, "Weights must be non-negative");
            fVar.setValueReference(aVar.h.b(iWeigh, this, fVar, obj2));
            b();
            this.c += iWeigh;
            if (aVar.c()) {
                fVar.setAccessTime(j);
            }
            if (aVar.d() || aVar.m > 0) {
                fVar.setWriteTime(j);
            }
            this.m.add(fVar);
            this.l.add(fVar);
            valueReference.notifyNewValue(obj2);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0037 A[Catch: all -> 0x0056, TRY_ENTER, TryCatch #0 {all -> 0x0056, blocks: (B:2:0x0000, B:4:0x0005, B:21:0x0037, B:23:0x0041, B:28:0x0059, B:7:0x0014, B:9:0x001c, B:12:0x0025, B:15:0x002b, B:16:0x002f, B:11:0x0022), top: B:33:0x0000, inners: #1 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object h(java.lang.Object r11, int r12) {
            /*
                r10 = this;
                int r0 = r10.f3815b     // Catch: java.lang.Throwable -> L56
                r1 = 0
                if (r0 == 0) goto L5c
                com.google.common.cache.a r0 = r10.f3814a     // Catch: java.lang.Throwable -> L56
                com.google.common.base.Ticker r0 = r0.p     // Catch: java.lang.Throwable -> L56
                long r7 = r0.read()     // Catch: java.lang.Throwable -> L56
                com.google.common.cache.f r11 = r10.j(r12, r11)     // Catch: java.lang.Throwable -> L56
                if (r11 != 0) goto L14
                goto L28
            L14:
                com.google.common.cache.a r0 = r10.f3814a     // Catch: java.lang.Throwable -> L56
                boolean r0 = r0.g(r11, r7)     // Catch: java.lang.Throwable -> L56
                if (r0 == 0) goto L30
                boolean r11 = r10.tryLock()     // Catch: java.lang.Throwable -> L56
                if (r11 == 0) goto L28
                r10.g(r7)     // Catch: java.lang.Throwable -> L2a
                r10.unlock()     // Catch: java.lang.Throwable -> L56
            L28:
                r3 = r1
                goto L31
            L2a:
                r0 = move-exception
                r11 = r0
                r10.unlock()     // Catch: java.lang.Throwable -> L56
                throw r11     // Catch: java.lang.Throwable -> L56
            L30:
                r3 = r11
            L31:
                if (r3 != 0) goto L37
                r10.m()
                return r1
            L37:
                com.google.common.cache.a$a0 r11 = r3.getValueReference()     // Catch: java.lang.Throwable -> L56
                java.lang.Object r6 = r11.get()     // Catch: java.lang.Throwable -> L56
                if (r6 == 0) goto L59
                r10.p(r3, r7)     // Catch: java.lang.Throwable -> L56
                java.lang.Object r4 = r3.getKey()     // Catch: java.lang.Throwable -> L56
                com.google.common.cache.a r11 = r10.f3814a     // Catch: java.lang.Throwable -> L56
                com.google.common.cache.CacheLoader r9 = r11.s     // Catch: java.lang.Throwable -> L56
                r2 = r10
                r5 = r12
                java.lang.Object r11 = r2.x(r3, r4, r5, r6, r7, r9)     // Catch: java.lang.Throwable -> L56
                r10.m()
                return r11
            L56:
                r0 = move-exception
                r11 = r0
                goto L60
            L59:
                r10.A()     // Catch: java.lang.Throwable -> L56
            L5c:
                r10.m()
                return r1
            L60:
                r10.m()
                throw r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.a.r.h(java.lang.Object, int):java.lang.Object");
        }

        public final Object l(Object obj, int i, CacheLoader cacheLoader) {
            m mVar;
            a0<K, V> valueReference;
            boolean z;
            Object objI;
            lock();
            try {
                long j = this.f3814a.p.read();
                v(j);
                int i2 = this.f3815b - 1;
                AtomicReferenceArray atomicReferenceArray = this.f;
                int length = (atomicReferenceArray.length() - 1) & i;
                com.google.common.cache.f fVar = (com.google.common.cache.f) atomicReferenceArray.get(length);
                com.google.common.cache.f fVarD = fVar;
                while (true) {
                    mVar = null;
                    if (fVarD == null) {
                        valueReference = null;
                        break;
                    }
                    Object key = fVarD.getKey();
                    if (fVarD.getHash() != i || key == null || !this.f3814a.e.equivalent(obj, key)) {
                        fVarD = fVarD.getNext();
                    } else {
                        valueReference = fVarD.getValueReference();
                        if (valueReference.isLoading()) {
                            z = false;
                        } else {
                            V v = valueReference.get();
                            if (v == null) {
                                d(key, v, valueReference.getWeight(), RemovalCause.COLLECTED);
                            } else if (this.f3814a.g(fVarD, j)) {
                                d(key, v, valueReference.getWeight(), RemovalCause.EXPIRED);
                            } else {
                                o(fVarD, j);
                                this.n.recordHits(1);
                                unlock();
                                w();
                                return v;
                            }
                            this.l.remove(fVarD);
                            this.m.remove(fVarD);
                            this.f3815b = i2;
                        }
                    }
                }
                z = true;
                if (z) {
                    mVar = new m();
                    if (fVarD == null) {
                        fVarD = this.f3814a.q.d(i, this, fVar, Preconditions.checkNotNull(obj));
                        fVarD.setValueReference(mVar);
                        atomicReferenceArray.set(length, fVarD);
                    } else {
                        fVarD.setValueReference(mVar);
                    }
                }
                unlock();
                w();
                if (z) {
                    try {
                        synchronized (fVarD) {
                            objI = i(obj, i, mVar, mVar.loadFuture(obj, cacheLoader));
                        }
                        return objI;
                    } finally {
                        this.n.recordMisses(1);
                    }
                }
                return B(fVarD, obj, valueReference);
            } catch (Throwable th) {
                unlock();
                w();
                throw th;
            }
        }

        public final Object B(com.google.common.cache.f fVar, Object obj, a0 a0Var) {
            AbstractCache.StatsCounter statsCounter = this.n;
            if (!a0Var.isLoading()) {
                throw new AssertionError();
            }
            Preconditions.checkState(!Thread.holdsLock(fVar), "Recursive load of: %s", obj);
            try {
                Object objWaitForValue = a0Var.waitForValue();
                if (objWaitForValue == null) {
                    throw new CacheLoader.InvalidCacheLoadException("CacheLoader returned null for key " + obj + ".");
                }
                p(fVar, this.f3814a.p.read());
                return objWaitForValue;
            } finally {
                statsCounter.recordMisses(1);
            }
        }

        public final Object i(Object obj, int i, m mVar, ListenableFuture listenableFuture) throws Throwable {
            Object uninterruptibly;
            AbstractCache.StatsCounter statsCounter = this.n;
            try {
                uninterruptibly = Uninterruptibles.getUninterruptibly(listenableFuture);
                try {
                    if (uninterruptibly == null) {
                        throw new CacheLoader.InvalidCacheLoadException("CacheLoader returned null for key " + obj + ".");
                    }
                    statsCounter.recordLoadSuccess(mVar.elapsedNanos());
                    z(obj, i, mVar, uninterruptibly);
                    return uninterruptibly;
                } catch (Throwable th) {
                    th = th;
                    if (uninterruptibly == null) {
                        statsCounter.recordLoadException(mVar.elapsedNanos());
                        lock();
                        try {
                            AtomicReferenceArray atomicReferenceArray = this.f;
                            int length = (atomicReferenceArray.length() - 1) & i;
                            com.google.common.cache.f fVar = (com.google.common.cache.f) atomicReferenceArray.get(length);
                            com.google.common.cache.f next = fVar;
                            while (true) {
                                if (next == null) {
                                    break;
                                }
                                Object key = next.getKey();
                                if (next.getHash() != i || key == null || !this.f3814a.e.equivalent(obj, key)) {
                                    next = next.getNext();
                                } else if (next.getValueReference() == mVar) {
                                    if (mVar.isActive()) {
                                        next.setValueReference(mVar.getOldValue());
                                    } else {
                                        atomicReferenceArray.set(length, t(fVar, next));
                                    }
                                }
                            }
                            unlock();
                            w();
                        } catch (Throwable th2) {
                            unlock();
                            w();
                            throw th2;
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                uninterruptibly = null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
        
            unlock();
            w();
         */
        /* JADX WARN: Finally extract failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object q(java.lang.Object r13, int r14, com.google.common.cache.CacheLoader r15, boolean r16) {
            /*
                r12 = this;
                r12.lock()
                com.google.common.cache.a r0 = r12.f3814a     // Catch: java.lang.Throwable -> L51
                com.google.common.base.Ticker r0 = r0.p     // Catch: java.lang.Throwable -> L51
                long r4 = r0.read()     // Catch: java.lang.Throwable -> L51
                r12.v(r4)     // Catch: java.lang.Throwable -> L51
                java.util.concurrent.atomic.AtomicReferenceArray r0 = r12.f     // Catch: java.lang.Throwable -> L51
                int r6 = r0.length()     // Catch: java.lang.Throwable -> L51
                int r6 = r6 + (-1)
                r6 = r6 & r14
                java.lang.Object r7 = r0.get(r6)     // Catch: java.lang.Throwable -> L51
                com.google.common.cache.f r7 = (com.google.common.cache.f) r7     // Catch: java.lang.Throwable -> L51
                r8 = r7
            L1e:
                r9 = 0
                if (r8 == 0) goto L75
                java.lang.Object r10 = r8.getKey()     // Catch: java.lang.Throwable -> L51
                int r11 = r8.getHash()     // Catch: java.lang.Throwable -> L51
                if (r11 != r14) goto L70
                if (r10 == 0) goto L70
                com.google.common.cache.a r11 = r12.f3814a     // Catch: java.lang.Throwable -> L51
                com.google.common.base.Equivalence r11 = r11.e     // Catch: java.lang.Throwable -> L51
                boolean r10 = r11.equivalent(r13, r10)     // Catch: java.lang.Throwable -> L51
                if (r10 == 0) goto L70
                com.google.common.cache.a$a0 r0 = r8.getValueReference()     // Catch: java.lang.Throwable -> L51
                boolean r6 = r0.isLoading()     // Catch: java.lang.Throwable -> L51
                if (r6 != 0) goto L68
                if (r16 == 0) goto L53
                long r6 = r8.getWriteTime()     // Catch: java.lang.Throwable -> L51
                long r4 = r4 - r6
                com.google.common.cache.a r6 = r12.f3814a     // Catch: java.lang.Throwable -> L51
                long r6 = r6.m     // Catch: java.lang.Throwable -> L51
                int r10 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r10 >= 0) goto L53
                goto L68
            L51:
                r0 = move-exception
                goto Lb5
            L53:
                int r4 = r12.d     // Catch: java.lang.Throwable -> L51
                int r4 = r4 + 1
                r12.d = r4     // Catch: java.lang.Throwable -> L51
                com.google.common.cache.a$m r4 = new com.google.common.cache.a$m     // Catch: java.lang.Throwable -> L51
                r4.<init>(r0)     // Catch: java.lang.Throwable -> L51
                r8.setValueReference(r4)     // Catch: java.lang.Throwable -> L51
            L61:
                r12.unlock()
                r12.w()
                goto L93
            L68:
                r12.unlock()
                r12.w()
                r4 = r9
                goto L93
            L70:
                com.google.common.cache.f r8 = r8.getNext()     // Catch: java.lang.Throwable -> L51
                goto L1e
            L75:
                int r4 = r12.d     // Catch: java.lang.Throwable -> L51
                int r4 = r4 + 1
                r12.d = r4     // Catch: java.lang.Throwable -> L51
                com.google.common.cache.a$m r4 = new com.google.common.cache.a$m     // Catch: java.lang.Throwable -> L51
                r4.<init>()     // Catch: java.lang.Throwable -> L51
                com.google.common.cache.a r5 = r12.f3814a     // Catch: java.lang.Throwable -> L51
                com.google.common.cache.a$f r5 = r5.q     // Catch: java.lang.Throwable -> L51
                java.lang.Object r8 = com.google.common.base.Preconditions.checkNotNull(r13)     // Catch: java.lang.Throwable -> L51
                com.google.common.cache.f r5 = r5.d(r14, r12, r7, r8)     // Catch: java.lang.Throwable -> L51
                r5.setValueReference(r4)     // Catch: java.lang.Throwable -> L51
                r0.set(r6, r5)     // Catch: java.lang.Throwable -> L51
                goto L61
            L93:
                if (r4 != 0) goto L96
                goto Lb4
            L96:
                com.google.common.util.concurrent.ListenableFuture r5 = r4.loadFuture(r13, r15)
                com.google.common.cache.b r0 = new com.google.common.cache.b
                r1 = r12
                r2 = r13
                r3 = r14
                r0.<init>(r1, r2, r3, r4, r5)
                java.util.concurrent.Executor r1 = com.google.common.util.concurrent.MoreExecutors.directExecutor()
                r5.addListener(r0, r1)
                boolean r0 = r5.isDone()
                if (r0 == 0) goto Lb4
                java.lang.Object r0 = com.google.common.util.concurrent.Uninterruptibles.getUninterruptibly(r5)     // Catch: java.lang.Throwable -> Lb4
                return r0
            Lb4:
                return r9
            Lb5:
                r12.unlock()
                r12.w()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.a.r.q(java.lang.Object, int, com.google.common.cache.CacheLoader, boolean):java.lang.Object");
        }

        public final void A() {
            if (tryLock()) {
                try {
                    c();
                } finally {
                    unlock();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:45:0x00f5, code lost:
        
            r5.w();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void c() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 297
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.a.r.c():void");
        }

        public final void b() {
            while (true) {
                com.google.common.cache.f fVar = (com.google.common.cache.f) this.j.poll();
                if (fVar == null) {
                    return;
                }
                AbstractQueue abstractQueue = this.m;
                if (abstractQueue.contains(fVar)) {
                    abstractQueue.add(fVar);
                }
            }
        }

        public final void g(long j) {
            com.google.common.cache.f fVar;
            com.google.common.cache.f fVar2;
            b();
            do {
                fVar = (com.google.common.cache.f) this.l.peek();
                a aVar = this.f3814a;
                if (fVar == null || !aVar.g(fVar, j)) {
                    do {
                        fVar2 = (com.google.common.cache.f) this.m.peek();
                        if (fVar2 == null || !aVar.g(fVar2, j)) {
                            return;
                        }
                    } while (s(fVar2, fVar2.getHash(), RemovalCause.EXPIRED));
                    throw new AssertionError();
                }
            } while (s(fVar, fVar.getHash(), RemovalCause.EXPIRED));
            throw new AssertionError();
        }

        public final void d(Object obj, Object obj2, int i, RemovalCause removalCause) {
            this.c -= i;
            if (removalCause.a()) {
                this.n.recordEviction();
            }
            a aVar = this.f3814a;
            if (aVar.n != a.y) {
                aVar.n.offer(RemovalNotification.create(obj, obj2, removalCause));
            }
        }

        public final void e(com.google.common.cache.f fVar) {
            if (this.f3814a.b()) {
                b();
                long weight = fVar.getValueReference().getWeight();
                long j = this.f3816g;
                if (weight > j && !s(fVar, fVar.getHash(), RemovalCause.SIZE)) {
                    throw new AssertionError();
                }
                while (this.c > j) {
                    for (com.google.common.cache.f fVar2 : this.m) {
                        if (fVar2.getValueReference().getWeight() > 0) {
                            if (!s(fVar2, fVar2.getHash(), RemovalCause.SIZE)) {
                                throw new AssertionError();
                            }
                        }
                    }
                    throw new AssertionError();
                }
            }
        }

        public final com.google.common.cache.f j(int i, Object obj) {
            for (com.google.common.cache.f next = (com.google.common.cache.f) this.f.get((r0.length() - 1) & i); next != null; next = next.getNext()) {
                if (next.getHash() == i) {
                    Object key = next.getKey();
                    if (key == null) {
                        A();
                    } else if (this.f3814a.e.equivalent(obj, key)) {
                        return next;
                    }
                }
            }
            return null;
        }

        public final Object k(com.google.common.cache.f fVar, long j) {
            if (fVar.getKey() == null) {
                A();
                return null;
            }
            V v = fVar.getValueReference().get();
            if (v == null) {
                A();
                return null;
            }
            if (!this.f3814a.g(fVar, j)) {
                return v;
            }
            if (!tryLock()) {
                return null;
            }
            try {
                g(j);
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:64:0x0033 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object n(java.lang.Object r10, int r11, java.lang.Object r12, boolean r13) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 264
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.a.r.n(java.lang.Object, int, java.lang.Object, boolean):java.lang.Object");
        }

        public final void f() {
            AtomicReferenceArray atomicReferenceArray = this.f;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i = this.f3815b;
            AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(length << 1);
            this.e = (atomicReferenceArray2.length() * 3) / 4;
            int length2 = atomicReferenceArray2.length() - 1;
            for (int i2 = 0; i2 < length; i2++) {
                com.google.common.cache.f<K, V> next = (com.google.common.cache.f) atomicReferenceArray.get(i2);
                if (next != null) {
                    com.google.common.cache.f<K, V> next2 = next.getNext();
                    int hash = next.getHash() & length2;
                    if (next2 == null) {
                        atomicReferenceArray2.set(hash, next);
                    } else {
                        com.google.common.cache.f<K, V> fVar = next;
                        while (next2 != null) {
                            int hash2 = next2.getHash() & length2;
                            if (hash2 != hash) {
                                fVar = next2;
                                hash = hash2;
                            }
                            next2 = next2.getNext();
                        }
                        atomicReferenceArray2.set(hash, fVar);
                        while (next != fVar) {
                            int hash3 = next.getHash() & length2;
                            com.google.common.cache.f fVarA = a(next, (com.google.common.cache.f) atomicReferenceArray2.get(hash3));
                            if (fVarA != null) {
                                atomicReferenceArray2.set(hash3, fVarA);
                            } else {
                                r(next);
                                i--;
                            }
                            next = next.getNext();
                        }
                    }
                }
            }
            this.f = atomicReferenceArray2;
            this.f3815b = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:63:0x0036 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void z(java.lang.Object r10, int r11, com.google.common.cache.a.m r12, java.lang.Object r13) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 231
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.a.r.z(java.lang.Object, int, com.google.common.cache.a$m, java.lang.Object):void");
        }

        public final com.google.common.cache.f u(com.google.common.cache.f fVar, com.google.common.cache.f fVar2, Object obj, Object obj2, a0 a0Var, RemovalCause removalCause) {
            d(obj, obj2, a0Var.getWeight(), removalCause);
            this.l.remove(fVar2);
            this.m.remove(fVar2);
            if (a0Var.isLoading()) {
                a0Var.notifyNewValue(null);
                return fVar;
            }
            return t(fVar, fVar2);
        }

        public final com.google.common.cache.f t(com.google.common.cache.f fVar, com.google.common.cache.f fVar2) {
            int i = this.f3815b;
            com.google.common.cache.f<K, V> next = fVar2.getNext();
            while (fVar != fVar2) {
                com.google.common.cache.f<K, V> fVarA = a(fVar, next);
                if (fVarA != null) {
                    next = fVarA;
                } else {
                    r(fVar);
                    i--;
                }
                fVar = fVar.getNext();
            }
            this.f3815b = i;
            return next;
        }

        public final void r(com.google.common.cache.f fVar) {
            Object key = fVar.getKey();
            fVar.getHash();
            d(key, fVar.getValueReference().get(), fVar.getValueReference().getWeight(), RemovalCause.COLLECTED);
            this.l.remove(fVar);
            this.m.remove(fVar);
        }

        public final boolean s(com.google.common.cache.f fVar, int i, RemovalCause removalCause) {
            AtomicReferenceArray atomicReferenceArray = this.f;
            int length = i & (atomicReferenceArray.length() - 1);
            com.google.common.cache.f fVar2 = (com.google.common.cache.f) atomicReferenceArray.get(length);
            for (com.google.common.cache.f next = fVar2; next != null; next = next.getNext()) {
                if (next == fVar) {
                    this.d++;
                    com.google.common.cache.f fVarU = u(fVar2, next, next.getKey(), next.getValueReference().get(), next.getValueReference(), removalCause);
                    int i2 = this.f3815b - 1;
                    atomicReferenceArray.set(length, fVarU);
                    this.f3815b = i2;
                    return true;
                }
            }
            return false;
        }

        public final void m() {
            if ((this.k.incrementAndGet() & 63) == 0) {
                v(this.f3814a.p.read());
                w();
            }
        }

        public final void v(long j) {
            if (tryLock()) {
                try {
                    c();
                    g(j);
                    this.k.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public final void w() {
            if (isHeldByCurrentThread()) {
                return;
            }
            while (true) {
                a aVar = this.f3814a;
                RemovalNotification<K, V> removalNotification = (RemovalNotification) aVar.n.poll();
                if (removalNotification == null) {
                    return;
                }
                try {
                    aVar.o.onRemoval(removalNotification);
                } catch (Throwable th) {
                    a.w.log(Level.WARNING, "Exception thrown by removal listener", th);
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class t {

        /* renamed from: a, reason: collision with root package name */
        public static final C0101a f3818a;

        /* renamed from: b, reason: collision with root package name */
        public static final b f3819b;
        public static final c c;
        public static final /* synthetic */ t[] d;

        public abstract Equivalence a();

        public abstract a0 b(int i, r rVar, com.google.common.cache.f fVar, Object obj);

        /* renamed from: com.google.common.cache.a$t$a, reason: collision with other inner class name */
        public enum C0101a extends t {
            public C0101a() {
                super("STRONG", 0);
            }

            @Override // com.google.common.cache.a.t
            public final a0 b(int i, r rVar, com.google.common.cache.f fVar, Object obj) {
                return i == 1 ? new x(obj) : new i0(obj, i);
            }

            @Override // com.google.common.cache.a.t
            public final Equivalence a() {
                return Equivalence.equals();
            }
        }

        public enum b extends t {
            public b() {
                super("SOFT", 1);
            }

            @Override // com.google.common.cache.a.t
            public final a0 b(int i, r rVar, com.google.common.cache.f fVar, Object obj) {
                return i == 1 ? new s(rVar.i, obj, fVar) : new h0(i, fVar, obj, rVar.i);
            }

            @Override // com.google.common.cache.a.t
            public final Equivalence a() {
                return Equivalence.identity();
            }
        }

        public enum c extends t {
            public c() {
                super("WEAK", 2);
            }

            @Override // com.google.common.cache.a.t
            public final a0 b(int i, r rVar, com.google.common.cache.f fVar, Object obj) {
                return i == 1 ? new f0(rVar.i, obj, fVar) : new j0(i, fVar, obj, rVar.i);
            }

            @Override // com.google.common.cache.a.t
            public final Equivalence a() {
                return Equivalence.identity();
            }
        }

        public static t[] values() {
            return (t[]) d.clone();
        }

        static {
            C0101a c0101a = new C0101a();
            f3818a = c0101a;
            b bVar = new b();
            f3819b = bVar;
            c cVar = new c();
            c = cVar;
            d = new t[]{c0101a, bVar, cVar};
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class f {

        /* renamed from: a, reason: collision with root package name */
        public static final f[] f3792a = {new C0096a(), new b(), new c(), new d(), new e(), new C0097f(), new g(), new h()};

        /* JADX INFO: Fake field, exist only in values array */
        f EF2;

        public abstract com.google.common.cache.f d(int i, r rVar, com.google.common.cache.f fVar, Object obj);

        /* renamed from: com.google.common.cache.a$f$a, reason: collision with other inner class name */
        public enum C0096a extends f {
            public C0096a() {
                super("STRONG", 0);
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f d(int i, r rVar, com.google.common.cache.f fVar, Object obj) {
                return new w(obj, i, fVar);
            }
        }

        public enum b extends f {
            public b() {
                super("STRONG_ACCESS", 1);
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f d(int i, r rVar, com.google.common.cache.f fVar, Object obj) {
                u uVar = new u(obj, i, fVar);
                uVar.e = Long.MAX_VALUE;
                Logger logger = a.w;
                q qVar = q.f3813a;
                uVar.f = qVar;
                uVar.f3820g = qVar;
                return uVar;
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f b(r rVar, com.google.common.cache.f fVar, com.google.common.cache.f fVar2) {
                com.google.common.cache.f fVarB = super.b(rVar, fVar, fVar2);
                f.a(fVar, fVarB);
                return fVarB;
            }
        }

        public enum c extends f {
            public c() {
                super("STRONG_WRITE", 2);
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f d(int i, r rVar, com.google.common.cache.f fVar, Object obj) {
                y yVar = new y(obj, i, fVar);
                yVar.e = Long.MAX_VALUE;
                Logger logger = a.w;
                q qVar = q.f3813a;
                yVar.f = qVar;
                yVar.f3825g = qVar;
                return yVar;
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f b(r rVar, com.google.common.cache.f fVar, com.google.common.cache.f fVar2) {
                com.google.common.cache.f fVarB = super.b(rVar, fVar, fVar2);
                f.c(fVar, fVarB);
                return fVarB;
            }
        }

        public enum d extends f {
            public d() {
                super("STRONG_ACCESS_WRITE", 3);
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f d(int i, r rVar, com.google.common.cache.f fVar, Object obj) {
                v vVar = new v(obj, i, fVar);
                vVar.e = Long.MAX_VALUE;
                Logger logger = a.w;
                q qVar = q.f3813a;
                vVar.f = qVar;
                vVar.f3821g = qVar;
                vVar.h = Long.MAX_VALUE;
                vVar.i = qVar;
                vVar.j = qVar;
                return vVar;
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f b(r rVar, com.google.common.cache.f fVar, com.google.common.cache.f fVar2) {
                com.google.common.cache.f fVarB = super.b(rVar, fVar, fVar2);
                f.a(fVar, fVarB);
                f.c(fVar, fVarB);
                return fVarB;
            }
        }

        public enum e extends f {
            public e() {
                super("WEAK", 4);
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f d(int i, r rVar, com.google.common.cache.f fVar, Object obj) {
                return new e0(i, fVar, obj, rVar.h);
            }
        }

        /* renamed from: com.google.common.cache.a$f$f, reason: collision with other inner class name */
        public enum C0097f extends f {
            public C0097f() {
                super("WEAK_ACCESS", 5);
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f d(int i, r rVar, com.google.common.cache.f fVar, Object obj) {
                c0 c0Var = new c0(i, fVar, obj, rVar.h);
                c0Var.d = Long.MAX_VALUE;
                Logger logger = a.w;
                q qVar = q.f3813a;
                c0Var.e = qVar;
                c0Var.f = qVar;
                return c0Var;
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f b(r rVar, com.google.common.cache.f fVar, com.google.common.cache.f fVar2) {
                com.google.common.cache.f fVarB = super.b(rVar, fVar, fVar2);
                f.a(fVar, fVarB);
                return fVarB;
            }
        }

        public enum g extends f {
            public g() {
                super("WEAK_WRITE", 6);
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f d(int i, r rVar, com.google.common.cache.f fVar, Object obj) {
                g0 g0Var = new g0(i, fVar, obj, rVar.h);
                g0Var.d = Long.MAX_VALUE;
                Logger logger = a.w;
                q qVar = q.f3813a;
                g0Var.e = qVar;
                g0Var.f = qVar;
                return g0Var;
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f b(r rVar, com.google.common.cache.f fVar, com.google.common.cache.f fVar2) {
                com.google.common.cache.f fVarB = super.b(rVar, fVar, fVar2);
                f.c(fVar, fVarB);
                return fVarB;
            }
        }

        public enum h extends f {
            public h() {
                super("WEAK_ACCESS_WRITE", 7);
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f d(int i, r rVar, com.google.common.cache.f fVar, Object obj) {
                d0 d0Var = new d0(i, fVar, obj, rVar.h);
                d0Var.d = Long.MAX_VALUE;
                Logger logger = a.w;
                q qVar = q.f3813a;
                d0Var.e = qVar;
                d0Var.f = qVar;
                d0Var.f3785g = Long.MAX_VALUE;
                d0Var.h = qVar;
                d0Var.i = qVar;
                return d0Var;
            }

            @Override // com.google.common.cache.a.f
            public final com.google.common.cache.f b(r rVar, com.google.common.cache.f fVar, com.google.common.cache.f fVar2) {
                com.google.common.cache.f fVarB = super.b(rVar, fVar, fVar2);
                f.a(fVar, fVarB);
                f.c(fVar, fVarB);
                return fVarB;
            }
        }

        public com.google.common.cache.f b(r rVar, com.google.common.cache.f fVar, com.google.common.cache.f fVar2) {
            return d(fVar.getHash(), rVar, fVar2, fVar.getKey());
        }

        public static void a(com.google.common.cache.f fVar, com.google.common.cache.f fVar2) {
            fVar2.setAccessTime(fVar.getAccessTime());
            com.google.common.cache.f<K, V> previousInAccessQueue = fVar.getPreviousInAccessQueue();
            Logger logger = a.w;
            previousInAccessQueue.setNextInAccessQueue(fVar2);
            fVar2.setPreviousInAccessQueue(previousInAccessQueue);
            com.google.common.cache.f<K, V> nextInAccessQueue = fVar.getNextInAccessQueue();
            fVar2.setNextInAccessQueue(nextInAccessQueue);
            nextInAccessQueue.setPreviousInAccessQueue(fVar2);
            q qVar = q.f3813a;
            fVar.setNextInAccessQueue(qVar);
            fVar.setPreviousInAccessQueue(qVar);
        }

        public static void c(com.google.common.cache.f fVar, com.google.common.cache.f fVar2) {
            fVar2.setWriteTime(fVar.getWriteTime());
            com.google.common.cache.f<K, V> previousInWriteQueue = fVar.getPreviousInWriteQueue();
            Logger logger = a.w;
            previousInWriteQueue.setNextInWriteQueue(fVar2);
            fVar2.setPreviousInWriteQueue(previousInWriteQueue);
            com.google.common.cache.f<K, V> nextInWriteQueue = fVar.getNextInWriteQueue();
            fVar2.setNextInWriteQueue(nextInWriteQueue);
            nextInWriteQueue.setPreviousInWriteQueue(fVar2);
            q qVar = q.f3813a;
            fVar.setNextInWriteQueue(qVar);
            fVar.setPreviousInWriteQueue(qVar);
        }
    }

    public static class m<K, V> implements a0<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public volatile a0 f3808a;

        /* renamed from: b, reason: collision with root package name */
        public final SettableFuture f3809b;
        public final Stopwatch c;

        @Override // com.google.common.cache.a.a0
        public a0<K, V> copyFor(ReferenceQueue<V> referenceQueue, @NullableDecl V v, com.google.common.cache.f<K, V> fVar) {
            return this;
        }

        @Override // com.google.common.cache.a.a0
        public com.google.common.cache.f<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.a.a0
        public boolean isLoading() {
            return true;
        }

        public m() {
            this(a.x);
        }

        public m(a0<K, V> a0Var) {
            this.f3809b = SettableFuture.create();
            this.c = Stopwatch.createUnstarted();
            this.f3808a = a0Var;
        }

        @Override // com.google.common.cache.a.a0
        public boolean isActive() {
            return this.f3808a.isActive();
        }

        @Override // com.google.common.cache.a.a0
        public int getWeight() {
            return this.f3808a.getWeight();
        }

        public boolean set(@NullableDecl V v) {
            return this.f3809b.set(v);
        }

        public boolean setException(Throwable th) {
            return this.f3809b.setException(th);
        }

        @Override // com.google.common.cache.a.a0
        public void notifyNewValue(@NullableDecl V v) {
            if (v != null) {
                set(v);
            } else {
                this.f3808a = a.x;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ListenableFuture<V> loadFuture(K k, CacheLoader<? super K, V> cacheLoader) {
            try {
                this.c.start();
                Object obj = this.f3808a.get();
                if (obj == null) {
                    V vLoad = cacheLoader.load(k);
                    return set(vLoad) ? this.f3809b : Futures.immediateFuture(vLoad);
                }
                ListenableFuture listenableFutureReload = cacheLoader.reload(k, obj);
                if (listenableFutureReload == null) {
                    return Futures.immediateFuture(null);
                }
                return Futures.transform(listenableFutureReload, new C0099a(), MoreExecutors.directExecutor());
            } catch (Throwable th) {
                ListenableFuture<V> listenableFutureImmediateFailedFuture = setException(th) ? this.f3809b : Futures.immediateFailedFuture(th);
                if (th instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                return listenableFutureImmediateFailedFuture;
            }
        }

        /* renamed from: com.google.common.cache.a$m$a, reason: collision with other inner class name */
        public class C0099a implements Function<V, V> {
            public C0099a() {
            }

            @Override // com.google.common.base.Function
            public V apply(V v) {
                m.this.set(v);
                return v;
            }
        }

        public long elapsedNanos() {
            return this.c.elapsed(TimeUnit.NANOSECONDS);
        }

        @Override // com.google.common.cache.a.a0
        public V waitForValue() throws ExecutionException {
            return (V) Uninterruptibles.getUninterruptibly(this.f3809b);
        }

        @Override // com.google.common.cache.a.a0
        public V get() {
            return (V) this.f3808a.get();
        }

        public a0<K, V> getOldValue() {
            return this.f3808a;
        }
    }

    public static abstract class d<K, V> implements com.google.common.cache.f<K, V> {
        @Override // com.google.common.cache.f
        public a0<K, V> getValueReference() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public void setValueReference(a0<K, V> a0Var) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNext() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public int getHash() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public K getKey() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public void setAccessTime(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public void setNextInAccessQueue(com.google.common.cache.f<K, V> fVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public com.google.common.cache.f<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public void setPreviousInAccessQueue(com.google.common.cache.f<K, V> fVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public void setWriteTime(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public void setNextInWriteQueue(com.google.common.cache.f<K, V> fVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public com.google.common.cache.f<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public void setPreviousInWriteQueue(com.google.common.cache.f<K, V> fVar) {
            throw new UnsupportedOperationException();
        }
    }

    public static class b extends AbstractQueue<Object> {
        @Override // java.util.Queue
        public boolean offer(Object obj) {
            return true;
        }

        @Override // java.util.Queue
        public Object peek() {
            return null;
        }

        @Override // java.util.Queue
        public Object poll() {
            return null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return ImmutableSet.of().iterator();
        }
    }

    public static class w<K, V> extends d<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f3822a;

        /* renamed from: b, reason: collision with root package name */
        public final int f3823b;
        public final com.google.common.cache.f c;
        public volatile a0 d = a.x;

        public w(Object obj, int i, com.google.common.cache.f fVar) {
            this.f3822a = obj;
            this.f3823b = i;
            this.c = fVar;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public K getKey() {
            return (K) this.f3822a;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public a0<K, V> getValueReference() {
            return this.d;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setValueReference(a0<K, V> a0Var) {
            this.d = a0Var;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public int getHash() {
            return this.f3823b;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNext() {
            return this.c;
        }
    }

    public static final class u<K, V> extends w<K, V> {
        public volatile long e;
        public com.google.common.cache.f f;

        /* renamed from: g, reason: collision with root package name */
        public com.google.common.cache.f f3820g;

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public long getAccessTime() {
            return this.e;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setAccessTime(long j) {
            this.e = j;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNextInAccessQueue() {
            return this.f;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setNextInAccessQueue(com.google.common.cache.f<K, V> fVar) {
            this.f = fVar;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getPreviousInAccessQueue() {
            return this.f3820g;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setPreviousInAccessQueue(com.google.common.cache.f<K, V> fVar) {
            this.f3820g = fVar;
        }
    }

    public static final class y<K, V> extends w<K, V> {
        public volatile long e;
        public com.google.common.cache.f f;

        /* renamed from: g, reason: collision with root package name */
        public com.google.common.cache.f f3825g;

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public long getWriteTime() {
            return this.e;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setWriteTime(long j) {
            this.e = j;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNextInWriteQueue() {
            return this.f;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setNextInWriteQueue(com.google.common.cache.f<K, V> fVar) {
            this.f = fVar;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getPreviousInWriteQueue() {
            return this.f3825g;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setPreviousInWriteQueue(com.google.common.cache.f<K, V> fVar) {
            this.f3825g = fVar;
        }
    }

    public static final class v<K, V> extends w<K, V> {
        public volatile long e;
        public com.google.common.cache.f f;

        /* renamed from: g, reason: collision with root package name */
        public com.google.common.cache.f f3821g;
        public volatile long h;
        public com.google.common.cache.f i;
        public com.google.common.cache.f j;

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public long getAccessTime() {
            return this.e;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setAccessTime(long j) {
            this.e = j;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNextInAccessQueue() {
            return this.f;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setNextInAccessQueue(com.google.common.cache.f<K, V> fVar) {
            this.f = fVar;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getPreviousInAccessQueue() {
            return this.f3821g;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setPreviousInAccessQueue(com.google.common.cache.f<K, V> fVar) {
            this.f3821g = fVar;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public long getWriteTime() {
            return this.h;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setWriteTime(long j) {
            this.h = j;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNextInWriteQueue() {
            return this.i;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setNextInWriteQueue(com.google.common.cache.f<K, V> fVar) {
            this.i = fVar;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getPreviousInWriteQueue() {
            return this.j;
        }

        @Override // com.google.common.cache.a.d, com.google.common.cache.f
        public void setPreviousInWriteQueue(com.google.common.cache.f<K, V> fVar) {
            this.j = fVar;
        }
    }

    public static class e0<K, V> extends WeakReference<K> implements com.google.common.cache.f<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final int f3790a;

        /* renamed from: b, reason: collision with root package name */
        public final com.google.common.cache.f f3791b;
        public volatile a0 c;

        public e0(int i, com.google.common.cache.f fVar, Object obj, ReferenceQueue referenceQueue) {
            super(obj, referenceQueue);
            this.c = a.x;
            this.f3790a = i;
            this.f3791b = fVar;
        }

        @Override // com.google.common.cache.f
        public K getKey() {
            return get();
        }

        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        public void setAccessTime(long j) {
            throw new UnsupportedOperationException();
        }

        public com.google.common.cache.f<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        public void setNextInAccessQueue(com.google.common.cache.f<K, V> fVar) {
            throw new UnsupportedOperationException();
        }

        public com.google.common.cache.f<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        public void setPreviousInAccessQueue(com.google.common.cache.f<K, V> fVar) {
            throw new UnsupportedOperationException();
        }

        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        public void setWriteTime(long j) {
            throw new UnsupportedOperationException();
        }

        public com.google.common.cache.f<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        public void setNextInWriteQueue(com.google.common.cache.f<K, V> fVar) {
            throw new UnsupportedOperationException();
        }

        public com.google.common.cache.f<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        public void setPreviousInWriteQueue(com.google.common.cache.f<K, V> fVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.f
        public a0<K, V> getValueReference() {
            return this.c;
        }

        @Override // com.google.common.cache.f
        public void setValueReference(a0<K, V> a0Var) {
            this.c = a0Var;
        }

        @Override // com.google.common.cache.f
        public int getHash() {
            return this.f3790a;
        }

        @Override // com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNext() {
            return this.f3791b;
        }
    }

    public static final class c0<K, V> extends e0<K, V> {
        public volatile long d;
        public com.google.common.cache.f e;
        public com.google.common.cache.f f;

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public long getAccessTime() {
            return this.d;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public void setAccessTime(long j) {
            this.d = j;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNextInAccessQueue() {
            return this.e;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public void setNextInAccessQueue(com.google.common.cache.f<K, V> fVar) {
            this.e = fVar;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getPreviousInAccessQueue() {
            return this.f;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public void setPreviousInAccessQueue(com.google.common.cache.f<K, V> fVar) {
            this.f = fVar;
        }
    }

    public static final class g0<K, V> extends e0<K, V> {
        public volatile long d;
        public com.google.common.cache.f e;
        public com.google.common.cache.f f;

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public long getWriteTime() {
            return this.d;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public void setWriteTime(long j) {
            this.d = j;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNextInWriteQueue() {
            return this.e;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public void setNextInWriteQueue(com.google.common.cache.f<K, V> fVar) {
            this.e = fVar;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getPreviousInWriteQueue() {
            return this.f;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public void setPreviousInWriteQueue(com.google.common.cache.f<K, V> fVar) {
            this.f = fVar;
        }
    }

    public static final class d0<K, V> extends e0<K, V> {
        public volatile long d;
        public com.google.common.cache.f e;
        public com.google.common.cache.f f;

        /* renamed from: g, reason: collision with root package name */
        public volatile long f3785g;
        public com.google.common.cache.f h;
        public com.google.common.cache.f i;

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public long getAccessTime() {
            return this.d;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public void setAccessTime(long j) {
            this.d = j;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNextInAccessQueue() {
            return this.e;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public void setNextInAccessQueue(com.google.common.cache.f<K, V> fVar) {
            this.e = fVar;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getPreviousInAccessQueue() {
            return this.f;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public void setPreviousInAccessQueue(com.google.common.cache.f<K, V> fVar) {
            this.f = fVar;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public long getWriteTime() {
            return this.f3785g;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public void setWriteTime(long j) {
            this.f3785g = j;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getNextInWriteQueue() {
            return this.h;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public void setNextInWriteQueue(com.google.common.cache.f<K, V> fVar) {
            this.h = fVar;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public com.google.common.cache.f<K, V> getPreviousInWriteQueue() {
            return this.i;
        }

        @Override // com.google.common.cache.a.e0, com.google.common.cache.f
        public void setPreviousInWriteQueue(com.google.common.cache.f<K, V> fVar) {
            this.i = fVar;
        }
    }

    public static class f0<K, V> extends WeakReference<V> implements a0<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final com.google.common.cache.f f3793a;

        @Override // com.google.common.cache.a.a0
        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.a.a0
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.a.a0
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.a.a0
        public void notifyNewValue(V v) {
        }

        public f0(ReferenceQueue referenceQueue, Object obj, com.google.common.cache.f fVar) {
            super(obj, referenceQueue);
            this.f3793a = fVar;
        }

        @Override // com.google.common.cache.a.a0
        public com.google.common.cache.f<K, V> getEntry() {
            return this.f3793a;
        }

        @Override // com.google.common.cache.a.a0
        public a0<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, com.google.common.cache.f<K, V> fVar) {
            return new f0(referenceQueue, v, fVar);
        }

        @Override // com.google.common.cache.a.a0
        public V waitForValue() {
            return get();
        }
    }

    public static class s<K, V> extends SoftReference<V> implements a0<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final com.google.common.cache.f f3817a;

        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.a.a0
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.a.a0
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.a.a0
        public void notifyNewValue(V v) {
        }

        public s(ReferenceQueue referenceQueue, Object obj, com.google.common.cache.f fVar) {
            super(obj, referenceQueue);
            this.f3817a = fVar;
        }

        @Override // com.google.common.cache.a.a0
        public com.google.common.cache.f<K, V> getEntry() {
            return this.f3817a;
        }

        public a0<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, com.google.common.cache.f<K, V> fVar) {
            return new s(referenceQueue, v, fVar);
        }

        @Override // com.google.common.cache.a.a0
        public V waitForValue() {
            return get();
        }
    }

    public static class x<K, V> implements a0<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f3824a;

        @Override // com.google.common.cache.a.a0
        public a0<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, com.google.common.cache.f<K, V> fVar) {
            return this;
        }

        @Override // com.google.common.cache.a.a0
        public com.google.common.cache.f<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.a.a0
        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.a.a0
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.a.a0
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.a.a0
        public void notifyNewValue(V v) {
        }

        public x(Object obj) {
            this.f3824a = obj;
        }

        @Override // com.google.common.cache.a.a0
        public V get() {
            return (V) this.f3824a;
        }

        @Override // com.google.common.cache.a.a0
        public V waitForValue() {
            return get();
        }
    }

    public static final class j0<K, V> extends f0<K, V> {

        /* renamed from: b, reason: collision with root package name */
        public final int f3800b;

        public j0(int i, com.google.common.cache.f fVar, Object obj, ReferenceQueue referenceQueue) {
            super(referenceQueue, obj, fVar);
            this.f3800b = i;
        }

        @Override // com.google.common.cache.a.f0, com.google.common.cache.a.a0
        public int getWeight() {
            return this.f3800b;
        }

        @Override // com.google.common.cache.a.f0, com.google.common.cache.a.a0
        public a0<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, com.google.common.cache.f<K, V> fVar) {
            return new j0(this.f3800b, fVar, v, referenceQueue);
        }
    }

    public static final class h0<K, V> extends s<K, V> {

        /* renamed from: b, reason: collision with root package name */
        public final int f3795b;

        public h0(int i, com.google.common.cache.f fVar, Object obj, ReferenceQueue referenceQueue) {
            super(referenceQueue, obj, fVar);
            this.f3795b = i;
        }

        @Override // com.google.common.cache.a.s, com.google.common.cache.a.a0
        public int getWeight() {
            return this.f3795b;
        }

        @Override // com.google.common.cache.a.s, com.google.common.cache.a.a0
        public a0<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, com.google.common.cache.f<K, V> fVar) {
            return new h0(this.f3795b, fVar, v, referenceQueue);
        }
    }

    public static final class i0<K, V> extends x<K, V> {

        /* renamed from: b, reason: collision with root package name */
        public final int f3799b;

        public i0(Object obj, int i) {
            super(obj);
            this.f3799b = i;
        }

        @Override // com.google.common.cache.a.x, com.google.common.cache.a.a0
        public int getWeight() {
            return this.f3799b;
        }
    }

    public final int f(Object obj) {
        int iHash = this.e.hash(obj);
        int i2 = iHash + ((iHash << 15) ^ (-12931));
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = (i5 << 2) + (i5 << 14) + i5;
        return (i6 >>> 16) ^ i6;
    }

    public final r i(int i2) {
        return this.c[(i2 >>> this.f3780b) & this.f3779a];
    }

    public final boolean g(com.google.common.cache.f fVar, long j2) {
        Preconditions.checkNotNull(fVar);
        if (!c() || j2 - fVar.getAccessTime() < this.k) {
            return d() && j2 - fVar.getWriteTime() >= this.l;
        }
        return true;
    }

    public static final class k0<K, V> extends AbstractQueue<com.google.common.cache.f<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        public final C0098a f3802a;

        public k0() {
            C0098a c0098a = new C0098a();
            c0098a.f3803a = c0098a;
            c0098a.f3804b = c0098a;
            this.f3802a = c0098a;
        }

        /* renamed from: com.google.common.cache.a$k0$a, reason: collision with other inner class name */
        public class C0098a extends d<K, V> {

            /* renamed from: a, reason: collision with root package name */
            public com.google.common.cache.f f3803a;

            /* renamed from: b, reason: collision with root package name */
            public com.google.common.cache.f f3804b;

            @Override // com.google.common.cache.a.d, com.google.common.cache.f
            public long getWriteTime() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.a.d, com.google.common.cache.f
            public void setWriteTime(long j) {
            }

            @Override // com.google.common.cache.a.d, com.google.common.cache.f
            public com.google.common.cache.f<K, V> getNextInWriteQueue() {
                return this.f3803a;
            }

            @Override // com.google.common.cache.a.d, com.google.common.cache.f
            public void setNextInWriteQueue(com.google.common.cache.f<K, V> fVar) {
                this.f3803a = fVar;
            }

            @Override // com.google.common.cache.a.d, com.google.common.cache.f
            public com.google.common.cache.f<K, V> getPreviousInWriteQueue() {
                return this.f3804b;
            }

            @Override // com.google.common.cache.a.d, com.google.common.cache.f
            public void setPreviousInWriteQueue(com.google.common.cache.f<K, V> fVar) {
                this.f3804b = fVar;
            }
        }

        @Override // java.util.Queue
        public boolean offer(com.google.common.cache.f<K, V> fVar) {
            com.google.common.cache.f<K, V> previousInWriteQueue = fVar.getPreviousInWriteQueue();
            com.google.common.cache.f<K, V> nextInWriteQueue = fVar.getNextInWriteQueue();
            Logger logger = a.w;
            previousInWriteQueue.setNextInWriteQueue(nextInWriteQueue);
            nextInWriteQueue.setPreviousInWriteQueue(previousInWriteQueue);
            C0098a c0098a = this.f3802a;
            com.google.common.cache.f<K, V> previousInWriteQueue2 = c0098a.getPreviousInWriteQueue();
            previousInWriteQueue2.setNextInWriteQueue(fVar);
            fVar.setPreviousInWriteQueue(previousInWriteQueue2);
            fVar.setNextInWriteQueue(c0098a);
            c0098a.setPreviousInWriteQueue(fVar);
            return true;
        }

        @Override // java.util.Queue
        public com.google.common.cache.f<K, V> peek() {
            com.google.common.cache.f<K, V> fVar = this.f3802a;
            com.google.common.cache.f<K, V> nextInWriteQueue = fVar.getNextInWriteQueue();
            if (nextInWriteQueue == fVar) {
                return null;
            }
            return nextInWriteQueue;
        }

        @Override // java.util.Queue
        public com.google.common.cache.f<K, V> poll() {
            com.google.common.cache.f<K, V> fVar = this.f3802a;
            com.google.common.cache.f<K, V> nextInWriteQueue = fVar.getNextInWriteQueue();
            if (nextInWriteQueue == fVar) {
                return null;
            }
            remove(nextInWriteQueue);
            return nextInWriteQueue;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            com.google.common.cache.f fVar = (com.google.common.cache.f) obj;
            com.google.common.cache.f<K, V> previousInWriteQueue = fVar.getPreviousInWriteQueue();
            com.google.common.cache.f<K, V> nextInWriteQueue = fVar.getNextInWriteQueue();
            Logger logger = a.w;
            previousInWriteQueue.setNextInWriteQueue(nextInWriteQueue);
            nextInWriteQueue.setPreviousInWriteQueue(previousInWriteQueue);
            q qVar = q.f3813a;
            fVar.setNextInWriteQueue(qVar);
            fVar.setPreviousInWriteQueue(qVar);
            return nextInWriteQueue != qVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((com.google.common.cache.f) obj).getNextInWriteQueue() != q.f3813a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            com.google.common.cache.f<K, V> fVar = this.f3802a;
            return fVar.getNextInWriteQueue() == fVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            com.google.common.cache.f<K, V> fVar = this.f3802a;
            int i = 0;
            for (com.google.common.cache.f<K, V> nextInWriteQueue = fVar.getNextInWriteQueue(); nextInWriteQueue != fVar; nextInWriteQueue = nextInWriteQueue.getNextInWriteQueue()) {
                i++;
            }
            return i;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            com.google.common.cache.f<K, V> fVar = this.f3802a;
            com.google.common.cache.f<K, V> nextInWriteQueue = fVar.getNextInWriteQueue();
            while (nextInWriteQueue != fVar) {
                com.google.common.cache.f<K, V> nextInWriteQueue2 = nextInWriteQueue.getNextInWriteQueue();
                Logger logger = a.w;
                q qVar = q.f3813a;
                nextInWriteQueue.setNextInWriteQueue(qVar);
                nextInWriteQueue.setPreviousInWriteQueue(qVar);
                nextInWriteQueue = nextInWriteQueue2;
            }
            fVar.setNextInWriteQueue(fVar);
            fVar.setPreviousInWriteQueue(fVar);
        }

        public class b extends AbstractSequentialIterator<com.google.common.cache.f<K, V>> {
            public b(com.google.common.cache.f fVar) {
                super(fVar);
            }

            @Override // com.google.common.collect.AbstractSequentialIterator
            public com.google.common.cache.f<K, V> computeNext(com.google.common.cache.f<K, V> fVar) {
                com.google.common.cache.f<K, V> nextInWriteQueue = fVar.getNextInWriteQueue();
                if (nextInWriteQueue == k0.this.f3802a) {
                    return null;
                }
                return nextInWriteQueue;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<com.google.common.cache.f<K, V>> iterator() {
            return new b(peek());
        }
    }

    public static final class e<K, V> extends AbstractQueue<com.google.common.cache.f<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        public final C0095a f3786a;

        public e() {
            C0095a c0095a = new C0095a();
            c0095a.f3787a = c0095a;
            c0095a.f3788b = c0095a;
            this.f3786a = c0095a;
        }

        /* renamed from: com.google.common.cache.a$e$a, reason: collision with other inner class name */
        public class C0095a extends d<K, V> {

            /* renamed from: a, reason: collision with root package name */
            public com.google.common.cache.f f3787a;

            /* renamed from: b, reason: collision with root package name */
            public com.google.common.cache.f f3788b;

            @Override // com.google.common.cache.a.d, com.google.common.cache.f
            public long getAccessTime() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.a.d, com.google.common.cache.f
            public void setAccessTime(long j) {
            }

            @Override // com.google.common.cache.a.d, com.google.common.cache.f
            public com.google.common.cache.f<K, V> getNextInAccessQueue() {
                return this.f3787a;
            }

            @Override // com.google.common.cache.a.d, com.google.common.cache.f
            public void setNextInAccessQueue(com.google.common.cache.f<K, V> fVar) {
                this.f3787a = fVar;
            }

            @Override // com.google.common.cache.a.d, com.google.common.cache.f
            public com.google.common.cache.f<K, V> getPreviousInAccessQueue() {
                return this.f3788b;
            }

            @Override // com.google.common.cache.a.d, com.google.common.cache.f
            public void setPreviousInAccessQueue(com.google.common.cache.f<K, V> fVar) {
                this.f3788b = fVar;
            }
        }

        @Override // java.util.Queue
        public boolean offer(com.google.common.cache.f<K, V> fVar) {
            com.google.common.cache.f<K, V> previousInAccessQueue = fVar.getPreviousInAccessQueue();
            com.google.common.cache.f<K, V> nextInAccessQueue = fVar.getNextInAccessQueue();
            Logger logger = a.w;
            previousInAccessQueue.setNextInAccessQueue(nextInAccessQueue);
            nextInAccessQueue.setPreviousInAccessQueue(previousInAccessQueue);
            C0095a c0095a = this.f3786a;
            com.google.common.cache.f<K, V> previousInAccessQueue2 = c0095a.getPreviousInAccessQueue();
            previousInAccessQueue2.setNextInAccessQueue(fVar);
            fVar.setPreviousInAccessQueue(previousInAccessQueue2);
            fVar.setNextInAccessQueue(c0095a);
            c0095a.setPreviousInAccessQueue(fVar);
            return true;
        }

        @Override // java.util.Queue
        public com.google.common.cache.f<K, V> peek() {
            com.google.common.cache.f<K, V> fVar = this.f3786a;
            com.google.common.cache.f<K, V> nextInAccessQueue = fVar.getNextInAccessQueue();
            if (nextInAccessQueue == fVar) {
                return null;
            }
            return nextInAccessQueue;
        }

        @Override // java.util.Queue
        public com.google.common.cache.f<K, V> poll() {
            com.google.common.cache.f<K, V> fVar = this.f3786a;
            com.google.common.cache.f<K, V> nextInAccessQueue = fVar.getNextInAccessQueue();
            if (nextInAccessQueue == fVar) {
                return null;
            }
            remove(nextInAccessQueue);
            return nextInAccessQueue;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            com.google.common.cache.f fVar = (com.google.common.cache.f) obj;
            com.google.common.cache.f<K, V> previousInAccessQueue = fVar.getPreviousInAccessQueue();
            com.google.common.cache.f<K, V> nextInAccessQueue = fVar.getNextInAccessQueue();
            Logger logger = a.w;
            previousInAccessQueue.setNextInAccessQueue(nextInAccessQueue);
            nextInAccessQueue.setPreviousInAccessQueue(previousInAccessQueue);
            q qVar = q.f3813a;
            fVar.setNextInAccessQueue(qVar);
            fVar.setPreviousInAccessQueue(qVar);
            return nextInAccessQueue != qVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((com.google.common.cache.f) obj).getNextInAccessQueue() != q.f3813a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            com.google.common.cache.f<K, V> fVar = this.f3786a;
            return fVar.getNextInAccessQueue() == fVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            com.google.common.cache.f<K, V> fVar = this.f3786a;
            int i = 0;
            for (com.google.common.cache.f<K, V> nextInAccessQueue = fVar.getNextInAccessQueue(); nextInAccessQueue != fVar; nextInAccessQueue = nextInAccessQueue.getNextInAccessQueue()) {
                i++;
            }
            return i;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            com.google.common.cache.f<K, V> fVar = this.f3786a;
            com.google.common.cache.f<K, V> nextInAccessQueue = fVar.getNextInAccessQueue();
            while (nextInAccessQueue != fVar) {
                com.google.common.cache.f<K, V> nextInAccessQueue2 = nextInAccessQueue.getNextInAccessQueue();
                Logger logger = a.w;
                q qVar = q.f3813a;
                nextInAccessQueue.setNextInAccessQueue(qVar);
                nextInAccessQueue.setPreviousInAccessQueue(qVar);
                nextInAccessQueue = nextInAccessQueue2;
            }
            fVar.setNextInAccessQueue(fVar);
            fVar.setPreviousInAccessQueue(fVar);
        }

        public class b extends AbstractSequentialIterator<com.google.common.cache.f<K, V>> {
            public b(com.google.common.cache.f fVar) {
                super(fVar);
            }

            @Override // com.google.common.collect.AbstractSequentialIterator
            public com.google.common.cache.f<K, V> computeNext(com.google.common.cache.f<K, V> fVar) {
                com.google.common.cache.f<K, V> nextInAccessQueue = fVar.getNextInAccessQueue();
                if (nextInAccessQueue == e.this.f3786a) {
                    return null;
                }
                return nextInAccessQueue;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<com.google.common.cache.f<K, V>> iterator() {
            return new b(peek());
        }
    }

    public void cleanUp() {
        for (r rVar : this.c) {
            rVar.v(rVar.f3814a.p.read());
            rVar.w();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        r[] rVarArr = this.c;
        long j2 = 0;
        for (int i2 = 0; i2 < rVarArr.length; i2++) {
            if (rVarArr[i2].f3815b != 0) {
                return false;
            }
            j2 += rVarArr[i2].d;
        }
        if (j2 == 0) {
            return true;
        }
        for (int i3 = 0; i3 < rVarArr.length; i3++) {
            if (rVarArr[i3].f3815b != 0) {
                return false;
            }
            j2 -= rVarArr[i3].d;
        }
        return j2 == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long jMax = 0;
        for (int i2 = 0; i2 < this.c.length; i2++) {
            jMax += Math.max(0, r0[i2].f3815b);
        }
        return Ints.saturatedCast(jMax);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public V get(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int iF = f(obj);
        return (V) i(iF).h(obj, iF);
    }

    public final Object e(Object obj, CacheLoader cacheLoader) {
        Object obj2;
        CacheLoader cacheLoader2;
        com.google.common.cache.f fVarJ;
        int iF = f(Preconditions.checkNotNull(obj));
        r rVarI = i(iF);
        rVarI.getClass();
        Preconditions.checkNotNull(obj);
        Preconditions.checkNotNull(cacheLoader);
        try {
            try {
                if (rVarI.f3815b == 0 || (fVarJ = rVarI.j(iF, obj)) == null) {
                    obj2 = obj;
                    cacheLoader2 = cacheLoader;
                } else {
                    long j2 = rVarI.f3814a.p.read();
                    Object objK = rVarI.k(fVarJ, j2);
                    if (objK != null) {
                        rVarI.p(fVarJ, j2);
                        rVarI.n.recordHits(1);
                        Object objX = rVarI.x(fVarJ, obj, iF, objK, j2, cacheLoader);
                        rVarI.m();
                        return objX;
                    }
                    obj2 = obj;
                    cacheLoader2 = cacheLoader;
                    a0<K, V> valueReference = fVarJ.getValueReference();
                    if (valueReference.isLoading()) {
                        Object objB = rVarI.B(fVarJ, obj2, valueReference);
                        rVarI.m();
                        return objB;
                    }
                }
                Object objL = rVarI.l(obj2, iF, cacheLoader2);
                rVarI.m();
                return objL;
            } catch (ExecutionException e2) {
                Throwable cause = e2.getCause();
                if (cause instanceof Error) {
                    throw new ExecutionError((Error) cause);
                }
                if (cause instanceof RuntimeException) {
                    throw new UncheckedExecutionException(cause);
                }
                throw e2;
            }
        } catch (Throwable th) {
            rVarI.m();
            throw th;
        }
    }

    @NullableDecl
    public V getIfPresent(Object obj) {
        int iF = f(Preconditions.checkNotNull(obj));
        V v2 = (V) i(iF).h(obj, iF);
        AbstractCache.StatsCounter statsCounter = this.r;
        if (v2 == null) {
            statsCounter.recordMisses(1);
            return v2;
        }
        statsCounter.recordHits(1);
        return v2;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @NullableDecl
    public V getOrDefault(@NullableDecl Object obj, @NullableDecl V v2) {
        V v3 = get(obj);
        return v3 != null ? v3 : v2;
    }

    public static class n<K, V> extends o<K, V> implements LoadingCache<K, V> {
        @Override // com.google.common.cache.LoadingCache
        public V get(K k) throws ExecutionException {
            a aVar = this.f3811a;
            return (V) aVar.e(k, aVar.s);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.cache.LoadingCache
        public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
            a aVar = this.f3811a;
            CacheLoader cacheLoader = aVar.s;
            AbstractCache.StatsCounter statsCounter = aVar.r;
            LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
            LinkedHashSet linkedHashSetNewLinkedHashSet = Sets.newLinkedHashSet();
            int i = 0;
            int i2 = 0;
            for (K k : iterable) {
                Object obj = aVar.get(k);
                if (!linkedHashMapNewLinkedHashMap.containsKey(k)) {
                    linkedHashMapNewLinkedHashMap.put(k, obj);
                    if (obj == null) {
                        i2++;
                        linkedHashSetNewLinkedHashSet.add(k);
                    } else {
                        i++;
                    }
                }
            }
            try {
                if (!linkedHashSetNewLinkedHashSet.isEmpty()) {
                    try {
                        Map mapH = aVar.h(linkedHashSetNewLinkedHashSet, cacheLoader);
                        for (Object obj2 : linkedHashSetNewLinkedHashSet) {
                            Object obj3 = mapH.get(obj2);
                            if (obj3 == null) {
                                throw new CacheLoader.InvalidCacheLoadException("loadAll failed to return a value for " + obj2);
                            }
                            linkedHashMapNewLinkedHashMap.put(obj2, obj3);
                        }
                    } catch (CacheLoader.UnsupportedLoadingOperationException unused) {
                        for (Object obj4 : linkedHashSetNewLinkedHashSet) {
                            i2--;
                            linkedHashMapNewLinkedHashMap.put(obj4, aVar.e(obj4, cacheLoader));
                        }
                    }
                }
                ImmutableMap<K, V> immutableMapCopyOf = ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
                statsCounter.recordHits(i);
                statsCounter.recordMisses(i2);
                return immutableMapCopyOf;
            } catch (Throwable th) {
                statsCounter.recordHits(i);
                statsCounter.recordMisses(i2);
                throw th;
            }
        }

        @Override // com.google.common.cache.LoadingCache
        public V getUnchecked(K k) {
            try {
                return get(k);
            } catch (ExecutionException e) {
                throw new UncheckedExecutionException(e.getCause());
            }
        }

        @Override // com.google.common.cache.LoadingCache
        public void refresh(K k) {
            a aVar = this.f3811a;
            aVar.getClass();
            int iF = aVar.f(Preconditions.checkNotNull(k));
            aVar.i(iF).q(k, iF, aVar.s, false);
        }

        @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
        public final V apply(K k) {
            return getUnchecked(k);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map h(java.util.LinkedHashSet r8, com.google.common.cache.CacheLoader r9) throws java.lang.Throwable {
        /*
            r7 = this;
            com.google.common.cache.AbstractCache$StatsCounter r0 = r7.r
            com.google.common.base.Preconditions.checkNotNull(r9)
            com.google.common.base.Preconditions.checkNotNull(r8)
            com.google.common.base.Stopwatch r1 = com.google.common.base.Stopwatch.createStarted()
            r2 = 1
            r3 = 0
            java.util.Map r8 = r9.loadAll(r8)     // Catch: java.lang.Throwable -> L8a java.lang.Error -> L8d java.lang.Exception -> L94 java.lang.RuntimeException -> L9b java.lang.InterruptedException -> La2 com.google.common.cache.CacheLoader.UnsupportedLoadingOperationException -> Lb0
            if (r8 == 0) goto L6a
            r1.stop()
            java.util.Set r4 = r8.entrySet()
            java.util.Iterator r4 = r4.iterator()
        L1f:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L3e
            java.lang.Object r5 = r4.next()
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5
            java.lang.Object r6 = r5.getKey()
            java.lang.Object r5 = r5.getValue()
            if (r6 == 0) goto L3c
            if (r5 != 0) goto L38
            goto L3c
        L38:
            r7.put(r6, r5)
            goto L1f
        L3c:
            r3 = 1
            goto L1f
        L3e:
            if (r3 != 0) goto L4a
            java.util.concurrent.TimeUnit r9 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r1 = r1.elapsed(r9)
            r0.recordLoadSuccess(r1)
            return r8
        L4a:
            java.util.concurrent.TimeUnit r8 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r1 = r1.elapsed(r8)
            r0.recordLoadException(r1)
            com.google.common.cache.CacheLoader$InvalidCacheLoadException r8 = new com.google.common.cache.CacheLoader$InvalidCacheLoadException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r9)
            java.lang.String r9 = " returned null keys or values from loadAll"
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            r8.<init>(r9)
            throw r8
        L6a:
            java.util.concurrent.TimeUnit r8 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r1 = r1.elapsed(r8)
            r0.recordLoadException(r1)
            com.google.common.cache.CacheLoader$InvalidCacheLoadException r8 = new com.google.common.cache.CacheLoader$InvalidCacheLoadException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r9)
            java.lang.String r9 = " returned null map from loadAll"
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            r8.<init>(r9)
            throw r8
        L8a:
            r8 = move-exception
            r2 = 0
            goto Lb3
        L8d:
            r8 = move-exception
            com.google.common.util.concurrent.ExecutionError r9 = new com.google.common.util.concurrent.ExecutionError     // Catch: java.lang.Throwable -> L8a
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L8a
            throw r9     // Catch: java.lang.Throwable -> L8a
        L94:
            r8 = move-exception
            java.util.concurrent.ExecutionException r9 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> L8a
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L8a
            throw r9     // Catch: java.lang.Throwable -> L8a
        L9b:
            r8 = move-exception
            com.google.common.util.concurrent.UncheckedExecutionException r9 = new com.google.common.util.concurrent.UncheckedExecutionException     // Catch: java.lang.Throwable -> L8a
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L8a
            throw r9     // Catch: java.lang.Throwable -> L8a
        La2:
            r8 = move-exception
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L8a
            r9.interrupt()     // Catch: java.lang.Throwable -> L8a
            java.util.concurrent.ExecutionException r9 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> L8a
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L8a
            throw r9     // Catch: java.lang.Throwable -> L8a
        Lb0:
            r8 = move-exception
            throw r8     // Catch: java.lang.Throwable -> Lb2
        Lb2:
            r8 = move-exception
        Lb3:
            if (r2 != 0) goto Lbe
            java.util.concurrent.TimeUnit r9 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r1 = r1.elapsed(r9)
            r0.recordLoadException(r1)
        Lbe:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.a.h(java.util.LinkedHashSet, com.google.common.cache.CacheLoader):java.util.Map");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0040 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044 A[Catch: all -> 0x0053, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0053, blocks: (B:6:0x000f, B:8:0x0013, B:24:0x0044, B:11:0x0023, B:13:0x002b, B:16:0x0034, B:19:0x003a, B:20:0x003d, B:15:0x0031), top: B:35:0x000f, inners: #1 }] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean containsKey(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 0
            if (r7 != 0) goto L4
            return r0
        L4:
            int r1 = r6.f(r7)
            com.google.common.cache.a$r r2 = r6.i(r1)
            r2.getClass()
            int r3 = r2.f3815b     // Catch: java.lang.Throwable -> L53
            if (r3 == 0) goto L55
            com.google.common.cache.a r3 = r2.f3814a     // Catch: java.lang.Throwable -> L53
            com.google.common.base.Ticker r3 = r3.p     // Catch: java.lang.Throwable -> L53
            long r3 = r3.read()     // Catch: java.lang.Throwable -> L53
            com.google.common.cache.f r7 = r2.j(r1, r7)     // Catch: java.lang.Throwable -> L53
            r1 = 0
            if (r7 != 0) goto L23
            goto L37
        L23:
            com.google.common.cache.a r5 = r2.f3814a     // Catch: java.lang.Throwable -> L53
            boolean r5 = r5.g(r7, r3)     // Catch: java.lang.Throwable -> L53
            if (r5 == 0) goto L3e
            boolean r7 = r2.tryLock()     // Catch: java.lang.Throwable -> L53
            if (r7 == 0) goto L37
            r2.g(r3)     // Catch: java.lang.Throwable -> L39
            r2.unlock()     // Catch: java.lang.Throwable -> L53
        L37:
            r7 = r1
            goto L3e
        L39:
            r7 = move-exception
            r2.unlock()     // Catch: java.lang.Throwable -> L53
            throw r7     // Catch: java.lang.Throwable -> L53
        L3e:
            if (r7 != 0) goto L44
            r2.m()
            return r0
        L44:
            com.google.common.cache.a$a0 r7 = r7.getValueReference()     // Catch: java.lang.Throwable -> L53
            java.lang.Object r7 = r7.get()     // Catch: java.lang.Throwable -> L53
            if (r7 == 0) goto L4f
            r0 = 1
        L4f:
            r2.m()
            return r0
        L53:
            r7 = move-exception
            goto L59
        L55:
            r2.m()
            return r0
        L59:
            r2.m()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.a.containsKey(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        long j2 = this.p.read();
        r[] rVarArr = this.c;
        long j3 = -1;
        int i2 = 0;
        while (i2 < 3) {
            int length = rVarArr.length;
            long j4 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                r rVar = rVarArr[i3];
                int i4 = rVar.f3815b;
                AtomicReferenceArray atomicReferenceArray = rVar.f;
                for (int i5 = 0; i5 < atomicReferenceArray.length(); i5++) {
                    com.google.common.cache.f next = (com.google.common.cache.f) atomicReferenceArray.get(i5);
                    while (next != null) {
                        r[] rVarArr2 = rVarArr;
                        Object objK = rVar.k(next, j2);
                        com.google.common.cache.f fVar = next;
                        if (objK != null && this.f.equivalent(obj, objK)) {
                            return true;
                        }
                        next = fVar.getNext();
                        rVarArr = rVarArr2;
                    }
                }
                j4 += rVar.d;
            }
            r[] rVarArr3 = rVarArr;
            if (j4 == j3) {
                return false;
            }
            i2++;
            j3 = j4;
            rVarArr = rVarArr3;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iF = f(k2);
        return (V) i(iF).n(k2, iF, v2, false);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iF = f(k2);
        return (V) i(iF).n(k2, iF, v2, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(@NullableDecl Object obj) {
        RemovalCause removalCause;
        if (obj == null) {
            return null;
        }
        int iF = f(obj);
        r rVarI = i(iF);
        rVarI.lock();
        try {
            rVarI.v(rVarI.f3814a.p.read());
            AtomicReferenceArray atomicReferenceArray = rVarI.f;
            int length = iF & (atomicReferenceArray.length() - 1);
            com.google.common.cache.f fVar = (com.google.common.cache.f) atomicReferenceArray.get(length);
            for (com.google.common.cache.f next = fVar; next != null; next = next.getNext()) {
                Object key = next.getKey();
                if (next.getHash() == iF && key != null && rVarI.f3814a.e.equivalent(obj, key)) {
                    a0<K, V> valueReference = next.getValueReference();
                    V v2 = valueReference.get();
                    if (v2 != null) {
                        removalCause = RemovalCause.EXPLICIT;
                    } else {
                        if (!valueReference.isActive()) {
                            rVarI.unlock();
                            rVarI.w();
                            return null;
                        }
                        removalCause = RemovalCause.COLLECTED;
                    }
                    RemovalCause removalCause2 = removalCause;
                    rVarI.d++;
                    com.google.common.cache.f fVarU = rVarI.u(fVar, next, key, v2, valueReference, removalCause2);
                    int i2 = rVarI.f3815b - 1;
                    atomicReferenceArray.set(length, fVarU);
                    rVarI.f3815b = i2;
                    rVarI.unlock();
                    rVarI.w();
                    return v2;
                }
            }
            rVarI.unlock();
            rVarI.w();
            return null;
        } catch (Throwable th) {
            rVarI.unlock();
            rVarI.w();
            throw th;
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        RemovalCause removalCause;
        if (obj == null || obj2 == null) {
            return false;
        }
        int iF = f(obj);
        r rVarI = i(iF);
        rVarI.lock();
        try {
            rVarI.v(rVarI.f3814a.p.read());
            AtomicReferenceArray atomicReferenceArray = rVarI.f;
            int length = iF & (atomicReferenceArray.length() - 1);
            com.google.common.cache.f fVar = (com.google.common.cache.f) atomicReferenceArray.get(length);
            for (com.google.common.cache.f next = fVar; next != null; next = next.getNext()) {
                Object key = next.getKey();
                if (next.getHash() == iF && key != null && rVarI.f3814a.e.equivalent(obj, key)) {
                    a0<K, V> valueReference = next.getValueReference();
                    V v2 = valueReference.get();
                    if (rVarI.f3814a.f.equivalent(obj2, v2)) {
                        removalCause = RemovalCause.EXPLICIT;
                    } else {
                        if (v2 != null || !valueReference.isActive()) {
                            rVarI.unlock();
                            rVarI.w();
                            return false;
                        }
                        removalCause = RemovalCause.COLLECTED;
                    }
                    RemovalCause removalCause2 = removalCause;
                    rVarI.d++;
                    com.google.common.cache.f fVarU = rVarI.u(fVar, next, key, v2, valueReference, removalCause2);
                    int i2 = rVarI.f3815b - 1;
                    atomicReferenceArray.set(length, fVarU);
                    rVarI.f3815b = i2;
                    boolean z2 = removalCause2 == RemovalCause.EXPLICIT;
                    rVarI.unlock();
                    rVarI.w();
                    return z2;
                }
            }
            rVarI.unlock();
            rVarI.w();
            return false;
        } catch (Throwable th) {
            rVarI.unlock();
            rVarI.w();
            throw th;
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k2, @NullableDecl V v2, V v3) throws Throwable {
        K k3 = k2;
        Preconditions.checkNotNull(k3);
        Preconditions.checkNotNull(v3);
        if (v2 == null) {
            return false;
        }
        int iF = f(k2);
        r rVarI = i(iF);
        rVarI.lock();
        try {
            long j2 = rVarI.f3814a.p.read();
            rVarI.v(j2);
            AtomicReferenceArray atomicReferenceArray = rVarI.f;
            int length = (atomicReferenceArray.length() - 1) & iF;
            com.google.common.cache.f next = (com.google.common.cache.f) atomicReferenceArray.get(length);
            int i2 = length;
            while (next != null) {
                int i3 = i2;
                Object key = next.getKey();
                if (next.getHash() == iF && key != null && rVarI.f3814a.e.equivalent(k3, key)) {
                    a0<K, V> valueReference = next.getValueReference();
                    V v4 = valueReference.get();
                    if (v4 == null) {
                        if (valueReference.isActive()) {
                            rVarI.d++;
                            com.google.common.cache.f fVarU = rVarI.u(next, next, key, v4, valueReference, RemovalCause.COLLECTED);
                            int i4 = rVarI.f3815b - 1;
                            atomicReferenceArray.set(i3, fVarU);
                            rVarI.f3815b = i4;
                        }
                        rVarI.unlock();
                        rVarI.w();
                        return false;
                    }
                    com.google.common.cache.f fVar = next;
                    if (!rVarI.f3814a.f.equivalent(v2, v4)) {
                        rVarI.o(fVar, j2);
                        rVarI.unlock();
                        rVarI.w();
                        return false;
                    }
                    rVarI.d++;
                    rVarI.d(k3, v4, valueReference.getWeight(), RemovalCause.REPLACED);
                    try {
                        rVarI.y(fVar, k3, v3, j2);
                        rVarI.e(fVar);
                        rVarI.unlock();
                        rVarI.w();
                        return true;
                    } catch (Throwable th) {
                        th = th;
                        rVarI = rVarI;
                        rVarI.unlock();
                        rVarI.w();
                        throw th;
                    }
                }
                next = next.getNext();
                i2 = i3;
                k3 = k2;
            }
            rVarI.unlock();
            rVarI.w();
            return false;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iF = f(k2);
        r rVarI = i(iF);
        rVarI.lock();
        try {
            long j2 = rVarI.f3814a.p.read();
            rVarI.v(j2);
            AtomicReferenceArray atomicReferenceArray = rVarI.f;
            int length = iF & (atomicReferenceArray.length() - 1);
            com.google.common.cache.f fVar = (com.google.common.cache.f) atomicReferenceArray.get(length);
            com.google.common.cache.f next = fVar;
            while (next != null) {
                Object key = next.getKey();
                if (next.getHash() == iF && key != null && rVarI.f3814a.e.equivalent(k2, key)) {
                    a0<K, V> valueReference = next.getValueReference();
                    V v3 = valueReference.get();
                    if (v3 != null) {
                        com.google.common.cache.f fVar2 = next;
                        rVarI.d++;
                        rVarI.d(k2, v3, valueReference.getWeight(), RemovalCause.REPLACED);
                        rVarI.y(fVar2, k2, v2, j2);
                        rVarI.e(fVar2);
                        rVarI.unlock();
                        rVarI.w();
                        return v3;
                    }
                    if (valueReference.isActive()) {
                        rVarI.d++;
                        com.google.common.cache.f fVarU = rVarI.u(fVar, next, key, v3, valueReference, RemovalCause.COLLECTED);
                        int i2 = rVarI.f3815b - 1;
                        atomicReferenceArray.set(length, fVarU);
                        rVarI.f3815b = i2;
                    }
                    rVarI.unlock();
                    rVarI.w();
                    return null;
                }
                V v4 = v2;
                fVar = fVar;
                k2 = k2;
                next = next.getNext();
                v2 = v4;
            }
            return null;
        } finally {
            rVarI.unlock();
            rVarI.w();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (r rVar : this.c) {
            if (rVar.f3815b != 0) {
                rVar.lock();
                try {
                    rVar.v(rVar.f3814a.p.read());
                    AtomicReferenceArray atomicReferenceArray = rVar.f;
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        for (com.google.common.cache.f next = (com.google.common.cache.f) atomicReferenceArray.get(i2); next != null; next = next.getNext()) {
                            if (next.getValueReference().isActive()) {
                                Object key = next.getKey();
                                V v2 = next.getValueReference().get();
                                RemovalCause removalCause = (key == null || v2 == null) ? RemovalCause.COLLECTED : RemovalCause.EXPLICIT;
                                next.getHash();
                                rVar.d(key, v2, next.getValueReference().getWeight(), removalCause);
                            }
                        }
                    }
                    for (int i3 = 0; i3 < atomicReferenceArray.length(); i3++) {
                        atomicReferenceArray.set(i3, null);
                    }
                    a aVar = rVar.f3814a;
                    t.C0101a c0101a = t.f3818a;
                    if (aVar.f3781g != c0101a) {
                        while (rVar.h.poll() != null) {
                        }
                    }
                    if (aVar.h != c0101a) {
                        while (rVar.i.poll() != null) {
                        }
                    }
                    rVar.l.clear();
                    rVar.m.clear();
                    rVar.k.set(0);
                    rVar.d++;
                    rVar.f3815b = 0;
                    rVar.unlock();
                    rVar.w();
                } catch (Throwable th) {
                    rVar.unlock();
                    rVar.w();
                    throw th;
                }
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.t;
        if (set != null) {
            return set;
        }
        k kVar = new k(this);
        this.t = kVar;
        return kVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.u;
        if (collection != null) {
            return collection;
        }
        b0 b0Var = new b0(this);
        this.u = b0Var;
        return b0Var;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @GwtIncompatible
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.v;
        if (set != null) {
            return set;
        }
        h hVar = new h(this);
        this.v = hVar;
        return hVar;
    }

    public abstract class i<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public int f3796a;

        /* renamed from: b, reason: collision with root package name */
        public int f3797b = -1;
        public r c;
        public AtomicReferenceArray d;
        public com.google.common.cache.f e;
        public l0 f;

        /* renamed from: g, reason: collision with root package name */
        public l0 f3798g;

        public i() {
            this.f3796a = a.this.c.length - 1;
            a();
        }

        public final void a() {
            this.f = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i = this.f3796a;
                if (i < 0) {
                    return;
                }
                r[] rVarArr = a.this.c;
                this.f3796a = i - 1;
                r rVar = rVarArr[i];
                this.c = rVar;
                if (rVar.f3815b != 0) {
                    this.d = this.c.f;
                    this.f3797b = r0.length() - 1;
                    if (e()) {
                        return;
                    }
                }
            }
        }

        public final boolean d() {
            com.google.common.cache.f fVar = this.e;
            if (fVar == null) {
                return false;
            }
            while (true) {
                this.e = fVar.getNext();
                com.google.common.cache.f fVar2 = this.e;
                if (fVar2 == null) {
                    return false;
                }
                if (b(fVar2)) {
                    return true;
                }
                fVar = this.e;
            }
        }

        public final boolean e() {
            while (true) {
                int i = this.f3797b;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray atomicReferenceArray = this.d;
                this.f3797b = i - 1;
                com.google.common.cache.f fVar = (com.google.common.cache.f) atomicReferenceArray.get(i);
                this.e = fVar;
                if (fVar != null && (b(fVar) || d())) {
                    return true;
                }
            }
        }

        public final boolean b(com.google.common.cache.f fVar) {
            V v;
            a aVar = a.this;
            try {
                long j = aVar.p.read();
                Object key = fVar.getKey();
                V v2 = null;
                if (fVar.getKey() != null && (v = fVar.getValueReference().get()) != null && !aVar.g(fVar, j)) {
                    v2 = v;
                }
                if (v2 == null) {
                    this.c.m();
                    return false;
                }
                this.f = new l0(key, v2);
                this.c.m();
                return true;
            } catch (Throwable th) {
                this.c.m();
                throw th;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f != null;
        }

        public final l0 c() {
            l0 l0Var = this.f;
            if (l0Var == null) {
                throw new NoSuchElementException();
            }
            this.f3798g = l0Var;
            a();
            return this.f3798g;
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.f3798g != null);
            a.this.remove(this.f3798g.getKey());
            this.f3798g = null;
        }
    }

    public final class j extends a<K, V>.i<K> {
        @Override // java.util.Iterator
        public K next() {
            return (K) c().getKey();
        }
    }

    public final class z extends a<K, V>.i<V> {
        @Override // java.util.Iterator
        public V next() {
            return (V) c().getValue();
        }
    }

    public final class l0 implements Map.Entry<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f3806a;

        /* renamed from: b, reason: collision with root package name */
        public Object f3807b;

        public l0(Object obj, Object obj2) {
            this.f3806a = obj;
            this.f3807b = obj2;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return (K) this.f3806a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return (V) this.f3807b;
        }

        @Override // java.util.Map.Entry
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (this.f3806a.equals(entry.getKey()) && this.f3807b.equals(entry.getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f3806a.hashCode() ^ this.f3807b.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) a.this.put(this.f3806a, v);
            this.f3807b = v;
            return v2;
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    public final class g extends a<K, V>.i<Map.Entry<K, V>> {
        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            return c();
        }
    }

    public abstract class c<T> extends AbstractSet<T> {

        /* renamed from: a, reason: collision with root package name */
        public final ConcurrentMap f3784a;

        public c(ConcurrentMap concurrentMap) {
            this.f3784a = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f3784a.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f3784a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f3784a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return a.a(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <E> E[] toArray(E[] eArr) {
            return (E[]) a.a(this).toArray(eArr);
        }
    }

    public static ArrayList a(AbstractCollection abstractCollection) {
        ArrayList arrayList = new ArrayList(abstractCollection.size());
        Iterators.addAll(arrayList, abstractCollection.iterator());
        return arrayList;
    }

    public final class k extends a<K, V>.c<K> {
        public k(ConcurrentMap concurrentMap) {
            super(concurrentMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new j();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f3784a.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.f3784a.remove(obj) != null;
        }
    }

    public final class b0 extends AbstractCollection<V> {

        /* renamed from: a, reason: collision with root package name */
        public final ConcurrentMap f3782a;

        public b0(ConcurrentMap concurrentMap) {
            this.f3782a = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f3782a.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f3782a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f3782a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new z();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f3782a.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return a.a(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <E> E[] toArray(E[] eArr) {
            return (E[]) a.a(this).toArray(eArr);
        }
    }

    public final class h extends a<K, V>.c<Map.Entry<K, V>> {
        public h(ConcurrentMap concurrentMap) {
            super(concurrentMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            a aVar;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = (aVar = a.this).get(key)) != null && aVar.f.equivalent(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && a.this.remove(key, entry.getValue());
        }
    }

    public static final class l<K, V> extends p<K, V> implements LoadingCache<K, V>, Serializable {
        @Override // com.google.common.cache.LoadingCache
        public V get(K k) throws ExecutionException {
            throw null;
        }

        @Override // com.google.common.cache.LoadingCache
        public V getUnchecked(K k) {
            throw null;
        }

        @Override // com.google.common.cache.LoadingCache
        public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
            throw null;
        }

        @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
        public final V apply(K k) {
            throw null;
        }

        @Override // com.google.common.cache.LoadingCache
        public void refresh(K k) {
            throw null;
        }
    }

    public static class o<K, V> implements Cache<K, V>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final a f3811a;

        public o(a aVar) {
            this.f3811a = aVar;
        }

        @Override // com.google.common.cache.Cache
        @NullableDecl
        public V getIfPresent(Object obj) {
            return (V) this.f3811a.getIfPresent(obj);
        }

        @Override // com.google.common.cache.Cache
        public V get(K k, Callable<? extends V> callable) throws ExecutionException {
            Preconditions.checkNotNull(callable);
            return (V) this.f3811a.e(k, new C0100a(callable));
        }

        /* renamed from: com.google.common.cache.a$o$a, reason: collision with other inner class name */
        public class C0100a extends CacheLoader<Object, V> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Callable f3812a;

            public C0100a(Callable callable) {
                this.f3812a = callable;
            }

            @Override // com.google.common.cache.CacheLoader
            public V load(Object obj) throws Exception {
                return (V) this.f3812a.call();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.cache.Cache
        public ImmutableMap<K, V> getAllPresent(Iterable<?> iterable) {
            a aVar = this.f3811a;
            aVar.getClass();
            LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
            int i = 0;
            int i2 = 0;
            for (Object obj : iterable) {
                Object obj2 = aVar.get(obj);
                if (obj2 == null) {
                    i2++;
                } else {
                    linkedHashMapNewLinkedHashMap.put(obj, obj2);
                    i++;
                }
            }
            AbstractCache.StatsCounter statsCounter = aVar.r;
            statsCounter.recordHits(i);
            statsCounter.recordMisses(i2);
            return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
        }

        @Override // com.google.common.cache.Cache
        public void put(K k, V v) {
            this.f3811a.put(k, v);
        }

        @Override // com.google.common.cache.Cache
        public void putAll(Map<? extends K, ? extends V> map) {
            this.f3811a.putAll(map);
        }

        @Override // com.google.common.cache.Cache
        public void invalidate(Object obj) {
            Preconditions.checkNotNull(obj);
            this.f3811a.remove(obj);
        }

        @Override // com.google.common.cache.Cache
        public void invalidateAll(Iterable<?> iterable) {
            a aVar = this.f3811a;
            aVar.getClass();
            Iterator<?> it = iterable.iterator();
            while (it.hasNext()) {
                aVar.remove(it.next());
            }
        }

        @Override // com.google.common.cache.Cache
        public void invalidateAll() {
            this.f3811a.clear();
        }

        @Override // com.google.common.cache.Cache
        public long size() {
            long jMax = 0;
            for (int i = 0; i < this.f3811a.c.length; i++) {
                jMax += Math.max(0, r0[i].f3815b);
            }
            return jMax;
        }

        @Override // com.google.common.cache.Cache
        public ConcurrentMap<K, V> asMap() {
            return this.f3811a;
        }

        @Override // com.google.common.cache.Cache
        public CacheStats stats() {
            AbstractCache.SimpleStatsCounter simpleStatsCounter = new AbstractCache.SimpleStatsCounter();
            a aVar = this.f3811a;
            simpleStatsCounter.incrementBy(aVar.r);
            for (r rVar : aVar.c) {
                simpleStatsCounter.incrementBy(rVar.n);
            }
            return simpleStatsCounter.snapshot();
        }

        @Override // com.google.common.cache.Cache
        public void cleanUp() {
            this.f3811a.cleanUp();
        }
    }
}
