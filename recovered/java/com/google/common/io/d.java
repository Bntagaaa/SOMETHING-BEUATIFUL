package com.google.common.io;

import java.io.IOException;
import java.io.Writer;

/* loaded from: classes.dex */
final class d extends Writer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Appendable f4676a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Writer f4677b;

    public d(Appendable appendable, Writer writer) {
        this.f4676a = appendable;
        this.f4677b = writer;
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        this.f4676a.append((char) i);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.f4677b.flush();
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4677b.close();
    }
}
