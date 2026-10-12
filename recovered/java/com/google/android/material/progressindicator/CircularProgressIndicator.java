package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class CircularProgressIndicator extends BaseProgressIndicator<CircularProgressIndicatorSpec> {
    public static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_CircularProgressIndicator;
    public static final int INDICATOR_DIRECTION_CLOCKWISE = 0;
    public static final int INDICATOR_DIRECTION_COUNTERCLOCKWISE = 1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface IndicatorDirection {
    }

    public CircularProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i, DEF_STYLE_RES);
        Context context2 = getContext();
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.f3125a;
        setIndeterminateDrawable(IndeterminateDrawable.createCircularDrawable(context2, circularProgressIndicatorSpec));
        setProgressDrawable(DeterminateDrawable.createCircularDrawable(getContext(), circularProgressIndicatorSpec));
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final BaseProgressIndicatorSpec a(Context context, AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackThickness(int i) {
        super.setTrackThickness(i);
        ((CircularProgressIndicatorSpec) this.f3125a).getClass();
    }

    @Px
    public int getIndicatorInset() {
        return ((CircularProgressIndicatorSpec) this.f3125a).indicatorInset;
    }

    public void setIndicatorInset(@Px int i) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f3125a;
        if (((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).indicatorInset != i) {
            ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).indicatorInset = i;
            invalidate();
        }
    }

    @Px
    public int getIndicatorSize() {
        return ((CircularProgressIndicatorSpec) this.f3125a).indicatorSize;
    }

    public void setIndicatorSize(@Px int i) {
        int iMax = Math.max(i, getTrackThickness() * 2);
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f3125a;
        if (((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).indicatorSize != iMax) {
            ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).indicatorSize = iMax;
            ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).getClass();
            invalidate();
        }
    }

    public int getIndicatorDirection() {
        return ((CircularProgressIndicatorSpec) this.f3125a).indicatorDirection;
    }

    public void setIndicatorDirection(int i) {
        ((CircularProgressIndicatorSpec) this.f3125a).indicatorDirection = i;
        invalidate();
    }
}
