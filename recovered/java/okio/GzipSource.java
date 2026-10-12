package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokio/GzipSource;", "Lokio/Source;", "source", "<init>", "(Lokio/Source;)V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "close", "()V", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGzipSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 GzipSource.kt\nokio/-GzipSourceExtensions\n+ 5 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,220:1\n1#2:221\n62#3:222\n62#3:224\n62#3:226\n62#3:227\n62#3:228\n62#3:230\n62#3:232\n202#4:223\n202#4:225\n202#4:229\n202#4:231\n89#5:233\n*S KotlinDebug\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n*L\n105#1:222\n107#1:224\n119#1:226\n120#1:227\n122#1:228\n133#1:230\n144#1:232\n106#1:223\n117#1:225\n130#1:229\n141#1:231\n187#1:233\n*E\n"})
/* loaded from: classes2.dex */
public final class GzipSource implements Source {

    /* renamed from: a, reason: collision with root package name */
    public byte f6789a;

    /* renamed from: b, reason: collision with root package name */
    public final RealBufferedSource f6790b;
    public final Inflater c;
    public final InflaterSource d;
    public final CRC32 e;

    public GzipSource(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        RealBufferedSource realBufferedSource = new RealBufferedSource(source);
        this.f6790b = realBufferedSource;
        Inflater inflater = new Inflater(true);
        this.c = inflater;
        this.d = new InflaterSource((BufferedSource) realBufferedSource, inflater);
        this.e = new CRC32();
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long byteCount) throws DataFormatException, IOException {
        GzipSource gzipSource = this;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (byteCount < 0) {
            throw new IllegalArgumentException(_COROUTINE.a.g("byteCount < 0: ", byteCount).toString());
        }
        if (byteCount == 0) {
            return 0L;
        }
        byte b2 = gzipSource.f6789a;
        CRC32 crc32 = gzipSource.e;
        RealBufferedSource realBufferedSource = gzipSource.f6790b;
        if (b2 == 0) {
            realBufferedSource.require(10L);
            byte b3 = realBufferedSource.bufferField.getByte(3L);
            boolean z = ((b3 >> 1) & 1) == 1;
            if (z) {
                gzipSource.b(0L, realBufferedSource.bufferField, 10L);
            }
            a(8075, realBufferedSource.readShort(), "ID1ID2");
            realBufferedSource.skip(8L);
            if (((b3 >> 2) & 1) == 1) {
                realBufferedSource.require(2L);
                if (z) {
                    b(0L, realBufferedSource.bufferField, 2L);
                }
                long shortLe = realBufferedSource.bufferField.readShortLe() & UShort.MAX_VALUE;
                realBufferedSource.require(shortLe);
                if (z) {
                    b(0L, realBufferedSource.bufferField, shortLe);
                }
                realBufferedSource.skip(shortLe);
            }
            if (((b3 >> 3) & 1) == 1) {
                long jIndexOf = realBufferedSource.indexOf((byte) 0);
                if (jIndexOf == -1) {
                    throw new EOFException();
                }
                if (z) {
                    b(0L, realBufferedSource.bufferField, jIndexOf + 1);
                }
                realBufferedSource.skip(jIndexOf + 1);
            }
            if (((b3 >> 4) & 1) == 1) {
                long jIndexOf2 = realBufferedSource.indexOf((byte) 0);
                if (jIndexOf2 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    gzipSource = this;
                    gzipSource.b(0L, realBufferedSource.bufferField, jIndexOf2 + 1);
                } else {
                    gzipSource = this;
                }
                realBufferedSource.skip(jIndexOf2 + 1);
            } else {
                gzipSource = this;
            }
            if (z) {
                a(realBufferedSource.readShortLe(), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            gzipSource.f6789a = (byte) 1;
        }
        if (gzipSource.f6789a == 1) {
            long size = sink.size();
            long j = gzipSource.d.read(sink, byteCount);
            if (j != -1) {
                gzipSource.b(size, sink, j);
                return j;
            }
            gzipSource.f6789a = (byte) 2;
        }
        if (gzipSource.f6789a == 2) {
            a(realBufferedSource.readIntLe(), (int) crc32.getValue(), "CRC");
            a(realBufferedSource.readIntLe(), (int) gzipSource.c.getBytesWritten(), "ISIZE");
            gzipSource.f6789a = (byte) 3;
            if (!realBufferedSource.exhausted()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f6790b.timeout();
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.d.close();
    }

    public final void b(long j, Buffer buffer, long j2) {
        Segment segment = buffer.head;
        Intrinsics.checkNotNull(segment);
        while (true) {
            int i = segment.limit;
            int i2 = segment.pos;
            if (j < i - i2) {
                break;
            }
            j -= i - i2;
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
        }
        while (j2 > 0) {
            int iMin = (int) Math.min(segment.limit - r6, j2);
            this.e.update(segment.data, (int) (segment.pos + j), iMin);
            j2 -= iMin;
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
            j = 0;
        }
    }

    public static void a(int i, int i2, String str) throws IOException {
        if (i2 == i) {
            return;
        }
        String str2 = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}, 3));
        Intrinsics.checkNotNullExpressionValue(str2, "format(this, *args)");
        throw new IOException(str2);
    }
}
