package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
final class b6<T> {

    /* renamed from: a, reason: collision with root package name */
    public final int f4181a;

    /* renamed from: b, reason: collision with root package name */
    public final Comparator f4182b;
    public final Object[] c;
    public int d;
    public Object e;

    public static <T> b6<T> least(int i, Comparator<? super T> comparator) {
        return new b6<>(i, comparator);
    }

    public b6(int i, Comparator comparator) {
        this.f4182b = (Comparator) Preconditions.checkNotNull(comparator, "comparator");
        this.f4181a = i;
        Preconditions.checkArgument(i >= 0, "k must be nonnegative, was %s", i);
        this.c = new Object[i * 2];
        this.d = 0;
        this.e = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void offer(@NullableDecl T t) {
        int i = this.f4181a;
        if (i == 0) {
            return;
        }
        int i2 = this.d;
        int iMax = 0;
        Object[] objArr = this.c;
        if (i2 == 0) {
            objArr[0] = t;
            this.e = t;
            this.d = 1;
            return;
        }
        Comparator comparator = this.f4182b;
        if (i2 < i) {
            this.d = i2 + 1;
            objArr[i2] = t;
            if (comparator.compare(t, this.e) > 0) {
                this.e = t;
                return;
            }
            return;
        }
        if (comparator.compare(t, this.e) < 0) {
            int i3 = this.d;
            int i4 = i3 + 1;
            this.d = i4;
            objArr[i3] = t;
            if (i4 == i * 2) {
                int i5 = (i * 2) - 1;
                int iLog2 = IntMath.log2(i5, RoundingMode.CEILING) * 3;
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    if (iMax >= i5) {
                        break;
                    }
                    int i8 = ((iMax + i5) + 1) >>> 1;
                    Object obj = objArr[i8];
                    objArr[i8] = objArr[i5];
                    int i9 = iMax;
                    int i10 = i9;
                    while (i9 < i5) {
                        if (comparator.compare(objArr[i9], obj) < 0) {
                            Object obj2 = objArr[i10];
                            objArr[i10] = objArr[i9];
                            objArr[i9] = obj2;
                            i10++;
                        }
                        i9++;
                    }
                    objArr[i5] = objArr[i10];
                    objArr[i10] = obj;
                    if (i10 <= i) {
                        if (i10 >= i) {
                            break;
                        }
                        iMax = Math.max(i10, iMax + 1);
                        i7 = i10;
                    } else {
                        i5 = i10 - 1;
                    }
                    i6++;
                    if (i6 >= iLog2) {
                        Arrays.sort(objArr, iMax, i5, comparator);
                        break;
                    }
                }
                this.d = i;
                this.e = objArr[i7];
                for (int i11 = i7 + 1; i11 < i; i11++) {
                    if (comparator.compare(objArr[i11], this.e) > 0) {
                        this.e = objArr[i11];
                    }
                }
            }
        }
    }

    public void offerAll(Iterator<? extends T> it) {
        while (it.hasNext()) {
            offer(it.next());
        }
    }

    public List<T> topK() {
        int i = this.d;
        Comparator comparator = this.f4182b;
        Object[] objArr = this.c;
        Arrays.sort(objArr, 0, i, comparator);
        int i2 = this.d;
        int i3 = this.f4181a;
        if (i2 > i3) {
            Arrays.fill(objArr, i3, objArr.length, (Object) null);
            this.d = i3;
            this.e = objArr[i3 - 1];
        }
        return Collections.unmodifiableList(Arrays.asList(Arrays.copyOf(objArr, this.d)));
    }
}
