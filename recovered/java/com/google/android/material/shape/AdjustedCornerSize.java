package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Arrays;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class AdjustedCornerSize implements CornerSize {

    /* renamed from: a, reason: collision with root package name */
    public final CornerSize f3173a;

    /* renamed from: b, reason: collision with root package name */
    public final float f3174b;

    public AdjustedCornerSize(float f, @NonNull CornerSize cornerSize) {
        while (cornerSize instanceof AdjustedCornerSize) {
            cornerSize = ((AdjustedCornerSize) cornerSize).f3173a;
            f += ((AdjustedCornerSize) cornerSize).f3174b;
        }
        this.f3173a = cornerSize;
        this.f3174b = f;
    }

    @Override // com.google.android.material.shape.CornerSize
    public float getCornerSize(@NonNull RectF rectF) {
        return Math.max(0.0f, this.f3173a.getCornerSize(rectF) + this.f3174b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdjustedCornerSize)) {
            return false;
        }
        AdjustedCornerSize adjustedCornerSize = (AdjustedCornerSize) obj;
        return this.f3173a.equals(adjustedCornerSize.f3173a) && this.f3174b == adjustedCornerSize.f3174b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3173a, Float.valueOf(this.f3174b)});
    }
}
