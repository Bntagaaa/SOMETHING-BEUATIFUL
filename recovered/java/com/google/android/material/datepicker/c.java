package com.google.android.material.datepicker;

import android.content.Context;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f2963a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f2964b;

    @Override // java.lang.Runnable
    public void run() {
        e eVar = this.f2964b;
        TextInputLayout textInputLayout = eVar.f2967a;
        SimpleDateFormat simpleDateFormat = eVar.f2968b;
        Context context = textInputLayout.getContext();
        textInputLayout.setError(context.getString(R.string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_use), this.f2963a) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_example), simpleDateFormat.format(new Date(y.g().getTimeInMillis()))));
        eVar.a();
    }

    public c(e eVar, String str) {
        this.f2964b = eVar;
        this.f2963a = str;
    }
}
