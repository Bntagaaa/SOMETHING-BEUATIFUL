package com.google.android.material.datepicker;

import android.view.View;
import com.google.android.material.datepicker.MaterialCalendar;

/* loaded from: classes.dex */
class z implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2992a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ YearGridAdapter f2993b;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        YearGridAdapter yearGridAdapter = this.f2993b;
        t tVarA = t.a(this.f2992a, yearGridAdapter.f2956a.e0.f2987b);
        CalendarConstraints calendarConstraints = yearGridAdapter.f2956a.d0;
        t tVar = calendarConstraints.f2925a;
        if (tVarA.compareTo(tVar) < 0) {
            tVarA = tVar;
        } else {
            t tVar2 = calendarConstraints.f2926b;
            if (tVarA.compareTo(tVar2) > 0) {
                tVarA = tVar2;
            }
        }
        yearGridAdapter.f2956a.q(tVarA);
        yearGridAdapter.f2956a.r(MaterialCalendar.d.f2934a);
    }

    public z(YearGridAdapter yearGridAdapter, int i) {
        this.f2993b = yearGridAdapter;
        this.f2992a = i;
    }
}
