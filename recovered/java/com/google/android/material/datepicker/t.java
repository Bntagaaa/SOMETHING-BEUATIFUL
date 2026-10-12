package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* loaded from: classes.dex */
final class t implements Comparable<t>, Parcelable {
    public static final Parcelable.Creator<t> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final Calendar f2986a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2987b;
    public final int c;
    public final int d;
    public final int e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public String f2988g;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public t(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarC = y.c(calendar);
        this.f2986a = calendarC;
        this.f2987b = calendarC.get(2);
        this.c = calendarC.get(1);
        this.d = calendarC.getMaximum(7);
        this.e = calendarC.getActualMaximum(5);
        this.f = calendarC.getTimeInMillis();
    }

    public static t a(int i, int i2) {
        Calendar calendarH = y.h(null);
        calendarH.set(1, i);
        calendarH.set(2, i2);
        return new t(calendarH);
    }

    public static t b(long j) {
        Calendar calendarH = y.h(null);
        calendarH.setTimeInMillis(j);
        return new t(calendarH);
    }

    public final int c() {
        Calendar calendar = this.f2986a;
        int firstDayOfWeek = calendar.get(7) - calendar.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.d : firstDayOfWeek;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.f2987b == tVar.f2987b && this.c == tVar.c;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2987b), Integer.valueOf(this.c)});
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull t tVar) {
        return this.f2986a.compareTo(tVar.f2986a);
    }

    public final int f(t tVar) {
        if (this.f2986a instanceof GregorianCalendar) {
            return (tVar.f2987b - this.f2987b) + ((tVar.c - this.c) * 12);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    public final long d(int i) {
        Calendar calendarC = y.c(this.f2986a);
        calendarC.set(5, i);
        return calendarC.getTimeInMillis();
    }

    public final String e() {
        if (this.f2988g == null) {
            this.f2988g = DateUtils.formatDateTime(null, this.f2986a.getTimeInMillis(), 8228);
        }
        return this.f2988g;
    }

    public class a implements Parcelable.Creator<t> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public t createFromParcel(@NonNull Parcel parcel) {
            return t.a(parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public t[] newArray(int i) {
            return new t[i];
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(this.c);
        parcel.writeInt(this.f2987b);
    }
}
