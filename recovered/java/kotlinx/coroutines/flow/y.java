package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {387, 394, 397}, m = "collect$suspendImpl", n = {"$this", "collector", "slot", "$this", "collector", "slot", "collectorJob", "$this", "collector", "slot", "collectorJob"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes2.dex */
final class y<T> extends ContinuationImpl {
    public SharedFlowImpl d;
    public FlowCollector e;
    public SharedFlowSlot f;

    /* renamed from: g, reason: collision with root package name */
    public Job f6598g;
    public /* synthetic */ Object h;
    public final /* synthetic */ SharedFlowImpl i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(SharedFlowImpl sharedFlowImpl, Continuation continuation) {
        super(continuation);
        this.i = sharedFlowImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return SharedFlowImpl.c(this.i, null, this);
    }
}
