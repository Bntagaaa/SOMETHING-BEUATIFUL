package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* loaded from: classes.dex */
class n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MonthsPagerAdapter f2980a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f2981b;

    public n(MaterialCalendar materialCalendar, MonthsPagerAdapter monthsPagerAdapter) {
        this.f2981b = materialCalendar;
        this.f2980a = monthsPagerAdapter;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MaterialCalendar materialCalendar = this.f2981b;
        int iFindLastVisibleItemPosition = ((LinearLayoutManager) materialCalendar.i0.getLayoutManager()).findLastVisibleItemPosition() - 1;
        if (iFindLastVisibleItemPosition >= 0) {
            Calendar calendarC = y.c(this.f2980a.f2944a.f2925a.f2986a);
            calendarC.add(2, iFindLastVisibleItemPosition);
            materialCalendar.q(new t(calendarC));
        }
    }
}
