package com.google.android.material.datepicker;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;

/* loaded from: classes.dex */
class j extends AccessibilityDelegateCompat {
    public final /* synthetic */ MaterialCalendar d;

    public j(MaterialCalendar materialCalendar) {
        this.d = materialCalendar;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        String string;
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        MaterialCalendar materialCalendar = this.d;
        if (materialCalendar.k0.getVisibility() == 0) {
            string = materialCalendar.getString(R.string.mtrl_picker_toggle_to_year_selection);
        } else {
            string = materialCalendar.getString(R.string.mtrl_picker_toggle_to_day_selection);
        }
        accessibilityNodeInfoCompat.setHintText(string);
    }
}
