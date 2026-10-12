package com.google.android.material.expandable;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes.dex */
public final class ExpandableWidgetHelper {

    /* renamed from: a, reason: collision with root package name */
    public final View f3006a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3007b = false;
    public int c = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public ExpandableWidgetHelper(ExpandableWidget expandableWidget) {
        this.f3006a = (View) expandableWidget;
    }

    public boolean setExpanded(boolean z) {
        if (this.f3007b == z) {
            return false;
        }
        this.f3007b = z;
        View view = this.f3006a;
        ViewParent parent = view.getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return true;
        }
        ((CoordinatorLayout) parent).dispatchDependentViewsChanged(view);
        return true;
    }

    public boolean isExpanded() {
        return this.f3007b;
    }

    @NonNull
    public Bundle onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f3007b);
        bundle.putInt("expandedComponentIdHint", this.c);
        return bundle;
    }

    public void onRestoreInstanceState(@NonNull Bundle bundle) {
        this.f3007b = bundle.getBoolean("expanded", false);
        this.c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f3007b) {
            View view = this.f3006a;
            ViewParent parent = view.getParent();
            if (parent instanceof CoordinatorLayout) {
                ((CoordinatorLayout) parent).dispatchDependentViewsChanged(view);
            }
        }
    }

    public void setExpandedComponentIdHint(@IdRes int i) {
        this.c = i;
    }

    @IdRes
    public int getExpandedComponentIdHint() {
        return this.c;
    }
}
