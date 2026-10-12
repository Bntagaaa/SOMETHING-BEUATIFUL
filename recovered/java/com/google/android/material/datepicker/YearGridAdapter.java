package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
class YearGridAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: a, reason: collision with root package name */
    public final MaterialCalendar f2956a;

    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a, reason: collision with root package name */
        public final TextView f2957a;

        public ViewHolder(TextView textView) {
            super(textView);
            this.f2957a = textView;
        }
    }

    public YearGridAdapter(MaterialCalendar materialCalendar) {
        this.f2956a = materialCalendar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ViewHolder((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f2956a.d0.e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {
        MaterialCalendar materialCalendar = this.f2956a;
        int i2 = materialCalendar.d0.f2925a.c + i;
        String string = viewHolder.f2957a.getContext().getString(R.string.mtrl_picker_navigate_to_year_description);
        String str = String.format(Locale.getDefault(), "%d", Integer.valueOf(i2));
        TextView textView = viewHolder.f2957a;
        textView.setText(str);
        textView.setContentDescription(String.format(string, Integer.valueOf(i2)));
        b bVar = materialCalendar.g0;
        Calendar calendarG = y.g();
        a aVar = calendarG.get(1) == i2 ? bVar.f : bVar.d;
        Iterator<Long> it = materialCalendar.getDateSelector().getSelectedDays().iterator();
        while (it.hasNext()) {
            calendarG.setTimeInMillis(it.next().longValue());
            if (calendarG.get(1) == i2) {
                aVar = bVar.e;
            }
        }
        aVar.b(textView);
        textView.setOnClickListener(new z(this, i2));
    }
}
