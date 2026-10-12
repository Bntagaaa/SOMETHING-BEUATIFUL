package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
class k0<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final Object j = new Object();

    /* renamed from: a, reason: collision with root package name */
    public transient Object f4243a;

    /* renamed from: b, reason: collision with root package name */
    public transient int[] f4244b;
    public transient Object[] c;
    public transient Object[] d;
    public transient int e;
    public transient int f;

    /* renamed from: g, reason: collision with root package name */
    public transient Set f4245g;
    public transient Set h;
    public transient Collection i;

    public void a(int i) {
    }

    public int b(int i, int i2) {
        return i - 1;
    }

    public abstract class b<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public int f4247a;

        /* renamed from: b, reason: collision with root package name */
        public int f4248b;
        public int c = -1;

        public abstract Object a(int i);

        @Override // java.util.Iterator
        public T next() {
            k0 k0Var = k0.this;
            if (k0Var.e == this.f4247a) {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i = this.f4248b;
                this.c = i;
                T t = (T) a(i);
                this.f4248b = k0Var.h(this.f4248b);
                return t;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public void remove() {
            k0 k0Var = k0.this;
            if (k0Var.e == this.f4247a) {
                g0.e(this.c >= 0);
                this.f4247a += 32;
                k0Var.remove(k0Var.c[this.c]);
                this.f4248b = k0Var.b(this.f4248b, this.c);
                this.c = -1;
                return;
            }
            throw new ConcurrentModificationException();
        }

        public b() {
            this.f4247a = k0.this.e;
            this.f4248b = k0.this.g();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4248b >= 0;
        }
    }

    public static <K, V> k0<K, V> create() {
        return new k0<>();
    }

    public static <K, V> k0<K, V> createWithExpectedSize(int i) {
        return new k0<>(i);
    }

    public k0() {
        l(3);
    }

    public k0(int i) {
        l(i);
    }

    public void l(int i) {
        Preconditions.checkArgument(i >= 0, "Expected size must be >= 0");
        this.e = Ints.constrainToRange(i, 1, LockFreeTaskQueueCore.MAX_CAPACITY_MASK);
    }

    public final boolean o() {
        return this.f4243a == null;
    }

    public int c() {
        Preconditions.checkState(o(), "Arrays already allocated");
        int i = this.e;
        int iMax = Math.max(4, e2.a(i + 1, 1.0d));
        this.f4243a = m0.a(iMax);
        this.e = m0.b(this.e, 32 - Integer.numberOfLeadingZeros(iMax - 1), 31);
        this.f4244b = new int[i];
        this.c = new Object[i];
        this.d = new Object[i];
        return i;
    }

    public final Map f() {
        Object obj = this.f4243a;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public LinkedHashMap e(int i) {
        return new LinkedHashMap(i, 1.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Map d() {
        LinkedHashMap linkedHashMapE = e(i() + 1);
        int iG = g();
        while (iG >= 0) {
            linkedHashMapE.put(this.c[iG], this.d[iG]);
            iG = h(iG);
        }
        this.f4243a = linkedHashMapE;
        this.f4244b = null;
        this.c = null;
        this.d = null;
        j();
        return linkedHashMapE;
    }

    public final int i() {
        return (1 << (this.e & 31)) - 1;
    }

    public final void j() {
        this.e += 32;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @NullableDecl
    public V put(@NullableDecl K k, @NullableDecl V v) {
        int iR;
        int length;
        int iMin;
        K k2 = k;
        V v2 = v;
        if (o()) {
            c();
        }
        Map mapF = f();
        if (mapF != null) {
            return (V) mapF.put(k2, v2);
        }
        int[] iArr = this.f4244b;
        Object[] objArr = this.c;
        Object[] objArr2 = this.d;
        int i = this.f;
        int i2 = i + 1;
        int iC = e2.c(k2);
        int i3 = i();
        int i4 = iC & i3;
        int iE = m0.e(i4, this.f4243a);
        int i5 = 1;
        if (iE != 0) {
            int i6 = ~i3;
            int i7 = iC & i6;
            int i8 = 0;
            while (true) {
                int i9 = iE - i5;
                int i10 = iArr[i9];
                if ((i10 & i6) == i7 && Objects.equal(k2, objArr[i9])) {
                    V v3 = (V) objArr2[i9];
                    objArr2[i9] = v2;
                    a(i9);
                    return v3;
                }
                int i11 = i10 & i3;
                i8++;
                if (i11 != 0) {
                    k2 = k;
                    v2 = v;
                    iE = i11;
                    i5 = 1;
                } else {
                    if (i8 >= 9) {
                        return (V) d().put(k2, v2);
                    }
                    if (i2 > i3) {
                        i3 = r(i3, m0.c(i3), iC, i);
                    } else {
                        iArr[i9] = m0.b(i10, i2, i3);
                    }
                }
            }
        } else {
            if (i2 > i3) {
                iR = r(i3, m0.c(i3), iC, i);
                length = this.f4244b.length;
                if (i2 > length && (iMin = Math.min(LockFreeTaskQueueCore.MAX_CAPACITY_MASK, (Math.max(1, length >>> 1) + length) | 1)) != length) {
                    q(iMin);
                }
                m(i, k2, v2, iC, iR);
                this.f = i2;
                j();
                return null;
            }
            m0.f(this.f4243a, i4, i2);
        }
        iR = i3;
        length = this.f4244b.length;
        if (i2 > length) {
            q(iMin);
        }
        m(i, k2, v2, iC, iR);
        this.f = i2;
        j();
        return null;
    }

    public void m(int i, Object obj, Object obj2, int i2, int i3) {
        this.f4244b[i] = m0.b(i2, 0, i3);
        this.c[i] = obj;
        this.d[i] = obj2;
    }

    public void q(int i) {
        this.f4244b = Arrays.copyOf(this.f4244b, i);
        this.c = Arrays.copyOf(this.c, i);
        this.d = Arrays.copyOf(this.d, i);
    }

    public final int r(int i, int i2, int i3, int i4) {
        Object objA = m0.a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            m0.f(objA, i3 & i5, i4 + 1);
        }
        Object obj = this.f4243a;
        int[] iArr = this.f4244b;
        for (int i6 = 0; i6 <= i; i6++) {
            int iE = m0.e(i6, obj);
            while (iE != 0) {
                int i7 = iE - 1;
                int i8 = iArr[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int iE2 = m0.e(i10, objA);
                m0.f(objA, i10, iE);
                iArr[i7] = m0.b(i9, iE2, i5);
                iE = i8 & i;
            }
        }
        this.f4243a = objA;
        this.e = m0.b(this.e, 32 - Integer.numberOfLeadingZeros(i5), 31);
        return i5;
    }

    public final int k(Object obj) {
        if (o()) {
            return -1;
        }
        int iC = e2.c(obj);
        int i = i();
        int iE = m0.e(iC & i, this.f4243a);
        if (iE == 0) {
            return -1;
        }
        int i2 = ~i;
        int i3 = iC & i2;
        do {
            int i4 = iE - 1;
            int i5 = this.f4244b[i4];
            if ((i5 & i2) == i3 && Objects.equal(obj, this.c[i4])) {
                return i4;
            }
            iE = i5 & i;
        } while (iE != 0);
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        Map mapF = f();
        if (mapF != null) {
            return mapF.containsKey(obj);
        }
        return k(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@NullableDecl Object obj) {
        Map mapF = f();
        if (mapF != null) {
            return (V) mapF.get(obj);
        }
        int iK = k(obj);
        if (iK == -1) {
            return null;
        }
        a(iK);
        return (V) this.d[iK];
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @NullableDecl
    public V remove(@NullableDecl Object obj) {
        Map mapF = f();
        if (mapF != null) {
            return (V) mapF.remove(obj);
        }
        V v = (V) p(obj);
        if (v == j) {
            return null;
        }
        return v;
    }

    public final Object p(Object obj) {
        int i;
        int iD;
        boolean zO = o();
        Object obj2 = j;
        if (zO || (iD = m0.d(obj, null, (i = i()), this.f4243a, this.f4244b, this.c, null)) == -1) {
            return obj2;
        }
        Object obj3 = this.d[iD];
        n(iD, i);
        this.f--;
        j();
        return obj3;
    }

    public void n(int i, int i2) {
        int size = size();
        int i3 = size - 1;
        if (i < i3) {
            Object[] objArr = this.c;
            Object obj = objArr[i3];
            objArr[i] = obj;
            Object[] objArr2 = this.d;
            objArr2[i] = objArr2[i3];
            objArr[i3] = null;
            objArr2[i3] = null;
            int[] iArr = this.f4244b;
            iArr[i] = iArr[i3];
            iArr[i3] = 0;
            int iC = e2.c(obj) & i2;
            int iE = m0.e(iC, this.f4243a);
            if (iE == size) {
                m0.f(this.f4243a, iC, i + 1);
                return;
            }
            while (true) {
                int i4 = iE - 1;
                int[] iArr2 = this.f4244b;
                int i5 = iArr2[i4];
                int i6 = i5 & i2;
                if (i6 == size) {
                    iArr2[i4] = m0.b(i5, i + 1, i2);
                    return;
                }
                iE = i6;
            }
        } else {
            this.c[i] = null;
            this.d[i] = null;
            this.f4244b[i] = 0;
        }
    }

    public int g() {
        return isEmpty() ? -1 : 0;
    }

    public int h(int i) {
        int i2 = i + 1;
        if (i2 < this.f) {
            return i2;
        }
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f4245g;
        if (set != null) {
            return set;
        }
        c cVar = new c();
        this.f4245g = cVar;
        return cVar;
    }

    public class c extends AbstractSet<K> {
        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return k0.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return k0.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            k0 k0Var = k0.this;
            Map mapF = k0Var.f();
            if (mapF != null) {
                return mapF.keySet().remove(obj);
            }
            return k0Var.p(obj) != k0.j;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            k0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            k0 k0Var = k0.this;
            Map mapF = k0Var.f();
            if (mapF != null) {
                return mapF.keySet().iterator();
            }
            return new h0(k0Var);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.h;
        if (set != null) {
            return set;
        }
        a aVar = new a();
        this.h = aVar;
        return aVar;
    }

    public class a extends AbstractSet<Map.Entry<K, V>> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return k0.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            k0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            k0 k0Var = k0.this;
            Map mapF = k0Var.f();
            if (mapF != null) {
                return mapF.entrySet().contains(obj);
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int iK = k0Var.k(entry.getKey());
                if (iK != -1 && Objects.equal(k0Var.d[iK], entry.getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            int i;
            int iD;
            k0 k0Var = k0.this;
            Map mapF = k0Var.f();
            if (mapF != null) {
                return mapF.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (k0Var.o() || (iD = m0.d(entry.getKey(), entry.getValue(), (i = k0Var.i()), k0Var.f4243a, k0Var.f4244b, k0Var.c, k0Var.d)) == -1) {
                return false;
            }
            k0Var.n(iD, i);
            k0Var.f--;
            k0Var.j();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            k0 k0Var = k0.this;
            Map mapF = k0Var.f();
            if (mapF != null) {
                return mapF.entrySet().iterator();
            }
            return new i0(k0Var);
        }
    }

    public final class d extends k<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4250a;

        /* renamed from: b, reason: collision with root package name */
        public int f4251b;

        public d(int i) {
            this.f4250a = k0.this.c[i];
            this.f4251b = i;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        @NullableDecl
        public K getKey() {
            return (K) this.f4250a;
        }

        public final void a() {
            int i = this.f4251b;
            Object obj = this.f4250a;
            k0 k0Var = k0.this;
            if (i == -1 || i >= k0Var.size() || !Objects.equal(obj, k0Var.c[this.f4251b])) {
                Object obj2 = k0.j;
                this.f4251b = k0Var.k(obj);
            }
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        @NullableDecl
        public V getValue() {
            k0 k0Var = k0.this;
            Map mapF = k0Var.f();
            if (mapF != null) {
                return (V) mapF.get(this.f4250a);
            }
            a();
            int i = this.f4251b;
            if (i == -1) {
                return null;
            }
            return (V) k0Var.d[i];
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.k, java.util.Map.Entry
        public V setValue(V v) {
            k0 k0Var = k0.this;
            Map mapF = k0Var.f();
            Object obj = this.f4250a;
            if (mapF != 0) {
                return (V) mapF.put(obj, v);
            }
            a();
            int i = this.f4251b;
            if (i == -1) {
                k0Var.put(obj, v);
                return null;
            }
            Object[] objArr = k0Var.d;
            V v2 = (V) objArr[i];
            objArr[i] = v;
            return v2;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Map mapF = f();
        return mapF != null ? mapF.size() : this.f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        Map mapF = f();
        if (mapF != null) {
            return mapF.containsValue(obj);
        }
        for (int i = 0; i < this.f; i++) {
            if (Objects.equal(obj, this.d[i])) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.i;
        if (collection != null) {
            return collection;
        }
        e eVar = new e();
        this.i = eVar;
        return eVar;
    }

    public class e extends AbstractCollection<V> {
        public e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return k0.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            k0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            k0 k0Var = k0.this;
            Map mapF = k0Var.f();
            if (mapF != null) {
                return mapF.values().iterator();
            }
            return new j0(k0Var);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (o()) {
            return;
        }
        j();
        if (f() != null) {
            this.e = Ints.constrainToRange(size(), 3, LockFreeTaskQueueCore.MAX_CAPACITY_MASK);
            this.f4243a = null;
            this.f = 0;
            return;
        }
        Arrays.fill(this.c, 0, this.f, (Object) null);
        Arrays.fill(this.d, 0, this.f, (Object) null);
        Object obj = this.f4243a;
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(this.f4244b, 0, this.f, 0);
        this.f = 0;
    }
}
