package com.google.android.material.textfield;

import android.text.Editable;
import android.text.TextWatcher;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class x implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f3352a;

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(@NonNull Editable editable) {
        TextInputLayout textInputLayout = this.f3352a;
        textInputLayout.u(!textInputLayout.H0, false);
        if (textInputLayout.l) {
            textInputLayout.n(editable.length());
        }
        if (textInputLayout.s) {
            textInputLayout.v(editable.length());
        }
    }

    public x(TextInputLayout textInputLayout) {
        this.f3352a = textInputLayout;
    }
}
