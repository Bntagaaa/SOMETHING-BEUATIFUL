package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
public abstract class CharSource {
    public abstract Reader openStream() throws IOException;

    @Beta
    public ByteSource asByteSource(Charset charset) {
        return new a(charset);
    }

    public BufferedReader openBufferedStream() throws IOException {
        Reader readerOpenStream = openStream();
        return readerOpenStream instanceof BufferedReader ? (BufferedReader) readerOpenStream : new BufferedReader(readerOpenStream);
    }

    @Beta
    public Optional<Long> lengthIfKnown() {
        return Optional.absent();
    }

    @Beta
    public long length() throws IOException {
        Optional<Long> optionalLengthIfKnown = lengthIfKnown();
        if (optionalLengthIfKnown.isPresent()) {
            return optionalLengthIfKnown.get().longValue();
        }
        try {
            Reader reader = (Reader) Closer.create().register(openStream());
            long j = 0;
            while (true) {
                long jSkip = reader.skip(Long.MAX_VALUE);
                if (jSkip == 0) {
                    return j;
                }
                j += jSkip;
            }
        } finally {
        }
    }

    @CanIgnoreReturnValue
    public long copyTo(Appendable appendable) throws IOException {
        Preconditions.checkNotNull(appendable);
        try {
            return CharStreams.copy((Reader) Closer.create().register(openStream()), appendable);
        } finally {
        }
    }

    @CanIgnoreReturnValue
    public long copyTo(CharSink charSink) throws IOException {
        Preconditions.checkNotNull(charSink);
        Closer closerCreate = Closer.create();
        try {
            return CharStreams.copy((Reader) closerCreate.register(openStream()), (Writer) closerCreate.register(charSink.openStream()));
        } finally {
        }
    }

    public String read() throws IOException {
        try {
            return CharStreams.toString((Reader) Closer.create().register(openStream()));
        } finally {
        }
    }

    @NullableDecl
    public String readFirstLine() throws IOException {
        try {
            return ((BufferedReader) Closer.create().register(openBufferedStream())).readLine();
        } finally {
        }
    }

