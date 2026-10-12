package androidx.lifecycle;

import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import java.util.ArrayDeque;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/lifecycle/DispatchQueue;", "", "<init>", "()V", "", "pause", "resume", "finish", "drainQueue", "", "canRun", "()Z", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "runnable", "dispatchAndEnqueue", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DispatchQueue {

    /* renamed from: b, reason: collision with root package name */
    public boolean f1801b;
    public boolean c;

    /* renamed from: a, reason: collision with root package name */
    public boolean f1800a = true;
    public final ArrayDeque d = new ArrayDeque();

    @MainThread
    public final void pause() {
        this.f1800a = true;
    }

    @MainThread
    public final void resume() {
        if (this.f1800a) {
            if (this.f1801b) {
                throw new IllegalStateException("Cannot resume a finished dispatcher");
            }
            this.f1800a = false;
            drainQueue();
        }
    }

    @MainThread
    public final void finish() {
        this.f1801b = true;
        drainQueue();
    }

    @MainThread
    public final void drainQueue() {
        if (this.c) {
            return;
        }
        try {
            this.c = true;
            while (true) {
                ArrayDeque arrayDeque = this.d;
                if (arrayDeque.isEmpty() || !canRun()) {
                    break;
                }
                Runnable runnable = (Runnable) arrayDeque.poll();
                if (runnable != null) {
                    runnable.run();
                }
            }
        } finally {
            this.c = false;
        }
    }

    @MainThread
    public final boolean canRun() {
        return this.f1801b || !this.f1800a;
    }

    @AnyThread
    public final void dispatchAndEnqueue(@NotNull CoroutineContext context, @NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
        if (immediate.isDispatchNeeded(context) || canRun()) {
            immediate.mo1203dispatch(context, new androidx.core.content.res.e(this, runnable, 1));
        } else {
            if (!this.d.offer(runnable)) {
                throw new IllegalStateException("cannot enqueue any more runnables");
            }
            drainQueue();
        }
    }
}
