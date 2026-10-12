package com.google.android.material.datepicker;

import android.content.Context;
import android.icu.text.DateFormat;
import android.icu.util.TimeZone;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
class u extends BaseAdapter {
    public static final int f = y.h(null).getMaximum(4);

    /* renamed from: a, reason: collision with root package name */
    public final t f2989a;

    /* renamed from: b, reason: collision with root package name */
    public final DateSelector f2990b;
    public Collection c;
    public b d;
    public final CalendarConstraints e;

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    public u(t tVar, DateSelector dateSelector, CalendarConstraints calendarConstraints) {
        this.f2989a = tVar;
        this.f2990b = dateSelector;
        this.e = calendarConstraints;
        this.c = dateSelector.getSelectedDays();
    }

    @Override // android.widget.Adapter
    @Nullable
    public Long getItem(int i) {
        t tVar = this.f2989a;
        if (i < tVar.c() || i > a()) {
            return null;
        }
        return Long.valueOf(tVar.d((i - tVar.c()) + 1));
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.f2989a.d;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        t tVar = this.f2989a;
        return tVar.e + tVar.c();
    }

    @Override // android.widget.Adapter
    @NonNull
    public TextView getView(int i, @Nullable View view, @NonNull ViewGroup viewGroup) {
        CharSequence charSequence;
        CharSequence charSequence2;
        Context context = viewGroup.getContext();
        if (this.d == null) {
            this.d = new b(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        t tVar = this.f2989a;
        int iC = i - tVar.c();
        if (iC < 0 || iC >= tVar.e) {
            textView.setVisibility(8);
            textView.setEnabled(false);
        } else {
            int i2 = iC + 1;
            textView.setTag(tVar);
            textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(i2)));
            long jD = tVar.d(i2);
            if (tVar.c == new t(y.g()).c) {
                Locale locale = Locale.getDefault();
                if (Build.VERSION.SDK_INT < 24) {
                    charSequence2 = y.d(0, locale).format(new Date(jD));
                } else {
                    DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("MMMEd", locale);
                    instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
                    charSequence2 = instanceForSkeleton.format(new Date(jD));
                }
                textView.setContentDescription(charSequence2);
            } else {
                Locale locale2 = Locale.getDefault();
                if (Build.VERSION.SDK_INT < 24) {
                    charSequence = y.d(0, locale2).format(new Date(jD));
                } else {
                    DateFormat instanceForSkeleton2 = DateFormat.getInstanceForSkeleton("yMMMEd", locale2);
                    instanceForSkeleton2.setTimeZone(TimeZone.getTimeZone("UTC"));
                    charSequence = instanceForSkeleton2.format(new Date(jD));
                }
                textView.setContentDescription(charSequence);
            }
            textView.setVisibility(0);
            textView.setEnabled(true);
        }
        Long item = getItem(i);
        if (item == null) {
            return textView;
        }
        b(textView, item.longValue());
        return textView;
    }

    public void updateSelectedStates(p pVar) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            c(pVar, ((Long) it.next()).longValue());
        }
        DateSelector dateSelector = this.f2990b;
        if (dateSelector != null) {
            Iterator<Long> it2 = dateSelector.getSelectedDays().iterator();
            while (it2.hasNext()) {
                c(pVar, it2.next().longValue());
            }
            this.c = dateSelector.getSelectedDays();
        }
    }

    public final void c(p pVar, long j) {
        t tVarB = t.b(j);
        t tVar = this.f2989a;
        if (tVarB.equals(tVar)) {
            Calendar calendarC = y.c(tVar.f2986a);
            calendarC.setTimeInMillis(j);
            b((TextView) pVar.getChildAt((pVar.getAdapter().f2989a.c() + (calendarC.get(5) - 1)) - pVar.getFirstVisiblePosition()), j);
        }
    }

    public final void b(TextView textView, long j) {
        a aVar;
        if (textView == null) {
            return;
        }
        if (this.e.getDateValidator().isValid(j)) {
            textView.setEnabled(true);
            Iterator<Long> it = this.f2990b.getSelectedDays().iterator();
            while (true) {
                if (it.hasNext()) {
                    if (y.a(j) == y.a(it.next().longValue())) {
                        aVar = this.d.f2961b;
                        break;
                    }
                } else if (y.g().getTimeInMillis() == j) {
                    aVar = this.d.c;
                } else {
                    aVar = this.d.f2960a;
                }
            }
        } else {
            textView.setEnabled(false);
            aVar = this.d.f2962g;
        }
        aVar.b(textView);
    }

    public final int a() {
        t tVar = this.f2989a;
        return (tVar.c() + tVar.e) - 1;
    }
}
