package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"kotlinx/coroutines/h0", "kotlinx/coroutines/j0"}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ThreadPoolDispatcherKt {
    @DelicateCoroutinesApi
    @NotNull
    public static final ExecutorCoroutineDispatcher newFixedThreadPoolContext(int i, @NotNull String str) {
        return j0.newFixedThreadPoolContext(i, str);
    }

    @DelicateCoroutinesApi
    @ExperimentalCoroutinesApi
    @NotNull
    public static final ExecutorCoroutineDispatcher newSingleThreadContext(@NotNull String str) {
        return h0.newSingleThreadContext(str);
    }
}
