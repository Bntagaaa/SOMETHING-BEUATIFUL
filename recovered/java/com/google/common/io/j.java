package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
final class j extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator f4684a;

    /* renamed from: b, reason: collision with root package name */
    public InputStream f4685b;

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    public j(Iterator<? extends ByteSource> it) throws IOException {
        this.f4684a = (Iterator) Preconditions.checkNotNull(it);
        a();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.f4685b;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f4685b = null;
            }
        }
    }

    public final void a() throws IOException {
        close();
        Iterator it = this.f4684a;
        if (it.hasNext()) {
            this.f4685b = ((ByteSource) it.next()).openStream();
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        InputStream inputStream = this.f4685b;
        if (inputStream == null) {
            return 0;
        }
        return inputStream.available();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        while (true) {
            InputStream inputStream = this.f4685b;
            if (inputStream == null) {
                return -1;
            }
            int i = inputStream.read();
            if (i != -1) {
                return i;
            }
            a();
        }
    }

    @Override // java.io.InputStream
    public int read(@NullableDecl byte[] bArr, int i, int i2) throws IOException {
        while (true) {
            InputStream inputStream = this.f4685b;
            if (inputStream == null) {
                return -1;
            }
            int i3 = inputStream.read(bArr, i, i2);
            if (i3 != -1) {
                return i3;
            }
            a();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        InputStream inputStream = this.f4685b;
        if (inputStream == null || j <= 0) {
            return 0L;
        }
        long jSkip = inputStream.skip(j);
        if (jSkip != 0) {
            return jSkip;
        }
        if (read() == -1) {
            return 0L;
        }
        return this.f4685b.skip(j - 1) + 1;
    }
}
