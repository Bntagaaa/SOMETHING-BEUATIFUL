package com.google.android.material.datepicker;

import com.google.android.material.R;

/* loaded from: classes.dex */
class r extends OnSelectionChangedListener<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialDatePicker f2984a;

    @Override // com.google.android.material.datepicker.OnSelectionChangedListener
    public void onIncompleteSelectionChanged() {
        this.f2984a.L0.setEnabled(false);
    }

    @Override // com.google.android.material.datepicker.OnSelectionChangedListener
    public void onSelectionChanged(Object obj) {
        MaterialDatePicker materialDatePicker = this.f2984a;
        String headerText = materialDatePicker.getHeaderText();
        materialDatePicker.I0.setContentDescription(String.format(materialDatePicker.getString(R.string.mtrl_picker_announce_current_selection), headerText));
        materialDatePicker.I0.setText(headerText);
        materialDatePicker.L0.setEnabled(materialDatePicker.r().isSelectionComplete());
    }

    public r(MaterialDatePicker materialDatePicker) {
        this.f2984a = materialDatePicker;
    }
}