    public ImmutableList<String> readLines() throws IOException {
        try {
            BufferedReader bufferedReader = (BufferedReader) Closer.create().register(openBufferedStream());
            ArrayList arrayListNewArrayList = Lists.newArrayList();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    arrayListNewArrayList.add(line);
                } else {
                    return ImmutableList.copyOf((Collection) arrayListNewArrayList);
                }
            }
        } finally {
        }
    }

    @CanIgnoreReturnValue
    @Beta
    public <T> T readLines(LineProcessor<T> lineProcessor) throws IOException {
        Preconditions.checkNotNull(lineProcessor);
        try {
            return (T) CharStreams.readLines((Reader) Closer.create().register(openStream()), lineProcessor);
        } finally {
        }
    }

    public boolean isEmpty() throws IOException {
        Optional<Long> optionalLengthIfKnown = lengthIfKnown();
        if (optionalLengthIfKnown.isPresent()) {
            return optionalLengthIfKnown.get().longValue() == 0;
        }
        try {
            return ((Reader) Closer.create().register(openStream())).read() == -1;
        } finally {
        }
    }

    public static CharSource concat(Iterable<? extends CharSource> iterable) {
        return new c(iterable);
    }

    public static CharSource concat(Iterator<? extends CharSource> it) {
        return concat(ImmutableList.copyOf(it));
    }

    public static CharSource concat(CharSource... charSourceArr) {
        return concat(ImmutableList.copyOf(charSourceArr));
    }

    public static CharSource wrap(CharSequence charSequence) {
        return charSequence instanceof String ? new e((String) charSequence) : new b(charSequence);
    }

    public final class a extends ByteSource {

        /* renamed from: a, reason: collision with root package name */
        public final Charset f4639a;

        public a(Charset charset) {
            this.f4639a = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.ByteSource
        public CharSource asCharSource(Charset charset) {
            if (charset.equals(this.f4639a)) {
                return CharSource.this;
            }
            return super.asCharSource(charset);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return new l(CharSource.this.openStream(), this.f4639a);
        }

        public String toString() {
            return CharSource.this.toString() + ".asByteSource(" + this.f4639a + ")";
        }
    }

    public static class b extends CharSource {

        /* renamed from: b, reason: collision with root package name */
        public static final Splitter f4641b = Splitter.onPattern("\r\n|\n|\r");

        /* renamed from: a, reason: collision with root package name */
        public final CharSequence f4642a;

        public b(CharSequence charSequence) {
            this.f4642a = (CharSequence) Preconditions.checkNotNull(charSequence);
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() {
            return new com.google.common.io.e(this.f4642a);
        }

        @Override // com.google.common.io.CharSource
        public String read() {
            return this.f4642a.toString();
        }

        @Override // com.google.common.io.CharSource
        public boolean isEmpty() {
            return this.f4642a.length() == 0;
        }

        @Override // com.google.common.io.CharSource
        public long length() {
            return this.f4642a.length();
        }

        @Override // com.google.common.io.CharSource
        public Optional<Long> lengthIfKnown() {
            return Optional.of(Long.valueOf(this.f4642a.length()));
        }

        @Override // com.google.common.io.CharSource
        public String readFirstLine() {
            f fVar = new f(this);
            if (fVar.hasNext()) {
                return fVar.next();
            }
            return null;
        }

        @Override // com.google.common.io.CharSource
        public ImmutableList<String> readLines() {
            return ImmutableList.copyOf(new f(this));
        }

        @Override // com.google.common.io.CharSource
        public <T> T readLines(LineProcessor<T> lineProcessor) throws IOException {
            f fVar = new f(this);
            while (fVar.hasNext() && lineProcessor.processLine(fVar.next())) {
            }
            return lineProcessor.getResult();
        }

        public String toString() {
            return "CharSource.wrap(" + Ascii.truncate(this.f4642a, 30, "...") + ")";
        }
    }

    public static class e extends b {
        public e(String str) {
            super(str);
        }

        @Override // com.google.common.io.CharSource.b, com.google.common.io.CharSource
        public Reader openStream() {
            return new StringReader((String) this.f4642a);
        }

        @Override // com.google.common.io.CharSource
        public long copyTo(Appendable appendable) throws IOException {
            appendable.append(this.f4642a);
            return r0.length();
        }

        @Override // com.google.common.io.CharSource
        public long copyTo(CharSink charSink) throws IOException {
            CharSequence charSequence = this.f4642a;
            Preconditions.checkNotNull(charSink);
            try {
                ((Writer) Closer.create().register(charSink.openStream())).write((String) charSequence);
                return charSequence.length();
            } finally {
            }
        }
    }

    public static CharSource empty() {
        return d.c;
    }

    public static final class d extends e {
        public static final d c = new d();

        private d() {
            super("");
        }

        @Override // com.google.common.io.CharSource.b
        public String toString() {
            return "CharSource.empty()";
        }
    }

    public static final class c extends CharSource {

        /* renamed from: a, reason: collision with root package name */
        public final Iterable f4643a;

        public c(Iterable iterable) {
            this.f4643a = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() throws IOException {
            return new k(this.f4643a.iterator());
        }

        @Override // com.google.common.io.CharSource
        public boolean isEmpty() throws IOException {
            Iterator it = this.f4643a.iterator();
            while (it.hasNext()) {
                if (!((CharSource) it.next()).isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.CharSource
        public Optional<Long> lengthIfKnown() {
            Iterator it = this.f4643a.iterator();
            long jLongValue = 0;
            while (it.hasNext()) {
                Optional<Long> optionalLengthIfKnown = ((CharSource) it.next()).lengthIfKnown();
                if (!optionalLengthIfKnown.isPresent()) {
                    return Optional.absent();
                }
                jLongValue += optionalLengthIfKnown.get().longValue();
            }
            return Optional.of(Long.valueOf(jLongValue));
        }

        @Override // com.google.common.io.CharSource
        public long length() throws IOException {
            Iterator it = this.f4643a.iterator();
            long length = 0;
            while (it.hasNext()) {
                length += ((CharSource) it.next()).length();
            }
            return length;
        }

        public String toString() {
            return "CharSource.concat(" + this.f4643a + ")";
        }
    }
}
