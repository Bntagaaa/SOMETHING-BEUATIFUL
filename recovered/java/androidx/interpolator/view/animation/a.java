package androidx.interpolator.view.animation;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
abstract class a implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f1780a;

    /* renamed from: b, reason: collision with root package name */
    public final float f1781b;

    public a(float[] fArr) {
        this.f1780a = fArr;
        this.f1781b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f1780a;
        int iMin = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.f1781b;
        float f3 = (f - (iMin * f2)) / f2;
        float f4 = fArr[iMin];
        return _COROUTINE.a.a(fArr[iMin + 1], f4, f3, f4);
    }
}
