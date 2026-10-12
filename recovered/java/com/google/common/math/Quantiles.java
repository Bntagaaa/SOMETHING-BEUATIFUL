package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Doubles;
import com.google.common.primitives.Ints;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class Quantiles {
    public static double a(double d, double d2, double d3, double d4) {
        if (d == Double.NEGATIVE_INFINITY) {
            return d2 == Double.POSITIVE_INFINITY ? Double.NaN : Double.NEGATIVE_INFINITY;
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        }
        return (((d2 - d) * d3) / d4) + d;
    }

    public static ScaleAndIndex median() {
        return scale(2).index(1);
    }

    public static Scale quartiles() {
        return scale(4);
    }

    public static Scale percentiles() {
        return scale(100);
    }

    public static Scale scale(int i) {
        return new Scale(i);
    }

    public static final class Scale {

        /* renamed from: a, reason: collision with root package name */
        public final int f4717a;

        public Scale(int i) {
            Preconditions.checkArgument(i > 0, "Quantile scale must be positive");
            this.f4717a = i;
        }

        public ScaleAndIndex index(int i) {
            return new ScaleAndIndex(this.f4717a, i);
        }

        public ScaleAndIndexes indexes(int... iArr) {
            return new ScaleAndIndexes(this.f4717a, (int[]) iArr.clone());
        }

        public ScaleAndIndexes indexes(Collection<Integer> collection) {
            return new ScaleAndIndexes(this.f4717a, Ints.toArray(collection));
        }
    }

    public static final class ScaleAndIndex {

        /* renamed from: a, reason: collision with root package name */
        public final int f4718a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4719b;

        public ScaleAndIndex(int i, int i2) {
            if (i2 < 0 || i2 > i) {
                throw new IllegalArgumentException(_COROUTINE.a.d(i, "Quantile indexes must be between 0 and the scale, which is "));
            }
            this.f4718a = i;
            this.f4719b = i2;
        }

        public double compute(Collection<? extends Number> collection) {
            return computeInPlace(Doubles.toArray(collection));
        }

        public double compute(double... dArr) {
            return computeInPlace((double[]) dArr.clone());
        }

        public double computeInPlace(double... dArr) {
            Preconditions.checkArgument(dArr.length > 0, "Cannot calculate quantiles of an empty dataset");
            for (double d : dArr) {
                if (Double.isNaN(d)) {
                    return Double.NaN;
                }
            }
            long length = this.f4719b * (dArr.length - 1);
            int i = this.f4718a;
            long j = i;
            int iDivide = (int) LongMath.divide(length, j, RoundingMode.DOWN);
            int i2 = (int) (length - (iDivide * j));
            Quantiles.c(iDivide, 0, dArr.length - 1, dArr);
            if (i2 != 0) {
                int i3 = iDivide + 1;
                Quantiles.c(i3, i3, dArr.length - 1, dArr);
                return Quantiles.a(dArr[iDivide], dArr[i3], i2, i);
            }
            return dArr[iDivide];
        }

        public double compute(long... jArr) {
            int length = jArr.length;
            double[] dArr = new double[length];
            for (int i = 0; i < length; i++) {
                dArr[i] = jArr[i];
            }
            return computeInPlace(dArr);
        }

        public double compute(int... iArr) {
            int length = iArr.length;
            double[] dArr = new double[length];
            for (int i = 0; i < length; i++) {
                dArr[i] = iArr[i];
            }
            return computeInPlace(dArr);
        }
    }

    public static final class ScaleAndIndexes {

        /* renamed from: a, reason: collision with root package name */
        public final int f4720a;

        /* renamed from: b, reason: collision with root package name */
        public final int[] f4721b;

        public ScaleAndIndexes(int i, int[] iArr) {
            for (int i2 : iArr) {
                if (i2 < 0 || i2 > i) {
                    throw new IllegalArgumentException(_COROUTINE.a.d(i, "Quantile indexes must be between 0 and the scale, which is "));
                }
            }
            Preconditions.checkArgument(iArr.length > 0, "Indexes must be a non empty array");
            this.f4720a = i;
            this.f4721b = iArr;
        }

        public Map<Integer, Double> compute(Collection<? extends Number> collection) {
            return computeInPlace(Doubles.toArray(collection));
        }

        public Map<Integer, Double> compute(double... dArr) {
            return computeInPlace((double[]) dArr.clone());
        }

        public Map<Integer, Double> computeInPlace(double... dArr) {
            boolean z;
            int i;
            int[] iArr;
            int i2 = 1;
            Preconditions.checkArgument(dArr.length > 0, "Cannot calculate quantiles of an empty dataset");
            int length = dArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    z = false;
                    break;
                }
                if (Double.isNaN(dArr[i3])) {
                    z = true;
                    break;
                }
                i3++;
            }
            int[] iArr2 = this.f4721b;
            if (z) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (int i4 : iArr2) {
                    linkedHashMap.put(Integer.valueOf(i4), Double.valueOf(Double.NaN));
                }
                return Collections.unmodifiableMap(linkedHashMap);
            }
            int[] iArr3 = new int[iArr2.length];
            int[] iArr4 = new int[iArr2.length];
            int[] iArr5 = new int[iArr2.length * 2];
            int i5 = 0;
            int i6 = 0;
            while (true) {
                int length2 = iArr2.length;
                i = this.f4720a;
                if (i5 >= length2) {
                    break;
                }
                long length3 = iArr2[i5] * (dArr.length - i2);
                long j = i;
                int i7 = i5;
                int iDivide = (int) LongMath.divide(length3, j, RoundingMode.DOWN);
                int[] iArr6 = iArr2;
                int i8 = (int) (length3 - (iDivide * j));
                iArr3[i7] = iDivide;
                iArr4[i7] = i8;
                iArr5[i6] = iDivide;
                int i9 = i6 + 1;
                if (i8 != 0) {
                    iArr5[i9] = iDivide + 1;
                    i6 += 2;
                } else {
                    i6 = i9;
                }
                i5 = i7 + 1;
                iArr2 = iArr6;
                i2 = 1;
            }
            int i10 = 0;
            Arrays.sort(iArr5, 0, i6);
            Quantiles.b(iArr5, 0, i6 - 1, dArr, 0, dArr.length - 1);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            int[] iArr7 = iArr2;
            while (i10 < iArr7.length) {
                int i11 = iArr3[i10];
                int i12 = iArr4[i10];
                if (i12 == 0) {
                    linkedHashMap2.put(Integer.valueOf(iArr7[i10]), Double.valueOf(dArr[i11]));
                    iArr = iArr7;
                } else {
                    iArr = iArr7;
                    linkedHashMap2.put(Integer.valueOf(iArr7[i10]), Double.valueOf(Quantiles.a(dArr[i11], dArr[i11 + 1], i12, i)));
                }
                i10++;
                iArr7 = iArr;
            }
            return Collections.unmodifiableMap(linkedHashMap2);
        }

        public Map<Integer, Double> compute(long... jArr) {
            int length = jArr.length;
            double[] dArr = new double[length];
            for (int i = 0; i < length; i++) {
                dArr[i] = jArr[i];
            }
            return computeInPlace(dArr);
        }

        public Map<Integer, Double> compute(int... iArr) {
            int length = iArr.length;
            double[] dArr = new double[length];
            for (int i = 0; i < length; i++) {
                dArr[i] = iArr[i];
            }
            return computeInPlace(dArr);
        }
    }

    public static void c(int i, int i2, int i3, double[] dArr) {
        if (i == i2) {
            int i4 = i2;
            for (int i5 = i2 + 1; i5 <= i3; i5++) {
                if (dArr[i4] > dArr[i5]) {
                    i4 = i5;
                }
            }
            if (i4 != i2) {
                double d = dArr[i4];
                dArr[i4] = dArr[i2];
                dArr[i2] = d;
                return;
            }
            return;
        }
        while (i3 > i2) {
            int i6 = (i2 + i3) >>> 1;
            double d2 = dArr[i3];
            double d3 = dArr[i6];
            boolean z = d2 < d3;
            double d4 = dArr[i2];
            boolean z2 = d3 < d4;
            boolean z3 = d2 < d4;
            if (z == z2) {
                dArr[i6] = d4;
                dArr[i2] = d3;
            } else if (z != z3) {
                dArr[i2] = d2;
                dArr[i3] = d4;
            }
            double d5 = dArr[i2];
            int i7 = i3;
            int i8 = i7;
            while (i7 > i2) {
                double d6 = dArr[i7];
                if (d6 > d5) {
                    double d7 = dArr[i8];
                    dArr[i8] = d6;
                    dArr[i7] = d7;
                    i8--;
                }
                i7--;
            }
            double d8 = dArr[i2];
            dArr[i2] = dArr[i8];
            dArr[i8] = d8;
            if (i8 >= i) {
                i3 = i8 - 1;
            }
            if (i8 <= i) {
                i2 = i8 + 1;
            }
        }
    }

    public static void b(int[] iArr, int i, int i2, double[] dArr, int i3, int i4) {
        int i5;
        if (i == i2) {
            i5 = i;
        } else {
            int i6 = i3 + i4;
            int i7 = i6 >>> 1;
            int i8 = i;
            i5 = i2;
            while (true) {
                if (i5 > i8 + 1) {
                    int i9 = (i8 + i5) >>> 1;
                    int i10 = iArr[i9];
                    if (i10 <= i7) {
                        if (i10 >= i7) {
                            i5 = i9;
                            break;
                        }
                        i8 = i9;
                    } else {
                        i5 = i9;
                    }
                } else if ((i6 - iArr[i8]) - iArr[i5] <= 0) {
                    i5 = i8;
                }
            }
        }
        int i11 = iArr[i5];
        c(i11, i3, i4, dArr);
        int i12 = i5 - 1;
        while (i12 >= i && iArr[i12] == i11) {
            i12--;
        }
        if (i12 >= i) {
            b(iArr, i, i12, dArr, i3, i11 - 1);
        }
        int i13 = i5 + 1;
        while (i13 <= i2 && iArr[i13] == i11) {
            i13++;
        }
        if (i13 <= i2) {
            b(iArr, i13, i2, dArr, i11 + 1, i4);
        }
    }
}
