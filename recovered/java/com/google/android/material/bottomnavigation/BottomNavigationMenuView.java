package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class BottomNavigationMenuView extends NavigationBarMenuView {
    public final int E;
    public final int F;
    public final int G;
    public final int H;
    public boolean I;
    public final int[] J;

    public BottomNavigationMenuView(@NonNull Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        this.E = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
        this.F = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
        this.G = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.H = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_min_width);
        this.J = new int[5];
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        MenuBuilder menu = getMenu();
        int size = View.MeasureSpec.getSize(i);
        int size2 = menu.getVisibleItems().size();
        int childCount = getChildCount();
        int size3 = View.MeasureSpec.getSize(i2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size3, 1073741824);
        boolean zIsShifting = isShifting(getLabelVisibilityMode(), size2);
        int i3 = this.G;
        int[] iArr = this.J;
        if (zIsShifting && isItemHorizontalTranslationEnabled()) {
            View childAt = getChildAt(getSelectedItemPosition());
            int visibility = childAt.getVisibility();
            int iMax = this.H;
            if (visibility != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE), iMakeMeasureSpec);
                iMax = Math.max(iMax, childAt.getMeasuredWidth());
            }
            int i4 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int iMin = Math.min(size - (this.F * i4), Math.min(iMax, i3));
            int i5 = size - iMin;
            int iMin2 = Math.min(i5 / (i4 == 0 ? 1 : i4), this.E);
            int i6 = i5 - (i4 * iMin2);
            int i7 = 0;
            while (i7 < childCount) {
                if (getChildAt(i7).getVisibility() != 8) {
                    iArr[i7] = i7 == getSelectedItemPosition() ? iMin : iMin2;
                    if (i6 > 0) {
                        iArr[i7] = iArr[i7] + 1;
                        i6--;
                    }
                } else {
                    iArr[i7] = 0;
                }
                i7++;
            }
        } else {
            int iMin3 = Math.min(size / (size2 != 0 ? size2 : 1), i3);
            int i8 = size - (size2 * iMin3);
            for (int i9 = 0; i9 < childCount; i9++) {
                if (getChildAt(i9).getVisibility() != 8) {
                    iArr[i9] = iMin3;
                    if (i8 > 0) {
                        iArr[i9] = iMin3 + 1;
                        i8--;
                    }
                } else {
                    iArr[i9] = 0;
                }
            }
        }
        int measuredWidth = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt2 = getChildAt(i10);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(iArr[i10], 1073741824), iMakeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                measuredWidth += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(measuredWidth, View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), 0), View.resolveSizeAndState(size3, i2, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int measuredWidth = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    int i8 = i5 - measuredWidth;
                    childAt.layout(i8 - childAt.getMeasuredWidth(), 0, i8, i6);
                } else {
                    childAt.layout(measuredWidth, 0, childAt.getMeasuredWidth() + measuredWidth, i6);
                }
                measuredWidth += childAt.getMeasuredWidth();
            }
        }
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.I = z;
    }

    public boolean isItemHorizontalTranslationEnabled() {
        return this.I;
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    @NonNull
    public NavigationBarItemView createNavigationBarItemView(@NonNull Context context) {
        return new BottomNavigationItemView(context);
    }
}
