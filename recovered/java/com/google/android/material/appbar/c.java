package com.google.android.material.appbar;

import android.view.View;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.appbar.AppBarLayout;

/* loaded from: classes.dex */
class c extends AccessibilityDelegateCompat {
    public final /* synthetic */ AppBarLayout.BaseBehavior d;

    public c(AppBarLayout.BaseBehavior baseBehavior) {
        this.d = baseBehavior;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setScrollable(this.d.q);
        accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
    }
}
