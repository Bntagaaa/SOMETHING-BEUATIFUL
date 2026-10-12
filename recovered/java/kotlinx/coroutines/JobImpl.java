package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\n\b\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\u0011\u001a\u00020\u00078\u0010X\u0090\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\tR\u0014\u0010\u0013\u001a\u00020\u00078PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\t¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableJob;", "Lkotlinx/coroutines/Job;", "parent", "<init>", "(Lkotlinx/coroutines/Job;)V", "", "complete", "()Z", "", "exception", "completeExceptionally", "(Ljava/lang/Throwable;)Z", "c", "Z", "getHandlesException$kotlinx_coroutines_core", "handlesException", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@PublishedApi
/* loaded from: classes2.dex */
public class JobImpl extends JobSupport implements CompletableJob {

    /* renamed from: c, reason: from kotlin metadata */
    public final boolean handlesException;

    @Override // kotlinx.coroutines.JobSupport
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobImpl(@Nullable Job job) {
        JobSupport job2;
        super(true);
        boolean z = true;
        initParentJob(job);
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        i iVar = parentHandle$kotlinx_coroutines_core instanceof i ? (i) parentHandle$kotlinx_coroutines_core : null;
        if (iVar == null || (job2 = iVar.getJob()) == null) {
            z = false;
            break;
        }
        while (!job2.getHandlesException()) {
            ChildHandle parentHandle$kotlinx_coroutines_core2 = job2.getParentHandle$kotlinx_coroutines_core();
            i iVar2 = parentHandle$kotlinx_coroutines_core2 instanceof i ? (i) parentHandle$kotlinx_coroutines_core2 : null;
            if (iVar2 == null || (job2 = iVar2.getJob()) == null) {
                z = false;
                break;
            }
        }
        this.handlesException = z;
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: getHandlesException$kotlinx_coroutines_core, reason: from getter */
    public boolean getHandlesException() {
        return this.handlesException;
    }

    @Override // kotlinx.coroutines.CompletableJob
    public boolean complete() {
        return makeCompleting$kotlinx_coroutines_core(Unit.INSTANCE);
    }

    @Override // kotlinx.coroutines.CompletableJob
    public boolean completeExceptionally(@NotNull Throwable exception) {
        return makeCompleting$kotlinx_coroutines_core(new CompletedExceptionally(exception, false, 2, null));
    }
}
