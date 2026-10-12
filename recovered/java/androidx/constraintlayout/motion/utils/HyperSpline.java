package androidx.constraintlayout.motion.utils;

import java.lang.reflect.Array;

/* loaded from: classes.dex */
public class HyperSpline {

    /* renamed from: a, reason: collision with root package name */
    public int f595a;

    /* renamed from: b, reason: collision with root package name */
    public Cubic[][] f596b;
    public int c;
    public double[] d;
    public double e;
    public double[][] f;

    public HyperSpline(double[][] dArr) {
        setup(dArr);
    }

    public HyperSpline() {
    }

    public void setup(double[][] dArr) {
        int i;
        char c = 0;
        int length = dArr[0].length;
        this.c = length;
        int length2 = dArr.length;
        this.f595a = length2;
        this.f = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        this.f596b = new Cubic[this.c][];
        for (int i2 = 0; i2 < this.c; i2++) {
            for (int i3 = 0; i3 < this.f595a; i3++) {
                this.f[i2][i3] = dArr[i3][i2];
            }
        }
        int i4 = 0;
        while (true) {
            i = this.c;
            if (i4 >= i) {
                break;
            }
            Cubic[][] cubicArr = this.f596b;
            double[] dArr2 = this.f[i4];
            int length3 = dArr2.length;
            double[] dArr3 = new double[length3];
            double[] dArr4 = new double[length3];
            double[] dArr5 = new double[length3];
            int i5 = length3 - 1;
            dArr3[c] = 0.5d;
            for (int i6 = 1; i6 < i5; i6++) {
                dArr3[i6] = 1.0d / (4.0d - dArr3[i6 - 1]);
            }
            int i7 = length3 - 2;
            dArr3[i5] = 1.0d / (2.0d - dArr3[i7]);
            dArr4[c] = (dArr2[1] - dArr2[c]) * 3.0d * dArr3[c];
            int i8 = 1;
            while (i8 < i5) {
                int i9 = i8 + 1;
                int i10 = i8 - 1;
                dArr4[i8] = (((dArr2[i9] - dArr2[i10]) * 3.0d) - dArr4[i10]) * dArr3[i8];
                i8 = i9;
            }
            double d = (((dArr2[i5] - dArr2[i7]) * 3.0d) - dArr4[i7]) * dArr3[i5];
            dArr4[i5] = d;
            dArr5[i5] = d;
            while (i7 >= 0) {
                dArr5[i7] = dArr4[i7] - (dArr3[i7] * dArr5[i7 + 1]);
                i7--;
            }
            Cubic[] cubicArr2 = new Cubic[i5];
            int i11 = 0;
            while (i11 < i5) {
                double d2 = dArr2[i11];
                double d3 = dArr5[i11];
                int i12 = i11 + 1;
                double d4 = dArr2[i12];
                double d5 = dArr5[i12];
                cubicArr2[i11] = new Cubic((float) d2, d3, (((d4 - d2) * 3.0d) - (d3 * 2.0d)) - d5, ((d2 - d4) * 2.0d) + d3 + d5);
                cubicArr = cubicArr;
                i11 = i12;
            }
            cubicArr[i4] = cubicArr2;
            i4++;
            c = 0;
        }
        this.d = new double[this.f595a - 1];
        this.e = 0.0d;
        Cubic[] cubicArr3 = new Cubic[i];
        for (int i13 = 0; i13 < this.d.length; i13++) {
            for (int i14 = 0; i14 < this.c; i14++) {
                cubicArr3[i14] = this.f596b[i14][i13];
            }
            double d6 = this.e;
            double[] dArr6 = this.d;
            double dApproxLength = approxLength(cubicArr3);
            dArr6[i13] = dApproxLength;
            this.e = d6 + dApproxLength;
        }
    }

    public void getVelocity(double d, double[] dArr) {
        double d2 = d * this.e;
        int i = 0;
        while (true) {
            double[] dArr2 = this.d;
            if (i >= dArr2.length - 1) {
                break;
            }
            double d3 = dArr2[i];
            if (d3 >= d2) {
                break;
            }
            d2 -= d3;
            i++;
        }
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr[i2] = this.f596b[i2][i].vel(d2 / this.d[i]);
        }
    }

    public void getPos(double d, double[] dArr) {
        double d2 = d * this.e;
        int i = 0;
        while (true) {
            double[] dArr2 = this.d;
            if (i >= dArr2.length - 1) {
                break;
            }
            double d3 = dArr2[i];
            if (d3 >= d2) {
                break;
            }
            d2 -= d3;
            i++;
        }
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr[i2] = this.f596b[i2][i].eval(d2 / this.d[i]);
        }
    }

    public void getPos(double d, float[] fArr) {
        double d2 = d * this.e;
        int i = 0;
        while (true) {
            double[] dArr = this.d;
            if (i >= dArr.length - 1) {
                break;
            }
            double d3 = dArr[i];
            if (d3 >= d2) {
                break;
            }
            d2 -= d3;
            i++;
        }
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr[i2] = (float) this.f596b[i2][i].eval(d2 / this.d[i]);
        }
    }

    public double getPos(double d, int i) {
        double[] dArr;
        double d2 = d * this.e;
        int i2 = 0;
        while (true) {
            dArr = this.d;
            if (i2 >= dArr.length - 1) {
                break;
            }
            double d3 = dArr[i2];
            if (d3 >= d2) {
                break;
            }
            d2 -= d3;
            i2++;
        }
        return this.f596b[i][i2].eval(d2 / dArr[i2]);
    }

    public double approxLength(Cubic[] cubicArr) {
        int i;
        int length = cubicArr.length;
        double[] dArr = new double[cubicArr.length];
        double d = 0.0d;
        double d2 = 0.0d;
        double dSqrt = 0.0d;
        while (true) {
            i = 0;
            if (d2 >= 1.0d) {
                break;
            }
            double d3 = 0.0d;
            while (i < cubicArr.length) {
                double d4 = dArr[i];
                double dEval = cubicArr[i].eval(d2);
                dArr[i] = dEval;
                double d5 = d4 - dEval;
                d3 += d5 * d5;
                i++;
            }
            if (d2 > 0.0d) {
                dSqrt += Math.sqrt(d3);
            }
            d2 += 0.1d;
        }
        while (i < cubicArr.length) {
            double d6 = dArr[i];
            double dEval2 = cubicArr[i].eval(1.0d);
            dArr[i] = dEval2;
            double d7 = d6 - dEval2;
            d += d7 * d7;
            i++;
        }
        return Math.sqrt(d) + dSqrt;
    }

    public static class Cubic {
        public static final double HALF = 0.5d;
        public static final double THIRD = 0.3333333333333333d;

        /* renamed from: a, reason: collision with root package name */
        public final double f597a;

        /* renamed from: b, reason: collision with root package name */
        public final double f598b;
        public final double c;
        public final double d;

        public Cubic(double d, double d2, double d3, double d4) {
            this.f597a = d;
            this.f598b = d2;
            this.c = d3;
            this.d = d4;
        }

        public double eval(double d) {
            return (((((this.d * d) + this.c) * d) + this.f598b) * d) + this.f597a;
        }

        public double vel(double d) {
            return (((this.c * 0.5d) + (this.d * 0.3333333333333333d * d)) * d) + this.f598b;
        }
    }
}
