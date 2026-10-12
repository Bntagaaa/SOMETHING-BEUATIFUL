package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;

@Immutable
/* loaded from: classes.dex */
abstract class f extends d {
    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public abstract HashCode hashBytes(byte[] bArr, int i, int i2);

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return newHasher(32);
    }

    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public Hasher newHasher(int i) {
        Preconditions.checkArgument(i >= 0);
        return new a(i);
    }

    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public HashCode hashInt(int i) {
        return hashBytes(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i).array());
    }

    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public HashCode hashLong(long j) {
        return hashBytes(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).array());
    }

    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public HashCode hashUnencodedChars(CharSequence charSequence) {
        int length = charSequence.length();
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(length * 2).order(ByteOrder.LITTLE_ENDIAN);
        for (int i = 0; i < length; i++) {
            byteBufferOrder.putChar(charSequence.charAt(i));
        }
        return hashBytes(byteBufferOrder.array());
    }

    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public HashCode hashString(CharSequence charSequence, Charset charset) {
        return hashBytes(charSequence.toString().getBytes(charset));
    }

    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public HashCode hashBytes(ByteBuffer byteBuffer) {
        return newHasher(byteBuffer.remaining()).putBytes(byteBuffer).hash();
    }

    public final class a extends e {

        /* renamed from: a, reason: collision with root package name */
        public final b f4569a;

        public a(int i) {
            this.f4569a = new b(i);
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putByte(byte b2) throws IOException {
            this.f4569a.write(b2);
            return this;
        }

        @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(byte[] bArr, int i, int i2) throws IOException {
            this.f4569a.write(bArr, i, i2);
            return this;
        }

        @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(ByteBuffer byteBuffer) {
            this.f4569a.c(byteBuffer);
            return this;
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            b bVar = this.f4569a;
            return f.this.hashBytes(bVar.a(), 0, bVar.b());
        }
    }

    public static final class b extends ByteArrayOutputStream {
        public final void c(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            int i = ((ByteArrayOutputStream) this).count;
            int i2 = i + iRemaining;
            byte[] bArr = ((ByteArrayOutputStream) this).buf;
            if (i2 > bArr.length) {
                ((ByteArrayOutputStream) this).buf = Arrays.copyOf(bArr, i + iRemaining);
            }
            byteBuffer.get(((ByteArrayOutputStream) this).buf, ((ByteArrayOutputStream) this).count, iRemaining);
            ((ByteArrayOutputStream) this).count += iRemaining;
        }

        public final byte[] a() {
            return ((ByteArrayOutputStream) this).buf;
        }

        public final int b() {
            return ((ByteArrayOutputStream) this).count;
        }
    }
}
