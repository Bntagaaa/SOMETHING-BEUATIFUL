package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.List;

@GwtIncompatible
/* loaded from: classes.dex */
public final class CharStreams {
    @CanIgnoreReturnValue
    @Beta
    public static long exhaust(Readable readable) throws IOException {
        CharBuffer charBufferAllocate = CharBuffer.allocate(2048);
        long j = 0;
        while (true) {
            long j2 = readable.read(charBufferAllocate);
            if (j2 == -1) {
                return j;
            }
            j += j2;
            charBufferAllocate.clear();
        }
    }

    private CharStreams() {
    }

    @CanIgnoreReturnValue
    public static long copy(Readable readable, Appendable appendable) throws IOException {
        long jRemaining = 0;
        if (readable instanceof Reader) {
            if (appendable instanceof StringBuilder) {
                Reader reader = (Reader) readable;
                StringBuilder sb = (StringBuilder) appendable;
                Preconditions.checkNotNull(reader);
                Preconditions.checkNotNull(sb);
                char[] cArr = new char[2048];
                while (true) {
                    int i = reader.read(cArr);
                    if (i == -1) {
                        return jRemaining;
                    }
                    sb.append(cArr, 0, i);
                    jRemaining += i;
                }
            } else {
                Reader reader2 = (Reader) readable;
                Writer writerAsWriter = asWriter(appendable);
                Preconditions.checkNotNull(reader2);
                Preconditions.checkNotNull(writerAsWriter);
                char[] cArr2 = new char[2048];
                while (true) {
                    int i2 = reader2.read(cArr2);
                    if (i2 == -1) {
                        return jRemaining;
                    }
                    writerAsWriter.write(cArr2, 0, i2);
                    jRemaining += i2;
                }
            }
        } else {
            Preconditions.checkNotNull(readable);
            Preconditions.checkNotNull(appendable);
            CharBuffer charBufferAllocate = CharBuffer.allocate(2048);
            while (readable.read(charBufferAllocate) != -1) {
                charBufferAllocate.flip();
                appendable.append(charBufferAllocate);
                jRemaining += charBufferAllocate.remaining();
                charBufferAllocate.clear();
            }
            return jRemaining;
        }
    }

    public static String toString(Readable readable) throws IOException {
        StringBuilder sb = new StringBuilder();
        if (readable instanceof Reader) {
            Reader reader = (Reader) readable;
            Preconditions.checkNotNull(reader);
            Preconditions.checkNotNull(sb);
            char[] cArr = new char[2048];
            while (true) {
                int i = reader.read(cArr);
                if (i == -1) {
                    break;
                }
                sb.append(cArr, 0, i);
            }
        } else {
            copy(readable, sb);
        }
        return sb.toString();
    }

    @Beta
    public static List<String> readLines(Readable readable) throws IOException {
        ArrayList arrayList = new ArrayList();
        LineReader lineReader = new LineReader(readable);
        while (true) {
            String line = lineReader.readLine();
            if (line == null) {
                return arrayList;
            }
            arrayList.add(line);
        }
    }

    @CanIgnoreReturnValue
    @Beta
    public static <T> T readLines(Readable readable, LineProcessor<T> lineProcessor) throws IOException {
        String line;
        Preconditions.checkNotNull(readable);
        Preconditions.checkNotNull(lineProcessor);
        LineReader lineReader = new LineReader(readable);
        do {
            line = lineReader.readLine();
            if (line == null) {
                break;
            }
        } while (lineProcessor.processLine(line));
        return lineProcessor.getResult();
    }

    @Beta
    public static void skipFully(Reader reader, long j) throws IOException {
        Preconditions.checkNotNull(reader);
        while (j > 0) {
            long jSkip = reader.skip(j);
            if (jSkip == 0) {
                throw new EOFException();
            }
            j -= jSkip;
        }
    }

    public static final class a extends Writer {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4644a = new a();

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(char c) {
            return this;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i) {
        }

        private a() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr) {
            Preconditions.checkNotNull(cArr);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2 + i, cArr.length);
        }

        @Override // java.io.Writer
        public void write(String str) {
            Preconditions.checkNotNull(str);
        }

        @Override // java.io.Writer
        public void write(String str, int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2 + i, str.length());
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return this;
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence, int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, charSequence.length());
            return this;
        }

        public String toString() {
            return "CharStreams.nullWriter()";
        }
    }

    @Beta
    public static Writer nullWriter() {
        return a.f4644a;
    }

    @Beta
    public static Writer asWriter(Appendable appendable) {
        if (appendable instanceof Writer) {
            return (Writer) appendable;
        }
        return new com.google.common.io.a(appendable);
    }
}
