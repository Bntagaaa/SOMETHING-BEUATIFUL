package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public class ByteBufferReadWriteBuf implements b {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f1535a;

    public ByteBufferReadWriteBuf(ByteBuffer byteBuffer) {
        this.f1535a = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    public boolean getBoolean(int i) {
        return get(i) != 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public byte get(int i) {
        return this.f1535a.get(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public short getShort(int i) {
        return this.f1535a.getShort(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public int getInt(int i) {
        return this.f1535a.getInt(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public long getLong(int i) {
        return this.f1535a.getLong(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public float getFloat(int i) {
        return this.f1535a.getFloat(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public double getDouble(int i) {
        return this.f1535a.getDouble(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public String getString(int i, int i2) {
        return Utf8Safe.decodeUtf8Buffer(this.f1535a, i, i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public byte[] data() {
        return this.f1535a.array();
    }

    public void putBoolean(boolean z) {
        this.f1535a.put(z ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void put(byte[] bArr, int i, int i2) {
        this.f1535a.put(bArr, i, i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void put(byte b2) {
        this.f1535a.put(b2);
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void putShort(short s) {
        this.f1535a.putShort(s);
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void putInt(int i) {
        this.f1535a.putInt(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void putLong(long j) {
        this.f1535a.putLong(j);
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void putFloat(float f) {
        this.f1535a.putFloat(f);
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public void putDouble(double d) {
        this.f1535a.putDouble(d);
    }

    public void setBoolean(int i, boolean z) {
        set(i, z ? (byte) 1 : (byte) 0);
    }

    public void set(int i, byte b2) {
        requestCapacity(i + 1);
        this.f1535a.put(i, b2);
    }

    public void set(int i, byte[] bArr, int i2, int i3) {
        requestCapacity((i3 - i2) + i);
        ByteBuffer byteBuffer = this.f1535a;
        int iPosition = byteBuffer.position();
        byteBuffer.position(i);
        byteBuffer.put(bArr, i2, i3);
        byteBuffer.position(iPosition);
    }

    public void setShort(int i, short s) {
        requestCapacity(i + 2);
        this.f1535a.putShort(i, s);
    }

    public void setInt(int i, int i2) {
        requestCapacity(i + 4);
        this.f1535a.putInt(i, i2);
    }

    public void setLong(int i, long j) {
        requestCapacity(i + 8);
        this.f1535a.putLong(i, j);
    }

    public void setFloat(int i, float f) {
        requestCapacity(i + 4);
        this.f1535a.putFloat(i, f);
    }

    public void setDouble(int i, double d) {
        requestCapacity(i + 8);
        this.f1535a.putDouble(i, d);
    }

    @Override // androidx.emoji2.text.flatbuffer.b
    public int writePosition() {
        return this.f1535a.position();
    }

    @Override // androidx.emoji2.text.flatbuffer.a
    public int limit() {
        return this.f1535a.limit();
    }

    public boolean requestCapacity(int i) {
        return i <= this.f1535a.limit();
    }
}
