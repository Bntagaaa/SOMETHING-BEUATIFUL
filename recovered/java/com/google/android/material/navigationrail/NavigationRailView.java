package com.google.android.material.navigationrail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.navigation.NavigationBarView;

/* loaded from: classes.dex */
public class NavigationRailView extends NavigationBarView {
    public final int h;
    public View i;
    public final Boolean j;
    public final Boolean k;

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 7;
    }

    public NavigationRailView(@NonNull Context context) {
        this(context, null);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.navigationRailStyle);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, R.style.Widget_MaterialComponents_NavigationRailView);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.j = null;
        this.k = null;
        this.h = getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_rail_margin);
        TintTypedArray tintTypedArrayObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(getContext(), attributeSet, R.styleable.NavigationRailView, i, i2, new int[0]);
        int resourceId = tintTypedArrayObtainTintedStyledAttributes.getResourceId(R.styleable.NavigationRailView_headerLayout, 0);
        if (resourceId != 0) {
            addHeaderView(resourceId);
        }
        setMenuGravity(tintTypedArrayObtainTintedStyledAttributes.getInt(R.styleable.NavigationRailView_menuGravity, 49));
        int i3 = R.styleable.NavigationRailView_itemMinHeight;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i3)) {
            setItemMinimumHeight(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(i3, -1));
        }
        int i4 = R.styleable.NavigationRailView_paddingTopSystemWindowInsets;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i4)) {
            this.j = Boolean.valueOf(tintTypedArrayObtainTintedStyledAttributes.getBoolean(i4, false));
        }
        int i5 = R.styleable.NavigationRailView_paddingBottomSystemWindowInsets;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i5)) {
            this.k = Boolean.valueOf(tintTypedArrayObtainTintedStyledAttributes.getBoolean(i5, false));
        }
        tintTypedArrayObtainTintedStyledAttributes.recycle();
        ViewUtils.doOnApplyWindowInsets(this, new b(this));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        NavigationRailMenuView navigationRailMenuView = (NavigationRailMenuView) getMenuView();
        View view = this.i;
        int i5 = 0;
        boolean z2 = (view == null || view.getVisibility() == 8) ? false : true;
        int i6 = this.h;
        if (!z2) {
            if ((navigationRailMenuView.F.gravity & 112) == 48) {
                i5 = i6;
            }
        } else {
            int bottom = this.i.getBottom() + i6;
            int top = navigationRailMenuView.getTop();
            if (top < bottom) {
                i5 = bottom - top;
            }
        }
        if (i5 > 0) {
            navigationRailMenuView.layout(navigationRailMenuView.getLeft(), navigationRailMenuView.getTop() + i5, navigationRailMenuView.getRight(), navigationRailMenuView.getBottom() + i5);
        }
    }

    public void addHeaderView(@LayoutRes int i) {
        addHeaderView(LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this, false));
    }

    public void addHeaderView(@NonNull View view) {
        removeHeaderView();
        this.i = view;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        layoutParams.topMargin = this.h;
        addView(view, 0, layoutParams);
    }

    @Nullable
    public View getHeaderView() {
        return this.i;
    }

    public void removeHeaderView() {
        View view = this.i;
        if (view != null) {
            removeView(view);
            this.i = null;
        }
    }

    public int getItemMinimumHeight() {
        return ((NavigationRailMenuView) getMenuView()).getItemMinimumHeight();
    }

    public void setItemMinimumHeight(@Px int i) {
        ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i);
    }

    public int getMenuGravity() {
        return ((NavigationRailMenuView) getMenuView()).F.gravity;
    }

    public void setMenuGravity(int i) {
        NavigationRailMenuView navigationRailMenuView = (NavigationRailMenuView) getMenuView();
        FrameLayout.LayoutParams layoutParams = navigationRailMenuView.F;
        if (layoutParams.gravity != i) {
            layoutParams.gravity = i;
            navigationRailMenuView.setLayoutParams(layoutParams);
        }
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavigationRailMenuView createNavigationBarMenuView(@NonNull Context context) {
        return new NavigationRailMenuView(context);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i) != 1073741824 && suggestedMinimumWidth > 0) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), getPaddingRight() + getPaddingLeft() + suggestedMinimumWidth), 1073741824);
        }
        super.onMeasure(i, i2);
        View view = this.i;
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        measureChild((NavigationRailMenuView) getMenuView(), i, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.i.getMeasuredHeight()) - this.h, Integer.MIN_VALUE));
    }
}
