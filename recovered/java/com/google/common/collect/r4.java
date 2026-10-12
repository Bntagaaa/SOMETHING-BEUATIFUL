package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multisets;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
class r4<K> {

    /* renamed from: a, reason: collision with root package name */
    public transient Object[] f4332a;

    /* renamed from: b, reason: collision with root package name */
    public transient int[] f4333b;
    public transient int c;
    public transient int d;
    public transient int[] e;
    public transient long[] f;

    /* renamed from: g, reason: collision with root package name */
    public transient float f4334g;
    public transient int h;

    public int j(int i, int i2) {
        return i - 1;
    }

    public static <K> r4<K> create() {
        return new r4<>();
    }

    public static <K> r4<K> createWithExpectedSize(int i) {
        return new r4<>(i, 0);
    }

    public r4() {
        f(3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public r4(r4 r4Var) {
        f(r4Var.c);
        int iB = r4Var.b();
        while (iB != -1) {
            put(r4Var.c(iB), r4Var.d(iB));
            iB = r4Var.i(iB);
        }
    }

    public r4(int i, int i2) {
        f(i);
    }

    public void f(int i) {
        Preconditions.checkArgument(i >= 0, "Initial capacity must be non-negative");
        Preconditions.checkArgument(true, "Illegal load factor");
        int iA = e2.a(i, 1.0f);
        int[] iArr = new int[iA];
        Arrays.fill(iArr, -1);
        this.e = iArr;
        this.f4334g = 1.0f;
        this.f4332a = new Object[i];
        this.f4333b = new int[i];
        long[] jArr = new long[i];
        Arrays.fill(jArr, -1L);
        this.f = jArr;
        this.h = Math.max(1, (int) (iA * 1.0f));
    }

    public final int k(Object obj, int i) {
        int length = (r0.length - 1) & i;
        int i2 = this.e[length];
        if (i2 == -1) {
            return 0;
        }
        int i3 = -1;
        while (true) {
            if (((int) (this.f[i2] >>> 32)) == i && Objects.equal(obj, this.f4332a[i2])) {
                int i4 = this.f4333b[i2];
                if (i3 == -1) {
                    this.e[length] = (int) this.f[i2];
                } else {
                    long[] jArr = this.f;
                    jArr[i3] = (jArr[i3] & (-4294967296L)) | (((int) jArr[i2]) & 4294967295L);
                }
                h(i2);
                this.c--;
                this.d++;
                return i4;
            }
            int i5 = (int) this.f[i2];
            if (i5 == -1) {
                return 0;
            }
            i3 = i2;
            i2 = i5;
        }
    }

    public int b() {
        return this.c == 0 ? -1 : 0;
    }

    public int i(int i) {
        int i2 = i + 1;
        if (i2 < this.c) {
            return i2;
        }
        return -1;
    }

    public void h(int i) {
        int i2 = this.c - 1;
        if (i < i2) {
            Object[] objArr = this.f4332a;
            objArr[i] = objArr[i2];
            int[] iArr = this.f4333b;
            iArr[i] = iArr[i2];
            objArr[i2] = null;
            iArr[i2] = 0;
            long[] jArr = this.f;
            long j = jArr[i2];
            jArr[i] = j;
            jArr[i2] = -1;
            int[] iArr2 = this.e;
            int length = ((int) (j >>> 32)) & (iArr2.length - 1);
            int i3 = iArr2[length];
            if (i3 == i2) {
                iArr2[length] = i;
                return;
            }
            while (true) {
                long[] jArr2 = this.f;
                long j2 = jArr2[i3];
                int i4 = (int) j2;
                if (i4 == i2) {
                    jArr2[i3] = (j2 & (-4294967296L)) | (4294967295L & i);
                    return;
                }
                i3 = i4;
            }
        } else {
            this.f4332a[i] = null;
            this.f4333b[i] = 0;
            this.f[i] = -1;
        }
    }

    public final Object c(int i) {
        Preconditions.checkElementIndex(i, this.c);
        return this.f4332a[i];
    }

    public final int d(int i) {
        Preconditions.checkElementIndex(i, this.c);
        return this.f4333b[i];
    }

    public class a extends Multisets.e<K> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4335a;

        /* renamed from: b, reason: collision with root package name */
        public int f4336b;

        public a(int i) {
            this.f4335a = r4.this.f4332a[i];
            this.f4336b = i;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public K getElement() {
            return (K) this.f4335a;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public int getCount() {
            int i = this.f4336b;
            r4 r4Var = r4.this;
            Object obj = this.f4335a;
            if (i == -1 || i >= r4Var.c || !Objects.equal(obj, r4Var.f4332a[i])) {
                this.f4336b = r4Var.e(obj);
            }
            int i2 = this.f4336b;
            if (i2 == -1) {
                return 0;
            }
            return r4Var.f4333b[i2];
        }
    }

    public final void a(int i) {
        if (i > this.f.length) {
            m(i);
        }
        if (i >= this.h) {
            n(Math.max(2, Integer.highestOneBit(i - 1) << 1));
        }
    }

    @CanIgnoreReturnValue
    public int put(@NullableDecl K k, int i) {
        g0.d(i, "count");
        long[] jArr = this.f;
        Object[] objArr = this.f4332a;
        int[] iArr = this.f4333b;
        int iC = e2.c(k);
        int[] iArr2 = this.e;
        int length = (iArr2.length - 1) & iC;
        int i2 = this.c;
        int i3 = iArr2[length];
        if (i3 == -1) {
            iArr2[length] = i2;
        } else {
            while (true) {
                long j = jArr[i3];
                if (((int) (j >>> 32)) == iC && Objects.equal(k, objArr[i3])) {
                    int i4 = iArr[i3];
                    iArr[i3] = i;
                    return i4;
                }
                int i5 = (int) j;
                if (i5 == -1) {
                    jArr[i3] = ((-4294967296L) & j) | (4294967295L & i2);
                    break;
                }
                i3 = i5;
            }
        }
        if (i2 == Integer.MAX_VALUE) {
            throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
        }
        int i6 = i2 + 1;
        int length2 = this.f.length;
        if (i6 > length2) {
            int iMax = Math.max(1, length2 >>> 1) + length2;
            int i7 = iMax >= 0 ? iMax : Integer.MAX_VALUE;
            if (i7 != length2) {
                m(i7);
            }
        }
        g(i2, i, iC, k);
        this.c = i6;
        if (i2 >= this.h) {
            n(this.e.length * 2);
        }
        this.d++;
        return 0;
    }

    public void g(int i, int i2, int i3, Object obj) {
        this.f[i] = (i3 << 32) | 4294967295L;
        this.f4332a[i] = obj;
        this.f4333b[i] = i2;
    }

    public void m(int i) {
        this.f4332a = Arrays.copyOf(this.f4332a, i);
        this.f4333b = Arrays.copyOf(this.f4333b, i);
        long[] jArr = this.f;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i);
        if (i > length) {
            Arrays.fill(jArrCopyOf, length, i, -1L);
        }
        this.f = jArrCopyOf;
    }

    public final void n(int i) {
        if (this.e.length >= 1073741824) {
            this.h = Integer.MAX_VALUE;
            return;
        }
        int i2 = ((int) (i * this.f4334g)) + 1;
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        long[] jArr = this.f;
        int i3 = i - 1;
        for (int i4 = 0; i4 < this.c; i4++) {
            int i5 = (int) (jArr[i4] >>> 32);
            int i6 = i5 & i3;
            int i7 = iArr[i6];
            iArr[i6] = i4;
            jArr[i4] = (i5 << 32) | (i7 & 4294967295L);
        }
        this.h = i2;
        this.e = iArr;
    }

    public final int e(Object obj) {
        int iC = e2.c(obj);
        int i = this.e[(r1.length - 1) & iC];
        while (i != -1) {
            long j = this.f[i];
            if (((int) (j >>> 32)) == iC && Objects.equal(obj, this.f4332a[i])) {
                return i;
            }
            i = (int) j;
        }
        return -1;
    }

    public int get(@NullableDecl Object obj) {
        int iE = e(obj);
        if (iE == -1) {
            return 0;
        }
        return this.f4333b[iE];
    }

    @CanIgnoreReturnValue
    public int remove(@NullableDecl Object obj) {
        return k(obj, e2.c(obj));
    }

    public final int l(int i) {
        return k(this.f4332a[i], (int) (this.f[i] >>> 32));
    }

    public void clear() {
        this.d++;
        Arrays.fill(this.f4332a, 0, this.c, (Object) null);
        Arrays.fill(this.f4333b, 0, this.c, 0);
        Arrays.fill(this.e, -1);
        Arrays.fill(this.f, -1L);
        this.c = 0;
    }
}
