package com.google.android.material.timepicker;

import android.content.res.Configuration;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.Checkable;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
class a extends FrameLayout implements Checkable {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3366a = 0;

    public TextInputLayout getTextInput() {
        return null;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        throw null;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        throw null;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        throw null;
    }

    public void setText(CharSequence charSequence) {
        i.formatText(getResources(), charSequence);
        throw null;
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        throw null;
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        throw null;
    }

    public void addInputFilter(InputFilter inputFilter) {
        throw null;
    }

    public void setChipDelegate(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(null, accessibilityDelegateCompat);
    }

    public class b extends TextWatcherAdapter {
        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                int i = a.f3366a;
                throw null;
            }
            int i2 = a.f3366a;
            throw null;
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT < 24) {
            return;
        }
        getContext().getResources().getConfiguration().getLocales();
        throw null;
    }
}
