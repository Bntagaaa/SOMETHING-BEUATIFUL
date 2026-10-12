package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
class a extends Writer {

    /* renamed from: a, reason: collision with root package name */
    public final Appendable f4670a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4671b;

    public a(Appendable appendable) {
        this.f4670a = (Appendable) Preconditions.checkNotNull(appendable);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        a();
        this.f4670a.append(new String(cArr, i, i2));
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        a();
        this.f4670a.append((char) i);
    }

    @Override // java.io.Writer
    public void write(@NullableDecl String str) throws IOException {
        a();
        this.f4670a.append(str);
    }

    @Override // java.io.Writer
    public void write(@NullableDecl String str, int i, int i2) throws IOException {
        a();
        this.f4670a.append(str, i, i2 + i);
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        a();
        Appendable appendable = this.f4670a;
        if (appendable instanceof Flushable) {
            ((Flushable) appendable).flush();
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4671b = true;
        Appendable appendable = this.f4670a;
        if (appendable instanceof Closeable) {
            ((Closeable) appendable).close();
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        a();
        this.f4670a.append(c);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(@NullableDecl CharSequence charSequence) throws IOException {
        a();
        this.f4670a.append(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(@NullableDecl CharSequence charSequence, int i, int i2) throws IOException {
        a();
        this.f4670a.append(charSequence, i, i2);
        return this;
    }

    public final void a() throws IOException {
        if (this.f4671b) {
            throw new IOException("Cannot write to a closed writer.");
        }
    }
}
