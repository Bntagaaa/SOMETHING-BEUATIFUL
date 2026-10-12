package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\bJ\u001f\u0010\r\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u000eJ\r\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lokio/InflaterSource;", "Lokio/Source;", "Lokio/BufferedSource;", "source", "Ljava/util/zip/Inflater;", "inflater", "<init>", "(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V", "(Lokio/Source;Ljava/util/zip/Inflater;)V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "readOrInflate", "", "refill", "()Z", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "close", "()V", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInflaterSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,147:1\n1#2:148\n86#3:149\n*S KotlinDebug\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n*L\n73#1:149\n*E\n"})
/* loaded from: classes2.dex */
public final class InflaterSource implements Source {

    /* renamed from: a, reason: collision with root package name */
    public final BufferedSource f6793a;

    /* renamed from: b, reason: collision with root package name */
    public final Inflater f6794b;
    public int c;
    public boolean d;

    public InflaterSource(@NotNull BufferedSource source, @NotNull Inflater inflater) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this.f6793a = source;
        this.f6794b = inflater;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InflaterSource(@NotNull Source source, @NotNull Inflater inflater) {
        this(Okio.buffer(source), inflater);
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long byteCount) throws DataFormatException, IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        do {
            long orInflate = readOrInflate(sink, byteCount);
            if (orInflate > 0) {
                return orInflate;
            }
            Inflater inflater = this.f6794b;
            if (inflater.finished() || inflater.needsDictionary()) {
                return -1L;
            }
        } while (!this.f6793a.exhausted());
        throw new EOFException("source exhausted prematurely");
    }

    public final long readOrInflate(@NotNull Buffer sink, long byteCount) throws DataFormatException, IOException {
        Inflater inflater = this.f6794b;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (byteCount < 0) {
            throw new IllegalArgumentException(_COROUTINE.a.g("byteCount < 0: ", byteCount).toString());
        }
        if (this.d) {
            throw new IllegalStateException("closed");
        }
        if (byteCount != 0) {
            try {
                Segment segmentWritableSegment$okio = sink.writableSegment$okio(1);
                int iMin = (int) Math.min(byteCount, 8192 - segmentWritableSegment$okio.limit);
                refill();
                int iInflate = inflater.inflate(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, iMin);
                int i = this.c;
                if (i != 0) {
                    int remaining = i - inflater.getRemaining();
                    this.c -= remaining;
                    this.f6793a.skip(remaining);
                }
                if (iInflate > 0) {
                    segmentWritableSegment$okio.limit += iInflate;
                    long j = iInflate;
                    sink.setSize$okio(sink.size() + j);
                    return j;
                }
                if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
                    sink.head = segmentWritableSegment$okio.pop();
                    SegmentPool.recycle(segmentWritableSegment$okio);
                }
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        }
        return 0L;
    }

    public final boolean refill() throws IOException {
        Inflater inflater = this.f6794b;
        if (!inflater.needsInput()) {
            return false;
        }
        BufferedSource bufferedSource = this.f6793a;
        if (bufferedSource.exhausted()) {
            return true;
        }
        Segment segment = bufferedSource.getBuffer().head;
        Intrinsics.checkNotNull(segment);
        int i = segment.limit;
        int i2 = segment.pos;
        int i3 = i - i2;
        this.c = i3;
        inflater.setInput(segment.data, i2, i3);
        return false;
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f6793a.timeout();
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.d) {
            return;
        }
        this.f6794b.end();
        this.d = true;
        this.f6793a.close();
    }
}
