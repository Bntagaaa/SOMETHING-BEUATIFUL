package kotlinx.coroutines;

import gnu.expr.Declaration;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.LimitedDispatcherKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tJ\u0019\u0010\u000e\u001a\u00020\r2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\r2\b\b\u0002\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\r2\b\b\u0002\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0012J\u001f\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001a\u0010\u0003R\u0014\u0010\u001b\u001a\u00020\u00078TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\tR\u0014\u0010\u001d\u001a\u00020\u00048TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0006R\u0011\u0010\u001e\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\tR\u0011\u0010\u001f\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\tR\u0011\u0010 \u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b \u0010\t¨\u0006!"}, d2 = {"Lkotlinx/coroutines/EventLoop;", "Lkotlinx/coroutines/CoroutineDispatcher;", "<init>", "()V", "", "processNextEvent", "()J", "", "processUnconfinedEvent", "()Z", "shouldBeProcessedFromContext", "Lkotlinx/coroutines/DispatchedTask;", "task", "", "dispatchUnconfined", "(Lkotlinx/coroutines/DispatchedTask;)V", "unconfined", "incrementUseCount", "(Z)V", "decrementUseCount", "", "parallelism", "", "name", "limitedParallelism", "(ILjava/lang/String;)Lkotlinx/coroutines/CoroutineDispatcher;", "shutdown", "isEmpty", "getNextTime", "nextTime", "isActive", "isUnconfinedLoopActive", "isUnconfinedQueueEmpty", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,547:1\n1#2:548\n*E\n"})
/* loaded from: classes2.dex */
public abstract class EventLoop extends CoroutineDispatcher {

    /* renamed from: a, reason: collision with root package name */
    public long f6127a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6128b;
    public ArrayDeque c;

    public boolean shouldBeProcessedFromContext() {
        return false;
    }

    public void shutdown() {
    }

    public long processNextEvent() {
        return !processUnconfinedEvent() ? Long.MAX_VALUE : 0L;
    }

    public boolean isEmpty() {
        return isUnconfinedQueueEmpty();
    }

    public long getNextTime() {
        ArrayDeque arrayDeque = this.c;
        return (arrayDeque == null || arrayDeque.isEmpty()) ? Long.MAX_VALUE : 0L;
    }

    public final boolean processUnconfinedEvent() {
        DispatchedTask dispatchedTask;
        ArrayDeque arrayDeque = this.c;
        if (arrayDeque == null || (dispatchedTask = (DispatchedTask) arrayDeque.removeFirstOrNull()) == null) {
            return false;
        }
        dispatchedTask.run();
        return true;
    }

    public final void dispatchUnconfined(@NotNull DispatchedTask<?> task) {
        ArrayDeque arrayDeque = this.c;
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque();
            this.c = arrayDeque;
        }
        arrayDeque.addLast(task);
    }

    public final boolean isActive() {
        return this.f6127a > 0;
    }

    public final boolean isUnconfinedLoopActive() {
        return this.f6127a >= Declaration.TRANSIENT_ACCESS;
    }

    public final boolean isUnconfinedQueueEmpty() {
        ArrayDeque arrayDeque = this.c;
        if (arrayDeque != null) {
            return arrayDeque.isEmpty();
        }
        return true;
    }

    public static /* synthetic */ void incrementUseCount$default(EventLoop eventLoop, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        eventLoop.incrementUseCount(z);
    }

    public final void incrementUseCount(boolean unconfined) {
        this.f6127a = (unconfined ? Declaration.TRANSIENT_ACCESS : 1L) + this.f6127a;
        if (unconfined) {
            return;
        }
        this.f6128b = true;
    }

    public static /* synthetic */ void decrementUseCount$default(EventLoop eventLoop, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        eventLoop.decrementUseCount(z);
    }

    public final void decrementUseCount(boolean unconfined) {
        long j = this.f6127a - (unconfined ? Declaration.TRANSIENT_ACCESS : 1L);
        this.f6127a = j;
        if (j <= 0 && this.f6128b) {
            shutdown();
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public final CoroutineDispatcher limitedParallelism(int parallelism, @Nullable String name) {
        LimitedDispatcherKt.checkParallelism(parallelism);
        return LimitedDispatcherKt.namedOrThis(this, name);
    }
}
