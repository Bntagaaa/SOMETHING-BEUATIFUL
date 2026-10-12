package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;

/* loaded from: classes.dex */
class j extends b {
    public final /* synthetic */ l e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(l lVar, Context context, int i) {
        super(context, i);
        this.e = lVar;
    }

    @Override // com.google.android.material.timepicker.b, androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_hour_suffix, String.valueOf(this.e.f3373b.getHourForDisplay())));
    }
}
