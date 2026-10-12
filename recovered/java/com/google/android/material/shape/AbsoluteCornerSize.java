package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class AbsoluteCornerSize implements CornerSize {

    /* renamed from: a, reason: collision with root package name */
    public final float f3172a;

    public AbsoluteCornerSize(float f) {
        this.f3172a = f;
    }

    @Override // com.google.android.material.shape.CornerSize
    public float getCornerSize(@NonNull RectF rectF) {
        return this.f3172a;
    }

    public float getCornerSize() {
        return this.f3172a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbsoluteCornerSize) && this.f3172a == ((AbsoluteCornerSize) obj).f3172a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f3172a)});
    }
}
