package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import kotlin.UShort;

@GwtIncompatible
/* loaded from: classes.dex */
final class m0 {
    public static int b(int i, int i2, int i3) {
        return (i & (~i3)) | (i2 & i3);
    }

    public static int c(int i) {
        return (i + 1) * (i < 32 ? 4 : 2);
    }

    private m0() {
    }

    public static Object a(int i) {
        if (i < 2 || i > 1073741824 || Integer.highestOneBit(i) != i) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "must be power of 2 between 2^1 and 2^30: "));
        }
        return i <= 256 ? new byte[i] : i <= 65536 ? new short[i] : new int[i];
    }

    public static int e(int i, Object obj) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i] & 255;
        }
        if (obj instanceof short[]) {
            return ((short[]) obj)[i] & UShort.MAX_VALUE;
        }
        return ((int[]) obj)[i];
    }

    public static void f(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }

    public static int d(Object obj, Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int i2;
        int i3;
        int iC = e2.c(obj);
        int i4 = iC & i;
        int iE = e(i4, obj3);
        if (iE == 0) {
            return -1;
        }
        int i5 = ~i;
        int i6 = iC & i5;
        int i7 = -1;
        while (true) {
            i2 = iE - 1;
            i3 = iArr[i2];
            if ((i3 & i5) == i6 && Objects.equal(obj, objArr[i2]) && (objArr2 == null || Objects.equal(obj2, objArr2[i2]))) {
                break;
            }
            int i8 = i3 & i;
            if (i8 == 0) {
                return -1;
            }
            i7 = i2;
            iE = i8;
        }
        int i9 = i3 & i;
        if (i7 == -1) {
            f(obj3, i4, i9);
            return i2;
        }
        iArr[i7] = b(iArr[i7], i9, i);
        return i2;
    }
}
