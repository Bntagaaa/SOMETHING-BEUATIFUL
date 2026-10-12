package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.timepicker.ClockHandView;

/* loaded from: classes.dex */
class q extends ConstraintLayout implements TimePickerControls {

    public interface b {
    }

    public interface c {
    }

    public interface d {
    }

    public class a implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            throw null;
        }
    }

    public void setMinuteHourDelegate(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(null, accessibilityDelegateCompat);
    }

    public void setHourClickDelegate(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(null, accessibilityDelegateCompat);
    }

    public void setValues(String[] strArr, @StringRes int i) {
        throw null;
    }

    public void setHandRotation(float f, boolean z) {
        throw null;
    }

    public void setAnimateOnTouchUp(boolean z) {
        throw null;
    }

    @SuppressLint({"DefaultLocale"})
    public void updateTime(int i, int i2, int i3) {
        throw null;
    }

    public void setActiveSelection(int i) {
        throw null;
    }

    public void addOnRotateListener(ClockHandView.OnRotateListener onRotateListener) {
        throw null;
    }

    public void setOnActionUpListener(ClockHandView.OnActionUpListener onActionUpListener) {
        throw null;
    }

    public void showToggle() {
        throw null;
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        throw null;
    }
}
