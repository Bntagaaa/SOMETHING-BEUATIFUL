package com.google.android.material.textfield;

import android.text.Editable;
import android.view.View;

/* loaded from: classes.dex */
class b implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f3312a;

    public b(a aVar) {
        this.f3312a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a aVar = this.f3312a;
        Editable text = aVar.f3334a.getEditText().getText();
        if (text != null) {
            text.clear();
        }
        aVar.f3334a.refreshEndIconDrawableState();
    }
}
