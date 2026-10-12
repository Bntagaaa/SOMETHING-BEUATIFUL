package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

/* loaded from: classes.dex */
abstract class h extends i<View> {
    public final Rect d;
    public final Rect e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f2772g;

    public abstract AppBarLayout b(List list);

    public float c(View view) {
        return 1.0f;
    }

    public boolean shouldHeaderOverlapScrollingChild() {
        return false;
    }

    public h() {
        this.d = new Rect();
        this.e = new Rect();
        this.f = 0;
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new Rect();
        this.e = new Rect();
        this.f = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i, int i2, int i3, int i4) {
        AppBarLayout appBarLayoutB;
        WindowInsetsCompat lastWindowInsets;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (appBarLayoutB = b(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size > 0) {
            if (ViewCompat.getFitsSystemWindows(appBarLayoutB) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
                size += lastWindowInsets.getSystemWindowInsetBottom() + lastWindowInsets.getSystemWindowInsetTop();
            }
        } else {
            size = coordinatorLayout.getHeight();
        }
        int iD = size + d(appBarLayoutB);
        int measuredHeight = appBarLayoutB.getMeasuredHeight();
        if (shouldHeaderOverlapScrollingChild()) {
            view.setTranslationY(-measuredHeight);
        } else {
            iD -= measuredHeight;
        }
        coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec(iD, i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }

    @Override // com.google.android.material.appbar.i
    public void layoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i) {
        AppBarLayout appBarLayoutB = b(coordinatorLayout.getDependencies(view));
        int iClamp = 0;
        if (appBarLayoutB != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
            int paddingLeft = coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            int bottom = appBarLayoutB.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            int width = (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            int bottom2 = ((appBarLayoutB.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            Rect rect = this.d;
            rect.set(paddingLeft, bottom, width, bottom2);
            WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
                rect.left = lastWindowInsets.getSystemWindowInsetLeft() + rect.left;
                rect.right -= lastWindowInsets.getSystemWindowInsetRight();
            }
            int i2 = layoutParams.gravity;
            int i3 = i2 == 0 ? 8388659 : i2;
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            Rect rect2 = this.e;
            GravityCompat.apply(i3, measuredWidth, measuredHeight, rect, rect2, i);
            if (this.f2772g != 0) {
                float fC = c(appBarLayoutB);
                int i4 = this.f2772g;
                iClamp = MathUtils.clamp((int) (fC * i4), 0, i4);
            }
            view.layout(rect2.left, rect2.top - iClamp, rect2.right, rect2.bottom - iClamp);
            this.f = rect2.top - appBarLayoutB.getBottom();
            return;
        }
        super.layoutChild(coordinatorLayout, view, i);
        this.f = 0;
    }

    public int d(View view) {
        return view.getMeasuredHeight();
    }

    public final void setOverlayTop(int i) {
        this.f2772g = i;
    }

    public final int getOverlayTop() {
        return this.f2772g;
    }
}
