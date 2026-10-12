package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.core.util.ObjectsCompat;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final t f2925a;

    /* renamed from: b, reason: collision with root package name */
    public final t f2926b;
    public final DateValidator c;
    public t d;
    public final int e;
    public final int f;

    public interface DateValidator extends Parcelable {
        boolean isValid(long j);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CalendarConstraints(t tVar, t tVar2, DateValidator dateValidator, t tVar3) {
        this.f2925a = tVar;
        this.f2926b = tVar2;
        this.d = tVar3;
        this.c = dateValidator;
        if (tVar3 != null && tVar.compareTo(tVar3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (tVar3 != null && tVar3.compareTo(tVar2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f = tVar.f(tVar2) + 1;
        this.e = (tVar2.c - tVar.c) + 1;
    }

    public DateValidator getDateValidator() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        return this.f2925a.equals(calendarConstraints.f2925a) && this.f2926b.equals(calendarConstraints.f2926b) && ObjectsCompat.equals(this.d, calendarConstraints.d) && this.c.equals(calendarConstraints.c);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2925a, this.f2926b, this.d, this.c});
    }

    public class a implements Parcelable.Creator<CalendarConstraints> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public CalendarConstraints createFromParcel(@NonNull Parcel parcel) {
            return new CalendarConstraints((t) parcel.readParcelable(t.class.getClassLoader()), (t) parcel.readParcelable(t.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (t) parcel.readParcelable(t.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public CalendarConstraints[] newArray(int i) {
            return new CalendarConstraints[i];
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f2925a, 0);
        parcel.writeParcelable(this.f2926b, 0);
        parcel.writeParcelable(this.d, 0);
        parcel.writeParcelable(this.c, 0);
    }

    public static final class Builder {
        public static final long e = y.a(t.a(1900, 0).f);
        public static final long f = y.a(t.a(2100, 11).f);
        public Long c;

        /* renamed from: a, reason: collision with root package name */
        public long f2927a = e;

        /* renamed from: b, reason: collision with root package name */
        public long f2928b = f;
        public DateValidator d = DateValidatorPointForward.from(Long.MIN_VALUE);

        @NonNull
        public Builder setStart(long j) {
            this.f2927a = j;
            return this;
        }

        @NonNull
        public Builder setEnd(long j) {
            this.f2928b = j;
            return this;
        }

        @NonNull
        public Builder setOpenAt(long j) {
            this.c = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setValidator(@NonNull DateValidator dateValidator) {
            this.d = dateValidator;
            return this;
        }

        @NonNull
        public CalendarConstraints build() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.d);
            t tVarB = t.b(this.f2927a);
            t tVarB2 = t.b(this.f2928b);
            DateValidator dateValidator = (DateValidator) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY");
            Long l = this.c;
            return new CalendarConstraints(tVarB, tVarB2, dateValidator, l == null ? null : t.b(l.longValue()));
        }
    }
}
