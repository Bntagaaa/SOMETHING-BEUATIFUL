package okio.internal;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Source;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lokio/internal/FixedLengthSource;", "Lokio/ForwardingSource;", "Lokio/Source;", "delegate", "", "size", "", "truncate", "<init>", "(Lokio/Source;JZ)V", "Lokio/Buffer;", "sink", "byteCount", "read", "(Lokio/Buffer;J)J", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FixedLengthSource extends ForwardingSource {

    /* renamed from: b, reason: collision with root package name */
    public final long f6831b;
    public final boolean c;
    public long d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FixedLengthSource(@NotNull Source delegate, long j, boolean z) {
        super(delegate);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f6831b = j;
        this.c = z;
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(@NotNull Buffer sink, long byteCount) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j = this.d;
        long j2 = this.f6831b;
        if (j > j2) {
            byteCount = 0;
        } else if (this.c) {
            long j3 = j2 - j;
            if (j3 == 0) {
                return -1L;
            }
            byteCount = Math.min(byteCount, j3);
        }
        long j4 = super.read(sink, byteCount);
        if (j4 != -1) {
            this.d += j4;
        }
        long j5 = this.d;
        if ((j5 >= j2 || j4 != -1) && j5 <= j2) {
            return j4;
        }
        if (j4 > 0 && j5 > j2) {
            long size = sink.size() - (this.d - j2);
            Buffer buffer = new Buffer();
            buffer.writeAll(sink);
            sink.write(buffer, size);
            buffer.clear();
        }
        throw new IOException("expected " + j2 + " bytes but got " + this.d);
    }
}
