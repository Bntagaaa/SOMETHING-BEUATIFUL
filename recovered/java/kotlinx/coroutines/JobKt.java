package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"kotlinx/coroutines/w", "kotlinx/coroutines/x"}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class JobKt {
    @NotNull
    public static final CompletableJob Job(@Nullable Job job) {
        return x.Job(job);
    }

    public static final void cancel(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        x.cancel(coroutineContext, cancellationException);
    }

    public static final void cancel(@NotNull Job job, @NotNull String str, @Nullable Throwable th) {
        x.cancel(job, str, th);
    }

    @Nullable
    public static final Object cancelAndJoin(@NotNull Job job, @NotNull Continuation<? super Unit> continuation) {
        return x.cancelAndJoin(job, continuation);
    }

    public static final void cancelChildren(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        x.cancelChildren(coroutineContext, cancellationException);
    }

    public static final void cancelChildren(@NotNull Job job, @Nullable CancellationException cancellationException) {
        x.cancelChildren(job, cancellationException);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This function does not do what its name implies: it will not cancel the future if just cancel() was called.", replaceWith = @ReplaceWith(expression = "this.invokeOnCancellation { future.cancel(false) }", imports = {}))
    public static final void cancelFutureOnCancellation(@NotNull CancellableContinuation<?> cancellableContinuation, @NotNull Future<?> future) {
        w.cancelFutureOnCancellation(cancellableContinuation, future);
    }

    @NotNull
    public static final DisposableHandle disposeOnCompletion(@NotNull Job job, @NotNull DisposableHandle disposableHandle) {
        return x.disposeOnCompletion(job, disposableHandle);
    }

    public static final void ensureActive(@NotNull CoroutineContext coroutineContext) {
        x.ensureActive(coroutineContext);
    }

    public static final void ensureActive(@NotNull Job job) {
        x.ensureActive(job);
    }

    @NotNull
    public static final Job getJob(@NotNull CoroutineContext coroutineContext) {
        return x.getJob(coroutineContext);
    }

    @NotNull
    public static final DisposableHandle invokeOnCompletion(@NotNull Job job, boolean z, @NotNull JobNode jobNode) {
        return x.invokeOnCompletion(job, z, jobNode);
    }

    public static final boolean isActive(@NotNull CoroutineContext coroutineContext) {
        return x.isActive(coroutineContext);
    }
}
