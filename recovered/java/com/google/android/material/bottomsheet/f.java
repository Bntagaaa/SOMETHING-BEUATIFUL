package com.google.android.material.bottomsheet;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

/* loaded from: classes.dex */
class f extends AccessibilityDelegateCompat {
    public final /* synthetic */ BottomSheetDialog d;

    public f(BottomSheetDialog bottomSheetDialog) {
        this.d = bottomSheetDialog;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        if (this.d.j) {
            accessibilityNodeInfoCompat.addAction(1048576);
            accessibilityNodeInfoCompat.setDismissable(true);
        } else {
            accessibilityNodeInfoCompat.setDismissable(false);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (i == 1048576) {
            BottomSheetDialog bottomSheetDialog = this.d;
            if (bottomSheetDialog.j) {
                bottomSheetDialog.cancel();
                return true;
            }
        }
        return super.performAccessibilityAction(view, i, bundle);
    }
}
