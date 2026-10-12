package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class RelativeCornerSize implements CornerSize {

    /* renamed from: a, reason: collision with root package name */
    public final float f3188a;

    public RelativeCornerSize(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f3188a = f;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getRelativePercent() {
        return this.f3188a;
    }

    @Override // com.google.android.material.shape.CornerSize
    public float getCornerSize(@NonNull RectF rectF) {
        return rectF.height() * this.f3188a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RelativeCornerSize) && this.f3188a == ((RelativeCornerSize) obj).f3188a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f3188a)});
    }
}
