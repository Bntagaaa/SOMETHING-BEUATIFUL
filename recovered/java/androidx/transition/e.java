package androidx.transition;

import android.animation.TypeEvaluator;

/* loaded from: classes.dex */
class e implements TypeEvaluator<float[]> {

    /* renamed from: a, reason: collision with root package name */
    public float[] f2279a;

    @Override // android.animation.TypeEvaluator
    public float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.f2279a;
        if (fArr3 == null) {
            fArr3 = new float[fArr.length];
        }
        for (int i = 0; i < fArr3.length; i++) {
            float f2 = fArr[i];
            fArr3[i] = _COROUTINE.a.a(fArr2[i], f2, f, f2);
        }
        return fArr3;
    }
}
