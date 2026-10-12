package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;

@GwtIncompatible
/* loaded from: classes.dex */
public abstract class ByteSink {
    public abstract OutputStream openStream() throws IOException;

    public CharSink asCharSink(Charset charset) {
        return new b(charset);
    }

    public OutputStream openBufferedStream() throws IOException {
        OutputStream outputStreamOpenStream = openStream();
        return outputStreamOpenStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStreamOpenStream : new BufferedOutputStream(outputStreamOpenStream);
    }

    public void write(byte[] bArr) throws IOException {
        Preconditions.checkNotNull(bArr);
        try {
            OutputStream outputStream = (OutputStream) Closer.create().register(openStream());
            outputStream.write(bArr);
            outputStream.flush();
        } finally {
        }
    }

    @CanIgnoreReturnValue
    public long writeFrom(InputStream inputStream) throws IOException {
        Preconditions.checkNotNull(inputStream);
        try {
            OutputStream outputStream = (OutputStream) Closer.create().register(openStream());
            long jCopy = ByteStreams.copy(inputStream, outputStream);
            outputStream.flush();
            return jCopy;
        } finally {
        }
    }

    public final class b extends CharSink {

        /* renamed from: a, reason: collision with root package name */
        public final Charset f4624a;

        public b(Charset charset) {
            this.f4624a = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.CharSink
        public Writer openStream() throws IOException {
            return new OutputStreamWriter(ByteSink.this.openStream(), this.f4624a);
        }

        public String toString() {
            return ByteSink.this.toString() + ".asCharSink(" + this.f4624a + ")";
        }
    }
}
