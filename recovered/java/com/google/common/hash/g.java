package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@CanIgnoreReturnValue
/* loaded from: classes.dex */
abstract class g extends e {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f4571a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4572b;
    public final int c;

    public abstract HashCode makeHash();

    public abstract void process(ByteBuffer byteBuffer);

    public g(int i) {
        this(i, i);
    }

    public g(int i, int i2) {
        Preconditions.checkArgument(i2 % i == 0);
        this.f4571a = ByteBuffer.allocate(i2 + 7).order(ByteOrder.LITTLE_ENDIAN);
        this.f4572b = i2;
        this.c = i;
    }

    public void processRemaining(ByteBuffer byteBuffer) {
        byteBuffer.position(byteBuffer.limit());
        int i = this.c;
        byteBuffer.limit(i + 7);
        while (byteBuffer.position() < i) {
            byteBuffer.putLong(0L);
        }
        byteBuffer.limit(i);
        byteBuffer.flip();
        process(byteBuffer);
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public final Hasher putBytes(byte[] bArr, int i, int i2) {
        c(ByteBuffer.wrap(bArr, i, i2).order(ByteOrder.LITTLE_ENDIAN));
        return this;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public final Hasher putBytes(ByteBuffer byteBuffer) {
        ByteOrder byteOrderOrder = byteBuffer.order();
        try {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            c(byteBuffer);
            return this;
        } finally {
            byteBuffer.order(byteOrderOrder);
        }
    }

    public final void c(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        ByteBuffer byteBuffer2 = this.f4571a;
        if (iRemaining <= byteBuffer2.remaining()) {
            byteBuffer2.put(byteBuffer);
            b();
            return;
        }
        int iPosition = this.f4572b - byteBuffer2.position();
        for (int i = 0; i < iPosition; i++) {
            byteBuffer2.put(byteBuffer.get());
        }
        a();
        while (byteBuffer.remaining() >= this.c) {
            process(byteBuffer);
        }
        byteBuffer2.put(byteBuffer);
    }

    @Override // com.google.common.hash.PrimitiveSink
    public final Hasher putByte(byte b2) {
        this.f4571a.put(b2);
        b();
        return this;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public final Hasher putShort(short s) {
        this.f4571a.putShort(s);
        b();
        return this;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public final Hasher putChar(char c) {
        this.f4571a.putChar(c);
        b();
        return this;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public final Hasher putInt(int i) {
        this.f4571a.putInt(i);
        b();
        return this;
    }

    @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
    public final Hasher putLong(long j) {
        this.f4571a.putLong(j);
        b();
        return this;
    }

    @Override // com.google.common.hash.Hasher
    public final HashCode hash() {
        a();
        ByteBuffer byteBuffer = this.f4571a;
        byteBuffer.flip();
        if (byteBuffer.remaining() > 0) {
            processRemaining(byteBuffer);
            byteBuffer.position(byteBuffer.limit());
        }
        return makeHash();
    }

    public final void b() {
        if (this.f4571a.remaining() < 8) {
            a();
        }
    }

    public final void a() {
        ByteBuffer byteBuffer = this.f4571a;
        byteBuffer.flip();
        while (byteBuffer.remaining() >= this.c) {
            process(byteBuffer);
        }
        byteBuffer.compact();
    }
}
