package com.google.android.material.textfield;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;

/* loaded from: classes.dex */
class v implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f3348a;

    public v(u uVar) {
        this.f3348a = uVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        u uVar = this.f3348a;
        EditText editText = uVar.f3334a.getEditText();
        if (editText == null) {
            return;
        }
        int selectionEnd = editText.getSelectionEnd();
        if (u.d(uVar)) {
            editText.setTransformationMethod(null);
        } else {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
        if (selectionEnd >= 0) {
            editText.setSelection(selectionEnd);
        }
        uVar.f3334a.refreshEndIconDrawableState();
    }
}
