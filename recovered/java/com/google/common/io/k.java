package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
class k extends Reader {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator f4686a;

    /* renamed from: b, reason: collision with root package name */
    public Reader f4687b;

    public k(Iterator it) throws IOException {
        this.f4686a = it;
        a();
    }

    public final void a() throws IOException {
        close();
        Iterator it = this.f4686a;
        if (it.hasNext()) {
            this.f4687b = ((CharSource) it.next()).openStream();
        }
    }

    @Override // java.io.Reader
    public int read(@NullableDecl char[] cArr, int i, int i2) throws IOException {
        Reader reader = this.f4687b;
        if (reader == null) {
            return -1;
        }
        int i3 = reader.read(cArr, i, i2);
        if (i3 != -1) {
            return i3;
        }
        a();
        return read(cArr, i, i2);
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        Preconditions.checkArgument(j >= 0, "n is negative");
        if (j > 0) {
            while (true) {
                Reader reader = this.f4687b;
                if (reader == null) {
                    break;
                }
                long jSkip = reader.skip(j);
                if (jSkip > 0) {
                    return jSkip;
                }
                a();
            }
        }
        return 0L;
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        Reader reader = this.f4687b;
        return reader != null && reader.ready();
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Reader reader = this.f4687b;
        if (reader != null) {
            try {
                reader.close();
            } finally {
                this.f4687b = null;
            }
        }
    }
}
