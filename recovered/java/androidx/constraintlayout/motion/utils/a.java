package androidx.constraintlayout.motion.utils;

import java.util.Arrays;

/* loaded from: classes.dex */
class a extends CurveFit {

    /* renamed from: a, reason: collision with root package name */
    public final double[] f610a;

    /* renamed from: b, reason: collision with root package name */
    public final C0007a[] f611b;

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        C0007a[] c0007aArr = this.f611b;
        double d2 = c0007aArr[0].c;
        if (d < d2) {
            d = d2;
        }
        if (d > c0007aArr[c0007aArr.length - 1].d) {
            d = c0007aArr[c0007aArr.length - 1].d;
        }
        for (int i = 0; i < c0007aArr.length; i++) {
            C0007a c0007a = c0007aArr[i];
            if (d <= c0007a.d) {
                if (c0007a.r) {
                    dArr[0] = c0007a.getLinearX(d);
                    dArr[1] = c0007aArr[i].getLinearY(d);
                    return;
                } else {
                    c0007a.c(d);
                    C0007a c0007a2 = c0007aArr[i];
                    dArr[0] = (c0007a2.j * c0007a2.o) + c0007a2.l;
                    dArr[1] = (c0007a2.k * c0007a2.p) + c0007a2.m;
                    return;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        C0007a[] c0007aArr = this.f611b;
        double d2 = c0007aArr[0].c;
        if (d < d2) {
            d = d2;
        } else if (d > c0007aArr[c0007aArr.length - 1].d) {
            d = c0007aArr[c0007aArr.length - 1].d;
        }
        for (int i = 0; i < c0007aArr.length; i++) {
            C0007a c0007a = c0007aArr[i];
            if (d <= c0007a.d) {
                if (c0007a.r) {
                    fArr[0] = (float) c0007a.getLinearX(d);
                    fArr[1] = (float) c0007aArr[i].getLinearY(d);
                    return;
                } else {
                    c0007a.c(d);
                    C0007a c0007a2 = c0007aArr[i];
                    fArr[0] = (float) ((c0007a2.j * c0007a2.o) + c0007a2.l);
                    fArr[1] = (float) ((c0007a2.k * c0007a2.p) + c0007a2.m);
                    return;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        C0007a[] c0007aArr = this.f611b;
        double d2 = c0007aArr[0].c;
        if (d < d2) {
            d = d2;
        } else if (d > c0007aArr[c0007aArr.length - 1].d) {
            d = c0007aArr[c0007aArr.length - 1].d;
        }
        for (int i = 0; i < c0007aArr.length; i++) {
            C0007a c0007a = c0007aArr[i];
            if (d <= c0007a.d) {
                if (c0007a.r) {
                    dArr[0] = c0007a.getLinearDX(d);
                    dArr[1] = c0007aArr[i].getLinearDY(d);
                    return;
                } else {
                    c0007a.c(d);
                    dArr[0] = c0007aArr[i].a();
                    dArr[1] = c0007aArr[i].b();
                    return;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public double getPos(double d, int i) {
        double d2;
        double d3;
        C0007a[] c0007aArr = this.f611b;
        double d4 = c0007aArr[0].c;
        if (d < d4) {
            d = d4;
        } else if (d > c0007aArr[c0007aArr.length - 1].d) {
            d = c0007aArr[c0007aArr.length - 1].d;
        }
        for (int i2 = 0; i2 < c0007aArr.length; i2++) {
            C0007a c0007a = c0007aArr[i2];
            if (d <= c0007a.d) {
                if (c0007a.r) {
                    if (i == 0) {
                        return c0007a.getLinearX(d);
                    }
                    return c0007a.getLinearY(d);
                }
                c0007a.c(d);
                if (i == 0) {
                    C0007a c0007a2 = c0007aArr[i2];
                    d2 = c0007a2.j * c0007a2.o;
                    d3 = c0007a2.l;
                } else {
                    C0007a c0007a3 = c0007aArr[i2];
                    d2 = c0007a3.k * c0007a3.p;
                    d3 = c0007a3.m;
                }
                return d2 + d3;
            }
        }
        return Double.NaN;
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public double getSlope(double d, int i) {
        C0007a[] c0007aArr = this.f611b;
        double d2 = c0007aArr[0].c;
        if (d < d2) {
            d = d2;
        }
        if (d > c0007aArr[c0007aArr.length - 1].d) {
            d = c0007aArr[c0007aArr.length - 1].d;
        }
        for (int i2 = 0; i2 < c0007aArr.length; i2++) {
            C0007a c0007a = c0007aArr[i2];
            if (d <= c0007a.d) {
                if (c0007a.r) {
                    if (i == 0) {
                        return c0007a.getLinearDX(d);
                    }
                    return c0007a.getLinearDY(d);
                }
                c0007a.c(d);
                if (i == 0) {
                    return c0007aArr[i2].a();
                }
                return c0007aArr[i2].b();
            }
        }
        return Double.NaN;
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.f610a;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.constraintlayout.motion.utils.CurveFit, androidx.constraintlayout.motion.utils.a] */
    public a(int[] iArr, double[] dArr, double[][] dArr2) {
        int i;
        C0007a[] c0007aArr;
        double[] dArr3;
        int i2;
        C0007a[] c0007aArr2;
        int i3;
        double[] dArr4 = dArr;
        ?? curveFit = new CurveFit();
        curveFit.f610a = dArr4;
        int i4 = 1;
        curveFit.f611b = new C0007a[dArr4.length - 1];
        char c = 0;
        int i5 = 0;
        int i6 = 1;
        int i7 = 1;
        a aVar = curveFit;
        while (true) {
            C0007a[] c0007aArr3 = aVar.f611b;
            if (i5 >= c0007aArr3.length) {
                return;
            }
            int i8 = iArr[i5];
            if (i8 == 0) {
                i7 = 3;
            } else if (i8 == i4) {
                i6 = 1;
                i7 = 1;
            } else if (i8 == 2) {
                i6 = 2;
                i7 = 2;
            } else if (i8 == 3) {
                i6 = i6 == i4 ? 2 : 1;
                i7 = i6;
            }
            double d = dArr4[i5];
            int i9 = i5 + 1;
            double d2 = dArr4[i9];
            double[] dArr5 = dArr2[i5];
            double d3 = dArr5[c];
            int i10 = i5;
            double d4 = dArr5[1];
            double[] dArr6 = dArr2[i9];
            double d5 = dArr6[c];
            double d6 = dArr6[1];
            C0007a c0007a = new C0007a();
            c0007a.r = false;
            boolean z = i7 == 1;
            c0007a.q = z;
            c0007a.c = d;
            c0007a.d = d2;
            double d7 = d2 - d;
            double d8 = 1.0d / d7;
            c0007a.i = d8;
            if (3 == i7) {
                c0007a.r = true;
            }
            double d9 = d5 - d3;
            boolean z2 = z;
            int i11 = i6;
            double d10 = d6 - d4;
            if (c0007a.r || Math.abs(d9) < 0.001d || Math.abs(d10) < 0.001d) {
                i = i7;
                c0007aArr = c0007aArr3;
                c0007a.r = true;
                c0007a.e = d3;
                c0007a.f = d5;
                c0007a.f614g = d4;
                c0007a.h = d6;
                double dHypot = Math.hypot(d10, d9);
                c0007a.f613b = dHypot;
                c0007a.n = dHypot * d8;
                c0007a.l = d9 / d7;
                c0007a.m = d10 / d7;
            } else {
                c0007a.f612a = new double[101];
                c0007a.j = (z2 ? -1 : 1) * d9;
                c0007a.k = d10 * (z2 ? 1 : -1);
                c0007a.l = z2 ? d5 : d3;
                c0007a.m = z2 ? d4 : d6;
                double d11 = d4 - d6;
                int i12 = 0;
                double dHypot2 = 0.0d;
                double d12 = 0.0d;
                double d13 = 0.0d;
                while (true) {
                    dArr3 = C0007a.s;
                    if (i12 >= 91) {
                        break;
                    }
                    double d14 = d12;
                    double radians = Math.toRadians((i12 * 90.0d) / 90);
                    double dSin = Math.sin(radians) * d9;
                    double dCos = Math.cos(radians) * d11;
                    double d15 = d11;
                    if (i12 > 0) {
                        i3 = i12;
                        double d16 = dSin - d14;
                        i2 = i7;
                        c0007aArr2 = c0007aArr3;
                        dHypot2 += Math.hypot(d16, dCos - d13);
                        dArr3[i3] = dHypot2;
                    } else {
                        i2 = i7;
                        c0007aArr2 = c0007aArr3;
                        i3 = i12;
                    }
                    i12 = i3 + 1;
                    d13 = dCos;
                    c0007aArr3 = c0007aArr2;
                    d11 = d15;
                    i7 = i2;
                    d12 = dSin;
                }
                i = i7;
                c0007aArr = c0007aArr3;
                c0007a.f613b = dHypot2;
                for (int i13 = 0; i13 < 91; i13++) {
                    dArr3[i13] = dArr3[i13] / dHypot2;
                }
                int i14 = 0;
                while (true) {
                    double[] dArr7 = c0007a.f612a;
                    if (i14 >= dArr7.length) {
                        break;
                    }
                    double length = i14 / (dArr7.length - 1);
                    int iBinarySearch = Arrays.binarySearch(dArr3, length);
                    if (iBinarySearch >= 0) {
                        dArr7[i14] = iBinarySearch / 90;
                    } else if (iBinarySearch == -1) {
                        dArr7[i14] = 0.0d;
                    } else {
                        int i15 = -iBinarySearch;
                        int i16 = i15 - 2;
                        double d17 = dArr3[i16];
                        dArr7[i14] = (((length - d17) / (dArr3[i15 - 1] - d17)) + i16) / 90;
                    }
                    i14++;
                }
                c0007a.n = c0007a.f613b * c0007a.i;
            }
            c0007aArr[i10] = c0007a;
            aVar = this;
            dArr4 = dArr;
            i6 = i11;
            i5 = i9;
            i7 = i;
            c = 0;
            i4 = 1;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.a$a, reason: collision with other inner class name */
    public static class C0007a {
        public static final double[] s = new double[91];

        /* renamed from: a, reason: collision with root package name */
        public double[] f612a;

        /* renamed from: b, reason: collision with root package name */
        public double f613b;
        public double c;
        public double d;
        public double e;
        public double f;

        /* renamed from: g, reason: collision with root package name */
        public double f614g;
        public double h;
        public double i;
        public double j;
        public double k;
        public double l;
        public double m;
        public double n;
        public double o;
        public double p;
        public boolean q;
        public boolean r;

        public final void c(double d) {
            double d2 = (this.q ? this.d - d : d - this.c) * this.i;
            double d3 = 0.0d;
            if (d2 > 0.0d) {
                d3 = 1.0d;
                if (d2 < 1.0d) {
                    double[] dArr = this.f612a;
                    double length = d2 * (dArr.length - 1);
                    int i = (int) length;
                    double d4 = dArr[i];
                    d3 = ((dArr[i + 1] - d4) * (length - i)) + d4;
                }
            }
            double d5 = d3 * 1.5707963267948966d;
            this.o = Math.sin(d5);
            this.p = Math.cos(d5);
        }

        public final double a() {
            double d = this.j * this.p;
            double dHypot = this.n / Math.hypot(d, (-this.k) * this.o);
            return this.q ? (-d) * dHypot : d * dHypot;
        }

        public final double b() {
            double d = this.j * this.p;
            double d2 = (-this.k) * this.o;
            double dHypot = this.n / Math.hypot(d, d2);
            return this.q ? (-d2) * dHypot : d2 * dHypot;
        }

        public double getLinearX(double d) {
            double d2 = (d - this.c) * this.i;
            double d3 = this.f;
            double d4 = this.e;
            return ((d3 - d4) * d2) + d4;
        }

        public double getLinearY(double d) {
            double d2 = (d - this.c) * this.i;
            double d3 = this.h;
            double d4 = this.f614g;
            return ((d3 - d4) * d2) + d4;
        }

        public double getLinearDX(double d) {
            return this.l;
        }

        public double getLinearDY(double d) {
            return this.m;
        }
    }
}
