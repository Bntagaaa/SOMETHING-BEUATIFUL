package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.IntRange;
import java.util.Arrays;

/* loaded from: classes.dex */
class i implements Parcelable {
    public static final Parcelable.Creator<i> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final f f3368a;

    /* renamed from: b, reason: collision with root package name */
    public final f f3369b;
    public final int c;
    public int d;
    public int e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f3370g;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public i() {
        this(0);
    }

    public i(int i) {
        this(0, 0, 10, i);
    }

    public i(int i, int i2, int i3, int i4) {
        this.d = i;
        this.e = i2;
        this.f = i3;
        this.c = i4;
        this.f3370g = i >= 12 ? 1 : 0;
        this.f3368a = new f(59);
        this.f3369b = new f(i4 == 1 ? 24 : 12);
    }

    public i(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }

    public void setHourOfDay(int i) {
        this.f3370g = i >= 12 ? 1 : 0;
        this.d = i;
    }

    public void setHour(int i) {
        if (this.c == 1) {
            this.d = i;
        } else {
            this.d = (i % 12) + (this.f3370g != 1 ? 0 : 12);
        }
    }

    public void setMinute(@IntRange(from = 0, to = 59) int i) {
        this.e = i % 60;
    }

    public int getHourForDisplay() {
        if (this.c == 1) {
            return this.d % 24;
        }
        int i = this.d;
        if (i % 12 == 0) {
            return 12;
        }
        return this.f3370g == 1 ? i - 12 : i;
    }

    public f getMinuteInputValidator() {
        return this.f3368a;
    }

    public f getHourInputValidator() {
        return this.f3369b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.c), Integer.valueOf(this.d), Integer.valueOf(this.e), Integer.valueOf(this.f)});
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.d == iVar.d && this.e == iVar.e && this.c == iVar.c && this.f == iVar.f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.c);
    }

    public class a implements Parcelable.Creator<i> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public i createFromParcel(Parcel parcel) {
            return new i(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public i[] newArray(int i) {
            return new i[i];
        }
    }

    public void setPeriod(int i) {
        if (i != this.f3370g) {
            this.f3370g = i;
            int i2 = this.d;
            if (i2 < 12 && i == 1) {
                this.d = i2 + 12;
            } else {
                if (i2 < 12 || i != 0) {
                    return;
                }
                this.d = i2 - 12;
            }
        }
    }

    public static String formatText(Resources resources, CharSequence charSequence) {
        return formatText(resources, charSequence, "%02d");
    }

    public static String formatText(Resources resources, CharSequence charSequence, String str) {
        return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }
}
