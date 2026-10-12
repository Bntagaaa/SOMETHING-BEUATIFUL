package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Equivalence;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMaker;
import com.google.common.collect.m3.j;
import com.google.common.collect.m3.o;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
class m3<K, V, E extends j<K, V, E>, S extends o<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {
    public static final a j = new a();

    /* renamed from: a, reason: collision with root package name */
    public final transient int f4270a;

    /* renamed from: b, reason: collision with root package name */
    public final transient int f4271b;
    public final transient o[] c;
    public final int d;
    public final Equivalence e;
    public final transient k f;

    /* renamed from: g, reason: collision with root package name */
    public transient Set f4272g;
    public transient Collection h;
    public transient Set i;

    public static class a implements h0<Object, Object, f> {
        @Override // com.google.common.collect.m3.h0
        public void clear() {
        }

        @Override // com.google.common.collect.m3.h0
        public h0<Object, Object, f> copyFor(ReferenceQueue<Object> referenceQueue, f fVar) {
            return this;
        }

        @Override // com.google.common.collect.m3.h0
        public Object get() {
            return null;
        }

        @Override // com.google.common.collect.m3.h0
        public f getEntry() {
            return null;
        }
    }

    public static abstract class b<K, V> extends ForwardingConcurrentMap<K, V> implements Serializable {
        @Override // com.google.common.collect.ForwardingConcurrentMap, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public ConcurrentMap<K, V> delegate() {
            return null;
        }
    }

    public interface g0<K, V, E extends j<K, V, E>> extends j<K, V, E> {
        h0<K, V, E> getValueReference();
    }

    public interface h0<K, V, E extends j<K, V, E>> {
        void clear();

        h0<K, V, E> copyFor(ReferenceQueue<V> referenceQueue, E e);

        @NullableDecl
        V get();

        E getEntry();
    }

    public interface j<K, V, E extends j<K, V, E>> {
        int getHash();

        K getKey();

        E getNext();

        V getValue();
    }

    public interface k<K, V, E extends j<K, V, E>, S extends o<K, V, E, S>> {
        E copy(S s, E e, @NullableDecl E e2);

        E newEntry(S s, K k, int i, @NullableDecl E e);

        S newSegment(m3<K, V, E, S> m3Var, int i, int i2);

        void setValue(S s, E e, V v);

        q valueStrength();
    }

    public static final class p<K, V> extends b<K, V> {
    }

    public static final class s<K> extends o<K, MapMaker.a, r<K>, s<K>> {
        @Override // com.google.common.collect.m3.o
        public final o k() {
            return this;
        }
    }

    public static final class u<K, V> extends o<K, V, t<K, V>, u<K, V>> {
        @Override // com.google.common.collect.m3.o
        public final o k() {
            return this;
        }
    }

    public interface x<K, V, E extends j<K, V, E>> extends j<K, V, E> {
    }

    public m3(MapMaker mapMaker, k kVar) {
        int i2 = mapMaker.c;
        this.d = Math.min(i2 == -1 ? 4 : i2, 65536);
        this.e = (Equivalence) MoreObjects.firstNonNull(mapMaker.f, mapMaker.a().a());
        this.f = kVar;
        int i3 = mapMaker.f3996b;
        int iMin = Math.min(i3 == -1 ? 16 : i3, 1073741824);
        int i4 = 1;
        int i5 = 0;
        int i6 = 1;
        int i7 = 0;
        while (i6 < this.d) {
            i7++;
            i6 <<= 1;
        }
        this.f4271b = 32 - i7;
        this.f4270a = i6 - 1;
        this.c = new o[i6];
        int i8 = iMin / i6;
        while (i4 < (i6 * i8 < iMin ? i8 + 1 : i8)) {
            i4 <<= 1;
        }
        while (true) {
            o[] oVarArr = this.c;
            if (i5 >= oVarArr.length) {
                return;
            }
            oVarArr[i5] = this.f.newSegment(this, i4, -1);
            i5++;
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class q {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4291a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final b f4292b = new b();

        public abstract Equivalence a();

        public enum a extends q {
            public a() {
                super("STRONG", 0);
            }

            @Override // com.google.common.collect.m3.q
            public final Equivalence a() {
                return Equivalence.equals();
            }
        }

        public enum b extends q {
            public b() {
                super("WEAK", 1);
            }

            @Override // com.google.common.collect.m3.q
            public final Equivalence a() {
                return Equivalence.identity();
            }
        }
    }

    public static abstract class c<K, V, E extends j<K, V, E>> implements j<K, V, E> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4274a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4275b;
        public final c c;

        public c(Object obj, int i, c cVar) {
            this.f4274a = obj;
            this.f4275b = i;
            this.c = cVar;
        }

        @Override // com.google.common.collect.m3.j
        public K getKey() {
            return (K) this.f4274a;
        }

        @Override // com.google.common.collect.m3.j
        public int getHash() {
            return this.f4275b;
        }

        @Override // com.google.common.collect.m3.j
        public E getNext() {
            return this.c;
        }
    }

    public static final class t<K, V> extends c<K, V, t<K, V>> implements x<K, V, t<K, V>> {
        public volatile Object d;

        public t(Object obj, int i, t tVar) {
            super(obj, i, tVar);
            this.d = null;
        }

        @Override // com.google.common.collect.m3.j
        @NullableDecl
        public V getValue() {
            return (V) this.d;
        }

        public static final class a<K, V> implements k<K, V, t<K, V>, u<K, V>> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f4294a = new a();

            public void setValue(u<K, V> uVar, t<K, V> tVar, V v) {
                tVar.d = v;
            }

            @Override // com.google.common.collect.m3.k
            public t<K, V> copy(u<K, V> uVar, t<K, V> tVar, @NullableDecl t<K, V> tVar2) {
                t<K, V> tVar3 = new t<>(tVar.f4274a, tVar.f4275b, tVar2);
                tVar3.d = tVar.d;
                return tVar3;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.m3.k
            public /* bridge */ /* synthetic */ j newEntry(o oVar, Object obj, int i, @NullableDecl j jVar) {
                return newEntry((u<u<K, V>, V>) oVar, (u<K, V>) obj, i, (t<u<K, V>, V>) jVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.m3.k
            public /* bridge */ /* synthetic */ void setValue(o oVar, j jVar, Object obj) {
                setValue((u<K, t<K, V>>) oVar, (t<K, t<K, V>>) jVar, (t<K, V>) obj);
            }

            @Override // com.google.common.collect.m3.k
            public q valueStrength() {
                return q.f4291a;
            }

            @Override // com.google.common.collect.m3.k
            public u<K, V> newSegment(m3<K, V, t<K, V>, u<K, V>> m3Var, int i, int i2) {
                return new u<>(m3Var, i, i2);
            }

            public t<K, V> newEntry(u<K, V> uVar, K k, int i, @NullableDecl t<K, V> tVar) {
                return new t<>(k, i, tVar);
            }
        }
    }

    public static final class v<K, V> extends c<K, V, v<K, V>> implements g0<K, V, v<K, V>> {
        public volatile h0 d;

        public v(Object obj, int i, v vVar) {
            super(obj, i, vVar);
            this.d = m3.j;
        }

        @Override // com.google.common.collect.m3.j
        public V getValue() {
            return (V) this.d.get();
        }

        @Override // com.google.common.collect.m3.g0
        public h0<K, V, v<K, V>> getValueReference() {
            return this.d;
        }

        public static final class a<K, V> implements k<K, V, v<K, V>, w<K, V>> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f4295a = new a();

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.m3.k
            public /* bridge */ /* synthetic */ j newEntry(o oVar, Object obj, int i, @NullableDecl j jVar) {
                return newEntry((w<w<K, V>, V>) oVar, (w<K, V>) obj, i, (v<w<K, V>, V>) jVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.m3.k
            public /* bridge */ /* synthetic */ void setValue(o oVar, j jVar, Object obj) {
                setValue((w<K, v<K, V>>) oVar, (v<K, v<K, V>>) jVar, (v<K, V>) obj);
            }

            @Override // com.google.common.collect.m3.k
            public q valueStrength() {
                return q.f4292b;
            }

            @Override // com.google.common.collect.m3.k
            public w<K, V> newSegment(m3<K, V, v<K, V>, w<K, V>> m3Var, int i, int i2) {
                return new w<>(m3Var, i, i2);
            }

            @Override // com.google.common.collect.m3.k
            public v<K, V> copy(w<K, V> wVar, v<K, V> vVar, @NullableDecl v<K, V> vVar2) {
                int i = o.f4288g;
                if (vVar.getValue() == null) {
                    return null;
                }
                ReferenceQueue<V> referenceQueue = wVar.h;
                v<K, V> vVar3 = new v<>(vVar.f4274a, vVar.f4275b, vVar2);
                vVar3.d = vVar.d.copyFor(referenceQueue, vVar3);
                return vVar3;
            }

            public v<K, V> newEntry(w<K, V> wVar, K k, int i, @NullableDecl v<K, V> vVar) {
                return new v<>(k, i, vVar);
            }

            public void setValue(w<K, V> wVar, v<K, V> vVar, V v) {
                ReferenceQueue referenceQueue = wVar.h;
                h0 h0Var = vVar.d;
                vVar.d = new i0(referenceQueue, v, vVar);
                h0Var.clear();
            }
        }
    }

    public static final class r<K> extends c<K, MapMaker.a, r<K>> implements x<K, MapMaker.a, r<K>> {
        @Override // com.google.common.collect.m3.j
        public MapMaker.a getValue() {
            return MapMaker.a.f3997a;
        }

        public static final class a<K> implements k<K, MapMaker.a, r<K>, s<K>> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f4293a = new a();

            @Override // com.google.common.collect.m3.k
            public void setValue(s<K> sVar, r<K> rVar, MapMaker.a aVar) {
            }

            @Override // com.google.common.collect.m3.k
            public r<K> copy(s<K> sVar, r<K> rVar, @NullableDecl r<K> rVar2) {
                return new r<>(rVar.f4274a, rVar.f4275b, rVar2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.m3.k
            public /* bridge */ /* synthetic */ j newEntry(o oVar, Object obj, int i, @NullableDecl j jVar) {
                return newEntry((s<s<K>>) oVar, (s<K>) obj, i, (r<s<K>>) jVar);
            }

            @Override // com.google.common.collect.m3.k
            public q valueStrength() {
                return q.f4291a;
            }

            @Override // com.google.common.collect.m3.k
            public s<K> newSegment(m3<K, MapMaker.a, r<K>, s<K>> m3Var, int i, int i2) {
                return new s<>(m3Var, i, i2);
            }

            public r<K> newEntry(s<K> sVar, K k, int i, @NullableDecl r<K> rVar) {
                return new r<>(k, i, rVar);
            }
        }
    }

    public static abstract class d<K, V, E extends j<K, V, E>> extends WeakReference<K> implements j<K, V, E> {

        /* renamed from: a, reason: collision with root package name */
        public final int f4277a;

        /* renamed from: b, reason: collision with root package name */
        public final d f4278b;

        public d(ReferenceQueue referenceQueue, Object obj, int i, d dVar) {
            super(obj, referenceQueue);
            this.f4277a = i;
            this.f4278b = dVar;
        }

        @Override // com.google.common.collect.m3.j
        public K getKey() {
            return get();
        }

        @Override // com.google.common.collect.m3.j
        public int getHash() {
            return this.f4277a;
        }

        @Override // com.google.common.collect.m3.j
        public E getNext() {
            return this.f4278b;
        }
    }

    public static final class a0<K> extends d<K, MapMaker.a, a0<K>> implements x<K, MapMaker.a, a0<K>> {
        @Override // com.google.common.collect.m3.j
        public MapMaker.a getValue() {
            return MapMaker.a.f3997a;
        }

        public static final class a<K> implements k<K, MapMaker.a, a0<K>, b0<K>> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f4273a = new a();

            @Override // com.google.common.collect.m3.k
            public void setValue(b0<K> b0Var, a0<K> a0Var, MapMaker.a aVar) {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.m3.k
            public /* bridge */ /* synthetic */ j newEntry(o oVar, Object obj, int i, @NullableDecl j jVar) {
                return newEntry((b0<b0<K>>) oVar, (b0<K>) obj, i, (a0<b0<K>>) jVar);
            }

            @Override // com.google.common.collect.m3.k
            public q valueStrength() {
                return q.f4291a;
            }

            @Override // com.google.common.collect.m3.k
            public b0<K> newSegment(m3<K, MapMaker.a, a0<K>, b0<K>> m3Var, int i, int i2) {
                return new b0<>(m3Var, i, i2);
            }

            @Override // com.google.common.collect.m3.k
            public a0<K> copy(b0<K> b0Var, a0<K> a0Var, @NullableDecl a0<K> a0Var2) {
                if (a0Var.getKey() == null) {
                    return null;
                }
                return new a0<>(b0Var.h, a0Var.getKey(), a0Var.f4277a, a0Var2);
            }

            public a0<K> newEntry(b0<K> b0Var, K k, int i, @NullableDecl a0<K> a0Var) {
                return new a0<>(b0Var.h, k, i, a0Var);
            }
        }
    }

    public static final class c0<K, V> extends d<K, V, c0<K, V>> implements x<K, V, c0<K, V>> {
        public volatile Object c;

        public c0(ReferenceQueue referenceQueue, Object obj, int i, c0 c0Var) {
            super(referenceQueue, obj, i, c0Var);
            this.c = null;
        }

        @Override // com.google.common.collect.m3.j
        @NullableDecl
        public V getValue() {
            return (V) this.c;
        }

        public static final class a<K, V> implements k<K, V, c0<K, V>, d0<K, V>> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f4276a = new a();

            public void setValue(d0<K, V> d0Var, c0<K, V> c0Var, V v) {
                c0Var.c = v;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.m3.k
            public /* bridge */ /* synthetic */ j newEntry(o oVar, Object obj, int i, @NullableDecl j jVar) {
                return newEntry((d0<d0<K, V>, V>) oVar, (d0<K, V>) obj, i, (c0<d0<K, V>, V>) jVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.m3.k
            public /* bridge */ /* synthetic */ void setValue(o oVar, j jVar, Object obj) {
                setValue((d0<K, c0<K, V>>) oVar, (c0<K, c0<K, V>>) jVar, (c0<K, V>) obj);
            }

            @Override // com.google.common.collect.m3.k
            public q valueStrength() {
                return q.f4291a;
            }

            @Override // com.google.common.collect.m3.k
            public d0<K, V> newSegment(m3<K, V, c0<K, V>, d0<K, V>> m3Var, int i, int i2) {
                return new d0<>(m3Var, i, i2);
            }

            @Override // com.google.common.collect.m3.k
            public c0<K, V> copy(d0<K, V> d0Var, c0<K, V> c0Var, @NullableDecl c0<K, V> c0Var2) {
                if (c0Var.getKey() == null) {
                    return null;
                }
                c0<K, V> c0Var3 = new c0<>(d0Var.h, c0Var.getKey(), c0Var.f4277a, c0Var2);
                c0Var3.c = c0Var.c;
                return c0Var3;
            }

            public c0<K, V> newEntry(d0<K, V> d0Var, K k, int i, @NullableDecl c0<K, V> c0Var) {
                return new c0<>(d0Var.h, k, i, c0Var);
            }
        }
    }

    public static final class e0<K, V> extends d<K, V, e0<K, V>> implements g0<K, V, e0<K, V>> {
        public volatile h0 c;

        public e0(ReferenceQueue referenceQueue, Object obj, int i, e0 e0Var) {
            super(referenceQueue, obj, i, e0Var);
            this.c = m3.j;
        }

        @Override // com.google.common.collect.m3.j
        public V getValue() {
            return (V) this.c.get();
        }

        @Override // com.google.common.collect.m3.g0
        public h0<K, V, e0<K, V>> getValueReference() {
            return this.c;
        }

        public static final class a<K, V> implements k<K, V, e0<K, V>, f0<K, V>> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f4279a = new a();

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.m3.k
            public /* bridge */ /* synthetic */ j newEntry(o oVar, Object obj, int i, @NullableDecl j jVar) {
                return newEntry((f0<f0<K, V>, V>) oVar, (f0<K, V>) obj, i, (e0<f0<K, V>, V>) jVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.m3.k
            public /* bridge */ /* synthetic */ void setValue(o oVar, j jVar, Object obj) {
                setValue((f0<K, e0<K, V>>) oVar, (e0<K, e0<K, V>>) jVar, (e0<K, V>) obj);
            }

            @Override // com.google.common.collect.m3.k
            public q valueStrength() {
                return q.f4292b;
            }

            @Override // com.google.common.collect.m3.k
            public f0<K, V> newSegment(m3<K, V, e0<K, V>, f0<K, V>> m3Var, int i, int i2) {
                return new f0<>(m3Var, i, i2);
            }

            @Override // com.google.common.collect.m3.k
            public e0<K, V> copy(f0<K, V> f0Var, e0<K, V> e0Var, @NullableDecl e0<K, V> e0Var2) {
                if (e0Var.getKey() == null) {
                    return null;
                }
                int i = o.f4288g;
                if (e0Var.getValue() == null) {
                    return null;
                }
                ReferenceQueue referenceQueue = f0Var.h;
                ReferenceQueue<V> referenceQueue2 = f0Var.i;
                e0<K, V> e0Var3 = new e0<>(referenceQueue, e0Var.getKey(), e0Var.f4277a, e0Var2);
                e0Var3.c = e0Var.c.copyFor(referenceQueue2, e0Var3);
                return e0Var3;
            }

            public e0<K, V> newEntry(f0<K, V> f0Var, K k, int i, @NullableDecl e0<K, V> e0Var) {
                return new e0<>(f0Var.h, k, i, e0Var);
            }

            public void setValue(f0<K, V> f0Var, e0<K, V> e0Var, V v) {
                ReferenceQueue referenceQueue = f0Var.i;
                h0 h0Var = e0Var.c;
                e0Var.c = new i0(referenceQueue, v, e0Var);
                h0Var.clear();
            }
        }
    }

    public static final class f implements j<Object, Object, f> {
        private f() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.m3.j
        public f getNext() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.m3.j
        public int getHash() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.m3.j
        public Object getKey() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.m3.j
        public Object getValue() {
            throw new AssertionError();
        }
    }

    public static final class i0<K, V, E extends j<K, V, E>> extends WeakReference<V> implements h0<K, V, E> {

        /* renamed from: a, reason: collision with root package name */
        public final j f4284a;

        public i0(ReferenceQueue referenceQueue, Object obj, j jVar) {
            super(obj, referenceQueue);
            this.f4284a = jVar;
        }

        @Override // com.google.common.collect.m3.h0
        public E getEntry() {
            return (E) this.f4284a;
        }

        @Override // com.google.common.collect.m3.h0
        public h0<K, V, E> copyFor(ReferenceQueue<V> referenceQueue, E e) {
            return new i0(referenceQueue, get(), e);
        }
    }

    public final int b(Object obj) {
        int iHash = this.e.hash(obj);
        int i2 = iHash + ((iHash << 15) ^ (-12931));
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = (i5 << 2) + (i5 << 14) + i5;
        return (i6 >>> 16) ^ i6;
    }

    public final o c(int i2) {
        return this.c[(i2 >>> this.f4271b) & this.f4270a];
    }

    public static abstract class o<K, V, E extends j<K, V, E>, S extends o<K, V, E, S>> extends ReentrantLock {

        /* renamed from: g, reason: collision with root package name */
        public static final /* synthetic */ int f4288g = 0;

        /* renamed from: a, reason: collision with root package name */
        public final m3 f4289a;

        /* renamed from: b, reason: collision with root package name */
        public volatile int f4290b;
        public int c;
        public int d;
        public volatile AtomicReferenceArray e;
        public final AtomicInteger f = new AtomicInteger();

        public void e() {
        }

        public void f() {
        }

        public abstract o k();

        public o(m3 m3Var, int i, int i2) {
            this.f4289a = m3Var;
            AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(i);
            int length = (atomicReferenceArray.length() * 3) / 4;
            this.d = length;
            if (length == i2) {
                this.d = length + 1;
            }
            this.e = atomicReferenceArray;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void l(j jVar, Object obj) {
            this.f4289a.f.setValue(k(), jVar, obj);
        }

        public final void m() {
            if (tryLock()) {
                try {
                    f();
                } finally {
                    unlock();
                }
            }
        }

        public final void a(ReferenceQueue referenceQueue) {
            int i = 0;
            do {
                Object objPoll = referenceQueue.poll();
                if (objPoll == null) {
                    return;
                }
                j jVar = (j) objPoll;
                m3 m3Var = this.f4289a;
                m3Var.getClass();
                int hash = jVar.getHash();
                o oVarC = m3Var.c(hash);
                oVarC.lock();
                try {
                    AtomicReferenceArray atomicReferenceArray = oVarC.e;
                    int length = hash & (atomicReferenceArray.length() - 1);
                    j jVar2 = (j) atomicReferenceArray.get(length);
                    j next = jVar2;
                    while (true) {
                        if (next == null) {
                            break;
                        }
                        if (next != jVar) {
                            next = next.getNext();
                        } else {
                            oVarC.c++;
                            j jVarI = oVarC.i(jVar2, next);
                            int i2 = oVarC.f4290b - 1;
                            atomicReferenceArray.set(length, jVarI);
                            oVarC.f4290b = i2;
                            break;
                        }
                    }
                    i++;
                } finally {
                    oVarC.unlock();
                }
            } while (i != 16);
        }

        public final void b(ReferenceQueue referenceQueue) {
            int i = 0;
            do {
                Object objPoll = referenceQueue.poll();
                if (objPoll == null) {
                    return;
                }
                h0<K, V, E> h0Var = (h0) objPoll;
                m3 m3Var = this.f4289a;
                m3Var.getClass();
                j entry = h0Var.getEntry();
                int hash = entry.getHash();
                o oVarC = m3Var.c(hash);
                Object key = entry.getKey();
                oVarC.lock();
                try {
                    AtomicReferenceArray atomicReferenceArray = oVarC.e;
                    int length = (atomicReferenceArray.length() - 1) & hash;
                    j jVar = (j) atomicReferenceArray.get(length);
                    j next = jVar;
                    while (true) {
                        if (next == null) {
                            break;
                        }
                        Object key2 = next.getKey();
                        if (next.getHash() != hash || key2 == null || !oVarC.f4289a.e.equivalent(key, key2)) {
                            next = next.getNext();
                        } else if (((g0) next).getValueReference() == h0Var) {
                            oVarC.c++;
                            j jVarI = oVarC.i(jVar, next);
                            int i2 = oVarC.f4290b - 1;
                            atomicReferenceArray.set(length, jVarI);
                            oVarC.f4290b = i2;
                        }
                    }
                    i++;
                } finally {
                    oVarC.unlock();
                }
            } while (i != 16);
        }

        public final j d(int i, Object obj) {
            if (this.f4290b == 0) {
                return null;
            }
            for (j next = (j) this.e.get((r0.length() - 1) & i); next != null; next = next.getNext()) {
                if (next.getHash() == i) {
                    Object key = next.getKey();
                    if (key == null) {
                        m();
                    } else if (this.f4289a.e.equivalent(obj, key)) {
                        return next;
                    }
                }
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Object h(Object obj, int i, Object obj2, boolean z) {
            lock();
            try {
                j();
                int i2 = this.f4290b + 1;
                if (i2 > this.d) {
                    c();
                    i2 = this.f4290b + 1;
                }
                AtomicReferenceArray atomicReferenceArray = this.e;
                int length = (atomicReferenceArray.length() - 1) & i;
                j jVar = (j) atomicReferenceArray.get(length);
                for (j next = jVar; next != null; next = next.getNext()) {
                    Object key = next.getKey();
                    if (next.getHash() == i && key != null && this.f4289a.e.equivalent(obj, key)) {
                        Object value = next.getValue();
                        if (value == null) {
                            this.c++;
                            l(next, obj2);
                            this.f4290b = this.f4290b;
                            unlock();
                            return null;
                        }
                        if (z) {
                            unlock();
                            return value;
                        }
                        this.c++;
                        l(next, obj2);
                        unlock();
                        return value;
                    }
                }
                this.c++;
                j jVarNewEntry = this.f4289a.f.newEntry(k(), obj, i, jVar);
                l(jVarNewEntry, obj2);
                atomicReferenceArray.set(length, jVarNewEntry);
                this.f4290b = i2;
                unlock();
                return null;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void c() {
            AtomicReferenceArray atomicReferenceArray = this.e;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i = this.f4290b;
            AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(length << 1);
            this.d = (atomicReferenceArray2.length() * 3) / 4;
            int length2 = atomicReferenceArray2.length() - 1;
            for (int i2 = 0; i2 < length; i2++) {
                j next = (j) atomicReferenceArray.get(i2);
                if (next != null) {
                    j next2 = next.getNext();
                    int hash = next.getHash() & length2;
                    if (next2 == null) {
                        atomicReferenceArray2.set(hash, next);
                    } else {
                        j jVar = next;
                        while (next2 != null) {
                            int hash2 = next2.getHash() & length2;
                            if (hash2 != hash) {
                                jVar = next2;
                                hash = hash2;
                            }
                            next2 = next2.getNext();
                        }
                        atomicReferenceArray2.set(hash, jVar);
                        while (next != jVar) {
                            int hash3 = next.getHash() & length2;
                            j jVarCopy = this.f4289a.f.copy(k(), next, (j) atomicReferenceArray2.get(hash3));
                            if (jVarCopy != null) {
                                atomicReferenceArray2.set(hash3, jVarCopy);
                            } else {
                                i--;
                            }
                            next = next.getNext();
                        }
                    }
                }
            }
            this.e = atomicReferenceArray2;
            this.f4290b = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final j i(j jVar, j jVar2) {
            int i = this.f4290b;
            j next = jVar2.getNext();
            while (jVar != jVar2) {
                j jVarCopy = this.f4289a.f.copy(k(), jVar, next);
                if (jVarCopy != null) {
                    next = jVarCopy;
                } else {
                    i--;
                }
                jVar = jVar.getNext();
            }
            this.f4290b = i;
            return next;
        }

        public final void g() {
            if ((this.f.incrementAndGet() & 63) == 0) {
                j();
            }
        }

        public final void j() {
            if (tryLock()) {
                try {
                    f();
                    this.f.set(0);
                } finally {
                    unlock();
                }
            }
        }
    }

    public static final class w<K, V> extends o<K, V, v<K, V>, w<K, V>> {
        public final ReferenceQueue h;

        @Override // com.google.common.collect.m3.o
        public final o k() {
            return this;
        }

        public w(m3 m3Var, int i, int i2) {
            super(m3Var, i, i2);
            this.h = new ReferenceQueue();
        }

        @Override // com.google.common.collect.m3.o
        public final void f() {
            b(this.h);
        }

        @Override // com.google.common.collect.m3.o
        public final void e() {
            while (this.h.poll() != null) {
            }
        }
    }

    public static final class d0<K, V> extends o<K, V, c0<K, V>, d0<K, V>> {
        public final ReferenceQueue h;

        @Override // com.google.common.collect.m3.o
        public final o k() {
            return this;
        }

        public d0(m3 m3Var, int i, int i2) {
            super(m3Var, i, i2);
            this.h = new ReferenceQueue();
        }

        @Override // com.google.common.collect.m3.o
        public final void f() {
            a(this.h);
        }

        @Override // com.google.common.collect.m3.o
        public final void e() {
            while (this.h.poll() != null) {
            }
        }
    }

    public static final class f0<K, V> extends o<K, V, e0<K, V>, f0<K, V>> {
        public final ReferenceQueue h;
        public final ReferenceQueue i;

        @Override // com.google.common.collect.m3.o
        public final o k() {
            return this;
        }

        public f0(m3 m3Var, int i, int i2) {
            super(m3Var, i, i2);
            this.h = new ReferenceQueue();
            this.i = new ReferenceQueue();
        }

        @Override // com.google.common.collect.m3.o
        public final void f() {
            a(this.h);
            b(this.i);
        }

        @Override // com.google.common.collect.m3.o
        public final void e() {
            while (this.h.poll() != null) {
            }
        }
    }

    public static final class b0<K> extends o<K, MapMaker.a, a0<K>, b0<K>> {
        public final ReferenceQueue h;

        @Override // com.google.common.collect.m3.o
        public final o k() {
            return this;
        }

        public b0(m3 m3Var, int i, int i2) {
            super(m3Var, i, i2);
            this.h = new ReferenceQueue();
        }

        @Override // com.google.common.collect.m3.o
        public final void f() {
            a(this.h);
        }

        @Override // com.google.common.collect.m3.o
        public final void e() {
            while (this.h.poll() != null) {
            }
        }
    }

    public static final class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            throw null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        o[] oVarArr = this.c;
        long j2 = 0;
        for (int i2 = 0; i2 < oVarArr.length; i2++) {
            if (oVarArr[i2].f4290b != 0) {
                return false;
            }
            j2 += oVarArr[i2].c;
        }
        if (j2 == 0) {
            return true;
        }
        for (int i3 = 0; i3 < oVarArr.length; i3++) {
            if (oVarArr[i3].f4290b != 0) {
                return false;
            }
            j2 -= oVarArr[i3].c;
        }
        return j2 == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j2 = 0;
        for (int i2 = 0; i2 < this.c.length; i2++) {
            j2 += r0[i2].f4290b;
        }
        return Ints.saturatedCast(j2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int iB = b(obj);
        o oVarC = c(iB);
        oVarC.getClass();
        try {
            j jVarD = oVarC.d(iB, obj);
            if (jVarD == null) {
                return null;
            }
            V v2 = (V) jVarD.getValue();
            if (v2 == null) {
                oVarC.m();
            }
            return v2;
        } finally {
            oVarC.g();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        boolean z2 = false;
        if (obj == null) {
            return false;
        }
        int iB = b(obj);
        o oVarC = c(iB);
        oVarC.getClass();
        try {
            if (oVarC.f4290b == 0) {
                return false;
            }
            j jVarD = oVarC.d(iB, obj);
            if (jVarD != null) {
                if (jVarD.getValue() != null) {
                    z2 = true;
                }
            }
            return z2;
        } finally {
            oVarC.g();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        Object value;
        if (obj != null) {
            o[] oVarArr = this.c;
            long j2 = -1;
            int i2 = 0;
            while (i2 < 3) {
                int length = oVarArr.length;
                long j3 = 0;
                for (int i3 = 0; i3 < length; i3++) {
                    o oVar = oVarArr[i3];
                    int i4 = oVar.f4290b;
                    AtomicReferenceArray atomicReferenceArray = oVar.e;
                    for (int i5 = 0; i5 < atomicReferenceArray.length(); i5++) {
                        for (j next = (j) atomicReferenceArray.get(i5); next != null; next = next.getNext()) {
                            if (next.getKey() == null || (value = next.getValue()) == null) {
                                oVar.m();
                                value = null;
                            }
                            if (value != null && this.f.valueStrength().a().equivalent(obj, value)) {
                                return true;
                            }
                        }
                    }
                    j3 += oVar.c;
                }
                if (j3 == j2) {
                    return false;
                }
                i2++;
                j2 = j3;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    public V put(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iB = b(k2);
        return (V) c(iB).h(k2, iB, v2, false);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public V putIfAbsent(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iB = b(k2);
        return (V) c(iB).h(k2, iB, v2, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    public V remove(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int iB = b(obj);
        o oVarC = c(iB);
        oVarC.lock();
        try {
            oVarC.j();
            AtomicReferenceArray atomicReferenceArray = oVarC.e;
            int length = (atomicReferenceArray.length() - 1) & iB;
            j jVar = (j) atomicReferenceArray.get(length);
            for (j next = jVar; next != null; next = next.getNext()) {
                Object key = next.getKey();
                if (next.getHash() == iB && key != null && oVarC.f4289a.e.equivalent(obj, key)) {
                    V v2 = (V) next.getValue();
                    if (v2 == null && next.getValue() != null) {
                        return null;
                    }
                    oVarC.c++;
                    j jVarI = oVarC.i(jVar, next);
                    int i2 = oVarC.f4290b - 1;
                    atomicReferenceArray.set(length, jVarI);
                    oVarC.f4290b = i2;
                    return v2;
                }
            }
            return null;
        } finally {
            oVarC.unlock();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        boolean z2 = false;
        if (obj == null || obj2 == null) {
            return false;
        }
        int iB = b(obj);
        o oVarC = c(iB);
        oVarC.lock();
        try {
            oVarC.j();
            AtomicReferenceArray atomicReferenceArray = oVarC.e;
            int length = (atomicReferenceArray.length() - 1) & iB;
            j jVar = (j) atomicReferenceArray.get(length);
            for (j next = jVar; next != null; next = next.getNext()) {
                Object key = next.getKey();
                if (next.getHash() == iB && key != null && oVarC.f4289a.e.equivalent(obj, key)) {
                    if (oVarC.f4289a.f.valueStrength().a().equivalent(obj2, next.getValue())) {
                        z2 = true;
                    } else if (next.getValue() != null) {
                        return false;
                    }
                    oVarC.c++;
                    j jVarI = oVarC.i(jVar, next);
                    int i2 = oVarC.f4290b - 1;
                    atomicReferenceArray.set(length, jVarI);
                    oVarC.f4290b = i2;
                    return z2;
                }
            }
            return false;
        } finally {
            oVarC.unlock();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public boolean replace(K k2, @NullableDecl V v2, V v3) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v3);
        if (v2 == null) {
            return false;
        }
        int iB = b(k2);
        o oVarC = c(iB);
        oVarC.lock();
        try {
            oVarC.j();
            AtomicReferenceArray atomicReferenceArray = oVarC.e;
            int length = (atomicReferenceArray.length() - 1) & iB;
            j jVar = (j) atomicReferenceArray.get(length);
            for (j next = jVar; next != null; next = next.getNext()) {
                Object key = next.getKey();
                if (next.getHash() == iB && key != null && oVarC.f4289a.e.equivalent(k2, key)) {
                    Object value = next.getValue();
                    if (value != null) {
                        if (!oVarC.f4289a.f.valueStrength().a().equivalent(v2, value)) {
                            return false;
                        }
                        oVarC.c++;
                        oVarC.l(next, v3);
                        return true;
                    }
                    if (next.getValue() == null) {
                        oVarC.c++;
                        j jVarI = oVarC.i(jVar, next);
                        int i2 = oVarC.f4290b - 1;
                        atomicReferenceArray.set(length, jVarI);
                        oVarC.f4290b = i2;
                    }
                    return false;
                }
            }
            return false;
        } finally {
            oVarC.unlock();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public V replace(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iB = b(k2);
        o oVarC = c(iB);
        oVarC.lock();
        try {
            oVarC.j();
            AtomicReferenceArray atomicReferenceArray = oVarC.e;
            int length = (atomicReferenceArray.length() - 1) & iB;
            j jVar = (j) atomicReferenceArray.get(length);
            for (j next = jVar; next != null; next = next.getNext()) {
                Object key = next.getKey();
                if (next.getHash() == iB && key != null && oVarC.f4289a.e.equivalent(k2, key)) {
                    V v3 = (V) next.getValue();
                    if (v3 != null) {
                        oVarC.c++;
                        oVarC.l(next, v2);
                        return v3;
                    }
                    if (next.getValue() == null) {
                        oVarC.c++;
                        j jVarI = oVarC.i(jVar, next);
                        int i2 = oVarC.f4290b - 1;
                        atomicReferenceArray.set(length, jVarI);
                        oVarC.f4290b = i2;
                    }
                    return null;
                }
            }
            return null;
        } finally {
            oVarC.unlock();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (o oVar : this.c) {
            if (oVar.f4290b != 0) {
                oVar.lock();
                try {
                    AtomicReferenceArray atomicReferenceArray = oVar.e;
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        atomicReferenceArray.set(i2, null);
                    }
                    oVar.e();
                    oVar.f.set(0);
                    oVar.c++;
                    oVar.f4290b = 0;
                    oVar.unlock();
                } catch (Throwable th) {
                    oVar.unlock();
                    throw th;
                }
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f4272g;
        if (set != null) {
            return set;
        }
        m mVar = new m();
        this.f4272g = mVar;
        return mVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.h;
        if (collection != null) {
            return collection;
        }
        z zVar = new z();
        this.h = zVar;
        return zVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.i;
        if (set != null) {
            return set;
        }
        h hVar = new h();
        this.i = hVar;
        return hVar;
    }

    public abstract class i<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public int f4281a;

        /* renamed from: b, reason: collision with root package name */
        public int f4282b = -1;
        public o c;
        public AtomicReferenceArray d;
        public j e;
        public j0 f;

        /* renamed from: g, reason: collision with root package name */
        public j0 f4283g;

        public i() {
            this.f4281a = m3.this.c.length - 1;
            a();
        }

        public final void a() {
            this.f = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i = this.f4281a;
                if (i < 0) {
                    return;
                }
                o[] oVarArr = m3.this.c;
                this.f4281a = i - 1;
                o oVar = oVarArr[i];
                this.c = oVar;
                if (oVar.f4290b != 0) {
                    this.d = this.c.e;
                    this.f4282b = r0.length() - 1;
                    if (e()) {
                        return;
                    }
                }
            }
        }

        public final boolean d() {
            j jVar = this.e;
            if (jVar == null) {
                return false;
            }
            while (true) {
                this.e = jVar.getNext();
                j jVar2 = this.e;
                if (jVar2 == null) {
                    return false;
                }
                if (b(jVar2)) {
                    return true;
                }
                jVar = this.e;
            }
        }

        public final boolean e() {
            while (true) {
                int i = this.f4282b;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray atomicReferenceArray = this.d;
                this.f4282b = i - 1;
                j jVar = (j) atomicReferenceArray.get(i);
                this.e = jVar;
                if (jVar != null && (b(jVar) || d())) {
                    return true;
                }
            }
        }

        public final boolean b(j jVar) {
            m3 m3Var = m3.this;
            try {
                Object key = jVar.getKey();
                Object value = jVar.getKey() == null ? null : jVar.getValue();
                if (value == null) {
                    this.c.g();
                    return false;
                }
                this.f = new j0(key, value);
                this.c.g();
                return true;
            } catch (Throwable th) {
                this.c.g();
                throw th;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f != null;
        }

        public final j0 c() {
            j0 j0Var = this.f;
            if (j0Var == null) {
                throw new NoSuchElementException();
            }
            this.f4283g = j0Var;
            a();
            return this.f4283g;
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.collect.g0.e(this.f4283g != null);
            m3.this.remove(this.f4283g.getKey());
            this.f4283g = null;
        }
    }

    public final class l extends m3<K, V, E, S>.i<K> {
        @Override // java.util.Iterator
        public K next() {
            return (K) c().getKey();
        }
    }

    public final class y extends m3<K, V, E, S>.i<V> {
        @Override // java.util.Iterator
        public V next() {
            return (V) c().getValue();
        }
    }

    public final class j0 extends com.google.common.collect.k<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4285a;

        /* renamed from: b, reason: collision with root package name */
        public Object f4286b;

        public j0(Object obj, Object obj2) {
            this.f4285a = obj;
            this.f4286b = obj2;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public K getKey() {
            return (K) this.f4285a;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public V getValue() {
            return (V) this.f4286b;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (this.f4285a.equals(entry.getKey()) && this.f4286b.equals(entry.getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public int hashCode() {
            return this.f4285a.hashCode() ^ this.f4286b.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.k, java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) m3.this.put(this.f4285a, v);
            this.f4286b = v;
            return v2;
        }
    }

    public final class g extends m3<K, V, E, S>.i<Map.Entry<K, V>> {
        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            return c();
        }
    }

    public final class m extends n<K> {
        public m() {
            super(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new l();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return m3.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return m3.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return m3.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return m3.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            m3.this.clear();
        }
    }

    public final class z extends AbstractCollection<V> {
        public z() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new y();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return m3.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return m3.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return m3.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            m3.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return m3.a(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) m3.a(this).toArray(tArr);
        }
    }

    public final class h extends n<Map.Entry<K, V>> {
        public h() {
            super(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            m3 m3Var;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = (m3Var = m3.this).get(key)) != null && m3Var.f.valueStrength().a().equivalent(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && m3.this.remove(key, entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return m3.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return m3.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            m3.this.clear();
        }
    }

    public static abstract class n<E> extends AbstractSet<E> {
        private n() {
        }

        public /* synthetic */ n(int i) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return m3.a(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) m3.a(this).toArray(tArr);
        }
    }

    public static ArrayList a(AbstractCollection abstractCollection) {
        ArrayList arrayList = new ArrayList(abstractCollection.size());
        Iterators.addAll(arrayList, abstractCollection.iterator());
        return arrayList;
    }
}
