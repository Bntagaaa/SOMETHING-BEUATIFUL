package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes.dex */
class i<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a, reason: collision with root package name */
    public j f2773a;

    /* renamed from: b, reason: collision with root package name */
    public int f2774b;
    public int c;

    public i() {
        this.f2774b = 0;
        this.c = 0;
    }

    public i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2774b = 0;
        this.c = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        layoutChild(coordinatorLayout, v, i);
        if (this.f2773a == null) {
            this.f2773a = new j(v);
        }
        j jVar = this.f2773a;
        View view = jVar.f2775a;
        jVar.f2776b = view.getTop();
        jVar.c = view.getLeft();
        this.f2773a.a();
        int i2 = this.f2774b;
        if (i2 != 0) {
            this.f2773a.setTopAndBottomOffset(i2);
            this.f2774b = 0;
        }
        int i3 = this.c;
        if (i3 == 0) {
            return true;
        }
        this.f2773a.setLeftAndRightOffset(i3);
        this.c = 0;
        return true;
    }

    public void layoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        coordinatorLayout.onLayoutChild(v, i);
    }

    public boolean setTopAndBottomOffset(int i) {
        j jVar = this.f2773a;
        if (jVar != null) {
            return jVar.setTopAndBottomOffset(i);
        }
        this.f2774b = i;
        return false;
    }

    public boolean setLeftAndRightOffset(int i) {
        j jVar = this.f2773a;
        if (jVar != null) {
            return jVar.setLeftAndRightOffset(i);
        }
        this.c = i;
        return false;
    }

    public int getTopAndBottomOffset() {
        j jVar = this.f2773a;
        if (jVar != null) {
            return jVar.getTopAndBottomOffset();
        }
        return 0;
    }

    public int getLeftAndRightOffset() {
        j jVar = this.f2773a;
        if (jVar != null) {
            return jVar.getLeftAndRightOffset();
        }
        return 0;
    }

    public void setVerticalOffsetEnabled(boolean z) {
        j jVar = this.f2773a;
        if (jVar != null) {
            jVar.setVerticalOffsetEnabled(z);
        }
    }

    public boolean isVerticalOffsetEnabled() {
        j jVar = this.f2773a;
        return jVar != null && jVar.isVerticalOffsetEnabled();
    }

    public void setHorizontalOffsetEnabled(boolean z) {
        j jVar = this.f2773a;
        if (jVar != null) {
            jVar.setHorizontalOffsetEnabled(z);
        }
    }

    public boolean isHorizontalOffsetEnabled() {
        j jVar = this.f2773a;
        return jVar != null && jVar.isHorizontalOffsetEnabled();
    }

    public int a() {
        return getTopAndBottomOffset();
    }
}
