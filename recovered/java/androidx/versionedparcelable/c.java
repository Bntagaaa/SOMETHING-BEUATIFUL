package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.core.internal.view.SupportMenu;
import androidx.versionedparcelable.VersionedParcel;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.Set;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class c extends VersionedParcel {
    public static final Charset j = Charset.forName("UTF-16");

    /* renamed from: a, reason: collision with root package name */
    public final DataInputStream f2352a;

    /* renamed from: b, reason: collision with root package name */
    public final DataOutputStream f2353b;
    public final DataInputStream c;
    public DataOutputStream d;
    public a e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f2354g;
    public int h;
    public int i;

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean isStream() {
        return true;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public CharSequence readCharSequence() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T readParcelable() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public IBinder readStrongBinder() {
        return null;
    }

    public c(InputStream inputStream, OutputStream outputStream) {
        this(inputStream, outputStream, new ArrayMap(), new ArrayMap(), new ArrayMap());
    }

    public c(InputStream inputStream, OutputStream outputStream, ArrayMap arrayMap, ArrayMap arrayMap2, ArrayMap arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.f2354g = 0;
        this.h = -1;
        this.i = -1;
        DataInputStream dataInputStream = inputStream != null ? new DataInputStream(new b(this, inputStream)) : null;
        this.f2352a = dataInputStream;
        DataOutputStream dataOutputStream = outputStream != null ? new DataOutputStream(outputStream) : null;
        this.f2353b = dataOutputStream;
        this.c = dataInputStream;
        this.d = dataOutputStream;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setSerializationFlags(boolean z, boolean z2) {
        if (!z) {
            throw new RuntimeException("Serialization of this object is not allowed");
        }
        this.f = z2;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void closeField() throws IOException {
        a aVar = this.e;
        if (aVar != null) {
            try {
                if (aVar.f2355a.size() != 0) {
                    a aVar2 = this.e;
                    aVar2.f2356b.flush();
                    ByteArrayOutputStream byteArrayOutputStream = aVar2.f2355a;
                    int size = byteArrayOutputStream.size();
                    int i = aVar2.c << 16;
                    int i2 = size >= 65535 ? SupportMenu.USER_MASK : size;
                    DataOutputStream dataOutputStream = aVar2.d;
                    dataOutputStream.writeInt(i | i2);
                    if (size >= 65535) {
                        dataOutputStream.writeInt(size);
                    }
                    byteArrayOutputStream.writeTo(dataOutputStream);
                }
                this.e = null;
            } catch (IOException e) {
                throw new VersionedParcel.ParcelException(e);
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public VersionedParcel createSubParcel() {
        return new c(this.c, this.d, this.mReadCache, this.mWriteCache, this.mParcelizerCache);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readField(int i) throws IOException {
        while (true) {
            try {
                int i2 = this.h;
                if (i2 == i) {
                    return true;
                }
                if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                    return false;
                }
                int i3 = this.f2354g;
                int i4 = this.i;
                DataInputStream dataInputStream = this.f2352a;
                if (i3 < i4) {
                    dataInputStream.skip(i4 - i3);
                }
                this.i = -1;
                int i5 = dataInputStream.readInt();
                this.f2354g = 0;
                int i6 = i5 & SupportMenu.USER_MASK;
                if (i6 == 65535) {
                    i6 = dataInputStream.readInt();
                }
                this.h = (i5 >> 16) & SupportMenu.USER_MASK;
                this.i = i6;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setOutputField(int i) throws IOException {
        closeField();
        a aVar = new a(i, this.f2353b);
        this.e = aVar;
        this.d = aVar.f2356b;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr) throws IOException {
        try {
            if (bArr != null) {
                this.d.writeInt(bArr.length);
                this.d.write(bArr);
            } else {
                this.d.writeInt(-1);
            }
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr, int i, int i2) throws IOException {
        try {
            if (bArr != null) {
                this.d.writeInt(i2);
                this.d.write(bArr, i, i2);
            } else {
                this.d.writeInt(-1);
            }
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeCharSequence(CharSequence charSequence) {
        if (!this.f) {
            throw new RuntimeException("CharSequence cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeInt(int i) throws IOException {
        try {
            this.d.writeInt(i);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeLong(long j2) throws IOException {
        try {
            this.d.writeLong(j2);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeFloat(float f) throws IOException {
        try {
            this.d.writeFloat(f);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeDouble(double d) throws IOException {
        try {
            this.d.writeDouble(d);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeString(String str) throws IOException {
        try {
            if (str != null) {
                byte[] bytes = str.getBytes(j);
                this.d.writeInt(bytes.length);
                this.d.write(bytes);
                return;
            }
            this.d.writeInt(-1);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBoolean(boolean z) throws IOException {
        try {
            this.d.writeBoolean(z);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongBinder(IBinder iBinder) {
        if (!this.f) {
            throw new RuntimeException("Binders cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeParcelable(Parcelable parcelable) {
        if (!this.f) {
            throw new RuntimeException("Parcelables cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongInterface(IInterface iInterface) {
        if (!this.f) {
            throw new RuntimeException("Binders cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int readInt() {
        try {
            return this.c.readInt();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public long readLong() {
        try {
            return this.c.readLong();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public float readFloat() {
        try {
            return this.c.readFloat();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public double readDouble() {
        try {
            return this.c.readDouble();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String readString() throws IOException {
        DataInputStream dataInputStream = this.c;
        try {
            int i = dataInputStream.readInt();
            if (i <= 0) {
                return null;
            }
            byte[] bArr = new byte[i];
            dataInputStream.readFully(bArr);
            return new String(bArr, j);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] readByteArray() throws IOException {
        DataInputStream dataInputStream = this.c;
        try {
            int i = dataInputStream.readInt();
            if (i <= 0) {
                return null;
            }
            byte[] bArr = new byte[i];
            dataInputStream.readFully(bArr);
            return bArr;
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readBoolean() {
        try {
            return this.c.readBoolean();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBundle(Bundle bundle) throws IOException {
        try {
            if (bundle != null) {
                Set<String> setKeySet = bundle.keySet();
                this.d.writeInt(setKeySet.size());
                for (String str : setKeySet) {
                    writeString(str);
                    h(bundle.get(str));
                }
                return;
            }
            this.d.writeInt(-1);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public Bundle readBundle() throws IOException {
        int i = readInt();
        if (i < 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (int i2 = 0; i2 < i; i2++) {
            String string = readString();
            int i3 = readInt();
            switch (i3) {
                case 0:
                    bundle.putParcelable(string, null);
                    break;
                case 1:
                    bundle.putBundle(string, readBundle());
                    break;
                case 2:
                    bundle.putBundle(string, readBundle());
                    break;
                case 3:
                    bundle.putString(string, readString());
                    break;
                case 4:
                    bundle.putStringArray(string, (String[]) readArray(new String[0]));
                    break;
                case 5:
                    bundle.putBoolean(string, readBoolean());
                    break;
                case 6:
                    bundle.putBooleanArray(string, readBooleanArray());
                    break;
                case 7:
                    bundle.putDouble(string, readDouble());
                    break;
                case 8:
                    bundle.putDoubleArray(string, readDoubleArray());
                    break;
                case 9:
                    bundle.putInt(string, readInt());
                    break;
                case 10:
                    bundle.putIntArray(string, readIntArray());
                    break;
                case 11:
                    bundle.putLong(string, readLong());
                    break;
                case 12:
                    bundle.putLongArray(string, readLongArray());
                    break;
                case 13:
                    bundle.putFloat(string, readFloat());
                    break;
                case 14:
                    bundle.putFloatArray(string, readFloatArray());
                    break;
                default:
                    throw new RuntimeException(_COROUTINE.a.d(i3, "Unknown type "));
            }
        }
        return bundle;
    }

    public final void h(Object obj) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        if (obj == null) {
            writeInt(0);
            return;
        }
        if (obj instanceof Bundle) {
            writeInt(1);
            writeBundle((Bundle) obj);
            return;
        }
        if (obj instanceof String) {
            writeInt(3);
            writeString((String) obj);
            return;
        }
        if (obj instanceof String[]) {
            writeInt(4);
            writeArray((String[]) obj);
            return;
        }
        if (obj instanceof Boolean) {
            writeInt(5);
            writeBoolean(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof boolean[]) {
            writeInt(6);
            writeBooleanArray((boolean[]) obj);
            return;
        }
        if (obj instanceof Double) {
            writeInt(7);
            writeDouble(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof double[]) {
            writeInt(8);
            writeDoubleArray((double[]) obj);
            return;
        }
        if (obj instanceof Integer) {
            writeInt(9);
            writeInt(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof int[]) {
            writeInt(10);
            writeIntArray((int[]) obj);
            return;
        }
        if (obj instanceof Long) {
            writeInt(11);
            writeLong(((Long) obj).longValue());
            return;
        }
        if (obj instanceof long[]) {
            writeInt(12);
            writeLongArray((long[]) obj);
        } else if (obj instanceof Float) {
            writeInt(13);
            writeFloat(((Float) obj).floatValue());
        } else if (obj instanceof float[]) {
            writeInt(14);
            writeFloatArray((float[]) obj);
        } else {
            throw new IllegalArgumentException("Unsupported type " + obj.getClass());
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final ByteArrayOutputStream f2355a;

        /* renamed from: b, reason: collision with root package name */
        public final DataOutputStream f2356b;
        public final int c;
        public final DataOutputStream d;

        public a(int i, DataOutputStream dataOutputStream) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.f2355a = byteArrayOutputStream;
            this.f2356b = new DataOutputStream(byteArrayOutputStream);
            this.c = i;
            this.d = dataOutputStream;
        }
    }
}
