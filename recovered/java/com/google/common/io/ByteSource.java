package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.hash.Funnels;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.common.hash.Hasher;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

@GwtIncompatible
/* loaded from: classes.dex */
public abstract class ByteSource {
    public abstract InputStream openStream() throws IOException;

    public CharSource asCharSource(Charset charset) {
        return new a(charset);
    }

    public InputStream openBufferedStream() throws IOException {
        InputStream inputStreamOpenStream = openStream();
        return inputStreamOpenStream instanceof BufferedInputStream ? (BufferedInputStream) inputStreamOpenStream : new BufferedInputStream(inputStreamOpenStream);
    }

    public ByteSource slice(long j, long j2) {
        return new e(j, j2);
    }

    public boolean isEmpty() throws IOException {
        Optional<Long> optionalSizeIfKnown = sizeIfKnown();
        if (optionalSizeIfKnown.isPresent()) {
            return optionalSizeIfKnown.get().longValue() == 0;
        }
        try {
            return ((InputStream) Closer.create().register(openStream())).read() == -1;
        } finally {
        }
    }

    @Beta
    public Optional<Long> sizeIfKnown() {
        return Optional.absent();
    }

    public long size() throws IOException {
        Optional<Long> optionalSizeIfKnown = sizeIfKnown();
        if (optionalSizeIfKnown.isPresent()) {
            return optionalSizeIfKnown.get().longValue();
        }
        Closer closerCreate = Closer.create();
        try {
            InputStream inputStream = (InputStream) closerCreate.register(openStream());
            long j = 0;
            while (true) {
                long jA = ByteStreams.a(inputStream, 2147483647L);
                if (jA <= 0) {
                    return j;
                }
                j += jA;
            }
        } catch (IOException unused) {
            closerCreate.close();
            try {
                return ByteStreams.exhaust((InputStream) Closer.create().register(openStream()));
            } finally {
            }
        } finally {
        }
    }

    @CanIgnoreReturnValue
    public long copyTo(OutputStream outputStream) throws IOException {
        Preconditions.checkNotNull(outputStream);
        try {
            return ByteStreams.copy((InputStream) Closer.create().register(openStream()), outputStream);
        } finally {
        }
    }

    @CanIgnoreReturnValue
    public long copyTo(ByteSink byteSink) throws IOException {
        Preconditions.checkNotNull(byteSink);
        Closer closerCreate = Closer.create();
        try {
            return ByteStreams.copy((InputStream) closerCreate.register(openStream()), (OutputStream) closerCreate.register(byteSink.openStream()));
        } finally {
        }
    }

    public byte[] read() throws IOException {
        byte[] byteArray;
        Closer closerCreate = Closer.create();
        try {
            InputStream inputStream = (InputStream) closerCreate.register(openStream());
            Optional<Long> optionalSizeIfKnown = sizeIfKnown();
            if (optionalSizeIfKnown.isPresent()) {
                byteArray = ByteStreams.b(inputStream, optionalSizeIfKnown.get().longValue());
            } else {
                byteArray = ByteStreams.toByteArray(inputStream);
            }
            return byteArray;
        } catch (Throwable th) {
            try {
                throw closerCreate.rethrow(th);
            } finally {
                closerCreate.close();
            }
        }
    }

    @CanIgnoreReturnValue
    @Beta
    public <T> T read(ByteProcessor<T> byteProcessor) throws IOException {
        Preconditions.checkNotNull(byteProcessor);
        try {
            return (T) ByteStreams.readBytes((InputStream) Closer.create().register(openStream()), byteProcessor);
        } finally {
        }
    }

    public HashCode hash(HashFunction hashFunction) throws IOException {
        Hasher hasherNewHasher = hashFunction.newHasher();
        copyTo(Funnels.asOutputStream(hasherNewHasher));
        return hasherNewHasher.hash();
    }

