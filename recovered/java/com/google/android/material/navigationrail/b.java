package com.google.android.material.navigationrail;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.internal.ViewUtils;

/* loaded from: classes.dex */
class b implements ViewUtils.OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NavigationRailView f3124a;

    @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
    @NonNull
    public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull ViewUtils.RelativePadding relativePadding) {
        NavigationRailView navigationRailView = this.f3124a;
        Boolean bool = navigationRailView.j;
        if (bool != null ? bool.booleanValue() : ViewCompat.getFitsSystemWindows(navigationRailView)) {
            relativePadding.top += windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).top;
        }
        Boolean bool2 = navigationRailView.k;
        if (bool2 != null ? bool2.booleanValue() : ViewCompat.getFitsSystemWindows(navigationRailView)) {
            relativePadding.bottom += windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).bottom;
        }
        boolean z = ViewCompat.getLayoutDirection(view) == 1;
        int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
        int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
        int i = relativePadding.start;
        if (z) {
            systemWindowInsetLeft = systemWindowInsetRight;
        }
        relativePadding.start = i + systemWindowInsetLeft;
        relativePadding.applyToView(view);
        return windowInsetsCompat;
    }

    public b(NavigationRailView navigationRailView) {
        this.f3124a = navigationRailView;
    }
}
