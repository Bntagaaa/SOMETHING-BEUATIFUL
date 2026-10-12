package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Build;
import android.view.Window;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.google.android.material.color.MaterialColors;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class EdgeToEdgeUtils {
    private EdgeToEdgeUtils() {
    }

    public static void applyEdgeToEdge(@NonNull Window window, boolean z) {
        applyEdgeToEdge(window, z, null, null);
    }

    public static void applyEdgeToEdge(@NonNull Window window, boolean z, @Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2) {
        int color;
        int color2;
        int i = Build.VERSION.SDK_INT;
        boolean z2 = false;
        boolean z3 = num == null || num.intValue() == 0;
        boolean z4 = num2 == null || num2.intValue() == 0;
        if (z3 || z4) {
            int color3 = MaterialColors.getColor(window.getContext(), R.attr.colorBackground, -16777216);
            if (z3) {
                num = Integer.valueOf(color3);
            }
            if (z4) {
                num2 = Integer.valueOf(color3);
            }
        }
        WindowCompat.setDecorFitsSystemWindows(window, !z);
        Context context = window.getContext();
        if (z && i < 23) {
            color = ColorUtils.setAlphaComponent(MaterialColors.getColor(context, R.attr.statusBarColor, -16777216), 128);
        } else {
            color = z ? 0 : MaterialColors.getColor(context, R.attr.statusBarColor, -16777216);
        }
        Context context2 = window.getContext();
        if (z && i < 27) {
            color2 = ColorUtils.setAlphaComponent(MaterialColors.getColor(context2, R.attr.navigationBarColor, -16777216), 128);
        } else {
            color2 = z ? 0 : MaterialColors.getColor(context2, R.attr.navigationBarColor, -16777216);
        }
        window.setStatusBarColor(color);
        window.setNavigationBarColor(color2);
        boolean z5 = MaterialColors.isColorLight(color) || (color == 0 && MaterialColors.isColorLight(num.intValue()));
        boolean zIsColorLight = MaterialColors.isColorLight(num2.intValue());
        if (MaterialColors.isColorLight(color2) || (color2 == 0 && zIsColorLight)) {
            z2 = true;
        }
        WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
        if (insetsController != null) {
            insetsController.setAppearanceLightStatusBars(z5);
            insetsController.setAppearanceLightNavigationBars(z2);
        }
    }
}
