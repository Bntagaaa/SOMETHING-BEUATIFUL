package com.google.android.material.datepicker;

import android.content.res.Resources;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.datepicker.MaterialCalendar;
import java.util.Calendar;

/* loaded from: classes.dex */
class MonthsPagerAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: a, reason: collision with root package name */
    public final CalendarConstraints f2944a;

    /* renamed from: b, reason: collision with root package name */
    public final DateSelector f2945b;
    public final MaterialCalendar.c c;
    public final int d;

    public MonthsPagerAdapter(ContextThemeWrapper contextThemeWrapper, DateSelector dateSelector, CalendarConstraints calendarConstraints, MaterialCalendar.c cVar) {
        t tVar = calendarConstraints.f2925a;
        t tVar2 = calendarConstraints.d;
        if (tVar.compareTo(tVar2) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (tVar2.compareTo(calendarConstraints.f2926b) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        int i = u.f;
        Resources resources = contextThemeWrapper.getResources();
        int i2 = R.dimen.mtrl_calendar_day_height;
        this.d = (resources.getDimensionPixelSize(i2) * i) + (MaterialDatePicker.t(contextThemeWrapper) ? contextThemeWrapper.getResources().getDimensionPixelSize(i2) : 0);
        this.f2944a = calendarConstraints;
        this.f2945b = dateSelector;
        this.c = cVar;
        setHasStableIds(true);
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a, reason: collision with root package name */
        public final TextView f2946a;

        /* renamed from: b, reason: collision with root package name */
        public final p f2947b;

        public ViewHolder(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
            this.f2946a = textView;
            ViewCompat.setAccessibilityHeading(textView, true);
            this.f2947b = (p) linearLayout.findViewById(R.id.month_grid);
            if (z) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        Calendar calendarC = y.c(this.f2944a.f2925a.f2986a);
        calendarC.add(2, i);
        return new t(calendarC).f2986a.getTimeInMillis();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {
        CalendarConstraints calendarConstraints = this.f2944a;
        Calendar calendarC = y.c(calendarConstraints.f2925a.f2986a);
        calendarC.add(2, i);
        t tVar = new t(calendarC);
        viewHolder.f2946a.setText(tVar.e());
        p pVar = (p) viewHolder.f2947b.findViewById(R.id.month_grid);
        if (pVar.getAdapter() != null && tVar.equals(pVar.getAdapter().f2989a)) {
            pVar.invalidate();
            pVar.getAdapter().updateSelectedStates(pVar);
        } else {
            u uVar = new u(tVar, this.f2945b, calendarConstraints);
            pVar.setNumColumns(tVar.d);
            pVar.setAdapter((ListAdapter) uVar);
        }
        pVar.setOnItemClickListener(new a(pVar));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (MaterialDatePicker.t(viewGroup.getContext())) {
            linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.d));
            return new ViewHolder(linearLayout, true);
        }
        return new ViewHolder(linearLayout, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f2944a.f;
    }

    public class a implements AdapterView.OnItemClickListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ p f2948a;

        public a(p pVar) {
            this.f2948a = pVar;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            p pVar = this.f2948a;
            u adapter = pVar.getAdapter();
            if (i < adapter.f2989a.c() || i > adapter.a()) {
                return;
            }
            MonthsPagerAdapter.this.c.onDayClick(pVar.getAdapter().getItem(i).longValue());
        }
    }
}
