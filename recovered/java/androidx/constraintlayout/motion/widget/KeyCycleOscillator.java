package androidx.constraintlayout.motion.widget;

import android.annotation.TargetApi;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.motion.utils.Oscillator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class KeyCycleOscillator {

    /* renamed from: a, reason: collision with root package name */
    public CurveFit f625a;

    /* renamed from: b, reason: collision with root package name */
    public d f626b;
    public String c;
    protected ConstraintAttribute mCustom;
    public int d = 0;
    public int mVariesBy = 0;
    public final ArrayList e = new ArrayList();

    public abstract void setProperty(View view, float f2);

    public boolean variesByPath() {
        return this.mVariesBy == 1;
    }

    public static class r {

        /* renamed from: a, reason: collision with root package name */
        public final int f630a;

        /* renamed from: b, reason: collision with root package name */
        public final float f631b;
        public final float c;
        public final float d;

        public r(int i, float f, float f2, float f3) {
            this.f630a = i;
            this.f631b = f3;
            this.c = f2;
            this.d = f;
        }
    }

    public String toString() {
        String string = this.c;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            r rVar = (r) it.next();
            StringBuilder sbQ = _COROUTINE.a.q(string, "[");
            sbQ.append(rVar.f630a);
            sbQ.append(" , ");
            sbQ.append(decimalFormat.format(rVar.f631b));
            sbQ.append("] ");
            string = sbQ.toString();
        }
        return string;
    }

    public void setType(String str) {
        this.c = str;
    }

    public float get(float f2) {
        return (float) this.f626b.getValues(f2);
    }

    public float getSlope(float f2) {
        return (float) this.f626b.getSlope(f2);
    }

    public CurveFit getCurveFit() {
        return this.f625a;
    }

    public void setPoint(int i2, int i3, int i4, float f2, float f3, float f4, ConstraintAttribute constraintAttribute) {
        this.e.add(new r(i2, f2, f3, f4));
        if (i4 != -1) {
            this.mVariesBy = i4;
        }
        this.d = i3;
        this.mCustom = constraintAttribute;
    }

    public void setPoint(int i2, int i3, int i4, float f2, float f3, float f4) {
        this.e.add(new r(i2, f2, f3, f4));
        if (i4 != -1) {
            this.mVariesBy = i4;
        }
        this.d = i3;
    }

    @TargetApi(19)
    public void setup(float f2) {
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        if (size == 0) {
            return;
        }
        Collections.sort(arrayList, new a());
        double[] dArr = new double[size];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 2);
        int i2 = this.d;
        d dVar = new d();
        Oscillator oscillator = new Oscillator();
        dVar.f627a = oscillator;
        new HashMap();
        oscillator.setType(i2);
        dVar.f628b = new float[size];
        dVar.c = new double[size];
        dVar.d = new float[size];
        dVar.e = new float[size];
        float[] fArr = new float[size];
        this.f626b = dVar;
        Iterator it = arrayList.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            r rVar = (r) it.next();
            float f3 = rVar.d;
            dArr[i3] = f3 * 0.01d;
            double[] dArr3 = dArr2[i3];
            float f4 = rVar.f631b;
            dArr3[0] = f4;
            float f5 = rVar.c;
            dArr3[1] = f5;
            this.f626b.setPoint(i3, rVar.f630a, f3, f5, f4);
            i3++;
        }
        this.f626b.setup(f2);
        this.f625a = CurveFit.get(0, dArr, dArr2);
    }

    public class a implements Comparator<r> {
        @Override // java.util.Comparator
        public int compare(r rVar, r rVar2) {
            return Integer.compare(rVar.f630a, rVar2.f630a);
        }
    }

    public static class e extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setElevation(get(f));
        }
    }

    public static class b extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setAlpha(get(f));
        }
    }

    public static class j extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setRotation(get(f));
        }
    }

    public static class k extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setRotationX(get(f));
        }
    }

    public static class l extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setRotationY(get(f));
        }
    }

    public static class h extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
        }

        public void setPathRotate(View view, float f, double d, double d2) {
            view.setRotation(get(f) + ((float) Math.toDegrees(Math.atan2(d2, d))));
        }
    }

    public static class m extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setScaleX(get(f));
        }
    }

    public static class n extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setScaleY(get(f));
        }
    }

    public static class o extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setTranslationX(get(f));
        }
    }

    public static class p extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setTranslationY(get(f));
        }
    }

    public static class q extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setTranslationZ(get(f));
        }
    }

    public static class c extends KeyCycleOscillator {
        public final float[] f = new float[1];

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            float f2 = get(f);
            float[] fArr = this.f;
            fArr[0] = f2;
            this.mCustom.setInterpolatedValue(view, fArr);
        }
    }

    public static class i extends KeyCycleOscillator {
        public boolean f = false;

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(f));
                return;
            }
            if (this.f) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(get(f)));
                } catch (IllegalAccessException e) {
                    Log.e("KeyCycleOscillator", "unable to setProgress", e);
                } catch (InvocationTargetException e2) {
                    Log.e("KeyCycleOscillator", "unable to setProgress", e2);
                }
            }
        }
    }

    public static class f {
        private f() {
        }
    }

    public static class g {
        private g() {
        }
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public Oscillator f627a;

        /* renamed from: b, reason: collision with root package name */
        public float[] f628b;
        public double[] c;
        public float[] d;
        public float[] e;
        public CurveFit f;

        /* renamed from: g, reason: collision with root package name */
        public double[] f629g;
        public double[] h;

        public double getValues(float f) {
            CurveFit curveFit = this.f;
            if (curveFit != null) {
                curveFit.getPos(f, this.f629g);
            } else {
                double[] dArr = this.f629g;
                dArr[0] = this.e[0];
                dArr[1] = this.f628b[0];
            }
            return (this.f627a.getValue(f) * this.f629g[1]) + this.f629g[0];
        }

        public double getSlope(float f) {
            CurveFit curveFit = this.f;
            if (curveFit != null) {
                double d = f;
                curveFit.getSlope(d, this.h);
                this.f.getPos(d, this.f629g);
            } else {
                double[] dArr = this.h;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
            }
            double d2 = f;
            Oscillator oscillator = this.f627a;
            double value = oscillator.getValue(d2);
            double slope = oscillator.getSlope(d2);
            double[] dArr2 = this.h;
            return (slope * this.f629g[1]) + (value * dArr2[1]) + dArr2[0];
        }

        public void setPoint(int i, int i2, float f, float f2, float f3) {
            this.c[i] = i2 / 100.0d;
            this.d[i] = f;
            this.e[i] = f2;
            this.f628b[i] = f3;
        }

        public void setup(float f) {
            double[] dArr = this.c;
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, 2);
            float[] fArr = this.f628b;
            this.f629g = new double[fArr.length + 1];
            this.h = new double[fArr.length + 1];
            double d = dArr[0];
            float[] fArr2 = this.d;
            Oscillator oscillator = this.f627a;
            if (d > 0.0d) {
                oscillator.addPoint(0.0d, fArr2[0]);
            }
            int length = dArr.length - 1;
            if (dArr[length] < 1.0d) {
                oscillator.addPoint(1.0d, fArr2[length]);
            }
            for (int i = 0; i < dArr2.length; i++) {
                dArr2[i][0] = this.e[i];
                for (int i2 = 0; i2 < fArr.length; i2++) {
                    dArr2[i2][1] = fArr[i2];
                }
                oscillator.addPoint(dArr[i], fArr2[i]);
            }
            oscillator.normalize();
            if (dArr.length > 1) {
                this.f = CurveFit.get(0, dArr, dArr2);
            } else {
                this.f = null;
            }
        }
    }
}
