package com.google.android.material.datepicker;

import android.icu.text.DateFormat;
import android.icu.util.TimeZone;
import android.os.Build;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
class f {
    private f() {
    }

    public static String c(long j, Locale locale) {
        if (Build.VERSION.SDK_INT < 24) {
            return y.d(2, locale).format(new Date(j));
        }
        AtomicReference atomicReference = y.f2991a;
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMd", locale);
        instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
        return instanceForSkeleton.format(new Date(j));
    }

    public static String b(long j, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            AtomicReference atomicReference = y.f2991a;
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("MMMd", locale);
            instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
            return instanceForSkeleton.format(new Date(j));
        }
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) y.d(2, locale);
        String pattern = simpleDateFormat.toPattern();
        int iB = y.b(1, 0, pattern, "yY");
        if (iB < pattern.length()) {
            String str = "EMd";
            int iB2 = y.b(1, iB, pattern, "EMd");
            if (iB2 < pattern.length()) {
                str = "EMd,";
            }
            pattern = pattern.replace(pattern.substring(y.b(-1, iB, pattern, str) + 1, iB2), " ").trim();
        }
        simpleDateFormat.applyPattern(pattern);
        return simpleDateFormat.format(new Date(j));
    }

    public static String a(long j) {
        Calendar calendarG = y.g();
        Calendar calendarH = y.h(null);
        calendarH.setTimeInMillis(j);
        if (calendarG.get(1) != calendarH.get(1)) {
            return c(j, Locale.getDefault());
        }
        return b(j, Locale.getDefault());
    }
}
