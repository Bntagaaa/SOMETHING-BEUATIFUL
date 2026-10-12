package androidx.emoji2.text.flatbuffer;

import java.util.Arrays;

/* loaded from: classes.dex */
public class ArrayReadWriteBuf implements b {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f1531a;

    /* renamed from: b, reason: collision with root package name */
    public int f1532b;

    public ArrayReadWriteBuf() {
        this(10);
    }

    public ArrayReadWriteBuf(int i) {
        this(new byte[i]);
    }

    public ArrayReadWriteBuf(byte[] bArr) {
        this.f1531a = bArr;
        this.f1532b = 0;
    }

    public ArrayReadWriteBuf(byte[] bArr, int i) {
        this.f1531a = bArr;
        this.f1532b = i;
    }

    public boolean getBoolean(int i) {
        return this.f1531a[i] != 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public byte get(int i) {
        return this.f1531a[i];
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public short getShort(int i) {
        byte[] bArr = this.f1531a;
        return (short) ((bArr[i] & 255) | (bArr[i + 1] << 8));
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public int getInt(int i) {
        byte[] bArr = this.f1531a;
        return (bArr[i] & 255) | (bArr[i + 3] << 24) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 1] & 255) << 8);
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public long getLong(int i) {
        byte[] bArr = this.f1531a;
        return (bArr[i + 7] << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((255 & bArr[i + 6]) << 48);
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public float getFloat(int i) {
        return Float.intBitsToFloat(getInt(i));
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public double getDouble(int i) {
        return Double.longBitsToDouble(getLong(i));
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public String getString(int i, int i2) {
        return Utf8Safe.decodeUtf8Array(this.f1531a, i, i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public byte[] data() {
        return this.f1531a;
    }

    public void putBoolean(boolean z) {
        setBoolean(this.f1532b, z);
        this.f1532b++;
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void put(byte[] bArr, int i, int i2) {
        set(this.f1532b, bArr, i, i2);
        this.f1532b += i2;
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void put(byte b2) {
        set(this.f1532b, b2);
        this.f1532b++;
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void putShort(short s) {
        setShort(this.f1532b, s);
        this.f1532b += 2;
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void putInt(int i) {
        setInt(this.f1532b, i);
        this.f1532b += 4;
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void putLong(long j) {
        setLong(this.f1532b, j);
        this.f1532b += 8;
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void putFloat(float f) {
        setFloat(this.f1532b, f);
        this.f1532b += 4;
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void putDouble(double d) {
        setDouble(this.f1532b, d);
        this.f1532b += 8;
    }

    public void setBoolean(int i, boolean z) {
        set(i, z ? (byte) 1 : (byte) 0);
    }

    public void set(int i, byte b2) {
        requestCapacity(i + 1);
        this.f1531a[i] = b2;
    }

    public void set(int i, byte[] bArr, int i2, int i3) {
        requestCapacity((i3 - i2) + i);
        System.arraycopy(bArr, i2, this.f1531a, i, i3);
    }

    public void setShort(int i, short s) {
        requestCapacity(i + 2);
        byte[] bArr = this.f1531a;
        bArr[i] = (byte) (s & 255);
        bArr[i + 1] = (byte) ((s >> 8) & 255);
    }

    public void setInt(int i, int i2) {
        requestCapacity(i + 4);
        byte[] bArr = this.f1531a;
        bArr[i] = (byte) (i2 & 255);
        bArr[i + 1] = (byte) ((i2 >> 8) & 255);
        bArr[i + 2] = (byte) ((i2 >> 16) & 255);
        bArr[i + 3] = (byte) ((i2 >> 24) & 255);
    }

    public void setLong(int i, long j) {
        requestCapacity(i + 8);
        int i2 = (int) j;
        byte[] bArr = this.f1531a;
        bArr[i] = (byte) (i2 & 255);
        bArr[i + 1] = (byte) ((i2 >> 8) & 255);
        bArr[i + 2] = (byte) ((i2 >> 16) & 255);
        bArr[i + 3] = (byte) ((i2 >> 24) & 255);
        int i3 = (int) (j >> 32);
        bArr[i + 4] = (byte) (i3 & 255);
        bArr[i + 5] = (byte) ((i3 >> 8) & 255);
        bArr[i + 6] = (byte) ((i3 >> 16) & 255);
        bArr[i + 7] = (byte) ((i3 >> 24) & 255);
    }

    public void setFloat(int i, float f) {
        requestCapacity(i + 4);
        int iFloatToRawIntBits = Float.floatToRawIntBits(f);
        byte[] bArr = this.f1531a;
        bArr[i] = (byte) (iFloatToRawIntBits & 255);
        bArr[i + 1] = (byte) ((iFloatToRawIntBits >> 8) & 255);
        bArr[i + 2] = (byte) ((iFloatToRawIntBits >> 16) & 255);
        bArr[i + 3] = (byte) ((iFloatToRawIntBits >> 24) & 255);
    }

    public void setDouble(int i, double d) {
        requestCapacity(i + 8);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d);
        int i2 = (int) jDoubleToRawLongBits;
        byte[] bArr = this.f1531a;
        bArr[i] = (byte) (i2 & 255);
        bArr[i + 1] = (byte) ((i2 >> 8) & 255);
        bArr[i + 2] = (byte) ((i2 >> 16) & 255);
        bArr[i + 3] = (byte) ((i2 >> 24) & 255);
        int i3 = (int) (jDoubleToRawLongBits >> 32);
        bArr[i + 4] = (byte) (i3 & 255);
        bArr[i + 5] = (byte) ((i3 >> 8) & 255);
        bArr[i + 6] = (byte) ((i3 >> 16) & 255);
        bArr[i + 7] = (byte) ((i3 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public int limit() {
        return this.f1532b;
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public int writePosition() {
        return this.f1532b;
    }

    public boolean requestCapacity(int i) {
        byte[] bArr = this.f1531a;
        if (bArr.length > i) {
            return true;
        }
        int length = bArr.length;
        this.f1531a = Arrays.copyOf(bArr, length + (length >> 1));
        return true;
    }
}
