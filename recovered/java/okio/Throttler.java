package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0006J+\u0010\u0007\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001f\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010%\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lokio/Throttler;", "", "", "allocatedUntil", "<init>", "(J)V", "()V", "bytesPerSecond", "waitByteCount", "maxByteCount", "", "(JJJ)V", "byteCount", "take$okio", "(J)J", "take", "now", "byteCountOrWaitNanos$okio", "(JJ)J", "byteCountOrWaitNanos", "Lokio/Source;", "source", "(Lokio/Source;)Lokio/Source;", "Lokio/Sink;", "sink", "(Lokio/Sink;)Lokio/Sink;", "Ljava/util/concurrent/locks/ReentrantLock;", "e", "Ljava/util/concurrent/locks/ReentrantLock;", "getLock", "()Ljava/util/concurrent/locks/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/Condition;", "f", "Ljava/util/concurrent/locks/Condition;", "getCondition", "()Ljava/util/concurrent/locks/Condition;", "condition", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class Throttler {

    /* renamed from: a, reason: collision with root package name */
    public long f6812a;

    /* renamed from: b, reason: collision with root package name */
    public long f6813b;
    public long c;
    public long d;

    /* renamed from: e, reason: from kotlin metadata */
    public final ReentrantLock lock;

    /* renamed from: f, reason: from kotlin metadata */
    public final Condition condition;

    @JvmOverloads
    public final void bytesPerSecond(long j) {
        bytesPerSecond$default(this, j, 0L, 0L, 6, null);
    }

    @JvmOverloads
    public final void bytesPerSecond(long j, long j2) {
        bytesPerSecond$default(this, j, j2, 0L, 4, null);
    }

    public Throttler(long j) {
        this.f6812a = j;
        this.c = 8192L;
        this.d = 262144L;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        Intrinsics.checkNotNullExpressionValue(conditionNewCondition, "newCondition(...)");
        this.condition = conditionNewCondition;
    }

    @NotNull
    public final ReentrantLock getLock() {
        return this.lock;
    }

    @NotNull
    public final Condition getCondition() {
        return this.condition;
    }

    public Throttler() {
        this(System.nanoTime());
    }

    public static /* synthetic */ void bytesPerSecond$default(Throttler throttler, long j, long j2, long j3, int i, Object obj) {
        if ((i & 2) != 0) {
            j2 = throttler.c;
        }
        long j4 = j2;
        if ((i & 4) != 0) {
            j3 = throttler.d;
        }
        throttler.bytesPerSecond(j, j4, j3);
    }

    @JvmOverloads
    public final void bytesPerSecond(long bytesPerSecond, long waitByteCount, long maxByteCount) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (bytesPerSecond < 0) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (waitByteCount <= 0) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (maxByteCount < waitByteCount) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            this.f6813b = bytesPerSecond;
            this.c = waitByteCount;
            this.d = maxByteCount;
            this.condition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long take$okio(long byteCount) {
        if (byteCount <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        while (true) {
            try {
                long jByteCountOrWaitNanos$okio = byteCountOrWaitNanos$okio(System.nanoTime(), byteCount);
                if (jByteCountOrWaitNanos$okio >= 0) {
                    return jByteCountOrWaitNanos$okio;
                }
                this.condition.awaitNanos(-jByteCountOrWaitNanos$okio);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public final long byteCountOrWaitNanos$okio(long now, long byteCount) {
        if (this.f6813b == 0) {
            return byteCount;
        }
        long jMax = Math.max(this.f6812a - now, 0L);
        long j = this.d;
        long j2 = this.f6813b;
        long j3 = j - ((jMax * j2) / 1000000000);
        if (j3 >= byteCount) {
            this.f6812a = ((byteCount * 1000000000) / j2) + now + jMax;
            return byteCount;
        }
        long j4 = this.c;
        if (j3 >= j4) {
            this.f6812a = ((j * 1000000000) / j2) + now;
            return j3;
        }
        long jMin = Math.min(j4, byteCount);
        long j5 = this.d;
        long j6 = this.f6813b;
        long j7 = (((jMin - j5) * 1000000000) / j6) + jMax;
        if (j7 != 0) {
            return -j7;
        }
        this.f6812a = ((j5 * 1000000000) / j6) + now;
        return jMin;
    }

    @NotNull
    public final Source source(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return new ForwardingSource(source) { // from class: okio.Throttler.source.1
            @Override // okio.ForwardingSource, okio.Source
            public long read(@NotNull Buffer sink, long byteCount) throws InterruptedIOException {
                Intrinsics.checkNotNullParameter(sink, "sink");
                try {
                    return super.read(sink, this.take$okio(byteCount));
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException("interrupted");
                }
            }
        };
    }

    @NotNull
    public final Sink sink(@NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return new ForwardingSink(sink) { // from class: okio.Throttler.sink.1
            @Override // okio.ForwardingSink, okio.Sink
            public void write(@NotNull Buffer source, long byteCount) throws IOException {
                Intrinsics.checkNotNullParameter(source, "source");
                while (byteCount > 0) {
                    try {
                        long jTake$okio = this.take$okio(byteCount);
                        super.write(source, jTake$okio);
                        byteCount -= jTake$okio;
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException("interrupted");
                    }
                }
            }
        };
    }
}
