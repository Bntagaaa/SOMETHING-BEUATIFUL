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
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class TimeCycleSplineSet {

    /* renamed from: a, reason: collision with root package name */
    public int f670a;

    /* renamed from: b, reason: collision with root package name */
    public String f671b;
    public long d;
    protected CurveFit mCurveFit;
    protected int mWaveShape = 0;
    protected int[] mTimePoints = new int[10];
    protected float[][] mValues = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 10, 3);
    public final float[] c = new float[3];
    protected boolean mContinue = false;
    public float e = Float.NaN;

    public abstract boolean setProperty(View view, float f2, long j2, KeyCache keyCache);

    public String toString() {
        String string = this.f671b;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i2 = 0; i2 < this.f670a; i2++) {
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
        this.f671b = str;
    }

    public float get(float f2, long j2, View view, KeyCache keyCache) {
        float[] fArr = this.c;
        this.mCurveFit.getPos(f2, fArr);
        boolean z = true;
        float f3 = fArr[1];
        if (f3 == 0.0f) {
            this.mContinue = false;
            return fArr[2];
        }
        if (Float.isNaN(this.e)) {
            String str = this.f671b;
            HashMap map = keyCache.f622a;
            float f4 = Float.NaN;
            if (map.containsKey(view)) {
                HashMap map2 = (HashMap) map.get(view);
                if (map2.containsKey(str)) {
                    float[] fArr2 = (float[]) map2.get(str);
                    if (fArr2.length > 0) {
                        f4 = fArr2[0];
                    }
                }
            }
            this.e = f4;
            if (Float.isNaN(f4)) {
                this.e = 0.0f;
            }
        }
        float f5 = (float) (((((j2 - this.d) * 1.0E-9d) * f3) + this.e) % 1.0d);
        this.e = f5;
        String str2 = this.f671b;
        HashMap map3 = keyCache.f622a;
        if (!map3.containsKey(view)) {
            HashMap map4 = new HashMap();
            map4.put(str2, new float[]{f5});
            map3.put(view, map4);
        } else {
            HashMap map5 = (HashMap) map3.get(view);
            if (!map5.containsKey(str2)) {
                map5.put(str2, new float[]{f5});
                map3.put(view, map5);
            } else {
                float[] fArrCopyOf = (float[]) map5.get(str2);
                if (fArrCopyOf.length <= 0) {
                    fArrCopyOf = Arrays.copyOf(fArrCopyOf, 1);
                }
                fArrCopyOf[0] = f5;
                map5.put(str2, fArrCopyOf);
            }
        }
        this.d = j2;
        float f6 = fArr[0];
        float fCalcWave = (calcWave(this.e) * f6) + fArr[2];
        if (f6 == 0.0f && f3 == 0.0f) {
            z = false;
        }
        this.mContinue = z;
        return fCalcWave;
    }

    public float calcWave(float f2) {
        float fAbs;
        switch (this.mWaveShape) {
            case 1:
                return Math.signum(f2 * 6.2831855f);
            case 2:
                fAbs = Math.abs(f2);
                break;
            case 3:
                return (((f2 * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                fAbs = ((f2 * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f2 * 6.2831855f);
            case 6:
                float fAbs2 = 1.0f - Math.abs(((f2 * 4.0f) % 4.0f) - 2.0f);
                fAbs = fAbs2 * fAbs2;
                break;
            default:
                return (float) Math.sin(f2 * 6.2831855f);
        }
        return 1.0f - fAbs;
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public void setStartTime(long j2) {
        this.d = j2;
    }

    public void setPoint(int i2, float f2, float f3, int i3, float f4) {
        int[] iArr = this.mTimePoints;
        int i4 = this.f670a;
        iArr[i4] = i2;
        float[] fArr = this.mValues[i4];
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[2] = f4;
        this.mWaveShape = Math.max(this.mWaveShape, i3);
        this.f670a++;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setup(int r18) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.TimeCycleSplineSet.setup(int):void");
    }

    public static class c extends TimeCycleSplineSet {
        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) {
            view.setElevation(get(f, j, view, keyCache));
            return this.mContinue;
        }
    }

    public static class a extends TimeCycleSplineSet {
        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) {
            view.setAlpha(get(f, j, view, keyCache));
            return this.mContinue;
        }
    }

    public static class f extends TimeCycleSplineSet {
        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) {
            view.setRotation(get(f, j, view, keyCache));
            return this.mContinue;
        }
    }

    public static class g extends TimeCycleSplineSet {
        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) {
            view.setRotationX(get(f, j, view, keyCache));
            return this.mContinue;
        }
    }

    public static class h extends TimeCycleSplineSet {
        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) {
            view.setRotationY(get(f, j, view, keyCache));
            return this.mContinue;
        }
    }

    public static class d extends TimeCycleSplineSet {
        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) {
            return this.mContinue;
        }

        public boolean setPathRotate(View view, KeyCache keyCache, float f, long j, double d, double d2) {
            view.setRotation(get(f, j, view, keyCache) + ((float) Math.toDegrees(Math.atan2(d2, d))));
            return this.mContinue;
        }
    }

    public static class i extends TimeCycleSplineSet {
        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) {
            view.setScaleX(get(f, j, view, keyCache));
            return this.mContinue;
        }
    }

    public static class j extends TimeCycleSplineSet {
        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) {
            view.setScaleY(get(f, j, view, keyCache));
            return this.mContinue;
        }
    }

    public static class l extends TimeCycleSplineSet {
        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) {
            view.setTranslationX(get(f, j, view, keyCache));
            return this.mContinue;
        }
    }

    public static class m extends TimeCycleSplineSet {
        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) {
            view.setTranslationY(get(f, j, view, keyCache));
            return this.mContinue;
        }
    }

    public static class n extends TimeCycleSplineSet {
        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) {
            view.setTranslationZ(get(f, j, view, keyCache));
            return this.mContinue;
        }
    }

    public static class b extends TimeCycleSplineSet {
        public final SparseArray f;

        /* renamed from: g, reason: collision with root package name */
        public final SparseArray f672g = new SparseArray();
        public float[] h;
        public float[] i;

        public b(String str, SparseArray<ConstraintAttribute> sparseArray) {
            String str2 = str.split(",")[1];
            this.f = sparseArray;
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public void setup(int i) {
            SparseArray sparseArray = this.f;
            int size = sparseArray.size();
            int iNoOfInterpValues = ((ConstraintAttribute) sparseArray.valueAt(0)).noOfInterpValues();
            double[] dArr = new double[size];
            int i2 = iNoOfInterpValues + 2;
            this.h = new float[i2];
            this.i = new float[iNoOfInterpValues];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, i2);
            for (int i3 = 0; i3 < size; i3++) {
                int iKeyAt = sparseArray.keyAt(i3);
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) sparseArray.valueAt(i3);
                float[] fArr = (float[]) this.f672g.valueAt(i3);
                dArr[i3] = iKeyAt * 0.01d;
                constraintAttribute.getValuesToInterpolate(this.h);
                int i4 = 0;
                while (true) {
                    if (i4 < this.h.length) {
                        dArr2[i3][i4] = r10[i4];
                        i4++;
                    }
                }
                double[] dArr3 = dArr2[i3];
                dArr3[iNoOfInterpValues] = fArr[0];
                dArr3[iNoOfInterpValues + 1] = fArr[1];
            }
            this.mCurveFit = CurveFit.get(i, dArr, dArr2);
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public void setPoint(int i, float f, float f2, int i2, float f3) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        public void setPoint(int i, ConstraintAttribute constraintAttribute, float f, int i2, float f2) {
            this.f.append(i, constraintAttribute);
            this.f672g.append(i, new float[]{f, f2});
            this.mWaveShape = Math.max(this.mWaveShape, i2);
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) {
            this.mCurveFit.getPos(f, this.h);
            float[] fArr = this.h;
            float f2 = fArr[fArr.length - 2];
            float f3 = fArr[fArr.length - 1];
            float f4 = (float) (((((j - this.d) * 1.0E-9d) * f2) + this.e) % 1.0d);
            this.e = f4;
            this.d = j;
            float fCalcWave = calcWave(f4);
            this.mContinue = false;
            int i = 0;
            while (true) {
                float[] fArr2 = this.i;
                if (i >= fArr2.length) {
                    break;
                }
                boolean z = this.mContinue;
                float f5 = this.h[i];
                this.mContinue = z | (((double) f5) != 0.0d);
                fArr2[i] = (f5 * fCalcWave) + f3;
                i++;
            }
            ((ConstraintAttribute) this.f.valueAt(0)).setInterpolatedValue(view, this.i);
            if (f2 != 0.0f) {
                this.mContinue = true;
            }
            return this.mContinue;
        }
    }

    public static class e extends TimeCycleSplineSet {
        public boolean f = false;

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        public boolean setProperty(View view, float f, long j, KeyCache keyCache) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            e eVar;
            Method method;
            if (view instanceof MotionLayout) {
                eVar = this;
                ((MotionLayout) view).setProgress(get(f, j, view, keyCache));
            } else {
                eVar = this;
                if (eVar.f) {
                    return false;
                }
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    eVar.f = true;
                    method = null;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(eVar.get(f, j, view, keyCache)));
                    } catch (IllegalAccessException e) {
                        Log.e("SplineSet", "unable to setProgress", e);
                    } catch (InvocationTargetException e2) {
                        Log.e("SplineSet", "unable to setProgress", e2);
                    }
                }
            }
            return eVar.mContinue;
        }
    }

    public static class k {
        private k() {
        }
    }
}
