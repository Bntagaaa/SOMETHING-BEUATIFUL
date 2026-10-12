package com.google.android.material.textfield;

import android.view.View;
import android.widget.AutoCompleteTextView;

/* loaded from: classes.dex */
class m implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f3331a;

    public m(i iVar) {
        this.f3331a = iVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        i iVar = this.f3331a;
        i.d(iVar, (AutoCompleteTextView) iVar.f3334a.getEditText());
    }
}
