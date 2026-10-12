package com.google.android.material.textfield;

import android.view.MotionEvent;
import android.view.View;
import android.widget.AutoCompleteTextView;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class n implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoCompleteTextView f3332a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f3333b;

    public n(i iVar, AutoCompleteTextView autoCompleteTextView) {
        this.f3333b = iVar;
        this.f3332a = autoCompleteTextView;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            i iVar = this.f3333b;
            iVar.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis() - iVar.n;
            if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
                iVar.l = false;
            }
            i.d(iVar, this.f3332a);
            iVar.l = true;
            iVar.n = System.currentTimeMillis();
        }
        return false;
    }
}
