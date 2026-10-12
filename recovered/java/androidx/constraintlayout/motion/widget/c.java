package androidx.constraintlayout.motion.widget;

import androidx.annotation.NonNull;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
class c implements Comparable<c> {
    public static final String[] o = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: a, reason: collision with root package name */
    public Easing f676a;

    /* renamed from: b, reason: collision with root package name */
    public int f677b;
    public float c;
    public float d;
    public float e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f678g;
    public float h;
    public float i;
    public int j;
    public final LinkedHashMap k;
    public final int l;
    public double[] m;
    public double[] n;

    public c() {
        this.f677b = 0;
        this.i = Float.NaN;
        this.j = Key.UNSET;
        this.k = new LinkedHashMap();
        this.l = 0;
        this.m = new double[18];
        this.n = new double[18];
    }

    public c(int i, int i2, KeyPosition keyPosition, c cVar, c cVar2) {
        this.f677b = 0;
        this.i = Float.NaN;
        this.j = Key.UNSET;
        this.k = new LinkedHashMap();
        this.l = 0;
        this.m = new double[18];
        this.n = new double[18];
        int i3 = keyPosition.o;
        if (i3 == 1) {
            float f = keyPosition.f618a / 100.0f;
            this.c = f;
            this.f677b = keyPosition.h;
            float f2 = Float.isNaN(keyPosition.i) ? f : keyPosition.i;
            float f3 = Float.isNaN(keyPosition.j) ? f : keyPosition.j;
            float f4 = cVar2.f678g - cVar.f678g;
            float f5 = cVar2.h - cVar.h;
            this.d = this.c;
            f = Float.isNaN(keyPosition.k) ? f : keyPosition.k;
            float f6 = cVar.e;
            float f7 = cVar.f678g;
            float f8 = cVar.f;
            float f9 = cVar.h;
            float f10 = f;
            float f11 = ((cVar2.f678g / 2.0f) + cVar2.e) - ((f7 / 2.0f) + f6);
            float f12 = ((cVar2.h / 2.0f) + cVar2.f) - ((f9 / 2.0f) + f8);
            float f13 = f11 * f10;
            float f14 = (f4 * f2) / 2.0f;
            this.e = (int) ((f6 + f13) - f14);
            float f15 = f12 * f10;
            float f16 = (f5 * f3) / 2.0f;
            this.f = (int) ((f8 + f15) - f16);
            this.f678g = (int) (f7 + r8);
            this.h = (int) (f9 + r9);
            float f17 = Float.isNaN(keyPosition.l) ? 0.0f : keyPosition.l;
            this.l = 1;
            float f18 = (int) ((cVar.e + f13) - f14);
            float f19 = (int) ((cVar.f + f15) - f16);
            this.e = f18 + ((-f12) * f17);
            this.f = f19 + (f11 * f17);
            this.f676a = Easing.getInterpolator(keyPosition.f);
            this.j = keyPosition.f634g;
            return;
        }
        if (i3 != 2) {
            float f20 = keyPosition.f618a / 100.0f;
            this.c = f20;
            this.f677b = keyPosition.h;
            float f21 = Float.isNaN(keyPosition.i) ? f20 : keyPosition.i;
            float f22 = Float.isNaN(keyPosition.j) ? f20 : keyPosition.j;
            float f23 = cVar2.f678g;
            float f24 = cVar.f678g;
            float f25 = f23 - f24;
            float f26 = cVar2.h;
            float f27 = cVar.h;
            float f28 = f26 - f27;
            this.d = this.c;
            float f29 = cVar.e;
            float f30 = cVar.f;
            float f31 = ((f23 / 2.0f) + cVar2.e) - ((f24 / 2.0f) + f29);
            float f32 = ((f26 / 2.0f) + cVar2.f) - ((f27 / 2.0f) + f30);
            float f33 = (f31 * f20) + f29;
            float f34 = (f25 * f21) / 2.0f;
            this.e = (int) (f33 - f34);
            float f35 = (f28 * f22) / 2.0f;
            this.f = (int) (((f32 * f20) + f30) - f35);
            this.f678g = (int) (f24 + r12);
            this.h = (int) (f27 + r15);
            float f36 = Float.isNaN(keyPosition.k) ? f20 : keyPosition.k;
            float f37 = keyPosition.n;
            f37 = Float.isNaN(f37) ? 0.0f : f37;
            f20 = Float.isNaN(keyPosition.l) ? f20 : keyPosition.l;
            float f38 = keyPosition.m;
            float f39 = Float.isNaN(f38) ? 0.0f : f38;
            this.l = 2;
            this.e = (int) (((f39 * f32) + ((f36 * f31) + cVar.e)) - f34);
            this.f = (int) (((f32 * f20) + ((f31 * f37) + cVar.f)) - f35);
            this.f676a = Easing.getInterpolator(keyPosition.f);
            this.j = keyPosition.f634g;
            return;
        }
        float f40 = keyPosition.f618a / 100.0f;
        this.c = f40;
        this.f677b = keyPosition.h;
        float f41 = Float.isNaN(keyPosition.i) ? f40 : keyPosition.i;
        float f42 = Float.isNaN(keyPosition.j) ? f40 : keyPosition.j;
        float f43 = cVar2.f678g;
        float f44 = f43 - cVar.f678g;
        float f45 = cVar2.h;
        float f46 = cVar.h;
        float f47 = f45 - f46;
        this.d = this.c;
        float f48 = cVar.e;
        float f49 = cVar.f;
        float f50 = (f43 / 2.0f) + cVar2.e;
        float f51 = ((f45 / 2.0f) + cVar2.f) - ((f46 / 2.0f) + f49);
        float f52 = f44 * f41;
        this.e = (int) ((((f50 - ((r8 / 2.0f) + f48)) * f40) + f48) - (f52 / 2.0f));
        float f53 = f47 * f42;
        this.f = (int) (((f51 * f40) + f49) - (f53 / 2.0f));
        this.f678g = (int) (r8 + f52);
        this.h = (int) (f46 + f53);
        this.l = 3;
        if (!Float.isNaN(keyPosition.k)) {
            this.e = (int) (keyPosition.k * ((int) (i - this.f678g)));
        }
        if (!Float.isNaN(keyPosition.l)) {
            this.f = (int) (keyPosition.l * ((int) (i2 - this.h)));
        }
        this.f676a = Easing.getInterpolator(keyPosition.f);
        this.j = keyPosition.f634g;
    }

