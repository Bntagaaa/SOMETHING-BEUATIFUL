package com.google.android.material.datepicker;

import android.view.View;
import com.google.android.material.datepicker.MaterialCalendar;

/* loaded from: classes.dex */
class l implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f2977a;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MaterialCalendar materialCalendar = this.f2977a;
        MaterialCalendar.d dVar = materialCalendar.f0;
        MaterialCalendar.d dVar2 = MaterialCalendar.d.f2935b;
        MaterialCalendar.d dVar3 = MaterialCalendar.d.f2934a;
        if (dVar == dVar2) {
            materialCalendar.r(dVar3);
        } else if (dVar == dVar3) {
            materialCalendar.r(dVar2);
        }
    }

    public l(MaterialCalendar materialCalendar) {
        this.f2977a = materialCalendar;
    }
}
