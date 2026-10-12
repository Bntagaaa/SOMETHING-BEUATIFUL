package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f1662a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1663b;
    public final int[] c;
    public final int[] d;
    public final int e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1664g;
    public final int h;
    public final CharSequence i;
    public final int j;
    public final CharSequence k;
    public final ArrayList l;
    public final ArrayList m;
    public final boolean n;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public b(androidx.fragment.app.a aVar) {
        int size = aVar.c.size();
        this.f1662a = new int[size * 5];
        if (!aVar.i) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f1663b = new ArrayList(size);
        this.c = new int[size];
        this.d = new int[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            FragmentTransaction.a aVar2 = (FragmentTransaction.a) aVar.c.get(i2);
            int i3 = i + 1;
            this.f1662a[i] = aVar2.f1654a;
            ArrayList arrayList = this.f1663b;
            Fragment fragment = aVar2.f1655b;
            arrayList.add(fragment != null ? fragment.f : null);
            int[] iArr = this.f1662a;
            iArr[i3] = aVar2.c;
            iArr[i + 2] = aVar2.d;
            int i4 = i + 4;
            iArr[i + 3] = aVar2.e;
            i += 5;
            iArr[i4] = aVar2.f;
            this.c[i2] = aVar2.f1656g.ordinal();
            this.d[i2] = aVar2.h.ordinal();
        }
        this.e = aVar.h;
        this.f = aVar.k;
        this.f1664g = aVar.v;
        this.h = aVar.l;
        this.i = aVar.m;
        this.j = aVar.n;
        this.k = aVar.o;
        this.l = aVar.p;
        this.m = aVar.q;
        this.n = aVar.r;
    }

    public b(Parcel parcel) {
        this.f1662a = parcel.createIntArray();
        this.f1663b = parcel.createStringArrayList();
        this.c = parcel.createIntArray();
        this.d = parcel.createIntArray();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.f1664g = parcel.readInt();
        this.h = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.i = (CharSequence) creator.createFromParcel(parcel);
        this.j = parcel.readInt();
        this.k = (CharSequence) creator.createFromParcel(parcel);
        this.l = parcel.createStringArrayList();
        this.m = parcel.createStringArrayList();
        this.n = parcel.readInt() != 0;
    }

    public androidx.fragment.app.a instantiate(FragmentManager fragmentManager) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(fragmentManager);
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f1662a;
            if (i < iArr.length) {
                FragmentTransaction.a aVar2 = new FragmentTransaction.a();
                int i3 = i + 1;
                aVar2.f1654a = iArr[i];
                if (FragmentManager.D(2)) {
                    Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i2 + " base fragment #" + iArr[i3]);
                }
                String str = (String) this.f1663b.get(i2);
                if (str != null) {
                    aVar2.f1655b = fragmentManager.c.b(str);
                } else {
                    aVar2.f1655b = null;
                }
                aVar2.f1656g = Lifecycle.State.values()[this.c[i2]];
                aVar2.h = Lifecycle.State.values()[this.d[i2]];
                int i4 = iArr[i3];
                aVar2.c = i4;
                int i5 = iArr[i + 2];
                aVar2.d = i5;
                int i6 = i + 4;
                int i7 = iArr[i + 3];
                aVar2.e = i7;
                i += 5;
                int i8 = iArr[i6];
                aVar2.f = i8;
                aVar.d = i4;
                aVar.e = i5;
                aVar.f = i7;
                aVar.f1653g = i8;
                aVar.a(aVar2);
                i2++;
            } else {
                aVar.h = this.e;
                aVar.k = this.f;
                aVar.v = this.f1664g;
                aVar.i = true;
                aVar.l = this.h;
                aVar.m = this.i;
                aVar.n = this.j;
                aVar.o = this.k;
                aVar.p = this.l;
                aVar.q = this.m;
                aVar.r = this.n;
                aVar.d(1);
                return aVar;
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f1662a);
        parcel.writeStringList(this.f1663b);
        parcel.writeIntArray(this.c);
        parcel.writeIntArray(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.f1664g);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeInt(this.j);
        TextUtils.writeToParcel(this.k, parcel, 0);
        parcel.writeStringList(this.l);
        parcel.writeStringList(this.m);
        parcel.writeInt(this.n ? 1 : 0);
    }

    public class a implements Parcelable.Creator<b> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public b[] newArray(int i) {
            return new b[i];
        }
    }
}
