package com.google.common.io;

import java.io.IOException;
import java.io.Reader;

/* loaded from: classes.dex */
final class b extends Reader {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Reader f4672a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f4673b;

    public b(Reader reader, String str) {
        this.f4672a = reader;
        this.f4673b = str;
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        int i;
        do {
            i = this.f4672a.read();
            if (i == -1) {
                break;
            }
        } while (this.f4673b.indexOf((char) i) >= 0);
        return i;
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4672a.close();
    }
}
