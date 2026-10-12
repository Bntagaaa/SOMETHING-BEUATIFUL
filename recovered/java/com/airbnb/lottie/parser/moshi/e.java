package com.airbnb.lottie.parser.moshi;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
final class e<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final Comparator i = new a();

    /* renamed from: g, reason: collision with root package name */
    public d f2697g;
    public C0036e h;
    public int d = 0;
    public int e = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Comparator f2695a = i;
    public final g c = new g();

    /* renamed from: b, reason: collision with root package name */
    public g[] f2696b = new g[16];
    public int f = 12;

    public class a implements Comparator<Comparable> {
        @Override // java.util.Comparator
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        g gVarA = a(k, true);
        V v2 = (V) gVarA.h;
        gVarA.h = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.f2696b, (Object) null);
        this.d = 0;
        this.e++;
        g gVar = this.c;
        g gVar2 = gVar.d;
        while (gVar2 != gVar) {
            g gVar3 = gVar2.d;
            gVar2.e = null;
            gVar2.d = null;
            gVar2 = gVar3;
        }
        gVar.e = gVar;
        gVar.d = gVar;
    }

    public final g a(Object obj, boolean z) {
        int iCompare;
        g gVar;
        g gVar2;
        g gVar3;
        g[] gVarArr = this.f2696b;
        int iHashCode = obj.hashCode();
        int i2 = iHashCode ^ ((iHashCode >>> 20) ^ (iHashCode >>> 12));
        int i3 = ((i2 >>> 7) ^ i2) ^ (i2 >>> 4);
        int length = i3 & (gVarArr.length - 1);
        g gVar4 = gVarArr[length];
        Comparator comparator = i;
        Comparator comparator2 = this.f2695a;
        if (gVar4 != null) {
            Comparable comparable = comparator2 == comparator ? (Comparable) obj : null;
            while (true) {
                Object obj2 = gVar4.f;
                if (comparable != null) {
                    iCompare = comparable.compareTo(obj2);
                } else {
                    iCompare = comparator2.compare(obj, obj2);
                }
                if (iCompare == 0) {
                    return gVar4;
                }
                g gVar5 = iCompare < 0 ? gVar4.f2706b : gVar4.c;
                if (gVar5 == null) {
                    break;
                }
                gVar4 = gVar5;
            }
        } else {
            iCompare = 0;
        }
        if (!z) {
            return null;
        }
        g gVar6 = this.c;
        if (gVar4 == null) {
            if (comparator2 == comparator && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            gVar = new g(gVar4, obj, i3, gVar6, gVar6.e);
            gVarArr[length] = gVar;
        } else {
            g gVar7 = gVar4;
            gVar = new g(gVar7, obj, i3, gVar6, gVar6.e);
            if (iCompare < 0) {
                gVar7.f2706b = gVar;
            } else {
                gVar7.c = gVar;
            }
            b(gVar7, true);
        }
        int i4 = this.d;
        this.d = i4 + 1;
        if (i4 > this.f) {
            g[] gVarArr2 = this.f2696b;
            int length2 = gVarArr2.length;
            int i5 = length2 * 2;
            g[] gVarArr3 = new g[i5];
            c cVar = new c();
            b bVar = new b();
            b bVar2 = new b();
            for (int i6 = 0; i6 < length2; i6++) {
                g gVar8 = gVarArr2[i6];
                if (gVar8 != null) {
                    g gVar9 = null;
                    for (g gVar10 = gVar8; gVar10 != null; gVar10 = gVar10.f2706b) {
                        gVar10.f2705a = gVar9;
                        gVar9 = gVar10;
                    }
                    cVar.f2700a = gVar9;
                    int i7 = 0;
                    int i8 = 0;
                    while (true) {
                        g<K, V> next = cVar.next();
                        if (next == null) {
                            break;
                        }
                        if ((next.f2707g & length2) == 0) {
                            i7++;
                        } else {
                            i8++;
                        }
                    }
                    bVar.f2699b = ((Integer.highestOneBit(i7) * 2) - 1) - i7;
                    bVar.d = 0;
                    bVar.c = 0;
                    bVar.f2698a = null;
                    bVar2.f2699b = ((Integer.highestOneBit(i8) * 2) - 1) - i8;
                    bVar2.d = 0;
                    bVar2.c = 0;
                    bVar2.f2698a = null;
                    g gVar11 = null;
                    while (gVar8 != null) {
                        gVar8.f2705a = gVar11;
                        g gVar12 = gVar8;
                        gVar8 = gVar8.f2706b;
                        gVar11 = gVar12;
                    }
                    cVar.f2700a = gVar11;
                    while (true) {
                        g<K, V> next2 = cVar.next();
                        if (next2 == null) {
                            break;
                        }
                        if ((next2.f2707g & length2) == 0) {
                            bVar.a(next2);
                        } else {
                            bVar2.a(next2);
                        }
                    }
                    if (i7 > 0) {
                        gVar2 = bVar.f2698a;
                        if (gVar2.f2705a != null) {
                            throw new IllegalStateException();
                        }
                    } else {
                        gVar2 = null;
                    }
                    gVarArr3[i6] = gVar2;
                    int i9 = i6 + length2;
                    if (i8 > 0) {
                        gVar3 = bVar2.f2698a;
                        if (gVar3.f2705a != null) {
                            throw new IllegalStateException();
                        }
                    } else {
                        gVar3 = null;
                    }
                    gVarArr3[i9] = gVar3;
                }
            }
            this.f2696b = gVarArr3;
            this.f = (i5 / 4) + (i5 / 2);
        }
        this.e++;
        return gVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        g gVarA = null;
        if (obj != null) {
            try {
                gVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return gVarA != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        g gVarA;
        if (obj != null) {
            try {
                gVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        } else {
            gVarA = null;
        }
        if (gVarA != null) {
            return (V) gVarA.h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        g gVarA;
        if (obj != null) {
            try {
                gVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        } else {
            gVarA = null;
        }
        if (gVarA != null) {
            c(gVarA, true);
        }
        if (gVarA != null) {
            return (V) gVarA.h;
        }
        return null;
    }

    public final void c(g gVar, boolean z) {
        int i2;
        if (z) {
            g gVar2 = gVar.e;
            gVar2.d = gVar.d;
            gVar.d.e = gVar2;
            gVar.e = null;
            gVar.d = null;
        }
        g gVar3 = gVar.f2706b;
        g gVar4 = gVar.c;
        g gVar5 = gVar.f2705a;
        int i3 = 0;
        if (gVar3 != null && gVar4 != null) {
            g<K, V> gVarLast = gVar3.i > gVar4.i ? gVar3.last() : gVar4.first();
            c(gVarLast, false);
            g gVar6 = gVar.f2706b;
            if (gVar6 != null) {
                i2 = gVar6.i;
                gVarLast.f2706b = gVar6;
                gVar6.f2705a = gVarLast;
                gVar.f2706b = null;
            } else {
                i2 = 0;
            }
            g gVar7 = gVar.c;
            if (gVar7 != null) {
                i3 = gVar7.i;
                gVarLast.c = gVar7;
                gVar7.f2705a = gVarLast;
                gVar.c = null;
            }
            gVarLast.i = Math.max(i2, i3) + 1;
            d(gVar, gVarLast);
            return;
        }
        if (gVar3 != null) {
            d(gVar, gVar3);
            gVar.f2706b = null;
        } else if (gVar4 != null) {
            d(gVar, gVar4);
            gVar.c = null;
        } else {
            d(gVar, null);
        }
        b(gVar5, false);
        this.d--;
        this.e++;
    }

    public final void d(g gVar, g gVar2) {
        g gVar3 = gVar.f2705a;
        gVar.f2705a = null;
        if (gVar2 != null) {
            gVar2.f2705a = gVar3;
        }
        if (gVar3 != null) {
            if (gVar3.f2706b == gVar) {
                gVar3.f2706b = gVar2;
                return;
            } else {
                gVar3.c = gVar2;
                return;
            }
        }
        this.f2696b[gVar.f2707g & (r0.length - 1)] = gVar2;
    }

    public final void b(g gVar, boolean z) {
        while (gVar != null) {
            g gVar2 = gVar.f2706b;
            g gVar3 = gVar.c;
            int i2 = gVar2 != null ? gVar2.i : 0;
            int i3 = gVar3 != null ? gVar3.i : 0;
            int i4 = i2 - i3;
            if (i4 == -2) {
                g gVar4 = gVar3.f2706b;
                g gVar5 = gVar3.c;
                int i5 = (gVar4 != null ? gVar4.i : 0) - (gVar5 != null ? gVar5.i : 0);
                if (i5 == -1 || (i5 == 0 && !z)) {
                    e(gVar);
                } else {
                    f(gVar3);
                    e(gVar);
                }
                if (z) {
                    return;
                }
            } else if (i4 == 2) {
                g gVar6 = gVar2.f2706b;
                g gVar7 = gVar2.c;
                int i6 = (gVar6 != null ? gVar6.i : 0) - (gVar7 != null ? gVar7.i : 0);
                if (i6 == 1 || (i6 == 0 && !z)) {
                    f(gVar);
                } else {
                    e(gVar2);
                    f(gVar);
                }
                if (z) {
                    return;
                }
            } else if (i4 == 0) {
                gVar.i = i2 + 1;
                if (z) {
                    return;
                }
            } else {
                gVar.i = Math.max(i2, i3) + 1;
                if (!z) {
                    return;
                }
            }
            gVar = gVar.f2705a;
        }
    }

    public final void e(g gVar) {
        g gVar2 = gVar.f2706b;
        g gVar3 = gVar.c;
        g gVar4 = gVar3.f2706b;
        g gVar5 = gVar3.c;
        gVar.c = gVar4;
        if (gVar4 != null) {
            gVar4.f2705a = gVar;
        }
        d(gVar, gVar3);
        gVar3.f2706b = gVar;
        gVar.f2705a = gVar3;
        int iMax = Math.max(gVar2 != null ? gVar2.i : 0, gVar4 != null ? gVar4.i : 0) + 1;
        gVar.i = iMax;
        gVar3.i = Math.max(iMax, gVar5 != null ? gVar5.i : 0) + 1;
    }

    public final void f(g gVar) {
        g gVar2 = gVar.f2706b;
        g gVar3 = gVar.c;
        g gVar4 = gVar2.f2706b;
        g gVar5 = gVar2.c;
        gVar.f2706b = gVar5;
        if (gVar5 != null) {
            gVar5.f2705a = gVar;
        }
        d(gVar, gVar2);
        gVar2.c = gVar;
        gVar.f2705a = gVar2;
        int iMax = Math.max(gVar3 != null ? gVar3.i : 0, gVar5 != null ? gVar5.i : 0) + 1;
        gVar.i = iMax;
        gVar2.i = Math.max(iMax, gVar4 != null ? gVar4.i : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        d dVar = this.f2697g;
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d();
        this.f2697g = dVar2;
        return dVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        C0036e c0036e = this.h;
        if (c0036e != null) {
            return c0036e;
        }
        C0036e c0036e2 = new C0036e();
        this.h = c0036e2;
        return c0036e2;
    }

    public static final class g<K, V> implements Map.Entry<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public g f2705a;

        /* renamed from: b, reason: collision with root package name */
        public g f2706b;
        public g c;
        public g d;
        public g e;
        public final Object f;

        /* renamed from: g, reason: collision with root package name */
        public final int f2707g;
        public Object h;
        public int i;

        public g() {
            this.f = null;
            this.f2707g = -1;
            this.e = this;
            this.d = this;
        }

        public g(g gVar, Object obj, int i, g gVar2, g gVar3) {
            this.f2705a = gVar;
            this.f = obj;
            this.f2707g = i;
            this.i = 1;
            this.d = gVar2;
            this.e = gVar3;
            gVar3.d = this;
            gVar2.e = this;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return (K) this.f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return (V) this.h;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) this.h;
            this.h = v;
            return v2;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object obj2 = this.f;
                if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                    Object obj3 = this.h;
                    if (obj3 == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (obj3.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            Object obj = this.f;
            int iHashCode = obj == null ? 0 : obj.hashCode();
            Object obj2 = this.h;
            return (obj2 != null ? obj2.hashCode() : 0) ^ iHashCode;
        }

        public String toString() {
            return this.f + "=" + this.h;
        }

        public g<K, V> first() {
            g<K, V> gVar = this;
            for (g<K, V> gVar2 = this.f2706b; gVar2 != null; gVar2 = gVar2.f2706b) {
                gVar = gVar2;
            }
            return gVar;
        }

        public g<K, V> last() {
            g<K, V> gVar = this;
            for (g<K, V> gVar2 = this.c; gVar2 != null; gVar2 = gVar2.c) {
                gVar = gVar2;
            }
            return gVar;
        }
    }

    public static class c<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public g f2700a;

        public g<K, V> next() {
            g<K, V> gVar = this.f2700a;
            if (gVar == null) {
                return null;
            }
            g gVar2 = gVar.f2705a;
            gVar.f2705a = null;
            g gVar3 = gVar.c;
            while (true) {
                g gVar4 = gVar2;
                gVar2 = gVar3;
                if (gVar2 != null) {
                    gVar2.f2705a = gVar4;
                    gVar3 = gVar2.f2706b;
                } else {
                    this.f2700a = gVar4;
                    return gVar;
                }
            }
        }
    }

    public static final class b<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public g f2698a;

        /* renamed from: b, reason: collision with root package name */
        public int f2699b;
        public int c;
        public int d;

        public final void a(g gVar) {
            gVar.c = null;
            gVar.f2705a = null;
            gVar.f2706b = null;
            gVar.i = 1;
            int i = this.f2699b;
            if (i > 0) {
                int i2 = this.d;
                if ((i2 & 1) == 0) {
                    this.d = i2 + 1;
                    this.f2699b = i - 1;
                    this.c++;
                }
            }
            gVar.f2705a = this.f2698a;
            this.f2698a = gVar;
            int i3 = this.d;
            int i4 = i3 + 1;
            this.d = i4;
            int i5 = this.f2699b;
            if (i5 > 0 && (i4 & 1) == 0) {
                this.d = i3 + 2;
                this.f2699b = i5 - 1;
                this.c++;
            }
            int i6 = 4;
            while (true) {
                int i7 = i6 - 1;
                if ((this.d & i7) != i7) {
                    return;
                }
                int i8 = this.c;
                if (i8 == 0) {
                    g gVar2 = this.f2698a;
                    g gVar3 = gVar2.f2705a;
                    g gVar4 = gVar3.f2705a;
                    gVar3.f2705a = gVar4.f2705a;
                    this.f2698a = gVar3;
                    gVar3.f2706b = gVar4;
                    gVar3.c = gVar2;
                    gVar3.i = gVar2.i + 1;
                    gVar4.f2705a = gVar3;
                    gVar2.f2705a = gVar3;
                } else if (i8 == 1) {
                    g gVar5 = this.f2698a;
                    g gVar6 = gVar5.f2705a;
                    this.f2698a = gVar6;
                    gVar6.c = gVar5;
                    gVar6.i = gVar5.i + 1;
                    gVar5.f2705a = gVar6;
                    this.c = 0;
                } else if (i8 == 2) {
                    this.c = 0;
                }
                i6 *= 2;
            }
        }
    }

    public abstract class f<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public g f2703a;

        /* renamed from: b, reason: collision with root package name */
        public g f2704b = null;
        public int c;

        public f() {
            this.f2703a = e.this.c.d;
            this.c = e.this.e;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f2703a != e.this.c;
        }

        public final g a() {
            g gVar = this.f2703a;
            e eVar = e.this;
            if (gVar == eVar.c) {
                throw new NoSuchElementException();
            }
            if (eVar.e != this.c) {
                throw new ConcurrentModificationException();
            }
            this.f2703a = gVar.d;
            this.f2704b = gVar;
            return gVar;
        }

        @Override // java.util.Iterator
        public final void remove() {
            g gVar = this.f2704b;
            if (gVar == null) {
                throw new IllegalStateException();
            }
            e eVar = e.this;
            eVar.c(gVar, true);
            this.f2704b = null;
            this.c = eVar.e;
        }
    }

    public final class d extends AbstractSet<Map.Entry<K, V>> {
        public d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e.this.d;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        public class a extends e<K, V>.f<Map.Entry<K, V>> {
            @Override // java.util.Iterator
            public Map.Entry<K, V> next() {
                return a();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x002c A[RETURN] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean contains(java.lang.Object r5) {
            /*
                r4 = this;
                boolean r0 = r5 instanceof java.util.Map.Entry
                r1 = 0
                if (r0 == 0) goto L2e
                com.airbnb.lottie.parser.moshi.e r0 = com.airbnb.lottie.parser.moshi.e.this
                java.util.Map$Entry r5 = (java.util.Map.Entry) r5
                java.lang.Object r2 = r5.getKey()
                r3 = 0
                if (r2 == 0) goto L16
                com.airbnb.lottie.parser.moshi.e$g r0 = r0.a(r2, r1)     // Catch: java.lang.ClassCastException -> L15
                goto L17
            L15:
            L16:
                r0 = r3
            L17:
                if (r0 == 0) goto L2a
                java.lang.Object r2 = r0.h
                java.lang.Object r5 = r5.getValue()
                if (r2 == r5) goto L29
                if (r2 == 0) goto L2a
                boolean r5 = r2.equals(r5)
                if (r5 == 0) goto L2a
            L29:
                r3 = r0
            L2a:
                if (r3 == 0) goto L2e
                r5 = 1
                return r5
            L2e:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.e.d.contains(java.lang.Object):boolean");
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x002e  */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean remove(java.lang.Object r6) {
            /*
                r5 = this;
                boolean r0 = r6 instanceof java.util.Map.Entry
                r1 = 0
                if (r0 != 0) goto L6
                goto L2d
            L6:
                java.util.Map$Entry r6 = (java.util.Map.Entry) r6
                com.airbnb.lottie.parser.moshi.e r0 = com.airbnb.lottie.parser.moshi.e.this
                java.lang.Object r2 = r6.getKey()
                r3 = 0
                if (r2 == 0) goto L17
                com.airbnb.lottie.parser.moshi.e$g r2 = r0.a(r2, r1)     // Catch: java.lang.ClassCastException -> L16
                goto L18
            L16:
            L17:
                r2 = r3
            L18:
                if (r2 == 0) goto L2b
                java.lang.Object r4 = r2.h
                java.lang.Object r6 = r6.getValue()
                if (r4 == r6) goto L2a
                if (r4 == 0) goto L2b
                boolean r6 = r4.equals(r6)
                if (r6 == 0) goto L2b
            L2a:
                r3 = r2
            L2b:
                if (r3 != 0) goto L2e
            L2d:
                return r1
            L2e:
                r6 = 1
                r0.c(r3, r6)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.e.d.remove(java.lang.Object):boolean");
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e.this.clear();
        }
    }

    /* renamed from: com.airbnb.lottie.parser.moshi.e$e, reason: collision with other inner class name */
    public final class C0036e extends AbstractSet<K> {
        public C0036e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e.this.d;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a();
        }

        /* renamed from: com.airbnb.lottie.parser.moshi.e$e$a */
        public class a extends e<K, V>.f<K> {
            @Override // java.util.Iterator
            public K next() {
                return (K) a().f;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return e.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e eVar = e.this;
            g gVarA = null;
            if (obj != null) {
                try {
                    gVarA = eVar.a(obj, false);
                } catch (ClassCastException unused) {
                }
            }
            if (gVarA != null) {
                eVar.c(gVarA, true);
            }
            return gVarA != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e.this.clear();
        }
    }
}
