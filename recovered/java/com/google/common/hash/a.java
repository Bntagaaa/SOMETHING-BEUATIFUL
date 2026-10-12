package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@CanIgnoreReturnValue
/* loaded from: classes.dex */
abstract class a extends e {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f4565a = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    public abstract void update(byte b2);

    public void update(byte[] bArr) {
        update(bArr, 0, bArr.length);
    }

    public void update(byte[] bArr, int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            update(bArr[i3]);
        }
    }

    public void update(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            update(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.remaining());
            byteBuffer.position(byteBuffer.limit());
            return;
        }
        for (int iRemaining = byteBuffer.remaining(); iRemaining > 0; iRemaining--) {
            update(byteBuffer.get());
        }
    }

    public final void a(int i) {
        ByteBuffer byteBuffer = this.f4565a;
        try {
            update(byteBuffer.array(), 0, i);
        } finally {
            byteBuffer.clear();
        }
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putByte(byte b2) {
        update(b2);
        return this;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public Hasher putBytes(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        update(bArr);
        return this;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public Hasher putBytes(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        update(bArr, i, i2);
        return this;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public Hasher putBytes(ByteBuffer byteBuffer) {
        update(byteBuffer);
        return this;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public Hasher putShort(short s) {
        this.f4565a.putShort(s);
        a(2);
        return this;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public Hasher putInt(int i) {
        this.f4565a.putInt(i);
        a(4);
        return this;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public Hasher putLong(long j) {
        this.f4565a.putLong(j);
        a(8);
        return this;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public Hasher putChar(char c) {
        this.f4565a.putChar(c);
        a(2);
        return this;
    }
}
