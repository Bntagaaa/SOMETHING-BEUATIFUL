package com.google.android.material.datepicker;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;

/* loaded from: classes.dex */
class k extends RecyclerView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MonthsPagerAdapter f2975a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialButton f2976b;
    public final /* synthetic */ MaterialCalendar c;

    public k(MaterialCalendar materialCalendar, MonthsPagerAdapter monthsPagerAdapter, MaterialButton materialButton) {
        this.c = materialCalendar;
        this.f2975a = monthsPagerAdapter;
        this.f2976b = materialButton;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
        MaterialCalendar materialCalendar = this.c;
        int iFindFirstVisibleItemPosition = i < 0 ? ((LinearLayoutManager) materialCalendar.i0.getLayoutManager()).findFirstVisibleItemPosition() : ((LinearLayoutManager) materialCalendar.i0.getLayoutManager()).findLastVisibleItemPosition();
        CalendarConstraints calendarConstraints = this.f2975a.f2944a;
        Calendar calendarC = y.c(calendarConstraints.f2925a.f2986a);
        calendarC.add(2, iFindFirstVisibleItemPosition);
        materialCalendar.e0 = new t(calendarC);
        Calendar calendarC2 = y.c(calendarConstraints.f2925a.f2986a);
        calendarC2.add(2, iFindFirstVisibleItemPosition);
        this.f2976b.setText(new t(calendarC2).e());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
        if (i == 0) {
            recyclerView.announceForAccessibility(this.f2976b.getText());
        }
    }
}
