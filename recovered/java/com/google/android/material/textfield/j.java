package com.google.android.material.textfield;

import android.widget.AutoCompleteTextView;

/* loaded from: classes.dex */
class j implements AutoCompleteTextView.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f3328a;

    public j(i iVar) {
        this.f3328a = iVar;
    }

    @Override // android.widget.AutoCompleteTextView.OnDismissListener
    public void onDismiss() {
        i iVar = this.f3328a;
        iVar.l = true;
        iVar.n = System.currentTimeMillis();
        iVar.h(false);
    }
}
