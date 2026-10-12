package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
class j {

    /* renamed from: a, reason: collision with root package name */
    public final View f2775a;

    /* renamed from: b, reason: collision with root package name */
    public int f2776b;
    public int c;
    public int d;
    public int e;
    public boolean f = true;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2777g = true;

    public j(View view) {
        this.f2775a = view;
    }

    public final void a() {
        int i = this.d;
        View view = this.f2775a;
        ViewCompat.offsetTopAndBottom(view, i - (view.getTop() - this.f2776b));
        ViewCompat.offsetLeftAndRight(view, this.e - (view.getLeft() - this.c));
    }

    public boolean setTopAndBottomOffset(int i) {
        if (!this.f || this.d == i) {
            return false;
        }
        this.d = i;
        a();
        return true;
    }

    public boolean setLeftAndRightOffset(int i) {
        if (!this.f2777g || this.e == i) {
            return false;
        }
        this.e = i;
        a();
        return true;
    }

    public int getTopAndBottomOffset() {
        return this.d;
    }

    public int getLeftAndRightOffset() {
        return this.e;
    }

    public int getLayoutTop() {
        return this.f2776b;
    }

    public void setVerticalOffsetEnabled(boolean z) {
        this.f = z;
    }

    public boolean isVerticalOffsetEnabled() {
        return this.f;
    }

    public void setHorizontalOffsetEnabled(boolean z) {
        this.f2777g = z;
    }

    public boolean isHorizontalOffsetEnabled() {
        return this.f2777g;
    }
}
