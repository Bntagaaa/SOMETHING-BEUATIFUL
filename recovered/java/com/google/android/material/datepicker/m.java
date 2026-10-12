package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* loaded from: classes.dex */
class m implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MonthsPagerAdapter f2978a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f2979b;

    public m(MaterialCalendar materialCalendar, MonthsPagerAdapter monthsPagerAdapter) {
        this.f2979b = materialCalendar;
        this.f2978a = monthsPagerAdapter;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MaterialCalendar materialCalendar = this.f2979b;
        int iFindFirstVisibleItemPosition = ((LinearLayoutManager) materialCalendar.i0.getLayoutManager()).findFirstVisibleItemPosition() + 1;
        if (iFindFirstVisibleItemPosition < materialCalendar.i0.getAdapter().getItemCount()) {
            Calendar calendarC = y.c(this.f2978a.f2944a.f2925a.f2986a);
            calendarC.add(2, iFindFirstVisibleItemPosition);
            materialCalendar.q(new t(calendarC));
        }
    }
}
