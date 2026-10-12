package androidx.constraintlayout.motion.utils;

import java.util.Arrays;

/* loaded from: classes.dex */
public class Oscillator {
    public static final int BOUNCE = 6;
    public static final int COS_WAVE = 5;
    public static final int REVERSE_SAW_WAVE = 4;
    public static final int SAW_WAVE = 3;
    public static final int SIN_WAVE = 0;
    public static final int SQUARE_WAVE = 1;
    public static String TAG = "Oscillator";
    public static final int TRIANGLE_WAVE = 2;

    /* renamed from: a, reason: collision with root package name */
    public float[] f603a = new float[0];

    /* renamed from: b, reason: collision with root package name */
    public double[] f604b = new double[0];
    public double[] c;
    public int d;

    public String toString() {
        return "pos =" + Arrays.toString(this.f604b) + " period=" + Arrays.toString(this.f603a);
    }

    public void setType(int i) {
        this.d = i;
    }

    public void addPoint(double d, float f) {
        int length = this.f603a.length + 1;
        int iBinarySearch = Arrays.binarySearch(this.f604b, d);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        this.f604b = Arrays.copyOf(this.f604b, length);
        this.f603a = Arrays.copyOf(this.f603a, length);
        this.c = new double[length];
        double[] dArr = this.f604b;
        System.arraycopy(dArr, iBinarySearch, dArr, iBinarySearch + 1, (length - iBinarySearch) - 1);
        this.f604b[iBinarySearch] = d;
        this.f603a[iBinarySearch] = f;
    }

    public void normalize() {
        double d = 0.0d;
        int i = 0;
        while (true) {
            if (i >= this.f603a.length) {
                break;
            }
            d += r7[i];
            i++;
        }
        int i2 = 1;
        double d2 = 0.0d;
        int i3 = 1;
        while (true) {
            float[] fArr = this.f603a;
            if (i3 >= fArr.length) {
                break;
            }
            int i4 = i3 - 1;
            float f = (fArr[i4] + fArr[i3]) / 2.0f;
            double[] dArr = this.f604b;
            d2 += (dArr[i3] - dArr[i4]) * f;
            i3++;
        }
        int i5 = 0;
        while (true) {
            float[] fArr2 = this.f603a;
            if (i5 >= fArr2.length) {
                break;
            }
            fArr2[i5] = (float) (fArr2[i5] * (d / d2));
            i5++;
        }
        this.c[0] = 0.0d;
        while (true) {
            float[] fArr3 = this.f603a;
            if (i2 >= fArr3.length) {
                return;
            }
            int i6 = i2 - 1;
            float f2 = (fArr3[i6] + fArr3[i2]) / 2.0f;
            double[] dArr2 = this.f604b;
            double d3 = dArr2[i2] - dArr2[i6];
            double[] dArr3 = this.c;
            dArr3[i2] = (d3 * f2) + dArr3[i6];
            i2++;
        }
    }

    public final double b(double d) {
        if (d < 0.0d) {
            d = 0.0d;
        } else if (d > 1.0d) {
            d = 1.0d;
        }
        int iBinarySearch = Arrays.binarySearch(this.f604b, d);
        if (iBinarySearch > 0) {
            return 1.0d;
        }
        if (iBinarySearch == 0) {
            return 0.0d;
        }
        int i = -iBinarySearch;
        int i2 = i - 1;
        float[] fArr = this.f603a;
        float f = fArr[i2];
        int i3 = i - 2;
        float f2 = fArr[i3];
        double[] dArr = this.f604b;
        double d2 = dArr[i2];
        double d3 = dArr[i3];
        double d4 = (f - f2) / (d2 - d3);
        return ((((d * d) - (d3 * d3)) * d4) / 2.0d) + ((d - d3) * (f2 - (d4 * d3))) + this.c[i3];
    }

    public double getValue(double d) {
        double dAbs;
        switch (this.d) {
            case 1:
                return Math.signum(0.5d - (b(d) % 1.0d));
            case 2:
                dAbs = Math.abs((((b(d) * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((b(d) * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                dAbs = ((b(d) * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(b(d) * 6.283185307179586d);
            case 6:
                double dAbs2 = 1.0d - Math.abs(((b(d) * 4.0d) % 4.0d) - 2.0d);
                dAbs = dAbs2 * dAbs2;
                break;
            default:
                return Math.sin(b(d) * 6.283185307179586d);
        }
        return 1.0d - dAbs;
    }

    public final double a(double d) {
        if (d <= 0.0d) {
            d = 1.0E-5d;
        } else if (d >= 1.0d) {
            d = 0.999999d;
        }
        int iBinarySearch = Arrays.binarySearch(this.f604b, d);
        if (iBinarySearch > 0 || iBinarySearch == 0) {
            return 0.0d;
        }
        int i = -iBinarySearch;
        int i2 = i - 1;
        float[] fArr = this.f603a;
        float f = fArr[i2];
        int i3 = i - 2;
        float f2 = fArr[i3];
        double[] dArr = this.f604b;
        double d2 = dArr[i2];
        double d3 = dArr[i3];
        double d4 = (f - f2) / (d2 - d3);
        return (f2 - (d4 * d3)) + (d * d4);
    }

    public double getSlope(double d) {
        switch (this.d) {
            case 1:
                return 0.0d;
            case 2:
                return Math.signum((((b(d) * 4.0d) + 3.0d) % 4.0d) - 2.0d) * a(d) * 4.0d;
            case 3:
                return a(d) * 2.0d;
            case 4:
                return (-a(d)) * 2.0d;
            case 5:
                return Math.sin(b(d) * 6.283185307179586d) * a(d) * (-6.283185307179586d);
            case 6:
                return ((((b(d) * 4.0d) + 2.0d) % 4.0d) - 2.0d) * a(d) * 4.0d;
            default:
                return Math.cos(b(d) * 6.283185307179586d) * a(d) * 6.283185307179586d;
        }
    }
}
