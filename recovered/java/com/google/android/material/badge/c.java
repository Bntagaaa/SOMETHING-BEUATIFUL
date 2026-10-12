package com.google.android.material.badge;

import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

/* loaded from: classes.dex */
class c extends AccessibilityDelegateCompat {
    public final /* synthetic */ BadgeDrawable d;

    public c(BadgeDrawable badgeDrawable) {
        this.d = badgeDrawable;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setContentDescription(this.d.getContentDescription());
    }
}
