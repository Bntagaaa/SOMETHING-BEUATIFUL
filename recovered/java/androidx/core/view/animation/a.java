package androidx.core.view.animation;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
class a implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        throw null;
    }
}
