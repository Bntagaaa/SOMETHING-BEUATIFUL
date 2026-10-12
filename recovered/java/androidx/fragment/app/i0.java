package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class i0 implements Parcelable {
    public static final Parcelable.Creator<i0> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final String f1701a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1702b;
    public final boolean c;
    public final int d;
    public final int e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f1703g;
    public final boolean h;
    public final boolean i;
    public final Bundle j;
    public final boolean k;
    public final int l;
    public Bundle m;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public i0(Fragment fragment) {
        this.f1701a = fragment.getClass().getName();
        this.f1702b = fragment.f;
        this.c = fragment.n;
        this.d = fragment.w;
        this.e = fragment.x;
        this.f = fragment.y;
        this.f1703g = fragment.B;
        this.h = fragment.m;
        this.i = fragment.A;
        this.j = fragment.f1606g;
        this.k = fragment.z;
        this.l = fragment.R.ordinal();
    }

    public i0(Parcel parcel) {
        this.f1701a = parcel.readString();
        this.f1702b = parcel.readString();
        this.c = parcel.readInt() != 0;
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.f1703g = parcel.readInt() != 0;
        this.h = parcel.readInt() != 0;
        this.i = parcel.readInt() != 0;
        this.j = parcel.readBundle();
        this.k = parcel.readInt() != 0;
        this.m = parcel.readBundle();
        this.l = parcel.readInt();
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f1701a);
        sb.append(" (");
        sb.append(this.f1702b);
        sb.append(")}:");
        if (this.c) {
            sb.append(" fromLayout");
        }
        int i = this.e;
        if (i != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i));
        }
        String str = this.f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.f1703g) {
            sb.append(" retainInstance");
        }
        if (this.h) {
            sb.append(" removing");
        }
        if (this.i) {
            sb.append(" detached");
        }
        if (this.k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1701a);
        parcel.writeString(this.f1702b);
        parcel.writeInt(this.c ? 1 : 0);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.f1703g ? 1 : 0);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeInt(this.i ? 1 : 0);
        parcel.writeBundle(this.j);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeBundle(this.m);
        parcel.writeInt(this.l);
    }

    public class a implements Parcelable.Creator<i0> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public i0 createFromParcel(Parcel parcel) {
            return new i0(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public i0[] newArray(int i) {
            return new i0[i];
        }
    }
}
