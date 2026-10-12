package com.google.android.material.datepicker;

import android.view.View;

/* loaded from: classes.dex */
class s implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialDatePicker f2985a;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MaterialDatePicker materialDatePicker = this.f2985a;
        materialDatePicker.L0.setEnabled(materialDatePicker.r().isSelectionComplete());
        materialDatePicker.J0.toggle();
        materialDatePicker.v(materialDatePicker.J0);
        materialDatePicker.u();
    }

    public s(MaterialDatePicker materialDatePicker) {
        this.f2985a = materialDatePicker;
    }
}
