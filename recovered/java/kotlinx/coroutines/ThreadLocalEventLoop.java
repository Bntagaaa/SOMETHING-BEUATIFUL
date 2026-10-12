package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadLocalKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\n\u001a\u00020\bH\u0000¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u000b\u001a\u00020\u00048@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0006¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/ThreadLocalEventLoop;", "", "<init>", "()V", "Lkotlinx/coroutines/EventLoop;", "currentOrNull$kotlinx_coroutines_core", "()Lkotlinx/coroutines/EventLoop;", "currentOrNull", "", "resetEventLoop$kotlinx_coroutines_core", "resetEventLoop", "eventLoop", "setEventLoop$kotlinx_coroutines_core", "(Lkotlinx/coroutines/EventLoop;)V", "setEventLoop", "getEventLoop$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/ThreadLocalEventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,547:1\n1#2:548\n*E\n"})
/* loaded from: classes2.dex */
public final class ThreadLocalEventLoop {

    @NotNull
    public static final ThreadLocalEventLoop INSTANCE = new ThreadLocalEventLoop();

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f6145a = ThreadLocalKt.commonThreadLocal(new Symbol("ThreadLocalEventLoop"));

    private ThreadLocalEventLoop() {
    }

    @NotNull
    public final EventLoop getEventLoop$kotlinx_coroutines_core() {
        ThreadLocal threadLocal = f6145a;
        EventLoop eventLoop = (EventLoop) threadLocal.get();
        if (eventLoop != null) {
            return eventLoop;
        }
        EventLoop eventLoopCreateEventLoop = EventLoopKt.createEventLoop();
        threadLocal.set(eventLoopCreateEventLoop);
        return eventLoopCreateEventLoop;
    }

    @Nullable
    public final EventLoop currentOrNull$kotlinx_coroutines_core() {
        return (EventLoop) f6145a.get();
    }

    public final void resetEventLoop$kotlinx_coroutines_core() {
        f6145a.set(null);
    }

    public final void setEventLoop$kotlinx_coroutines_core(@NotNull EventLoop eventLoop) {
        f6145a.set(eventLoop);
    }
}
