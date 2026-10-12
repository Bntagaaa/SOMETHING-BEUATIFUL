package androidx.constraintlayout.motion.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.widget.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.SplineSet;
import androidx.constraintlayout.motion.widget.TimeCycleSplineSet;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MotionController {
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;

    /* renamed from: a, reason: collision with root package name */
    public View f640a;

    /* renamed from: b, reason: collision with root package name */
    public int f641b;
    public CurveFit[] h;
    public CurveFit i;
    public int[] m;
    public double[] n;
    public double[] o;
    public String[] p;
    public int[] q;
    public HashMap v;
    public HashMap w;
    public HashMap x;
    public KeyTrigger[] y;
    public int c = -1;
    public final c d = new c();
    public final c e = new c();
    public final b f = new b();

    /* renamed from: g, reason: collision with root package name */
    public final b f642g = new b();
    public float j = Float.NaN;
    public float k = 0.0f;
    public float l = 1.0f;
    public final float[] r = new float[4];
    public final ArrayList s = new ArrayList();
    public final float[] t = new float[1];
    public final ArrayList u = new ArrayList();
    public int z = Key.UNSET;

    public MotionController(View view) {
        setView(view);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0067 A[PHI: r11
      0x0067: PHI (r11v2 float) = (r11v1 float), (r11v4 float) binds: [B:21:0x004c, B:26:0x0057] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(float[] r23, int r24) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionController.b(float[], int):void");
    }

    public final int a(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.h[0].getTimePoints();
        if (iArr != null) {
            Iterator it = this.s.iterator();
            int i = 0;
            while (it.hasNext()) {
                iArr[i] = ((c) it.next()).l;
                i++;
            }
        }
        int i2 = 0;
        for (double d : timePoints) {
            this.h[0].getPos(d, this.n);
            this.d.b(this.m, this.n, fArr, i2);
            i2 += 2;
        }
        return i2 / 2;
    }

    public final float e(float f, float f2, int i) {
        c cVar = this.e;
        float f3 = cVar.e;
        c cVar2 = this.d;
        float f4 = cVar2.e;
        float f5 = f3 - f4;
        float f6 = cVar.f;
        float f7 = cVar2.f;
        float f8 = f6 - f7;
        float f9 = (cVar2.f678g / 2.0f) + f4;
        float f10 = (cVar2.h / 2.0f) + f7;
        float fHypot = (float) Math.hypot(f5, f8);
        if (fHypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f11 = f - f9;
        float f12 = f2 - f10;
        if (((float) Math.hypot(f11, f12)) == 0.0f) {
            return 0.0f;
        }
        float f13 = (f12 * f8) + (f11 * f5);
        if (i == 0) {
            return f13 / fHypot;
        }
        if (i == 1) {
            return (float) Math.sqrt((fHypot * fHypot) - (f13 * f13));
        }
        if (i == 2) {
            return f11 / f5;
        }
        if (i == 3) {
            return f12 / f5;
        }
        if (i == 4) {
            return f11 / f8;
        }
        if (i != 5) {
            return 0.0f;
        }
        return f12 / f8;
    }

    public void setPathMotionArc(int i) {
        this.z = i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:247:0x05ad A[PHI: r2 r11
      0x05ad: PHI (r2v121 java.lang.String) = (r2v95 java.lang.String), (r2v96 java.lang.String), (r2v122 java.lang.String) binds: [B:293:0x0659, B:289:0x064b, B:246:0x05a9] A[DONT_GENERATE, DONT_INLINE]
      0x05ad: PHI (r11v103 java.lang.String) = (r11v90 java.lang.String), (r11v91 java.lang.String), (r11v104 java.lang.String) binds: [B:293:0x0659, B:289:0x064b, B:246:0x05a9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0af8 A[PHI: r2 r6 r7 r8 r9 r10 r11 r12
      0x0af8: PHI (r2v52 java.lang.String) = 
      (r2v35 java.lang.String)
      (r2v36 java.lang.String)
      (r2v37 java.lang.String)
      (r2v38 java.lang.String)
      (r2v41 java.lang.String)
      (r2v53 java.lang.String)
     binds: [B:495:0x0c91, B:491:0x0c76, B:488:0x0c59, B:484:0x0c3c, B:480:0x0c1e, B:439:0x0af6] A[DONT_GENERATE, DONT_INLINE]
      0x0af8: PHI (r6v41 java.lang.String) = 
      (r6v11 java.lang.String)
      (r6v12 java.lang.String)
      (r6v13 java.lang.String)
      (r6v14 java.lang.String)
      (r6v17 java.lang.String)
      (r6v42 java.lang.String)
     binds: [B:495:0x0c91, B:491:0x0c76, B:488:0x0c59, B:484:0x0c3c, B:480:0x0c1e, B:439:0x0af6] A[DONT_GENERATE, DONT_INLINE]
      0x0af8: PHI (r7v22 java.lang.String) = 
      (r7v4 java.lang.String)
      (r7v5 java.lang.String)
      (r7v6 java.lang.String)
      (r7v7 java.lang.String)
      (r7v10 java.lang.String)
      (r7v23 java.lang.String)
     binds: [B:495:0x0c91, B:491:0x0c76, B:488:0x0c59, B:484:0x0c3c, B:480:0x0c1e, B:439:0x0af6] A[DONT_GENERATE, DONT_INLINE]
      0x0af8: PHI (r8v21 java.lang.String) = 
      (r8v2 java.lang.String)
      (r8v3 java.lang.String)
      (r8v4 java.lang.String)
      (r8v5 java.lang.String)
      (r8v8 java.lang.String)
      (r8v22 java.lang.String)
     binds: [B:495:0x0c91, B:491:0x0c76, B:488:0x0c59, B:484:0x0c3c, B:480:0x0c1e, B:439:0x0af6] A[DONT_GENERATE, DONT_INLINE]
      0x0af8: PHI (r9v21 java.lang.Object) = 
      (r9v2 java.lang.Object)
      (r9v3 java.lang.Object)
      (r9v4 java.lang.Object)
      (r9v5 java.lang.Object)
      (r9v10 java.lang.Object)
      (r9v22 java.lang.Object)
     binds: [B:495:0x0c91, B:491:0x0c76, B:488:0x0c59, B:484:0x0c3c, B:480:0x0c1e, B:439:0x0af6] A[DONT_GENERATE, DONT_INLINE]
      0x0af8: PHI (r10v31 java.lang.String) = 
      (r10v14 java.lang.String)
      (r10v15 java.lang.String)
      (r10v16 java.lang.String)
      (r10v17 java.lang.String)
      (r10v21 java.lang.String)
      (r10v32 java.lang.String)
     binds: [B:495:0x0c91, B:491:0x0c76, B:488:0x0c59, B:484:0x0c3c, B:480:0x0c1e, B:439:0x0af6] A[DONT_GENERATE, DONT_INLINE]
      0x0af8: PHI (r11v32 java.lang.String) = 
      (r11v13 java.lang.String)
      (r11v14 java.lang.String)
      (r11v15 java.lang.String)
      (r11v18 java.lang.String)
      (r11v21 java.lang.String)
      (r11v33 java.lang.String)
     binds: [B:495:0x0c91, B:491:0x0c76, B:488:0x0c59, B:484:0x0c3c, B:480:0x0c1e, B:439:0x0af6] A[DONT_GENERATE, DONT_INLINE]
      0x0af8: PHI (r12v21 java.lang.String) = 
      (r12v2 java.lang.String)
      (r12v3 java.lang.String)
      (r12v6 java.lang.String)
      (r12v7 java.lang.String)
      (r12v10 java.lang.String)
      (r12v22 java.lang.String)
     binds: [B:495:0x0c91, B:491:0x0c76, B:488:0x0c59, B:484:0x0c3c, B:480:0x0c1e, B:439:0x0af6] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setup(int r48, int r49, float r50, long r51) {
        /*
            Method dump skipped, instructions count: 3944
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionController.setup(int, int, float, long):void");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(" start: x: ");
        c cVar = this.d;
        sb.append(cVar.e);
        sb.append(" y: ");
        sb.append(cVar.f);
        sb.append(" end: x: ");
        c cVar2 = this.e;
        sb.append(cVar2.e);
        sb.append(" y: ");
        sb.append(cVar2.f);
        return sb.toString();
    }

    public final void g(c cVar) {
        float x = (int) this.f640a.getX();
        float y = (int) this.f640a.getY();
        float width = this.f640a.getWidth();
        float height = this.f640a.getHeight();
        cVar.e = x;
        cVar.f = y;
        cVar.f678g = width;
        cVar.h = height;
    }

    public void setView(View view) {
        this.f640a = view;
        this.f641b = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).getConstraintTag();
        }
    }

    public final float c(float f, float[] fArr) {
        float f2 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f3 = this.l;
            if (f3 != 1.0d) {
                float f4 = this.k;
                if (f < f4) {
                    f = 0.0f;
                }
                if (f > f4 && f < 1.0d) {
                    f = (f - f4) * f3;
                }
            }
        }
        Easing easing = this.d.f676a;
        Iterator it = this.s.iterator();
        float f5 = Float.NaN;
        while (it.hasNext()) {
            c cVar = (c) it.next();
            Easing easing2 = cVar.f676a;
            if (easing2 != null) {
                float f6 = cVar.c;
                if (f6 < f) {
                    easing = easing2;
                    f2 = f6;
                } else if (Float.isNaN(f5)) {
                    f5 = cVar.c;
                }
            }
        }
        if (easing != null) {
            float f7 = (Float.isNaN(f5) ? 1.0f : f5) - f2;
            double d = (f - f2) / f7;
            f = (((float) easing.get(d)) * f7) + f2;
            if (fArr != null) {
                fArr[0] = (float) easing.getDiff(d);
            }
        }
        return f;
    }

    public final boolean f(View view, float f, long j, KeyCache keyCache) {
        TimeCycleSplineSet.d dVar;
        boolean z;
        float f2;
        float f3;
        TimeCycleSplineSet.d dVar2;
        double d;
        float f4;
        float f5;
        View view2 = view;
        float fC = c(f, null);
        HashMap map = this.w;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((SplineSet) it.next()).setProperty(view2, fC);
            }
        }
        HashMap map2 = this.v;
        if (map2 != null) {
            dVar = null;
            boolean property = false;
            for (TimeCycleSplineSet timeCycleSplineSet : map2.values()) {
                if (timeCycleSplineSet instanceof TimeCycleSplineSet.d) {
                    dVar = (TimeCycleSplineSet.d) timeCycleSplineSet;
                } else {
                    property |= timeCycleSplineSet.setProperty(view2, fC, j, keyCache);
                }
            }
            z = property;
        } else {
            dVar = null;
            z = false;
        }
        CurveFit[] curveFitArr = this.h;
        c cVar = this.d;
        if (curveFitArr != null) {
            double d2 = fC;
            curveFitArr[0].getPos(d2, this.n);
            this.h[0].getSlope(d2, this.o);
            CurveFit curveFit = this.i;
            if (curveFit != null) {
                double[] dArr = this.n;
                if (dArr.length > 0) {
                    curveFit.getPos(d2, dArr);
                    this.i.getSlope(d2, this.o);
                }
            }
            int[] iArr = this.m;
            double[] dArr2 = this.n;
            double[] dArr3 = this.o;
            float f6 = cVar.e;
            float f7 = cVar.f;
            float f8 = cVar.f678g;
            float f9 = cVar.h;
            if (iArr.length != 0) {
                f2 = fC;
                if (cVar.m.length <= iArr[iArr.length - 1]) {
                    int i = iArr[iArr.length - 1] + 1;
                    cVar.m = new double[i];
                    cVar.n = new double[i];
                }
            } else {
                f2 = fC;
            }
            Arrays.fill(cVar.m, Double.NaN);
            for (int i2 = 0; i2 < iArr.length; i2++) {
                double[] dArr4 = cVar.m;
                int i3 = iArr[i2];
                dArr4[i3] = dArr2[i2];
                cVar.n[i3] = dArr3[i2];
            }
            float f10 = f7;
            float f11 = f9;
            int i4 = 0;
            float f12 = Float.NaN;
            float f13 = 0.0f;
            float f14 = 0.0f;
            float f15 = 0.0f;
            float f16 = 0.0f;
            while (true) {
                double[] dArr5 = cVar.m;
                f3 = f11;
                if (i4 >= dArr5.length) {
                    break;
                }
                if (Double.isNaN(dArr5[i4])) {
                    f5 = f10;
                } else {
                    f5 = f10;
                    float f17 = (float) (Double.isNaN(cVar.m[i4]) ? 0.0d : cVar.m[i4] + 0.0d);
                    float f18 = (float) cVar.n[i4];
                    if (i4 == 1) {
                        f10 = f5;
                        f13 = f18;
                        f11 = f3;
                        f6 = f17;
                    } else if (i4 == 2) {
                        f15 = f18;
                        f11 = f3;
                        f10 = f17;
                    } else if (i4 == 3) {
                        f10 = f5;
                        f14 = f18;
                        f11 = f3;
                        f8 = f17;
                    } else if (i4 == 4) {
                        f10 = f5;
                        f16 = f18;
                        f11 = f17;
                    } else if (i4 == 5) {
                        f10 = f5;
                        f11 = f3;
                        f12 = f17;
                    }
                    i4++;
                }
                f10 = f5;
                f11 = f3;
                i4++;
            }
            float f19 = f10;
            if (Float.isNaN(f12)) {
                if (!Float.isNaN(Float.NaN)) {
                    view2.setRotation(Float.NaN);
                }
                dVar2 = dVar;
            } else {
                float f20 = (f16 / 2.0f) + f15;
                dVar2 = dVar;
                view2.setRotation((float) (Math.toDegrees(Math.atan2(f20, (f14 / 2.0f) + f13)) + f12 + (Float.isNaN(Float.NaN) ? 0.0f : Float.NaN)));
            }
            float f21 = f6 + 0.5f;
            int i5 = (int) f21;
            float f22 = f19 + 0.5f;
            int i6 = (int) f22;
            int i7 = (int) (f21 + f8);
            int i8 = (int) (f22 + f3);
            int i9 = i7 - i5;
            int i10 = i8 - i6;
            if (i9 != view2.getMeasuredWidth() || i10 != view2.getMeasuredHeight()) {
                view2.measure(View.MeasureSpec.makeMeasureSpec(i9, 1073741824), View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
            }
            view2.layout(i5, i6, i7, i8);
            HashMap map3 = this.w;
            if (map3 != null) {
                for (SplineSet splineSet : map3.values()) {
                    if (splineSet instanceof SplineSet.d) {
                        double[] dArr6 = this.o;
                        double d3 = dArr6[0];
                        double d4 = dArr6[1];
                        f4 = f2;
                        ((SplineSet.d) splineSet).setPathRotate(view2, f4, d3, d4);
                    } else {
                        f4 = f2;
                    }
                    view2 = view;
                    f2 = f4;
                }
            }
            fC = f2;
            if (dVar2 != null) {
                double[] dArr7 = this.o;
                view2 = view;
                d = d2;
                boolean pathRotate = dVar2.setPathRotate(view2, keyCache, fC, j, dArr7[0], dArr7[1]);
                fC = fC;
                z |= pathRotate;
            } else {
                view2 = view;
                d = d2;
            }
            int i11 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.h;
                if (i11 >= curveFitArr2.length) {
                    break;
                }
                CurveFit curveFit2 = curveFitArr2[i11];
                float[] fArr = this.r;
                curveFit2.getPos(d, fArr);
                ((ConstraintAttribute) cVar.k.get(this.p[i11 - 1])).setInterpolatedValue(view2, fArr);
                i11++;
            }
            b bVar = this.f;
            if (bVar.f674b == 0) {
                if (fC <= 0.0f) {
                    view2.setVisibility(bVar.c);
                } else {
                    b bVar2 = this.f642g;
                    if (fC >= 1.0f) {
                        view2.setVisibility(bVar2.c);
                    } else if (bVar2.c != bVar.c) {
                        view2.setVisibility(0);
                    }
                }
            }
            if (this.y != null) {
                int i12 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.y;
                    if (i12 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i12].conditionallyFire(fC, view2);
                    i12++;
                }
            }
        } else {
            float f23 = cVar.e;
            c cVar2 = this.e;
            float fA = _COROUTINE.a.a(cVar2.e, f23, fC, f23);
            float f24 = cVar.f;
            float fA2 = _COROUTINE.a.a(cVar2.f, f24, fC, f24);
            float f25 = cVar.f678g;
            float f26 = cVar2.f678g;
            float fA3 = _COROUTINE.a.a(f26, f25, fC, f25);
            float f27 = cVar.h;
            float f28 = cVar2.h;
            float f29 = fA + 0.5f;
            int i13 = (int) f29;
            float f30 = fA2 + 0.5f;
            int i14 = (int) f30;
            int i15 = (int) (f29 + fA3);
            int iA = (int) (f30 + _COROUTINE.a.a(f28, f27, fC, f27));
            int i16 = i15 - i13;
            int i17 = iA - i14;
            if (f26 != f25 || f28 != f27) {
                view2.measure(View.MeasureSpec.makeMeasureSpec(i16, 1073741824), View.MeasureSpec.makeMeasureSpec(i17, 1073741824));
            }
            view2.layout(i13, i14, i15, iA);
        }
        HashMap map4 = this.x;
        if (map4 != null) {
            for (KeyCycleOscillator keyCycleOscillator : map4.values()) {
                if (keyCycleOscillator instanceof KeyCycleOscillator.h) {
                    double[] dArr8 = this.o;
                    ((KeyCycleOscillator.h) keyCycleOscillator).setPathRotate(view2, fC, dArr8[0], dArr8[1]);
                } else {
                    keyCycleOscillator.setProperty(view2, fC);
                }
            }
        }
        return z;
    }

    public final void d(float f, float f2, float f3, float[] fArr) {
        double[] dArr;
        float[] fArr2 = this.t;
        float fC = c(f, fArr2);
        CurveFit[] curveFitArr = this.h;
        int i = 0;
        if (curveFitArr != null) {
            double d = fC;
            curveFitArr[0].getSlope(d, this.o);
            this.h[0].getPos(d, this.n);
            float f4 = fArr2[0];
            while (true) {
                dArr = this.o;
                if (i >= dArr.length) {
                    break;
                }
                dArr[i] = dArr[i] * f4;
                i++;
            }
            CurveFit curveFit = this.i;
            if (curveFit != null) {
                double[] dArr2 = this.n;
                if (dArr2.length > 0) {
                    curveFit.getPos(d, dArr2);
                    this.i.getSlope(d, this.o);
                    int[] iArr = this.m;
                    double[] dArr3 = this.o;
                    double[] dArr4 = this.n;
                    this.d.getClass();
                    c.d(f2, f3, fArr, iArr, dArr3, dArr4);
                    return;
                }
                return;
            }
            int[] iArr2 = this.m;
            double[] dArr5 = this.n;
            this.d.getClass();
            c.d(f2, f3, fArr, iArr2, dArr, dArr5);
            return;
        }
        c cVar = this.e;
        float f5 = cVar.e;
        c cVar2 = this.d;
        float f6 = f5 - cVar2.e;
        float f7 = cVar.f - cVar2.f;
        float f8 = cVar.f678g - cVar2.f678g;
        float f9 = (cVar.h - cVar2.h) + f7;
        fArr[0] = ((f8 + f6) * f2) + ((1.0f - f2) * f6);
        fArr[1] = (f9 * f3) + ((1.0f - f3) * f7);
    }

    public int getDrawPath() {
        int iMax = this.d.f677b;
        Iterator it = this.s.iterator();
        while (it.hasNext()) {
            iMax = Math.max(iMax, ((c) it.next()).f677b);
        }
        return Math.max(iMax, this.e.f677b);
    }

    public void setDrawPath(int i) {
        this.d.f677b = i;
    }

    public int getkeyFramePositions(int[] iArr, float[] fArr) {
        Iterator it = this.u.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            Key key = (Key) it.next();
            iArr[i] = (key.mType * 1000) + key.f618a;
            this.h[0].getPos(r6 / 100.0f, this.n);
            this.d.b(this.m, this.n, fArr, i2);
            i2 += 2;
            i++;
        }
        return i;
    }

    public int getKeyFrameInfo(int i, int[] iArr) {
        float[] fArr = new float[2];
        Iterator it = this.u.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            Key key = (Key) it.next();
            int i4 = key.mType;
            if (i4 == i || i != -1) {
                iArr[i3] = 0;
                iArr[i3 + 1] = i4;
                iArr[i3 + 2] = key.f618a;
                this.h[0].getPos(r7 / 100.0f, this.n);
                this.d.b(this.m, this.n, fArr, 0);
                iArr[i3 + 3] = Float.floatToIntBits(fArr[0]);
                int i5 = i3 + 4;
                iArr[i5] = Float.floatToIntBits(fArr[1]);
                if (key instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) key;
                    iArr[i3 + 5] = keyPosition.o;
                    iArr[i3 + 6] = Float.floatToIntBits(keyPosition.k);
                    i5 = i3 + 7;
                    iArr[i5] = Float.floatToIntBits(keyPosition.l);
                }
                int i6 = i5 + 1;
                iArr[i3] = i6 - i3;
                i2++;
                i3 = i6;
            }
        }
        return i2;
    }
}
