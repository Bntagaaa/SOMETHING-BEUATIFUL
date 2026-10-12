package androidx.transition;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import android.os.Build;

/* loaded from: classes.dex */
class t {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f2304a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f2305b;
    public static final boolean c;

    static {
        int i = Build.VERSION.SDK_INT;
        f2304a = true;
        f2305b = true;
        c = i >= 28;
    }

    public static class a implements TypeEvaluator<Matrix> {

        /* renamed from: a, reason: collision with root package name */
        public final float[] f2306a = new float[9];

        /* renamed from: b, reason: collision with root package name */
        public final float[] f2307b = new float[9];
        public final Matrix c = new Matrix();

        @Override // android.animation.TypeEvaluator
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            float[] fArr = this.f2306a;
            matrix.getValues(fArr);
            float[] fArr2 = this.f2307b;
            matrix2.getValues(fArr2);
            for (int i = 0; i < 9; i++) {
                float f2 = fArr2[i];
                float f3 = fArr[i];
                fArr2[i] = _COROUTINE.a.a(f2, f3, f, f3);
            }
            Matrix matrix3 = this.c;
            matrix3.setValues(fArr2);
            return matrix3;
        }
    }

    private t() {
    }
}
