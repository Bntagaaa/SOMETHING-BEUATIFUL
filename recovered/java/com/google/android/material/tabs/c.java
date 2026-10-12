package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes.dex */
class c {
    public static RectF a(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (!tabLayout.isTabIndicatorFullWidth() && (view instanceof TabLayout.TabView)) {
            TabLayout.TabView tabView = (TabLayout.TabView) view;
            View[] viewArr = {tabView.f3273b, tabView.c, tabView.f};
            int iMax = 0;
            int iMin = 0;
            boolean z = false;
            for (int i = 0; i < 3; i++) {
                View view2 = viewArr[i];
                if (view2 != null && view2.getVisibility() == 0) {
                    iMin = z ? Math.min(iMin, view2.getLeft()) : view2.getLeft();
                    iMax = z ? Math.max(iMax, view2.getRight()) : view2.getRight();
                    z = true;
                }
            }
            int i2 = iMax - iMin;
            View[] viewArr2 = {tabView.f3273b, tabView.c, tabView.f};
            int iMax2 = 0;
            int iMin2 = 0;
            boolean z2 = false;
            for (int i3 = 0; i3 < 3; i3++) {
                View view3 = viewArr2[i3];
                if (view3 != null && view3.getVisibility() == 0) {
                    iMin2 = z2 ? Math.min(iMin2, view3.getTop()) : view3.getTop();
                    iMax2 = z2 ? Math.max(iMax2, view3.getBottom()) : view3.getBottom();
                    z2 = true;
                }
            }
            int i4 = iMax2 - iMin2;
            int iDpToPx = (int) ViewUtils.dpToPx(tabView.getContext(), 24);
            if (i2 < iDpToPx) {
                i2 = iDpToPx;
            }
            int right = (tabView.getRight() + tabView.getLeft()) / 2;
            int bottom = (tabView.getBottom() + tabView.getTop()) / 2;
            int i5 = i2 / 2;
            return new RectF(right - i5, bottom - (i4 / 2), i5 + right, (right / 2) + bottom);
        }
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    public void b(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        RectF rectFA = a(tabLayout, view);
        RectF rectFA2 = a(tabLayout, view2);
        drawable.setBounds(AnimationUtils.lerp((int) rectFA.left, (int) rectFA2.left, f), drawable.getBounds().top, AnimationUtils.lerp((int) rectFA.right, (int) rectFA2.right, f), drawable.getBounds().bottom);
    }
}
