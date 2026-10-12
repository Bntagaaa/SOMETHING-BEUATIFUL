package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0010\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\u00020\u00178\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010(\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b%\u0010\u001f\u001a\u0004\b&\u0010!\"\u0004\b'\u0010#R\"\u0010,\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b)\u0010\u001f\u001a\u0004\b*\u0010!\"\u0004\b+\u0010#R$\u00101\u001a\u0004\u0018\u00010\u00068\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u0010\f\"\u0004\b0\u0010\nR\u0017\u00107\u001a\u0002028\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u0017\u0010=\u001a\u0002088\u0006¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0017\u0010\u0007\u001a\u00020\u00068G¢\u0006\f\n\u0004\b>\u0010.\u001a\u0004\b\u0007\u0010\fR\u0017\u0010\u0010\u001a\u00020\r8G¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\b\u0010\u0010\u000f¨\u0006A"}, d2 = {"Lokio/Pipe;", "", "", "maxBufferSize", "<init>", "(J)V", "Lokio/Sink;", "sink", "", "fold", "(Lokio/Sink;)V", "-deprecated_sink", "()Lokio/Sink;", "Lokio/Source;", "-deprecated_source", "()Lokio/Source;", "source", "cancel", "()V", "a", "J", "getMaxBufferSize$okio", "()J", "Lokio/Buffer;", "b", "Lokio/Buffer;", "getBuffer$okio", "()Lokio/Buffer;", "buffer", "", "c", "Z", "getCanceled$okio", "()Z", "setCanceled$okio", "(Z)V", "canceled", "d", "getSinkClosed$okio", "setSinkClosed$okio", "sinkClosed", "e", "getSourceClosed$okio", "setSourceClosed$okio", "sourceClosed", "f", "Lokio/Sink;", "getFoldedSink$okio", "setFoldedSink$okio", "foldedSink", "Ljava/util/concurrent/locks/ReentrantLock;", "g", "Ljava/util/concurrent/locks/ReentrantLock;", "getLock", "()Ljava/util/concurrent/locks/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/Condition;", "h", "Ljava/util/concurrent/locks/Condition;", "getCondition", "()Ljava/util/concurrent/locks/Condition;", "condition", "i", "j", "Lokio/Source;", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Timeout.kt\nokio/Timeout\n*L\n1#1,257:1\n1#2:258\n268#3,26:259\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe\n*L\n217#1:259,26\n*E\n"})
/* loaded from: classes2.dex */
public final class Pipe {

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final long maxBufferSize;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final Buffer buffer = new Buffer();

    /* renamed from: c, reason: from kotlin metadata */
    public boolean canceled;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean sinkClosed;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean sourceClosed;

    /* renamed from: f, reason: from kotlin metadata */
    public Sink foldedSink;

    /* renamed from: g, reason: collision with root package name and from kotlin metadata */
    public final ReentrantLock lock;

    /* renamed from: h, reason: from kotlin metadata */
    public final Condition condition;
    public final AnonymousClass1 i;
    public final C01971 j;

    /* JADX WARN: Type inference failed for: r4v3, types: [okio.Pipe$sink$1] */
    /* JADX WARN: Type inference failed for: r4v4, types: [okio.Pipe$source$1] */
    public Pipe(long j) {
        this.maxBufferSize = j;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        Intrinsics.checkNotNullExpressionValue(conditionNewCondition, "newCondition(...)");
        this.condition = conditionNewCondition;
        if (j < 1) {
            throw new IllegalArgumentException(_COROUTINE.a.g("maxBufferSize < 1: ", j).toString());
        }
        this.i = new Sink() { // from class: okio.Pipe.sink.1

            /* renamed from: a, reason: collision with root package name */
            public final Timeout f6804a = new Timeout();

            /* JADX WARN: Code restructure failed: missing block: B:28:0x0076, code lost:
            
                r3 = kotlin.Unit.INSTANCE;
             */
            /* JADX WARN: Code restructure failed: missing block: B:29:0x0078, code lost:
            
                r1.unlock();
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x007b, code lost:
            
                if (r2 == null) goto L59;
             */
            /* JADX WARN: Code restructure failed: missing block: B:31:0x007d, code lost:
            
                r1 = r2.getF6804a();
                r0 = r0.sink().getF6804a();
                r3 = r1.getC();
                r5 = okio.Timeout.INSTANCE.minTimeout(r0.getC(), r1.getC());
                r7 = java.util.concurrent.TimeUnit.NANOSECONDS;
                r1.timeout(r5, r7);
             */
            /* JADX WARN: Code restructure failed: missing block: B:32:0x00a4, code lost:
            
                if (r1.getF6816a() == false) goto L46;
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x00a6, code lost:
            
                r5 = r1.deadlineNanoTime();
             */
            /* JADX WARN: Code restructure failed: missing block: B:34:0x00ae, code lost:
            
                if (r0.getF6816a() == false) goto L69;
             */
            /* JADX WARN: Code restructure failed: missing block: B:35:0x00b0, code lost:
            
                r1.deadlineNanoTime(java.lang.Math.min(r1.deadlineNanoTime(), r0.deadlineNanoTime()));
             */
            /* JADX WARN: Code restructure failed: missing block: B:36:0x00bf, code lost:
            
                r2.write(r13, r14);
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x00c2, code lost:
            
                r1.timeout(r3, r7);
             */
            /* JADX WARN: Code restructure failed: missing block: B:38:0x00c9, code lost:
            
                if (r0.getF6816a() == false) goto L80;
             */
            /* JADX WARN: Code restructure failed: missing block: B:39:0x00cb, code lost:
            
                r1.deadlineNanoTime(r5);
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x00ce, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:41:0x00cf, code lost:
            
                r13 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:42:0x00d0, code lost:
            
                r1.timeout(r3, java.util.concurrent.TimeUnit.NANOSECONDS);
             */
            /* JADX WARN: Code restructure failed: missing block: B:43:0x00d9, code lost:
            
                if (r0.getF6816a() != false) goto L44;
             */
            /* JADX WARN: Code restructure failed: missing block: B:44:0x00db, code lost:
            
                r1.deadlineNanoTime(r5);
             */
            /* JADX WARN: Code restructure failed: missing block: B:45:0x00de, code lost:
            
                throw r13;
             */
            /* JADX WARN: Code restructure failed: missing block: B:47:0x00e3, code lost:
            
                if (r0.getF6816a() == false) goto L67;
             */
            /* JADX WARN: Code restructure failed: missing block: B:48:0x00e5, code lost:
            
                r1.deadlineNanoTime(r0.deadlineNanoTime());
             */
            /* JADX WARN: Code restructure failed: missing block: B:49:0x00ec, code lost:
            
                r2.write(r13, r14);
             */
            /* JADX WARN: Code restructure failed: missing block: B:50:0x00ef, code lost:
            
                r1.timeout(r3, r7);
             */
            /* JADX WARN: Code restructure failed: missing block: B:51:0x00f6, code lost:
            
                if (r0.getF6816a() == false) goto L81;
             */
            /* JADX WARN: Code restructure failed: missing block: B:52:0x00f8, code lost:
            
                r1.clearDeadline();
             */
            /* JADX WARN: Code restructure failed: missing block: B:53:0x00fb, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:54:0x00fc, code lost:
            
                r13 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:55:0x00fd, code lost:
            
                r1.timeout(r3, java.util.concurrent.TimeUnit.NANOSECONDS);
             */
            /* JADX WARN: Code restructure failed: missing block: B:56:0x0106, code lost:
            
                if (r0.getF6816a() != false) goto L57;
             */
            /* JADX WARN: Code restructure failed: missing block: B:57:0x0108, code lost:
            
                r1.clearDeadline();
             */
            /* JADX WARN: Code restructure failed: missing block: B:58:0x010b, code lost:
            
                throw r13;
             */
            /* JADX WARN: Code restructure failed: missing block: B:59:0x010c, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:80:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:81:?, code lost:
            
                return;
             */
            @Override // okio.Sink
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void write(@org.jetbrains.annotations.NotNull okio.Buffer r13, long r14) {
                /*
                    Method dump skipped, instructions count: 287
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: okio.Pipe.AnonymousClass1.write(okio.Buffer, long):void");
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() {
                Pipe pipe = Pipe.this;
                ReentrantLock lock = pipe.getLock();
                lock.lock();
                try {
                    if (pipe.getSinkClosed()) {
                        throw new IllegalStateException("closed");
                    }
                    if (pipe.getCanceled()) {
                        throw new IOException("canceled");
                    }
                    Sink foldedSink = pipe.getFoldedSink();
                    if (foldedSink == null) {
                        if (pipe.getSourceClosed() && pipe.getBuffer().size() > 0) {
                            throw new IOException("source is closed");
                        }
                        foldedSink = null;
                    }
                    Unit unit = Unit.INSTANCE;
                    lock.unlock();
                    if (foldedSink != null) {
                        Timeout f6804a = foldedSink.getF6804a();
                        Timeout f6804a2 = pipe.sink().getF6804a();
                        long c = f6804a.getC();
                        long jMinTimeout = Timeout.INSTANCE.minTimeout(f6804a2.getC(), f6804a.getC());
                        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                        f6804a.timeout(jMinTimeout, timeUnit);
                        if (f6804a.getF6816a()) {
                            long jDeadlineNanoTime = f6804a.deadlineNanoTime();
                            if (f6804a2.getF6816a()) {
                                f6804a.deadlineNanoTime(Math.min(f6804a.deadlineNanoTime(), f6804a2.deadlineNanoTime()));
                            }
                            try {
                                foldedSink.flush();
                                f6804a.timeout(c, timeUnit);
                                if (f6804a2.getF6816a()) {
                                    f6804a.deadlineNanoTime(jDeadlineNanoTime);
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                f6804a.timeout(c, TimeUnit.NANOSECONDS);
                                if (f6804a2.getF6816a()) {
                                    f6804a.deadlineNanoTime(jDeadlineNanoTime);
                                }
                                throw th;
                            }
                        }
                        if (f6804a2.getF6816a()) {
                            f6804a.deadlineNanoTime(f6804a2.deadlineNanoTime());
                        }
                        try {
                            foldedSink.flush();
                            f6804a.timeout(c, timeUnit);
                            if (f6804a2.getF6816a()) {
                                f6804a.clearDeadline();
                            }
                        } catch (Throwable th2) {
                            f6804a.timeout(c, TimeUnit.NANOSECONDS);
                            if (f6804a2.getF6816a()) {
                                f6804a.clearDeadline();
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    lock.unlock();
                    throw th3;
                }
            }

            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                Pipe pipe = Pipe.this;
                ReentrantLock lock = pipe.getLock();
                lock.lock();
                try {
                    if (pipe.getSinkClosed()) {
                        lock.unlock();
                        return;
                    }
                    Sink foldedSink = pipe.getFoldedSink();
                    if (foldedSink == null) {
                        if (pipe.getSourceClosed() && pipe.getBuffer().size() > 0) {
                            throw new IOException("source is closed");
                        }
                        pipe.setSinkClosed$okio(true);
                        pipe.getCondition().signalAll();
                        foldedSink = null;
                    }
                    Unit unit = Unit.INSTANCE;
                    lock.unlock();
                    if (foldedSink != null) {
                        Timeout f6804a = foldedSink.getF6804a();
                        Timeout f6804a2 = pipe.sink().getF6804a();
                        long c = f6804a.getC();
                        long jMinTimeout = Timeout.INSTANCE.minTimeout(f6804a2.getC(), f6804a.getC());
                        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                        f6804a.timeout(jMinTimeout, timeUnit);
                        if (f6804a.getF6816a()) {
                            long jDeadlineNanoTime = f6804a.deadlineNanoTime();
                            if (f6804a2.getF6816a()) {
                                f6804a.deadlineNanoTime(Math.min(f6804a.deadlineNanoTime(), f6804a2.deadlineNanoTime()));
                            }
                            try {
                                foldedSink.close();
                                f6804a.timeout(c, timeUnit);
                                if (f6804a2.getF6816a()) {
                                    f6804a.deadlineNanoTime(jDeadlineNanoTime);
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                f6804a.timeout(c, TimeUnit.NANOSECONDS);
                                if (f6804a2.getF6816a()) {
                                    f6804a.deadlineNanoTime(jDeadlineNanoTime);
                                }
                                throw th;
                            }
                        }
                        if (f6804a2.getF6816a()) {
                            f6804a.deadlineNanoTime(f6804a2.deadlineNanoTime());
                        }
                        try {
                            foldedSink.close();
                            f6804a.timeout(c, timeUnit);
                            if (f6804a2.getF6816a()) {
                                f6804a.clearDeadline();
                            }
                        } catch (Throwable th2) {
                            f6804a.timeout(c, TimeUnit.NANOSECONDS);
                            if (f6804a2.getF6816a()) {
                                f6804a.clearDeadline();
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    lock.unlock();
                    throw th3;
                }
            }

            @Override // okio.Sink
            @NotNull
            /* renamed from: timeout, reason: from getter */
            public Timeout getF6804a() {
                return this.f6804a;
            }
        };
        this.j = new Source() { // from class: okio.Pipe.source.1

            /* renamed from: a, reason: collision with root package name */
            public final Timeout f6806a = new Timeout();

            @Override // okio.Source
            public long read(@NotNull Buffer sink, long byteCount) {
                Intrinsics.checkNotNullParameter(sink, "sink");
                Pipe pipe = Pipe.this;
                ReentrantLock lock = pipe.getLock();
                lock.lock();
                try {
                    if (pipe.getSourceClosed()) {
                        throw new IllegalStateException("closed");
                    }
                    if (pipe.getCanceled()) {
                        throw new IOException("canceled");
                    }
                    while (pipe.getBuffer().size() == 0) {
                        if (pipe.getSinkClosed()) {
                            lock.unlock();
                            return -1L;
                        }
                        this.f6806a.awaitSignal(pipe.getCondition());
                        if (pipe.getCanceled()) {
                            throw new IOException("canceled");
                        }
                    }
                    long j2 = pipe.getBuffer().read(sink, byteCount);
                    pipe.getCondition().signalAll();
                    lock.unlock();
                    return j2;
                } catch (Throwable th) {
                    lock.unlock();
                    throw th;
                }
            }

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                Pipe pipe = Pipe.this;
                ReentrantLock lock = pipe.getLock();
                lock.lock();
                try {
                    pipe.setSourceClosed$okio(true);
                    pipe.getCondition().signalAll();
                    Unit unit = Unit.INSTANCE;
                } finally {
                    lock.unlock();
                }
            }

            @Override // okio.Source
            @NotNull
            /* renamed from: timeout, reason: from getter */
            public Timeout getF6806a() {
                return this.f6806a;
            }
        };
    }

    /* renamed from: getMaxBufferSize$okio, reason: from getter */
    public final long getMaxBufferSize() {
        return this.maxBufferSize;
    }

    @NotNull
    /* renamed from: getBuffer$okio, reason: from getter */
    public final Buffer getBuffer() {
        return this.buffer;
    }

    /* renamed from: getCanceled$okio, reason: from getter */
    public final boolean getCanceled() {
        return this.canceled;
    }

    public final void setCanceled$okio(boolean z) {
        this.canceled = z;
    }

    /* renamed from: getSinkClosed$okio, reason: from getter */
    public final boolean getSinkClosed() {
        return this.sinkClosed;
    }

    public final void setSinkClosed$okio(boolean z) {
        this.sinkClosed = z;
    }

    /* renamed from: getSourceClosed$okio, reason: from getter */
    public final boolean getSourceClosed() {
        return this.sourceClosed;
    }

    public final void setSourceClosed$okio(boolean z) {
        this.sourceClosed = z;
    }

    @Nullable
    /* renamed from: getFoldedSink$okio, reason: from getter */
    public final Sink getFoldedSink() {
        return this.foldedSink;
    }

    public final void setFoldedSink$okio(@Nullable Sink sink) {
        this.foldedSink = sink;
    }

    @NotNull
    public final ReentrantLock getLock() {
        return this.lock;
    }

    @NotNull
    public final Condition getCondition() {
        return this.condition;
    }

    @JvmName(name = "sink")
    @NotNull
    public final Sink sink() {
        return this.i;
    }

    @JvmName(name = "source")
    @NotNull
    public final Source source() {
        return this.j;
    }

    public final void fold(@NotNull Sink sink) throws IOException {
        Condition condition = this.condition;
        Buffer buffer = this.buffer;
        Intrinsics.checkNotNullParameter(sink, "sink");
        while (true) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (this.foldedSink != null) {
                    throw new IllegalStateException("sink already folded");
                }
                if (this.canceled) {
                    this.foldedSink = sink;
                    throw new IOException("canceled");
                }
                if (buffer.exhausted()) {
                    this.sourceClosed = true;
                    this.foldedSink = sink;
                    return;
                }
                boolean z = this.sinkClosed;
                Buffer buffer2 = new Buffer();
                buffer2.write(buffer, buffer.size());
                condition.signalAll();
                Unit unit = Unit.INSTANCE;
                try {
                    sink.write(buffer2, buffer2.size());
                    if (z) {
                        sink.close();
                    } else {
                        sink.flush();
                    }
                } catch (Throwable th) {
                    reentrantLock.lock();
                    try {
                        this.sourceClosed = true;
                        condition.signalAll();
                        Unit unit2 = Unit.INSTANCE;
                        throw th;
                    } finally {
                    }
                }
            } finally {
            }
        }
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "sink", imports = {}))
    @JvmName(name = "-deprecated_sink")
    @NotNull
    /* renamed from: -deprecated_sink, reason: not valid java name */
    public final Sink m1229deprecated_sink() {
        return this.i;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "source", imports = {}))
    @JvmName(name = "-deprecated_source")
    @NotNull
    /* renamed from: -deprecated_source, reason: not valid java name */
    public final Source m1230deprecated_source() {
        return this.j;
    }

    public final void cancel() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.canceled = true;
            this.buffer.clear();
            this.condition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }
}
