package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class HashBiMap<K, V> extends AbstractMap<K, V> implements BiMap<K, V>, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public transient Object[] f3875a;

    /* renamed from: b, reason: collision with root package name */
    public transient Object[] f3876b;
    public transient int c;
    public transient int d;
    public transient int[] e;
    public transient int[] f;

    /* renamed from: g, reason: collision with root package name */
    public transient int[] f3877g;
    public transient int[] h;
    public transient int i;
    public transient int j;
    public transient int[] k;
    public transient int[] l;
    public transient Set m;
    public transient Set n;
    public transient Set o;
    public transient BiMap p;

    public static <K, V> HashBiMap<K, V> create() {
        return create(16);
    }

    public static <K, V> HashBiMap<K, V> create(int i) {
        return new HashBiMap<>(i);
    }

    public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> map) {
        HashBiMap<K, V> hashBiMapCreate = create(map.size());
        hashBiMapCreate.putAll(map);
        return hashBiMapCreate;
    }

    public HashBiMap(int i) {
        g0.b(i, "expectedSize");
        int iA = e2.a(i, 1.0d);
        this.c = 0;
        this.f3875a = new Object[i];
        this.f3876b = new Object[i];
        this.e = b(iA);
        this.f = b(iA);
        this.f3877g = b(i);
        this.h = b(i);
        this.i = -2;
        this.j = -2;
        this.k = b(i);
        this.l = b(i);
    }

    public static int[] b(int i) {
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.c;
    }

    public final void e(int i) {
        int[] iArr = this.f3877g;
        if (iArr.length < i) {
            int iA = ImmutableCollection.Builder.a(iArr.length, i);
            this.f3875a = Arrays.copyOf(this.f3875a, iA);
            this.f3876b = Arrays.copyOf(this.f3876b, iA);
            int[] iArr2 = this.f3877g;
            int length = iArr2.length;
            int[] iArrCopyOf = Arrays.copyOf(iArr2, iA);
            Arrays.fill(iArrCopyOf, length, iA, -1);
            this.f3877g = iArrCopyOf;
            int[] iArr3 = this.h;
            int length2 = iArr3.length;
            int[] iArrCopyOf2 = Arrays.copyOf(iArr3, iA);
            Arrays.fill(iArrCopyOf2, length2, iA, -1);
            this.h = iArrCopyOf2;
            int[] iArr4 = this.k;
            int length3 = iArr4.length;
            int[] iArrCopyOf3 = Arrays.copyOf(iArr4, iA);
            Arrays.fill(iArrCopyOf3, length3, iA, -1);
            this.k = iArrCopyOf3;
            int[] iArr5 = this.l;
            int length4 = iArr5.length;
            int[] iArrCopyOf4 = Arrays.copyOf(iArr5, iA);
            Arrays.fill(iArrCopyOf4, length4, iA, -1);
            this.l = iArrCopyOf4;
        }
        if (this.e.length < i) {
            int iA2 = e2.a(i, 1.0d);
            this.e = b(iA2);
            this.f = b(iA2);
            for (int i2 = 0; i2 < this.c; i2++) {
                int iA3 = a(e2.c(this.f3875a[i2]));
                int[] iArr6 = this.f3877g;
                int[] iArr7 = this.e;
                iArr6[i2] = iArr7[iA3];
                iArr7[iA3] = i2;
                int iA4 = a(e2.c(this.f3876b[i2]));
                int[] iArr8 = this.h;
                int[] iArr9 = this.f;
                iArr8[i2] = iArr9[iA4];
                iArr9[iA4] = i2;
            }
        }
    }

    public final int a(int i) {
        return i & (this.e.length - 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return f(e2.c(obj), obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public V get(@NullableDecl Object obj) {
        int iF = f(e2.c(obj), obj);
        if (iF == -1) {
            return null;
        }
        return (V) this.f3876b[iF];
    }

    public final int f(int i, Object obj) {
        int[] iArr = this.e;
        int[] iArr2 = this.f3877g;
        Object[] objArr = this.f3875a;
        for (int i2 = iArr[a(i)]; i2 != -1; i2 = iArr2[i2]) {
            if (Objects.equal(objArr[i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return g(e2.c(obj), obj) != -1;
    }

    public final int g(int i, Object obj) {
        int[] iArr = this.f;
        int[] iArr2 = this.h;
        Object[] objArr = this.f3876b;
        for (int i2 = iArr[a(i)]; i2 != -1; i2 = iArr2[i2]) {
            if (Objects.equal(objArr[i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    public static class d<K, V> extends AbstractMap<V, K> implements BiMap<V, K>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final HashBiMap f3883a;

        /* renamed from: b, reason: collision with root package name */
        public transient Set f3884b;

        @Override // java.util.AbstractMap, java.util.Map
        @NullableDecl
        public K get(@NullableDecl Object obj) {
            HashBiMap hashBiMap = this.f3883a;
            hashBiMap.getClass();
            int iG = hashBiMap.g(e2.c(obj), obj);
            if (iG == -1) {
                return null;
            }
            return (K) hashBiMap.f3875a[iG];
        }

        public d(HashBiMap hashBiMap) {
            this.f3883a = hashBiMap;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f3883a.c;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return this.f3883a.containsValue(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsValue(@NullableDecl Object obj) {
            return this.f3883a.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
        @CanIgnoreReturnValue
        @NullableDecl
        public K put(@NullableDecl V v, @NullableDecl K k) {
            return (K) this.f3883a.k(v, k, false);
        }

        @Override // com.google.common.collect.BiMap
        @CanIgnoreReturnValue
        @NullableDecl
        public K forcePut(@NullableDecl V v, @NullableDecl K k) {
            return (K) this.f3883a.k(v, k, true);
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<K, V> inverse() {
            return this.f3883a;
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CanIgnoreReturnValue
        @NullableDecl
        public K remove(@NullableDecl Object obj) {
            HashBiMap hashBiMap = this.f3883a;
            hashBiMap.getClass();
            int iC = e2.c(obj);
            int iG = hashBiMap.g(iC, obj);
            if (iG == -1) {
                return null;
            }
            K k = (K) hashBiMap.f3875a[iG];
            hashBiMap.n(iG, iC);
            return k;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f3883a.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<V> keySet() {
            return this.f3883a.values();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> values() {
            return this.f3883a.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<V, K>> entrySet() {
            Set<Map.Entry<V, K>> set = this.f3884b;
            if (set != null) {
                return set;
            }
            e eVar = new e(this.f3883a);
            this.f3884b = eVar;
            return eVar;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
    @CanIgnoreReturnValue
    public V put(@NullableDecl K k, @NullableDecl V v) {
        return (V) j(k, v, false);
    }

    public final Object j(Object obj, Object obj2, boolean z) {
        int iC = e2.c(obj);
        int iF = f(iC, obj);
        if (iF != -1) {
            Object obj3 = this.f3876b[iF];
            if (Objects.equal(obj3, obj2)) {
                return obj2;
            }
            p(obj2, iF, z);
            return obj3;
        }
        int iC2 = e2.c(obj2);
        int iG = g(iC2, obj2);
        if (!z) {
            Preconditions.checkArgument(iG == -1, "Value already present: %s", obj2);
        } else if (iG != -1) {
            n(iG, iC2);
        }
        e(this.c + 1);
        Object[] objArr = this.f3875a;
        int i = this.c;
        objArr[i] = obj;
        this.f3876b[i] = obj2;
        h(i, iC);
        i(this.c, iC2);
        q(this.j, this.c);
        q(this.c, -2);
        this.c++;
        this.d++;
        return null;
    }

    @Override // com.google.common.collect.BiMap
    @CanIgnoreReturnValue
    @NullableDecl
    public V forcePut(@NullableDecl K k, @NullableDecl V v) {
        return (V) j(k, v, true);
    }

    public final Object k(Object obj, Object obj2, boolean z) {
        int iC = e2.c(obj);
        int iG = g(iC, obj);
        if (iG != -1) {
            Object obj3 = this.f3875a[iG];
            if (Objects.equal(obj3, obj2)) {
                return obj2;
            }
            o(obj2, iG, z);
            return obj3;
        }
        int i = this.j;
        int iC2 = e2.c(obj2);
        int iF = f(iC2, obj2);
        if (!z) {
            Preconditions.checkArgument(iF == -1, "Key already present: %s", obj2);
        } else if (iF != -1) {
            i = this.k[iF];
            m(iF, iC2);
        }
        e(this.c + 1);
        Object[] objArr = this.f3875a;
        int i2 = this.c;
        objArr[i2] = obj2;
        this.f3876b[i2] = obj;
        h(i2, iC2);
        i(this.c, iC);
        int i3 = i == -2 ? this.i : this.l[i];
        q(i, this.c);
        q(this.c, i3);
        this.c++;
        this.d++;
        return null;
    }

    public final void q(int i, int i2) {
        if (i == -2) {
            this.i = i2;
        } else {
            this.l[i] = i2;
        }
        if (i2 == -2) {
            this.j = i;
        } else {
            this.k[i2] = i;
        }
    }

    public final void h(int i, int i2) {
        Preconditions.checkArgument(i != -1);
        int iA = a(i2);
        int[] iArr = this.f3877g;
        int[] iArr2 = this.e;
        iArr[i] = iArr2[iA];
        iArr2[iA] = i;
    }

    public final void i(int i, int i2) {
        Preconditions.checkArgument(i != -1);
        int iA = a(i2);
        int[] iArr = this.h;
        int[] iArr2 = this.f;
        iArr[i] = iArr2[iA];
        iArr2[iA] = i;
    }

    public final void c(int i, int i2) {
        Preconditions.checkArgument(i != -1);
        int iA = a(i2);
        int[] iArr = this.e;
        int i3 = iArr[iA];
        if (i3 == i) {
            int[] iArr2 = this.f3877g;
            iArr[iA] = iArr2[i];
            iArr2[i] = -1;
            return;
        }
        int i4 = this.f3877g[i3];
        while (true) {
            int i5 = i3;
            i3 = i4;
            if (i3 == -1) {
                throw new AssertionError("Expected to find entry with key " + this.f3875a[i]);
            }
            if (i3 != i) {
                i4 = this.f3877g[i3];
            } else {
                int[] iArr3 = this.f3877g;
                iArr3[i5] = iArr3[i];
                iArr3[i] = -1;
                return;
            }
        }
    }

    public final void d(int i, int i2) {
        Preconditions.checkArgument(i != -1);
        int iA = a(i2);
        int[] iArr = this.f;
        int i3 = iArr[iA];
        if (i3 == i) {
            int[] iArr2 = this.h;
            iArr[iA] = iArr2[i];
            iArr2[i] = -1;
            return;
        }
        int i4 = this.h[i3];
        while (true) {
            int i5 = i3;
            i3 = i4;
            if (i3 == -1) {
                throw new AssertionError("Expected to find entry with value " + this.f3876b[i]);
            }
            if (i3 != i) {
                i4 = this.h[i3];
            } else {
                int[] iArr3 = this.h;
                iArr3[i5] = iArr3[i];
                iArr3[i] = -1;
                return;
            }
        }
    }

    public final void p(Object obj, int i, boolean z) {
        Preconditions.checkArgument(i != -1);
        int iC = e2.c(obj);
        int iG = g(iC, obj);
        if (iG != -1) {
            if (z) {
                n(iG, iC);
                if (i == this.c) {
                    i = iG;
                }
            } else {
                throw new IllegalArgumentException("Value already present in map: " + obj);
            }
        }
        d(i, e2.c(this.f3876b[i]));
        this.f3876b[i] = obj;
        i(i, iC);
    }

    public final void o(Object obj, int i, boolean z) {
        int i2;
        Preconditions.checkArgument(i != -1);
        int iC = e2.c(obj);
        int iF = f(iC, obj);
        int i3 = this.j;
        if (iF == -1) {
            i2 = -2;
        } else if (z) {
            i3 = this.k[iF];
            i2 = this.l[iF];
            m(iF, iC);
            if (i == this.c) {
                i = iF;
            }
        } else {
            throw new IllegalArgumentException("Key already present in map: " + obj);
        }
        if (i3 == i) {
            i3 = this.k[i];
        } else if (i3 == this.c) {
            i3 = iF;
        }
        if (i2 == i) {
            iF = this.l[i];
        } else if (i2 != this.c) {
            iF = i2;
        }
        q(this.k[i], this.l[i]);
        c(i, e2.c(this.f3875a[i]));
        this.f3875a[i] = obj;
        h(i, e2.c(obj));
        q(i3, i);
        q(i, iF);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @NullableDecl
    public V remove(@NullableDecl Object obj) {
        int iC = e2.c(obj);
        int iF = f(iC, obj);
        if (iF == -1) {
            return null;
        }
        V v = (V) this.f3876b[iF];
        m(iF, iC);
        return v;
    }

    public final void l(int i, int i2, int i3) {
        int i4;
        int i5;
        Preconditions.checkArgument(i != -1);
        c(i, i2);
        d(i, i3);
        q(this.k[i], this.l[i]);
        int i6 = this.c - 1;
        if (i6 != i) {
            int i7 = this.k[i6];
            int i8 = this.l[i6];
            q(i7, i);
            q(i, i8);
            Object[] objArr = this.f3875a;
            Object obj = objArr[i6];
            Object[] objArr2 = this.f3876b;
            Object obj2 = objArr2[i6];
            objArr[i] = obj;
            objArr2[i] = obj2;
            int iA = a(e2.c(obj));
            int[] iArr = this.e;
            int i9 = iArr[iA];
            if (i9 == i6) {
                iArr[iA] = i;
            } else {
                int i10 = this.f3877g[i9];
                while (true) {
                    i4 = i9;
                    i9 = i10;
                    if (i9 == i6) {
                        break;
                    } else {
                        i10 = this.f3877g[i9];
                    }
                }
                this.f3877g[i4] = i;
            }
            int[] iArr2 = this.f3877g;
            iArr2[i] = iArr2[i6];
            iArr2[i6] = -1;
            int iA2 = a(e2.c(obj2));
            int[] iArr3 = this.f;
            int i11 = iArr3[iA2];
            if (i11 == i6) {
                iArr3[iA2] = i;
            } else {
                int i12 = this.h[i11];
                while (true) {
                    i5 = i11;
                    i11 = i12;
                    if (i11 == i6) {
                        break;
                    } else {
                        i12 = this.h[i11];
                    }
                }
                this.h[i5] = i;
            }
            int[] iArr4 = this.h;
            iArr4[i] = iArr4[i6];
            iArr4[i6] = -1;
        }
        Object[] objArr3 = this.f3875a;
        int i13 = this.c;
        objArr3[i13 - 1] = null;
        this.f3876b[i13 - 1] = null;
        this.c = i13 - 1;
        this.d++;
    }

    public final void m(int i, int i2) {
        l(i, i2, e2.c(this.f3876b[i]));
    }

    public final void n(int i, int i2) {
        l(i, e2.c(this.f3875a[i]), i2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.f3875a, 0, this.c, (Object) null);
        Arrays.fill(this.f3876b, 0, this.c, (Object) null);
        Arrays.fill(this.e, -1);
        Arrays.fill(this.f, -1);
        Arrays.fill(this.f3877g, 0, this.c, -1);
        Arrays.fill(this.h, 0, this.c, -1);
        Arrays.fill(this.k, 0, this.c, -1);
        Arrays.fill(this.l, 0, this.c, -1);
        this.c = 0;
        this.i = -2;
        this.j = -2;
        this.d++;
    }

    public static abstract class h<K, V, T> extends AbstractSet<T> {

        /* renamed from: a, reason: collision with root package name */
        public final HashBiMap f3887a;

        public abstract Object a(int i);

        public h(HashBiMap hashBiMap) {
            this.f3887a = hashBiMap;
        }

        public class a implements Iterator<T> {

            /* renamed from: a, reason: collision with root package name */
            public int f3888a;

            /* renamed from: b, reason: collision with root package name */
            public int f3889b;
            public int c;
            public int d;

            public a() {
                HashBiMap hashBiMap = h.this.f3887a;
                this.f3888a = hashBiMap.i;
                this.f3889b = -1;
                this.c = hashBiMap.d;
                this.d = hashBiMap.c;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (h.this.f3887a.d == this.c) {
                    return this.f3888a != -2 && this.d > 0;
                }
                throw new ConcurrentModificationException();
            }

            @Override // java.util.Iterator
            public void remove() {
                h hVar = h.this;
                if (hVar.f3887a.d != this.c) {
                    throw new ConcurrentModificationException();
                }
                g0.e(this.f3889b != -1);
                int i = this.f3889b;
                HashBiMap hashBiMap = hVar.f3887a;
                hashBiMap.m(i, e2.c(hashBiMap.f3875a[i]));
                if (this.f3888a == hashBiMap.c) {
                    this.f3888a = this.f3889b;
                }
                this.f3889b = -1;
                this.c = hashBiMap.d;
            }

            @Override // java.util.Iterator
            public T next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i = this.f3888a;
                h hVar = h.this;
                T t = (T) hVar.a(i);
                int i2 = this.f3888a;
                this.f3889b = i2;
                this.f3888a = hVar.f3887a.l[i2];
                this.d--;
                return t;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<T> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f3887a.c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f3887a.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.m;
        if (set != null) {
            return set;
        }
        f fVar = new f();
        this.m = fVar;
        return fVar;
    }

    public final class f extends h<K, V, K> {
        public f() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.HashBiMap.h
        public final Object a(int i) {
            return HashBiMap.this.f3875a[i];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return HashBiMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            int iC = e2.c(obj);
            HashBiMap hashBiMap = HashBiMap.this;
            int iF = hashBiMap.f(iC, obj);
            if (iF == -1) {
                return false;
            }
            hashBiMap.m(iF, iC);
            return true;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<V> values() {
        Set<V> set = this.n;
        if (set != null) {
            return set;
        }
        g gVar = new g();
        this.n = gVar;
        return gVar;
    }

    public final class g extends h<K, V, V> {
        public g() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.HashBiMap.h
        public final Object a(int i) {
            return HashBiMap.this.f3876b[i];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return HashBiMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            int iC = e2.c(obj);
            HashBiMap hashBiMap = HashBiMap.this;
            int iG = hashBiMap.g(iC, obj);
            if (iG == -1) {
                return false;
            }
            hashBiMap.n(iG, iC);
            return true;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.o;
        if (set != null) {
            return set;
        }
        c cVar = new c();
        this.o = cVar;
        return cVar;
    }

    public final class c extends h<K, V, Map.Entry<K, V>> {
        public c() {
            super(HashBiMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            HashBiMap hashBiMap = HashBiMap.this;
            int iF = hashBiMap.f(e2.c(key), key);
            return iF != -1 && Objects.equal(value, hashBiMap.f3876b[iF]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        public boolean remove(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iC = e2.c(key);
            HashBiMap hashBiMap = HashBiMap.this;
            int iF = hashBiMap.f(iC, key);
            if (iF == -1 || !Objects.equal(value, hashBiMap.f3876b[iF])) {
                return false;
            }
            hashBiMap.m(iF, iC);
            return true;
        }

        @Override // com.google.common.collect.HashBiMap.h
        public final Object a(int i) {
            return new a(i);
        }
    }

    public final class a extends k<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f3878a;

        /* renamed from: b, reason: collision with root package name */
        public int f3879b;

        public a(int i) {
            this.f3878a = HashBiMap.this.f3875a[i];
            this.f3879b = i;
        }

        public final void a() {
            int i = this.f3879b;
            HashBiMap hashBiMap = HashBiMap.this;
            Object obj = this.f3878a;
            if (i == -1 || i > hashBiMap.c || !Objects.equal(hashBiMap.f3875a[i], obj)) {
                this.f3879b = hashBiMap.f(e2.c(obj), obj);
            }
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public K getKey() {
            return (K) this.f3878a;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        @NullableDecl
        public V getValue() {
            a();
            int i = this.f3879b;
            if (i == -1) {
                return null;
            }
            return (V) HashBiMap.this.f3876b[i];
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.k, java.util.Map.Entry
        public V setValue(V v) {
            a();
            int i = this.f3879b;
            HashBiMap hashBiMap = HashBiMap.this;
            if (i == -1) {
                return (V) hashBiMap.put(this.f3878a, v);
            }
            V v2 = (V) hashBiMap.f3876b[i];
            if (Objects.equal(v2, v)) {
                return v;
            }
            hashBiMap.p(v, this.f3879b, false);
            return v2;
        }
    }

    @Override // com.google.common.collect.BiMap
    public BiMap<V, K> inverse() {
        BiMap<V, K> biMap = this.p;
        if (biMap != null) {
            return biMap;
        }
        d dVar = new d(this);
        this.p = dVar;
        return dVar;
    }

    public static class e<K, V> extends h<K, V, Map.Entry<V, K>> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            HashBiMap hashBiMap = this.f3887a;
            hashBiMap.getClass();
            int iG = hashBiMap.g(e2.c(key), key);
            return iG != -1 && Objects.equal(hashBiMap.f3875a[iG], value);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iC = e2.c(key);
            HashBiMap hashBiMap = this.f3887a;
            int iG = hashBiMap.g(iC, key);
            if (iG == -1 || !Objects.equal(hashBiMap.f3875a[iG], value)) {
                return false;
            }
            hashBiMap.n(iG, iC);
            return true;
        }

        @Override // com.google.common.collect.HashBiMap.h
        public final Object a(int i) {
            return new b(this.f3887a, i);
        }
    }

    public static final class b<K, V> extends k<V, K> {

        /* renamed from: a, reason: collision with root package name */
        public final HashBiMap f3880a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f3881b;
        public int c;

        public b(HashBiMap hashBiMap, int i) {
            this.f3880a = hashBiMap;
            this.f3881b = hashBiMap.f3876b[i];
            this.c = i;
        }

        public final void a() {
            int i = this.c;
            Object obj = this.f3881b;
            HashBiMap hashBiMap = this.f3880a;
            if (i == -1 || i > hashBiMap.c || !Objects.equal(obj, hashBiMap.f3876b[i])) {
                hashBiMap.getClass();
                this.c = hashBiMap.g(e2.c(obj), obj);
            }
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public V getKey() {
            return (V) this.f3881b;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public K getValue() {
            a();
            int i = this.c;
            if (i == -1) {
                return null;
            }
            return (K) this.f3880a.f3875a[i];
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public K setValue(K k) {
            a();
            int i = this.c;
            HashBiMap hashBiMap = this.f3880a;
            if (i == -1) {
                return (K) hashBiMap.k(this.f3881b, k, false);
            }
            K k2 = (K) hashBiMap.f3875a[i];
            if (Objects.equal(k2, k)) {
                return k;
            }
            hashBiMap.o(k, this.c, false);
            return k2;
        }
    }
}
