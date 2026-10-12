package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class FileBackedOutputStream extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final int f4654a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4655b;
    public final ByteSource c;
    public OutputStream d;
    public a e;
    public File f;

    public static class a extends ByteArrayOutputStream {
        private a() {
        }

        public /* synthetic */ a(int i) {
            this();
        }

        public final byte[] a() {
            return ((ByteArrayOutputStream) this).buf;
        }

        public final int b() {
            return ((ByteArrayOutputStream) this).count;
        }
    }

    public FileBackedOutputStream(int i) {
        this(i, false);
    }

    public FileBackedOutputStream(int i, boolean z) {
        this.f4654a = i;
        this.f4655b = z;
        a aVar = new a(0);
        this.e = aVar;
        this.d = aVar;
        if (z) {
            this.c = new g(this);
        } else {
            this.c = new h(this);
        }
    }

    public ByteSource asByteSource() {
        return this.c;
    }

    public static InputStream a(FileBackedOutputStream fileBackedOutputStream) {
        synchronized (fileBackedOutputStream) {
            if (fileBackedOutputStream.f != null) {
                return new FileInputStream(fileBackedOutputStream.f);
            }
            return new ByteArrayInputStream(fileBackedOutputStream.e.a(), 0, fileBackedOutputStream.e.b());
        }
    }

    public synchronized void reset() throws IOException {
        int i = 0;
        try {
            close();
            a aVar = this.e;
            if (aVar == null) {
                this.e = new a(i);
            } else {
                aVar.reset();
            }
            this.d = this.e;
            File file = this.f;
            if (file != null) {
                this.f = null;
                if (!file.delete()) {
                    throw new IOException("Could not delete: " + file);
                }
            }
        } catch (Throwable th) {
            if (this.e == null) {
                this.e = new a(i);
            } else {
                this.e.reset();
            }
            this.d = this.e;
            File file2 = this.f;
            if (file2 != null) {
                this.f = null;
                if (!file2.delete()) {
                    throw new IOException("Could not delete: " + file2);
                }
            }
            throw th;
        } finally {
        }
    }

    @Override // java.io.OutputStream
    public synchronized void write(int i) throws IOException {
        b(1);
        this.d.write(i);
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) throws IOException {
        b(i2);
        this.d.write(bArr, i, i2);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.d.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public synchronized void flush() throws IOException {
        this.d.flush();
    }

    public final void b(int i) throws IOException {
        if (this.f != null || this.e.b() + i <= this.f4654a) {
            return;
        }
        File fileCreateTempFile = File.createTempFile("FileBackedOutputStream", null, null);
        if (this.f4655b) {
            fileCreateTempFile.deleteOnExit();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
        fileOutputStream.write(this.e.a(), 0, this.e.b());
        fileOutputStream.flush();
        this.d = fileOutputStream;
        this.f = fileCreateTempFile;
        this.e = null;
    }
}
