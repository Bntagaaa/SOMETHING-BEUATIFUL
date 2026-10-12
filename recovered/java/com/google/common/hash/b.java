package com.google.common.hash;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
class b implements Hasher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Hasher[] f4566a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f4567b;

    public b(c cVar, Hasher[] hasherArr) {
        this.f4567b = cVar;
        this.f4566a = hasherArr;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putByte(byte b2) {
        for (Hasher hasher : this.f4566a) {
            hasher.putByte(b2);
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putBytes(byte[] bArr) {
        for (Hasher hasher : this.f4566a) {
            hasher.putBytes(bArr);
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putBytes(byte[] bArr, int i, int i2) {
        for (Hasher hasher : this.f4566a) {
            hasher.putBytes(bArr, i, i2);
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putBytes(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        for (Hasher hasher : this.f4566a) {
            byteBuffer.position(iPosition);
            hasher.putBytes(byteBuffer);
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putShort(short s) {
        for (Hasher hasher : this.f4566a) {
            hasher.putShort(s);
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putInt(int i) {
        for (Hasher hasher : this.f4566a) {
            hasher.putInt(i);
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putLong(long j) {
        for (Hasher hasher : this.f4566a) {
            hasher.putLong(j);
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putFloat(float f) {
        for (Hasher hasher : this.f4566a) {
            hasher.putFloat(f);
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putDouble(double d) {
        for (Hasher hasher : this.f4566a) {
            hasher.putDouble(d);
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putBoolean(boolean z) {
        for (Hasher hasher : this.f4566a) {
            hasher.putBoolean(z);
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putChar(char c) {
        for (Hasher hasher : this.f4566a) {
            hasher.putChar(c);
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putUnencodedChars(CharSequence charSequence) {
        for (Hasher hasher : this.f4566a) {
            hasher.putUnencodedChars(charSequence);
        }
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putString(CharSequence charSequence, Charset charset) {
        for (Hasher hasher : this.f4566a) {
            hasher.putString(charSequence, charset);
        }
        return this;
    }

    @Override // com.google.common.hash.Hasher
    public <T> Hasher putObject(T t, Funnel<? super T> funnel) {
        for (Hasher hasher : this.f4566a) {
            hasher.putObject(t, funnel);
        }
        return this;
    }

    @Override // com.google.common.hash.Hasher
    public HashCode hash() {
        return this.f4567b.a(this.f4566a);
    }
}
