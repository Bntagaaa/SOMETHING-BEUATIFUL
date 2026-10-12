package com.google.android.material.badge;

import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

/* loaded from: classes.dex */
class b extends AccessibilityDelegateCompat {
    public final /* synthetic */ BadgeDrawable d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(View.AccessibilityDelegate accessibilityDelegate, BadgeDrawable badgeDrawable) {
        super(accessibilityDelegate);
        this.d = badgeDrawable;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setContentDescription(this.d.getContentDescription());
    }
}
