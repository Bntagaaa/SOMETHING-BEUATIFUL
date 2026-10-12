package androidx.constraintlayout.motion.widget;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class SplineSet {

    /* renamed from: a, reason: collision with root package name */
    public int f668a;

    /* renamed from: b, reason: collision with root package name */
    public String f669b;
    protected CurveFit mCurveFit;
    protected int[] mTimePoints = new int[10];
    protected float[] mValues = new float[10];

    public abstract void setProperty(View view, float f2);

    public String toString() {
        String string = this.f669b;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i2 = 0; i2 < this.f668a; i2++) {
            StringBuilder sbQ = _COROUTINE.a.q(string, "[");
            sbQ.append(this.mTimePoints[i2]);
            sbQ.append(" , ");
            sbQ.append(decimalFormat.format(this.mValues[i2]));
            sbQ.append("] ");
            string = sbQ.toString();
        }
        return string;
    }

    public void setType(String str) {
        this.f669b = str;
    }

    public float get(float f2) {
        return (float) this.mCurveFit.getPos(f2, 0);
    }

    public float getSlope(float f2) {
        return (float) this.mCurveFit.getSlope(f2, 0);
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public void setPoint(int i2, float f2) {
        int[] iArr = this.mTimePoints;
        if (iArr.length < this.f668a + 1) {
            this.mTimePoints = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.mValues;
            this.mValues = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.mTimePoints;
        int i3 = this.f668a;
        iArr2[i3] = i2;
        this.mValues[i3] = f2;
        this.f668a = i3 + 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setup(int r18) {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.SplineSet.setup(int):void");
    }

    public static class c extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            view.setElevation(get(f));
        }
    }

    public static class a extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            view.setAlpha(get(f));
        }
    }

    public static class h extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            view.setRotation(get(f));
        }
    }

    public static class i extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            view.setRotationX(get(f));
        }
    }

    public static class j extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            view.setRotationY(get(f));
        }
    }

    public static class e extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            view.setPivotX(get(f));
        }
    }

    public static class f extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            view.setPivotY(get(f));
        }
    }

    public static class d extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
        }

        public void setPathRotate(View view, float f, double d, double d2) {
            view.setRotation(get(f) + ((float) Math.toDegrees(Math.atan2(d2, d))));
        }
    }

    public static class k extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            view.setScaleX(get(f));
        }
    }

    public static class l extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            view.setScaleY(get(f));
        }
    }

    public static class n extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            view.setTranslationX(get(f));
        }
    }

    public static class o extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            view.setTranslationY(get(f));
        }
    }

    public static class p extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            view.setTranslationZ(get(f));
        }
    }

    public static class b extends SplineSet {
        public final SparseArray c;
        public float[] d;

        public b(String str, SparseArray<ConstraintAttribute> sparseArray) {
            String str2 = str.split(",")[1];
            this.c = sparseArray;
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setup(int i) {
            SparseArray sparseArray = this.c;
            int size = sparseArray.size();
            int iNoOfInterpValues = ((ConstraintAttribute) sparseArray.valueAt(0)).noOfInterpValues();
            double[] dArr = new double[size];
            this.d = new float[iNoOfInterpValues];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, iNoOfInterpValues);
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = sparseArray.keyAt(i2);
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) sparseArray.valueAt(i2);
                dArr[i2] = iKeyAt * 0.01d;
                constraintAttribute.getValuesToInterpolate(this.d);
                int i3 = 0;
                while (true) {
                    if (i3 < this.d.length) {
                        dArr2[i2][i3] = r7[i3];
                        i3++;
                    }
                }
            }
            this.mCurveFit = CurveFit.get(i, dArr, dArr2);
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setPoint(int i, float f) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        public void setPoint(int i, ConstraintAttribute constraintAttribute) {
            this.c.append(i, constraintAttribute);
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) {
            this.mCurveFit.getPos(f, this.d);
            ((ConstraintAttribute) this.c.valueAt(0)).setInterpolatedValue(view, this.d);
        }
    }

    public static class g extends SplineSet {
        public boolean c = false;

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(f));
                return;
            }
            if (this.c) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.c = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(get(f)));
                } catch (IllegalAccessException e) {
                    Log.e("SplineSet", "unable to setProgress", e);
                } catch (InvocationTargetException e2) {
                    Log.e("SplineSet", "unable to setProgress", e2);
                }
            }
        }
    }

    public static class m {
        private m() {
        }
    }
}
