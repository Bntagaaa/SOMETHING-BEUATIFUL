package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class a extends VersionedParcel {

    /* renamed from: a, reason: collision with root package name */
    public final SparseIntArray f2348a;

    /* renamed from: b, reason: collision with root package name */
    public final Parcel f2349b;
    public final int c;
    public final int d;
    public final String e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f2350g;
    public int h;

    public a(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new ArrayMap(), new ArrayMap(), new ArrayMap());
    }

    public a(Parcel parcel, int i, int i2, String str, ArrayMap arrayMap, ArrayMap arrayMap2, ArrayMap arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.f2348a = new SparseIntArray();
        this.f = -1;
        this.h = -1;
        this.f2349b = parcel;
        this.c = i;
        this.d = i2;
        this.f2350g = i;
        this.e = str;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readField(int i) {
        while (this.f2350g < this.d) {
            int i2 = this.h;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            int i3 = this.f2350g;
            Parcel parcel = this.f2349b;
            parcel.setDataPosition(i3);
            int i4 = parcel.readInt();
            this.h = parcel.readInt();
            this.f2350g += i4;
        }
        return this.h == i;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setOutputField(int i) {
        closeField();
        this.f = i;
        this.f2348a.put(i, this.f2349b.dataPosition());
        writeInt(0);
        writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void closeField() {
        int i = this.f;
        if (i >= 0) {
            int i2 = this.f2348a.get(i);
            Parcel parcel = this.f2349b;
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(i2);
            parcel.writeInt(iDataPosition - i2);
            parcel.setDataPosition(iDataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public VersionedParcel createSubParcel() {
        Parcel parcel = this.f2349b;
        int iDataPosition = parcel.dataPosition();
        int i = this.f2350g;
        if (i == this.c) {
            i = this.d;
        }
        return new a(parcel, iDataPosition, i, _COROUTINE.a.m(new StringBuilder(), this.e, "  "), this.mReadCache, this.mWriteCache, this.mParcelizerCache);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr) {
        Parcel parcel = this.f2349b;
        if (bArr != null) {
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        } else {
            parcel.writeInt(-1);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr, int i, int i2) {
        Parcel parcel = this.f2349b;
        if (bArr != null) {
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr, i, i2);
        } else {
            parcel.writeInt(-1);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeInt(int i) {
        this.f2349b.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeLong(long j) {
        this.f2349b.writeLong(j);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeFloat(float f) {
        this.f2349b.writeFloat(f);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeDouble(double d) {
        this.f2349b.writeDouble(d);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeString(String str) {
        this.f2349b.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongBinder(IBinder iBinder) {
        this.f2349b.writeStrongBinder(iBinder);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeParcelable(Parcelable parcelable) {
        this.f2349b.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBoolean(boolean z) {
        this.f2349b.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongInterface(IInterface iInterface) {
        this.f2349b.writeStrongInterface(iInterface);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBundle(Bundle bundle) {
        this.f2349b.writeBundle(bundle);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeCharSequence(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f2349b, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public CharSequence readCharSequence() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f2349b);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int readInt() {
        return this.f2349b.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public long readLong() {
        return this.f2349b.readLong();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public float readFloat() {
        return this.f2349b.readFloat();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public double readDouble() {
        return this.f2349b.readDouble();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String readString() {
        return this.f2349b.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public IBinder readStrongBinder() {
        return this.f2349b.readStrongBinder();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] readByteArray() {
        Parcel parcel = this.f2349b;
        int i = parcel.readInt();
        if (i < 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        parcel.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T readParcelable() {
        return (T) this.f2349b.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public Bundle readBundle() {
        return this.f2349b.readBundle(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readBoolean() {
        return this.f2349b.readInt() != 0;
    }
}