    public boolean contentEquals(ByteSource byteSource) throws IOException {
        int i;
        Preconditions.checkNotNull(byteSource);
        OutputStream outputStream = ByteStreams.f4633a;
        byte[] bArr = new byte[8192];
        byte[] bArr2 = new byte[8192];
        Closer closerCreate = Closer.create();
        try {
            InputStream inputStream = (InputStream) closerCreate.register(openStream());
            InputStream inputStream2 = (InputStream) closerCreate.register(byteSource.openStream());
            do {
                i = ByteStreams.read(inputStream, bArr, 0, 8192);
                if (i != ByteStreams.read(inputStream2, bArr2, 0, 8192) || !Arrays.equals(bArr, bArr2)) {
                    return false;
                }
            } while (i == 8192);
            closerCreate.close();
            return true;
        } finally {
        }
    }

    public static ByteSource concat(Iterable<? extends ByteSource> iterable) {
        return new c(iterable);
    }

    public static ByteSource concat(Iterator<? extends ByteSource> it) {
        return concat(ImmutableList.copyOf(it));
    }

    public static ByteSource concat(ByteSource... byteSourceArr) {
        return concat(ImmutableList.copyOf(byteSourceArr));
    }

    public static ByteSource wrap(byte[] bArr) {
        return new b(bArr, 0, bArr.length);
    }

    public static ByteSource empty() {
        return d.d;
    }

    public class a extends CharSource {

        /* renamed from: a, reason: collision with root package name */
        public final Charset f4626a;

