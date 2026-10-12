package com.google.android.material.elevation;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;

/* loaded from: classes.dex */
public class ElevationOverlayProvider {
    public static final int f = (int) Math.round(5.1000000000000005d);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f3002a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3003b;
    public final int c;
    public final int d;
    public final float e;

    public ElevationOverlayProvider(@NonNull Context context) {
        this(MaterialAttributes.resolveBoolean(context, R.attr.elevationOverlayEnabled, false), MaterialColors.getColor(context, R.attr.elevationOverlayColor, 0), MaterialColors.getColor(context, R.attr.elevationOverlayAccentColor, 0), MaterialColors.getColor(context, R.attr.colorSurface, 0), context.getResources().getDisplayMetrics().density);
    }

    public ElevationOverlayProvider(boolean z, @ColorInt int i, @ColorInt int i2, @ColorInt int i3, float f2) {
        this.f3002a = z;
        this.f3003b = i;
        this.c = i2;
        this.d = i3;
        this.e = f2;
    }

    @ColorInt
    public int compositeOverlayWithThemeSurfaceColorIfNeeded(float f2, @NonNull View view) {
        return compositeOverlayWithThemeSurfaceColorIfNeeded(getParentAbsoluteElevation(view) + f2);
    }

    @ColorInt
    public int compositeOverlayWithThemeSurfaceColorIfNeeded(float f2) {
        return compositeOverlayIfNeeded(this.d, f2);
    }

    @ColorInt
    public int compositeOverlayIfNeeded(@ColorInt int i, float f2, @NonNull View view) {
        return compositeOverlayIfNeeded(i, getParentAbsoluteElevation(view) + f2);
    }

    @ColorInt
    public int compositeOverlayIfNeeded(@ColorInt int i, float f2) {
        return (this.f3002a && ColorUtils.setAlphaComponent(i, 255) == this.d) ? compositeOverlay(i, f2) : i;
    }

    @ColorInt
    public int compositeOverlay(@ColorInt int i, float f2, @NonNull View view) {
        return compositeOverlay(i, getParentAbsoluteElevation(view) + f2);
    }

    @ColorInt
    public int compositeOverlay(@ColorInt int i, float f2) {
        int i2;
        float fCalculateOverlayAlphaFraction = calculateOverlayAlphaFraction(f2);
        int iAlpha = Color.alpha(i);
        int iLayer = MaterialColors.layer(ColorUtils.setAlphaComponent(i, 255), this.f3003b, fCalculateOverlayAlphaFraction);
        if (fCalculateOverlayAlphaFraction > 0.0f && (i2 = this.c) != 0) {
            iLayer = MaterialColors.layer(iLayer, ColorUtils.setAlphaComponent(i2, f));
        }
        return ColorUtils.setAlphaComponent(iLayer, iAlpha);
    }

    public int calculateOverlayAlpha(float f2) {
        return Math.round(calculateOverlayAlphaFraction(f2) * 255.0f);
    }

    public float calculateOverlayAlphaFraction(float f2) {
        if (this.e <= 0.0f || f2 <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f2 / r0)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    public boolean isThemeElevationOverlayEnabled() {
        return this.f3002a;
    }

    @ColorInt
    public int getThemeElevationOverlayColor() {
        return this.f3003b;
    }

    @ColorInt
    public int getThemeSurfaceColor() {
        return this.d;
    }

    public float getParentAbsoluteElevation(@NonNull View view) {
        return ViewUtils.getParentAbsoluteElevation(view);
    }
}
