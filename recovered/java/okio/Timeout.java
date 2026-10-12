package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 $2\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0005\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\bJ\u000f\u0010\u0012\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0003J\u0015\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ/\u0010\"\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000 H\u0086\bø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006%"}, d2 = {"Lokio/Timeout;", "", "<init>", "()V", "", "timeout", "Ljava/util/concurrent/TimeUnit;", "unit", "(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;", "timeoutNanos", "()J", "", "hasDeadline", "()Z", "deadlineNanoTime", "(J)Lokio/Timeout;", "duration", "deadline", "clearTimeout", "()Lokio/Timeout;", "clearDeadline", "", "throwIfReached", "Ljava/util/concurrent/locks/Condition;", "condition", "awaitSignal", "(Ljava/util/concurrent/locks/Condition;)V", "monitor", "waitUntilNotified", "(Ljava/lang/Object;)V", "T", "other", "Lkotlin/Function0;", "block", "intersectWith", "(Lokio/Timeout;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Companion", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timeout.kt\nokio/Timeout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n1#2:317\n*E\n"})
/* loaded from: classes2.dex */
public class Timeout {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    @NotNull
    public static final Timeout NONE = new Timeout() { // from class: okio.Timeout$Companion$NONE$1
        @Override // okio.Timeout
        @NotNull
        public Timeout deadlineNanoTime(long deadlineNanoTime) {
            return this;
        }

        @Override // okio.Timeout
        public void throwIfReached() {
        }

        @Override // okio.Timeout
        @NotNull
        public Timeout timeout(long timeout, @NotNull TimeUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            return this;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public boolean f6816a;

    /* renamed from: b, reason: collision with root package name */
    public long f6817b;
    public long c;

    @NotNull
    public Timeout timeout(long timeout, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (timeout < 0) {
            throw new IllegalArgumentException(_COROUTINE.a.g("timeout < 0: ", timeout).toString());
        }
        this.c = unit.toNanos(timeout);
        return this;
    }

    /* renamed from: timeoutNanos, reason: from getter */
    public long getC() {
        return this.c;
    }

    /* renamed from: hasDeadline, reason: from getter */
    public boolean getF6816a() {
        return this.f6816a;
    }

    public long deadlineNanoTime() {
        if (!this.f6816a) {
            throw new IllegalStateException("No deadline");
        }
        return this.f6817b;
    }

    @NotNull
    public Timeout deadlineNanoTime(long deadlineNanoTime) {
        this.f6816a = true;
        this.f6817b = deadlineNanoTime;
        return this;
    }

    @NotNull
    public final Timeout deadline(long duration, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (duration <= 0) {
            throw new IllegalArgumentException(_COROUTINE.a.g("duration <= 0: ", duration).toString());
        }
        return deadlineNanoTime(unit.toNanos(duration) + System.nanoTime());
    }

    @NotNull
    public Timeout clearTimeout() {
        this.c = 0L;
        return this;
    }

    @NotNull
    public Timeout clearDeadline() {
        this.f6816a = false;
        return this;
    }

    public void throwIfReached() throws IOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.f6816a && this.f6817b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public final void awaitSignal(@NotNull Condition condition) throws InterruptedException, InterruptedIOException {
        Intrinsics.checkNotNullParameter(condition, "condition");
        try {
            boolean f6816a = getF6816a();
            long c = getC();
            long jNanoTime = 0;
            if (!f6816a && c == 0) {
                condition.await();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (f6816a && c != 0) {
                c = Math.min(c, deadlineNanoTime() - jNanoTime2);
            } else if (f6816a) {
                c = deadlineNanoTime() - jNanoTime2;
            }
            if (c > 0) {
                condition.await(c, TimeUnit.NANOSECONDS);
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= c) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public final void waitUntilNotified(@NotNull Object monitor) throws InterruptedException, InterruptedIOException {
        Intrinsics.checkNotNullParameter(monitor, "monitor");
        try {
            boolean f6816a = getF6816a();
            long c = getC();
            long jNanoTime = 0;
            if (!f6816a && c == 0) {
                monitor.wait();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (f6816a && c != 0) {
                c = Math.min(c, deadlineNanoTime() - jNanoTime2);
            } else if (f6816a) {
                c = deadlineNanoTime() - jNanoTime2;
            }
            if (c > 0) {
                long j = c / 1000000;
                Long.signum(j);
                monitor.wait(j, (int) (c - (1000000 * j)));
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= c) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public final <T> T intersectWith(@NotNull Timeout other, @NotNull Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(block, "block");
        long c = getC();
        long jMinTimeout = INSTANCE.minTimeout(other.getC(), getC());
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout(jMinTimeout, timeUnit);
        if (getF6816a()) {
            long jDeadlineNanoTime = deadlineNanoTime();
            if (other.getF6816a()) {
                deadlineNanoTime(Math.min(deadlineNanoTime(), other.deadlineNanoTime()));
            }
            try {
                T tInvoke = block.invoke();
                InlineMarker.finallyStart(1);
                timeout(c, timeUnit);
                if (other.getF6816a()) {
                    deadlineNanoTime(jDeadlineNanoTime);
                }
                InlineMarker.finallyEnd(1);
                return tInvoke;
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                timeout(c, TimeUnit.NANOSECONDS);
                if (other.getF6816a()) {
                    deadlineNanoTime(jDeadlineNanoTime);
                }
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        if (other.getF6816a()) {
            deadlineNanoTime(other.deadlineNanoTime());
        }
        try {
            T tInvoke2 = block.invoke();
            InlineMarker.finallyStart(1);
            timeout(c, timeUnit);
            if (other.getF6816a()) {
                clearDeadline();
            }
            InlineMarker.finallyEnd(1);
            return tInvoke2;
        } catch (Throwable th2) {
            InlineMarker.finallyStart(1);
            timeout(c, TimeUnit.NANOSECONDS);
            if (other.getF6816a()) {
                clearDeadline();
            }
            InlineMarker.finallyEnd(1);
            throw th2;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lokio/Timeout$Companion;", "", "()V", "NONE", "Lokio/Timeout;", "minTimeout", "", "aNanos", "bNanos", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long minTimeout(long aNanos, long bNanos) {
            return (aNanos != 0 && (bNanos == 0 || aNanos < bNanos)) ? aNanos : bNanos;
        }

        private Companion() {
        }
    }
}
