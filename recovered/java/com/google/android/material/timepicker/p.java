package com.google.android.material.timepicker;

import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;

/* loaded from: classes.dex */
class p implements MaterialButtonToggleGroup.OnButtonCheckedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f3382a;

    public p(o oVar) {
        this.f3382a = oVar;
    }

    @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
    public void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
        this.f3382a.f3377b.setPeriod(i == R.id.material_clock_period_pm_button ? 1 : 0);
    }
}