        public a(Charset charset) {
            this.f4626a = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.CharSource
        public ByteSource asByteSource(Charset charset) {
            if (charset.equals(this.f4626a)) {
                return ByteSource.this;
            }
            return super.asByteSource(charset);
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() throws IOException {
            return new InputStreamReader(ByteSource.this.openStream(), this.f4626a);
        }

        @Override // com.google.common.io.CharSource
        public String read() throws IOException {
            return new String(ByteSource.this.read(), this.f4626a);
        }

        public String toString() {
            return ByteSource.this.toString() + ".asCharSource(" + this.f4626a + ")";
        }
    }

    public final class e extends ByteSource {

        /* renamed from: a, reason: collision with root package name */
        public final long f4631a;

        /* renamed from: b, reason: collision with root package name */
        public final long f4632b;

        public e(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", j);
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", j2);
            this.f4631a = j;
            this.f4632b = j2;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return a(ByteSource.this.openStream());
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openBufferedStream() throws IOException {
            return a(ByteSource.this.openBufferedStream());
        }

        public final InputStream a(InputStream inputStream) throws IOException {
            long j = this.f4631a;
            if (j > 0) {
                try {
                    if (ByteStreams.a(inputStream, j) < j) {
                        inputStream.close();
                        return new ByteArrayInputStream(new byte[0]);
                    }
                } finally {
                }
            }
            return ByteStreams.limit(inputStream, this.f4632b);
        }

        @Override // com.google.common.io.ByteSource
        public ByteSource slice(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", j);
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", j2);
            return ByteSource.this.slice(this.f4631a + j, Math.min(j2, this.f4632b - j));
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() throws IOException {
            return this.f4632b == 0 || super.isEmpty();
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            Optional<Long> optionalSizeIfKnown = ByteSource.this.sizeIfKnown();
            if (optionalSizeIfKnown.isPresent()) {
                long jLongValue = optionalSizeIfKnown.get().longValue();
                return Optional.of(Long.valueOf(Math.min(this.f4632b, jLongValue - Math.min(this.f4631a, jLongValue))));
            }
            return Optional.absent();
        }

        public String toString() {
            return ByteSource.this.toString() + ".slice(" + this.f4631a + ", " + this.f4632b + ")";
        }
    }

    public static class b extends ByteSource {

        /* renamed from: a, reason: collision with root package name */
        public final byte[] f4628a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4629b;
        public final int c;

        public b(byte[] bArr, int i, int i2) {
            this.f4628a = bArr;
            this.f4629b = i;
            this.c = i2;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return new ByteArrayInputStream(this.f4628a, this.f4629b, this.c);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openBufferedStream() throws IOException {
            return openStream();
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() {
            return this.c == 0;
        }

        @Override // com.google.common.io.ByteSource
        public long size() {
            return this.c;
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            return Optional.of(Long.valueOf(this.c));
        }

        @Override // com.google.common.io.ByteSource
        public byte[] read() {
            int i = this.c;
            int i2 = this.f4629b;
            return Arrays.copyOfRange(this.f4628a, i2, i + i2);
        }

        @Override // com.google.common.io.ByteSource
        public <T> T read(ByteProcessor<T> byteProcessor) throws IOException {
            byteProcessor.processBytes(this.f4628a, this.f4629b, this.c);
            return byteProcessor.getResult();
        }

        @Override // com.google.common.io.ByteSource
        public long copyTo(OutputStream outputStream) throws IOException {
            byte[] bArr = this.f4628a;
            int i = this.f4629b;
            int i2 = this.c;
            outputStream.write(bArr, i, i2);
            return i2;
        }

        @Override // com.google.common.io.ByteSource
        public HashCode hash(HashFunction hashFunction) throws IOException {
            return hashFunction.hashBytes(this.f4628a, this.f4629b, this.c);
        }

        @Override // com.google.common.io.ByteSource
        public ByteSource slice(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", j);
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", j2);
            int i = this.c;
            long jMin = Math.min(j, i);
            return new b(this.f4628a, this.f4629b + ((int) jMin), (int) Math.min(j2, i - jMin));
        }

        public String toString() {
            return "ByteSource.wrap(" + Ascii.truncate(BaseEncoding.base16().encode(this.f4628a, this.f4629b, this.c), 30, "...") + ")";
        }
    }

    public static final class d extends b {
        public static final d d = new d();

        public d() {
            super(new byte[0], 0, 0);
        }

        @Override // com.google.common.io.ByteSource
        public CharSource asCharSource(Charset charset) {
            Preconditions.checkNotNull(charset);
            return CharSource.empty();
        }

        @Override // com.google.common.io.ByteSource.b, com.google.common.io.ByteSource
        public byte[] read() {
            return this.f4628a;
        }

        @Override // com.google.common.io.ByteSource.b
        public String toString() {
            return "ByteSource.empty()";
        }
    }

    public static final class c extends ByteSource {

        /* renamed from: a, reason: collision with root package name */
        public final Iterable f4630a;

        public c(Iterable iterable) {
            this.f4630a = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return new j(this.f4630a.iterator());
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() throws IOException {
            Iterator it = this.f4630a.iterator();
            while (it.hasNext()) {
                if (!((ByteSource) it.next()).isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            Iterable iterable = this.f4630a;
            if (!(iterable instanceof Collection)) {
                return Optional.absent();
            }
            Iterator it = iterable.iterator();
            long jLongValue = 0;
            while (it.hasNext()) {
                Optional<Long> optionalSizeIfKnown = ((ByteSource) it.next()).sizeIfKnown();
                if (!optionalSizeIfKnown.isPresent()) {
                    return Optional.absent();
                }
                jLongValue += optionalSizeIfKnown.get().longValue();
                if (jLongValue < 0) {
                    return Optional.of(Long.MAX_VALUE);
                }
            }
            return Optional.of(Long.valueOf(jLongValue));
        }

        @Override // com.google.common.io.ByteSource
        public long size() throws IOException {
            Iterator it = this.f4630a.iterator();
            long size = 0;
            while (it.hasNext()) {
                size += ((ByteSource) it.next()).size();
                if (size < 0) {
                    return Long.MAX_VALUE;
                }
            }
            return size;
        }

        public String toString() {
            return "ByteSource.concat(" + this.f4630a + ")";
        }
    }
}
