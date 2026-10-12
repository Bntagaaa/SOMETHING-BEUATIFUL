package com.google.android.material.bottomnavigation;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.internal.ViewUtils;

/* loaded from: classes.dex */
class a implements ViewUtils.OnApplyWindowInsetsListener {
    @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
    @NonNull
    public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull ViewUtils.RelativePadding relativePadding) {
        relativePadding.bottom = windowInsetsCompat.getSystemWindowInsetBottom() + relativePadding.bottom;
        boolean z = ViewCompat.getLayoutDirection(view) == 1;
        int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
        int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
        relativePadding.start += z ? systemWindowInsetRight : systemWindowInsetLeft;
        int i = relativePadding.end;
        if (!z) {
            systemWindowInsetLeft = systemWindowInsetRight;
        }
        relativePadding.end = i + systemWindowInsetLeft;
        relativePadding.applyToView(view);
        return windowInsetsCompat;
    }
}
