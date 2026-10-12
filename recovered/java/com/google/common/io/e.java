package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;

@GwtIncompatible
/* loaded from: classes.dex */
final class e extends Reader {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f4678a;

    /* renamed from: b, reason: collision with root package name */
    public int f4679b;
    public int c;

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    public e(CharSequence charSequence) {
        this.f4678a = (CharSequence) Preconditions.checkNotNull(charSequence);
    }

    public final void a() throws IOException {
        if (this.f4678a == null) {
            throw new IOException("reader closed");
        }
    }

    @Override // java.io.Reader, java.lang.Readable
    public synchronized int read(CharBuffer charBuffer) throws IOException {
        Preconditions.checkNotNull(charBuffer);
        a();
        if (!(this.f4678a.length() - this.f4679b > 0)) {
            return -1;
        }
        int iMin = Math.min(charBuffer.remaining(), this.f4678a.length() - this.f4679b);
        for (int i = 0; i < iMin; i++) {
            CharSequence charSequence = this.f4678a;
            int i2 = this.f4679b;
            this.f4679b = i2 + 1;
            charBuffer.put(charSequence.charAt(i2));
        }
        return iMin;
    }

    @Override // java.io.Reader
    public synchronized int read() throws IOException {
        char cCharAt;
        a();
        int length = this.f4678a.length();
        int i = this.f4679b;
        if (length - i > 0) {
            CharSequence charSequence = this.f4678a;
            this.f4679b = i + 1;
            cCharAt = charSequence.charAt(i);
        } else {
            cCharAt = 65535;
        }
        return cCharAt;
    }

    @Override // java.io.Reader
    public synchronized int read(char[] cArr, int i, int i2) throws IOException {
        Preconditions.checkPositionIndexes(i, i + i2, cArr.length);
        a();
        if (!(this.f4678a.length() - this.f4679b > 0)) {
            return -1;
        }
        int iMin = Math.min(i2, this.f4678a.length() - this.f4679b);
        for (int i3 = 0; i3 < iMin; i3++) {
            CharSequence charSequence = this.f4678a;
            int i4 = this.f4679b;
            this.f4679b = i4 + 1;
            cArr[i + i3] = charSequence.charAt(i4);
        }
        return iMin;
    }

    @Override // java.io.Reader
    public synchronized long skip(long j) throws IOException {
        int iMin;
        Preconditions.checkArgument(j >= 0, "n (%s) may not be negative", j);
        a();
        iMin = (int) Math.min(this.f4678a.length() - this.f4679b, j);
        this.f4679b += iMin;
        return iMin;
    }

    @Override // java.io.Reader
    public synchronized boolean ready() throws IOException {
        a();
        return true;
    }

    @Override // java.io.Reader
    public synchronized void mark(int i) throws IOException {
        Preconditions.checkArgument(i >= 0, "readAheadLimit (%s) may not be negative", i);
        a();
        this.c = this.f4679b;
    }

    @Override // java.io.Reader
    public synchronized void reset() throws IOException {
        a();
        this.f4679b = this.c;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f4678a = null;
    }
}
