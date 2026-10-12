package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B!\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00028\u0000¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00128TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/c;", "T", "Lkotlinx/coroutines/AbstractCoroutine;", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "Ljava/lang/Thread;", "blockedThread", "Lkotlinx/coroutines/EventLoop;", "eventLoop", "<init>", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/EventLoop;)V", "", "state", "", "afterCompletion", "(Ljava/lang/Object;)V", "joinBlocking", "()Ljava/lang/Object;", "", "isScopedCoroutine", "()Z", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/BlockingCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"})
/* loaded from: classes2.dex */
final class c<T> extends AbstractCoroutine<T> {
    public final Thread d;
    public final EventLoop e;

    @Override // kotlinx.coroutines.JobSupport
    public boolean isScopedCoroutine() {
        return true;
    }

    public c(@NotNull CoroutineContext coroutineContext, @NotNull Thread thread, @Nullable EventLoop eventLoop) {
        super(coroutineContext, true, true);
        this.d = thread;
        this.e = eventLoop;
    }

    @Override // kotlinx.coroutines.JobSupport
    public void afterCompletion(@Nullable Object state) {
        Thread threadCurrentThread = Thread.currentThread();
        Thread thread = this.d;
        if (Intrinsics.areEqual(threadCurrentThread, thread)) {
            return;
        }
        AbstractTimeSource abstractTimeSource = AbstractTimeSourceKt.f6106a;
        if (abstractTimeSource != null) {
            abstractTimeSource.unpark(thread);
        } else {
            LockSupport.unpark(thread);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T joinBlocking() throws Throwable {
        long jProcessNextEvent;
        AbstractTimeSource abstractTimeSource = AbstractTimeSourceKt.f6106a;
        if (abstractTimeSource != null) {
            abstractTimeSource.registerTimeLoopThread();
        }
        EventLoop eventLoop = this.e;
        if (eventLoop != null) {
            try {
                EventLoop.incrementUseCount$default(eventLoop, false, 1, null);
            } finally {
                AbstractTimeSource abstractTimeSource2 = AbstractTimeSourceKt.f6106a;
                if (abstractTimeSource2 != null) {
                    abstractTimeSource2.unregisterTimeLoopThread();
                }
            }
        }
        while (true) {
            if (eventLoop != null) {
                try {
                    jProcessNextEvent = eventLoop.processNextEvent();
                } catch (Throwable th) {
                    if (eventLoop != null) {
                        EventLoop.decrementUseCount$default(eventLoop, false, 1, null);
                    }
                    throw th;
                }
            } else {
                jProcessNextEvent = Long.MAX_VALUE;
            }
            if (isCompleted()) {
                break;
            }
            AbstractTimeSource abstractTimeSource3 = AbstractTimeSourceKt.f6106a;
            if (abstractTimeSource3 != null) {
                abstractTimeSource3.parkNanos(this, jProcessNextEvent);
            } else {
                LockSupport.parkNanos(this, jProcessNextEvent);
            }
            if (Thread.interrupted()) {
                cancelCoroutine(new InterruptedException());
            }
        }
        if (eventLoop != null) {
            EventLoop.decrementUseCount$default(eventLoop, false, 1, null);
        }
        T t = (T) JobSupportKt.unboxState(getState$kotlinx_coroutines_core());
        CompletedExceptionally completedExceptionally = t instanceof CompletedExceptionally ? (CompletedExceptionally) t : null;
        if (completedExceptionally == null) {
            return t;
        }
        throw completedExceptionally.cause;
    }
}
