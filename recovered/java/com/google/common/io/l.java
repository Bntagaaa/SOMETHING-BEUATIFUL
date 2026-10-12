package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;

@GwtIncompatible
/* loaded from: classes.dex */
final class l extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final Reader f4688a;

    /* renamed from: b, reason: collision with root package name */
    public final CharsetEncoder f4689b;
    public final byte[] c;
    public CharBuffer d;
    public ByteBuffer e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4690g;
    public boolean h;

    public l(Reader reader, Charset charset) {
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        CharsetEncoder charsetEncoderOnUnmappableCharacter = charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
        this.c = new byte[1];
        this.f4688a = (Reader) Preconditions.checkNotNull(reader);
        this.f4689b = (CharsetEncoder) Preconditions.checkNotNull(charsetEncoderOnUnmappableCharacter);
        Preconditions.checkArgument(true, "bufferSize must be positive: %s", 8192);
        charsetEncoderOnUnmappableCharacter.reset();
        CharBuffer charBufferAllocate = CharBuffer.allocate(8192);
        this.d = charBufferAllocate;
        charBufferAllocate.flip();
        this.e = ByteBuffer.allocate(8192);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4688a.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = this.c;
        if (read(bArr) == 1) {
            return UnsignedBytes.toInt(bArr[0]);
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (r2 <= 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
    
        return -1;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(byte[] r10, int r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.l.read(byte[], int, int):int");
    }

    public final void a(boolean z) {
        this.e.flip();
        if (z && this.e.remaining() == 0) {
            this.e = ByteBuffer.allocate(this.e.capacity() * 2);
        } else {
            this.f4690g = true;
        }
    }
}
