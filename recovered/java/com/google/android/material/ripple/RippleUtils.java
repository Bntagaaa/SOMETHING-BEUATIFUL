package com.google.android.material.ripple;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class RippleUtils {
    public static final boolean USE_FRAMEWORK_RIPPLE = true;

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f3163a = {R.attr.state_pressed};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f3164b = {R.attr.state_hovered, R.attr.state_focused};
    public static final int[] c = {R.attr.state_focused};
    public static final int[] d = {R.attr.state_hovered};
    public static final int[] e = {R.attr.state_selected, R.attr.state_pressed};
    public static final int[] f = {R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f3165g = {R.attr.state_selected, R.attr.state_focused};
    public static final int[] h = {R.attr.state_selected, R.attr.state_hovered};
    public static final int[] i = {R.attr.state_selected};
    public static final int[] j = {R.attr.state_enabled, R.attr.state_pressed};

    private RippleUtils() {
    }

    @NonNull
    public static ColorStateList convertToRippleDrawableColor(@Nullable ColorStateList colorStateList) {
        boolean z = USE_FRAMEWORK_RIPPLE;
        int[] iArr = f3163a;
        int[] iArr2 = e;
        int[] iArr3 = i;
        if (z) {
            return new ColorStateList(new int[][]{iArr3, StateSet.NOTHING}, new int[]{a(colorStateList, iArr2), a(colorStateList, iArr)});
        }
        int[] iArr4 = f;
        int[] iArr5 = f3165g;
        int[] iArr6 = h;
        int[] iArr7 = f3164b;
        int[] iArr8 = c;
        int[] iArr9 = d;
        return new ColorStateList(new int[][]{iArr2, iArr4, iArr5, iArr6, iArr3, iArr, iArr7, iArr8, iArr9, StateSet.NOTHING}, new int[]{a(colorStateList, iArr2), a(colorStateList, iArr4), a(colorStateList, iArr5), a(colorStateList, iArr6), 0, a(colorStateList, iArr), a(colorStateList, iArr7), a(colorStateList, iArr8), a(colorStateList, iArr9), 0});
    }

    @NonNull
    public static ColorStateList sanitizeRippleDrawableColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 22 && i2 <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(j, 0)) != 0) {
                Log.w("RippleUtils", "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
            }
            return colorStateList;
        }
        return ColorStateList.valueOf(0);
    }

    public static boolean shouldDrawRippleCompat(@NonNull int[] iArr) {
        boolean z = false;
        boolean z2 = false;
        for (int i2 : iArr) {
            if (i2 == 16842910) {
                z = true;
            } else if (i2 == 16842908 || i2 == 16842919 || i2 == 16843623) {
                z2 = true;
            }
        }
        return z && z2;
    }

    public static int a(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return USE_FRAMEWORK_RIPPLE ? ColorUtils.setAlphaComponent(colorForState, Math.min(Color.alpha(colorForState) * 2, 255)) : colorForState;
    }
}
