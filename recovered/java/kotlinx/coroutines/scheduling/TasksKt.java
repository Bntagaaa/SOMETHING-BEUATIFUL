package kotlinx.coroutines.scheduling;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.internal.SystemPropsKt;
import kotlinx.coroutines.internal.g;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u001a+\u0010\b\u001a\u00020\u0007*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0003\u001a\u00020\u00022\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0000¢\u0006\u0004\b\b\u0010\t\"\u0014\u0010\u000b\u001a\u00020\n8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f\"\u0014\u0010\r\u001a\u00020\u00028\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e\"\u0014\u0010\u0010\u001a\u00020\u000f8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011\"\u0014\u0010\u0012\u001a\u00020\u000f8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011\"\u0014\u0010\u0013\u001a\u00020\u00028\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u000e\"\u0016\u0010\u0015\u001a\u00020\u00148\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016\"\u0018\u0010\u0017\u001a\u00060\u0004j\u0002`\u00058\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018\"\u0018\u0010\u0019\u001a\u00060\u0004j\u0002`\u00058\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0018\"\u001d\u0010\u001a\u001a\u00060\u0004j\u0002`\u0005*\u00020\u00078À\u0002X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b*\f\b\u0000\u0010\u001c\"\u00020\u00042\u00020\u0004¨\u0006\u001d"}, d2 = {"Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "submissionTime", "", "Lkotlinx/coroutines/scheduling/TaskContext;", "taskContext", "Lkotlinx/coroutines/scheduling/Task;", "asTask", "(Ljava/lang/Runnable;JZ)Lkotlinx/coroutines/scheduling/Task;", "", "DEFAULT_SCHEDULER_NAME", "Ljava/lang/String;", "WORK_STEALING_TIME_RESOLUTION_NS", "J", "", "CORE_POOL_SIZE", "I", "MAX_POOL_SIZE", "IDLE_WORKER_KEEP_ALIVE_NS", "Lkotlinx/coroutines/scheduling/SchedulerTimeSource;", "schedulerTimeSource", "Lkotlinx/coroutines/scheduling/SchedulerTimeSource;", "NonBlockingContext", "Z", "BlockingContext", "isBlocking", "(Lkotlinx/coroutines/scheduling/Task;)Z", "TaskContext", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class TasksKt {
    public static final boolean BlockingContext = true;
    public static final boolean NonBlockingContext = false;

    @JvmField
    @NotNull
    public static final String DEFAULT_SCHEDULER_NAME = SystemPropsKt.systemProp("kotlinx.coroutines.scheduler.default.name", "DefaultDispatcher");

    @JvmField
    public static final long WORK_STEALING_TIME_RESOLUTION_NS = g.systemProp$default("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 0L, 0L, 12, (Object) null);

    @JvmField
    public static final int CORE_POOL_SIZE = g.systemProp$default("kotlinx.coroutines.scheduler.core.pool.size", RangesKt.coerceAtLeast(SystemPropsKt.getAVAILABLE_PROCESSORS(), 2), 1, 0, 8, (Object) null);

    @JvmField
    public static final int MAX_POOL_SIZE = g.systemProp$default("kotlinx.coroutines.scheduler.max.pool.size", CoroutineScheduler.MAX_SUPPORTED_POOL_SIZE, 0, CoroutineScheduler.MAX_SUPPORTED_POOL_SIZE, 4, (Object) null);

    @JvmField
    public static final long IDLE_WORKER_KEEP_ALIVE_NS = TimeUnit.SECONDS.toNanos(g.systemProp$default("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 0L, 0L, 12, (Object) null));

    @JvmField
    @NotNull
    public static SchedulerTimeSource schedulerTimeSource = NanoTimeSource.INSTANCE;

    public static final String access$taskContextString(boolean z) {
        return z ? "Blocking" : "Non-blocking";
    }

    public static final boolean isBlocking(@NotNull Task task) {
        return task.taskContext;
    }

    @NotNull
    public static final Task asTask(@NotNull Runnable runnable, long j, boolean z) {
        return new a(runnable, j, z);
    }
}
