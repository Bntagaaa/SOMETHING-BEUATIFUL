package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Map;
import kotlin.UShort;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
final class b5<K, V> extends ImmutableMap<K, V> {
    public static final ImmutableMap i = new b5(null, new Object[0], 0);
    public final transient Object f;

    /* renamed from: g, reason: collision with root package name */
    public final transient Object[] f4180g;
    public final transient int h;

    @Override // com.google.common.collect.ImmutableMap
    public final boolean f() {
        return false;
    }

    public static b5 h(int i2, Object[] objArr) {
        if (i2 == 0) {
            return (b5) i;
        }
        if (i2 == 1) {
            g0.a(objArr[0], objArr[1]);
            return new b5(null, objArr, 1);
        }
        Preconditions.checkPositionIndex(i2, objArr.length >> 1);
        return new b5(i(i2, ImmutableSet.e(i2), objArr, 0), objArr, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
    
        r10[r5] = (byte) r1;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0079, code lost:
    
        r10[r5] = (short) r1;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b0, code lost:
    
        r10[r6] = r1;
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object i(int r9, int r10, java.lang.Object[] r11, int r12) {
        /*
            r0 = 1
            if (r9 != r0) goto Le
            r9 = r11[r12]
            r10 = r12 ^ 1
            r10 = r11[r10]
            com.google.common.collect.g0.a(r9, r10)
            r9 = 0
            return r9
        Le:
            int r0 = r10 + (-1)
            r1 = 128(0x80, float:1.8E-43)
            r2 = 0
            r3 = -1
            if (r10 > r1) goto L50
            byte[] r10 = new byte[r10]
            java.util.Arrays.fill(r10, r3)
        L1b:
            if (r2 >= r9) goto L4f
            int r1 = r2 * 2
            int r1 = r1 + r12
            r3 = r11[r1]
            r4 = r1 ^ 1
            r4 = r11[r4]
            com.google.common.collect.g0.a(r3, r4)
            int r5 = r3.hashCode()
            int r5 = com.google.common.collect.e2.b(r5)
        L31:
            r5 = r5 & r0
            r6 = r10[r5]
            r7 = 255(0xff, float:3.57E-43)
            r6 = r6 & r7
            if (r6 != r7) goto L3f
            byte r1 = (byte) r1
            r10[r5] = r1
            int r2 = r2 + 1
            goto L1b
        L3f:
            r7 = r11[r6]
            boolean r7 = r7.equals(r3)
            if (r7 != 0) goto L4a
            int r5 = r5 + 1
            goto L31
        L4a:
            java.lang.IllegalArgumentException r9 = j(r11, r6, r3, r4)
            throw r9
        L4f:
            return r10
        L50:
            r1 = 32768(0x8000, float:4.5918E-41)
            if (r10 > r1) goto L90
            short[] r10 = new short[r10]
            java.util.Arrays.fill(r10, r3)
        L5a:
            if (r2 >= r9) goto L8f
            int r1 = r2 * 2
            int r1 = r1 + r12
            r3 = r11[r1]
            r4 = r1 ^ 1
            r4 = r11[r4]
            com.google.common.collect.g0.a(r3, r4)
            int r5 = r3.hashCode()
            int r5 = com.google.common.collect.e2.b(r5)
        L70:
            r5 = r5 & r0
            short r6 = r10[r5]
            r7 = 65535(0xffff, float:9.1834E-41)
            r6 = r6 & r7
            if (r6 != r7) goto L7f
            short r1 = (short) r1
            r10[r5] = r1
            int r2 = r2 + 1
            goto L5a
        L7f:
            r7 = r11[r6]
            boolean r7 = r7.equals(r3)
            if (r7 != 0) goto L8a
            int r5 = r5 + 1
            goto L70
        L8a:
            java.lang.IllegalArgumentException r9 = j(r11, r6, r3, r4)
            throw r9
        L8f:
            return r10
        L90:
            int[] r10 = new int[r10]
            java.util.Arrays.fill(r10, r3)
        L95:
            if (r2 >= r9) goto Lc5
            int r1 = r2 * 2
            int r1 = r1 + r12
            r4 = r11[r1]
            r5 = r1 ^ 1
            r5 = r11[r5]
            com.google.common.collect.g0.a(r4, r5)
            int r6 = r4.hashCode()
            int r6 = com.google.common.collect.e2.b(r6)
        Lab:
            r6 = r6 & r0
            r7 = r10[r6]
            if (r7 != r3) goto Lb5
            r10[r6] = r1
            int r2 = r2 + 1
            goto L95
        Lb5:
            r8 = r11[r7]
            boolean r8 = r8.equals(r4)
            if (r8 != 0) goto Lc0
            int r6 = r6 + 1
            goto Lab
        Lc0:
            java.lang.IllegalArgumentException r9 = j(r11, r7, r4, r5)
            throw r9
        Lc5:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.b5.i(int, int, java.lang.Object[], int):java.lang.Object");
    }

    public static IllegalArgumentException j(Object[] objArr, int i2, Object obj, Object obj2) {
        return new IllegalArgumentException("Multiple entries with same key: " + obj + "=" + obj2 + " and " + objArr[i2] + "=" + objArr[i2 ^ 1]);
    }

    public b5(Object obj, Object[] objArr, int i2) {
        this.f = obj;
        this.f4180g = objArr;
        this.h = i2;
    }

    @Override // java.util.Map
    public int size() {
        return this.h;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    @NullableDecl
    public V get(@NullableDecl Object obj) {
        return (V) k(this.f, this.f4180g, this.h, 0, obj);
    }

    public static Object k(Object obj, Object[] objArr, int i2, int i3, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (i2 == 1) {
            if (objArr[i3].equals(obj2)) {
                return objArr[i3 ^ 1];
            }
            return null;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length - 1;
            int iB = e2.b(obj2.hashCode());
            while (true) {
                int i4 = iB & length;
                int i5 = bArr[i4] & 255;
                if (i5 == 255) {
                    return null;
                }
                if (objArr[i5].equals(obj2)) {
                    return objArr[i5 ^ 1];
                }
                iB = i4 + 1;
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length2 = sArr.length - 1;
            int iB2 = e2.b(obj2.hashCode());
            while (true) {
                int i6 = iB2 & length2;
                int i7 = sArr[i6] & UShort.MAX_VALUE;
                if (i7 == 65535) {
                    return null;
                }
                if (objArr[i7].equals(obj2)) {
                    return objArr[i7 ^ 1];
                }
                iB2 = i6 + 1;
            }
        } else {
            int[] iArr = (int[]) obj;
            int length3 = iArr.length - 1;
            int iB3 = e2.b(obj2.hashCode());
            while (true) {
                int i8 = iB3 & length3;
                int i9 = iArr[i8];
                if (i9 == -1) {
                    return null;
                }
                if (objArr[i9].equals(obj2)) {
                    return objArr[i9 ^ 1];
                }
                iB3 = i8 + 1;
            }
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet a() {
        return new a(this, this.f4180g, 0, this.h);
    }

    public static class a<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        public final transient ImmutableMap c;
        public final transient Object[] d;
        public final transient int e;
        public final transient int f;

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        public a(ImmutableMap immutableMap, Object[] objArr, int i, int i2) {
            this.c = immutableMap;
            this.d = objArr;
            this.e = i;
            this.f = i2;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            return asList().iterator();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int a(int i, Object[] objArr) {
            return asList().a(i, objArr);
        }

        @Override // com.google.common.collect.ImmutableSet
        public final ImmutableList g() {
            return new a5(this);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (value != null && value.equals(this.c.get(key))) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f;
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet b() {
        return new b(this, new c(this.f4180g, 0, this.h));
    }

    public static final class c extends ImmutableList<Object> {
        public final transient Object[] c;
        public final transient int d;
        public final transient int e;

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        public c(Object[] objArr, int i, int i2) {
            this.c = objArr;
            this.d = i;
            this.e = i2;
        }

        @Override // java.util.List
        public Object get(int i) {
            Preconditions.checkElementIndex(i, this.e);
            return this.c[(i * 2) + this.d];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.e;
        }
    }

    public static final class b<K> extends ImmutableSet<K> {
        public final transient ImmutableMap c;
        public final transient ImmutableList d;

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        public b(ImmutableMap immutableMap, ImmutableList immutableList) {
            this.c = immutableMap;
            this.d = immutableList;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public UnmodifiableIterator<K> iterator() {
            return asList().iterator();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int a(int i, Object[] objArr) {
            return asList().a(i, objArr);
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public ImmutableList<K> asList() {
            return this.d;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return this.c.get(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.c.size();
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableCollection c() {
        return new c(this.f4180g, 1, this.h);
    }
}
