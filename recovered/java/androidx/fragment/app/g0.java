package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class g0 implements Parcelable {
    public static final Parcelable.Creator<g0> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f1693a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f1694b;
    public b[] c;
    public int d;
    public String e;
    public final ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f1695g;
    public ArrayList h;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public g0() {
        this.e = null;
        this.f = new ArrayList();
        this.f1695g = new ArrayList();
    }

    public g0(Parcel parcel) {
        this.e = null;
        this.f = new ArrayList();
        this.f1695g = new ArrayList();
        this.f1693a = parcel.createTypedArrayList(i0.CREATOR);
        this.f1694b = parcel.createStringArrayList();
        this.c = (b[]) parcel.createTypedArray(b.CREATOR);
        this.d = parcel.readInt();
        this.e = parcel.readString();
        this.f = parcel.createStringArrayList();
        this.f1695g = parcel.createTypedArrayList(Bundle.CREATOR);
        this.h = parcel.createTypedArrayList(FragmentManager.h.CREATOR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f1693a);
        parcel.writeStringList(this.f1694b);
        parcel.writeTypedArray(this.c, i);
        parcel.writeInt(this.d);
        parcel.writeString(this.e);
        parcel.writeStringList(this.f);
        parcel.writeTypedList(this.f1695g);
        parcel.writeTypedList(this.h);
    }

    public class a implements Parcelable.Creator<g0> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public g0 createFromParcel(Parcel parcel) {
            return new g0(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public g0[] newArray(int i) {
            return new g0[i];
        }
    }
}
