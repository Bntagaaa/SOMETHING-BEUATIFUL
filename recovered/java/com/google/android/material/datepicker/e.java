package com.google.android.material.datepicker;

import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.R;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
abstract class e extends TextWatcherAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f2967a;

    /* renamed from: b, reason: collision with root package name */
    public final SimpleDateFormat f2968b;
    public final CalendarConstraints c;
    public final String d;
    public final Runnable e;
    public Runnable f;

    public void a() {
    }

    public abstract void b(Long l);

    public e(String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f2968b = simpleDateFormat;
        this.f2967a = textInputLayout;
        this.c = calendarConstraints;
        this.d = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
        this.e = new c(this, str);
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void onTextChanged(@NonNull CharSequence charSequence, int i, int i2, int i3) throws ParseException {
        CalendarConstraints calendarConstraints = this.c;
        Runnable runnable = this.e;
        TextInputLayout textInputLayout = this.f2967a;
        textInputLayout.removeCallbacks(runnable);
        textInputLayout.removeCallbacks(this.f);
        textInputLayout.setError(null);
        b(null);
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        try {
            Date date = this.f2968b.parse(charSequence.toString());
            textInputLayout.setError(null);
            long time = date.getTime();
            if (calendarConstraints.getDateValidator().isValid(time) && calendarConstraints.f2925a.d(1) <= time) {
                t tVar = calendarConstraints.f2926b;
                if (time <= tVar.d(tVar.e)) {
                    b(Long.valueOf(date.getTime()));
                    return;
                }
            }
            Runnable dVar = new d(this, time);
            this.f = dVar;
            runValidation(textInputLayout, dVar);
        } catch (ParseException unused) {
            runValidation(textInputLayout, runnable);
        }
    }

    public void runValidation(View view, Runnable runnable) {
        view.postDelayed(runnable, 1000L);
    }
}