    public static boolean a(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    public final void b(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.e;
        float f2 = this.f;
        float f3 = this.f678g;
        float f4 = this.h;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f = f5;
            } else if (i3 == 2) {
                f2 = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        fArr[i] = (f3 / 2.0f) + f + 0.0f;
        fArr[i + 1] = (f4 / 2.0f) + f2 + 0.0f;
    }

    public final void c(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.e;
        float f2 = this.f;
        float f3 = this.f678g;
        float f4 = this.h;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f = f5;
            } else if (i3 == 2) {
                f2 = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        float f6 = f3 + f;
        float f7 = f4 + f2;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        fArr[i] = f + 0.0f;
        fArr[i + 1] = f2 + 0.0f;
        fArr[i + 2] = f6 + 0.0f;
        fArr[i + 3] = f2 + 0.0f;
        fArr[i + 4] = f6 + 0.0f;
        int i4 = i + 6;
        fArr[i + 5] = f7 + 0.0f;
        fArr[i4] = f + 0.0f;
        fArr[i + 7] = f7 + 0.0f;
    }

    public static void d(float f, float f2, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i = 0; i < iArr.length; i++) {
            float f7 = (float) dArr[i];
            double d = dArr2[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                f3 = f7;
            } else if (i2 == 2) {
                f5 = f7;
            } else if (i2 == 3) {
                f4 = f7;
            } else if (i2 == 4) {
                f6 = f7;
            }
        }
        float f8 = f3 - ((0.0f * f4) / 2.0f);
        float f9 = f5 - ((0.0f * f6) / 2.0f);
        fArr[0] = (((f4 * 1.0f) + f8) * f) + ((1.0f - f) * f8) + 0.0f;
        fArr[1] = (((f6 * 1.0f) + f9) * f2) + ((1.0f - f2) * f9) + 0.0f;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull c cVar) {
        return Float.compare(this.d, cVar.d);
    }

    public void applyParameters(ConstraintSet.Constraint constraint) {
        this.f676a = Easing.getInterpolator(constraint.motion.mTransitionEasing);
        ConstraintSet.Motion motion = constraint.motion;
        this.j = motion.mPathMotionArc;
        this.i = motion.mPathRotate;
        this.f677b = motion.mDrawPath;
        float f = constraint.propertySet.mProgress;
        for (String str : constraint.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = constraint.mCustomConstraints.get(str);
            if (constraintAttribute.getType() != ConstraintAttribute.AttributeType.STRING_TYPE) {
                this.k.put(str, constraintAttribute);
            }
        }
    }
}
