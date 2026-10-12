package kotlinx.coroutines;

import java.util.Iterator;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\u001a%\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0019\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a\u001b\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0000H\u0007¢\u0006\u0004\b\n\u0010\f\u001a\u001b\u0010\u000f\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0014\u0010\u0012\u001a\u00020\u0011*\u00020\u0000H\u0086@¢\u0006\u0004\b\u0012\u0010\u0013\u001a#\u0010\u0017\u001a\u00020\u0011*\u00020\u00002\u0010\b\u0002\u0010\u0016\u001a\n\u0018\u00010\u0014j\u0004\u0018\u0001`\u0015¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u0013\u0010\u0017\u001a\u00020\u0011*\u00020\u0000H\u0007¢\u0006\u0004\b\u0017\u0010\u0019\u001a\u001f\u0010\u0017\u001a\u00020\u0011*\u00020\u00002\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u001aH\u0007¢\u0006\u0004\b\u0017\u0010\u001b\u001a#\u0010\u001d\u001a\u00020\u0011*\u00020\u001c2\u0010\b\u0002\u0010\u0016\u001a\n\u0018\u00010\u0014j\u0004\u0018\u0001`\u0015¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u0013\u0010\u001d\u001a\u00020\u0011*\u00020\u001cH\u0007¢\u0006\u0004\b\u001d\u0010\u001f\u001a\u0011\u0010 \u001a\u00020\u0011*\u00020\u0000¢\u0006\u0004\b \u0010\u0019\u001a\u0011\u0010 \u001a\u00020\u0011*\u00020\u001c¢\u0006\u0004\b \u0010\u001f\u001a%\u0010\u001d\u001a\u00020\u0011*\u00020\u00002\u0006\u0010\"\u001a\u00020!2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\u001d\u0010#\u001a\u001f\u0010\u001d\u001a\u00020\u0001*\u00020\u001c2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u001aH\u0007¢\u0006\u0004\b\u001d\u0010$\u001a#\u0010\u0017\u001a\u00020\u0011*\u00020\u001c2\u0010\b\u0002\u0010\u0016\u001a\n\u0018\u00010\u0014j\u0004\u0018\u0001`\u0015¢\u0006\u0004\b\u0017\u0010\u001e\u001a\u0013\u0010\u0017\u001a\u00020\u0011*\u00020\u001cH\u0007¢\u0006\u0004\b\u0017\u0010\u001f\u001a\u001f\u0010\u0017\u001a\u00020\u0011*\u00020\u001c2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u001aH\u0007¢\u0006\u0004\b\u0017\u0010%\"\u0015\u0010&\u001a\u00020\u0001*\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b&\u0010'\"\u0015\u0010*\u001a\u00020\u0000*\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lkotlinx/coroutines/Job;", "", "invokeImmediately", "Lkotlinx/coroutines/JobNode;", "handler", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletion", "(Lkotlinx/coroutines/Job;ZLkotlinx/coroutines/JobNode;)Lkotlinx/coroutines/DisposableHandle;", "parent", "Lkotlinx/coroutines/CompletableJob;", "Job", "(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;", "(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;", "Job0", "handle", "disposeOnCompletion", "(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/DisposableHandle;)Lkotlinx/coroutines/DisposableHandle;", "", "cancelAndJoin", "(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cause", "cancelChildren", "(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;)V", "(Lkotlinx/coroutines/Job;)V", "", "(Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)V", "Lkotlin/coroutines/CoroutineContext;", "cancel", "(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V", "(Lkotlin/coroutines/CoroutineContext;)V", "ensureActive", "", "message", "(Lkotlinx/coroutines/Job;Ljava/lang/String;Ljava/lang/Throwable;)V", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)Z", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V", "isActive", "(Lkotlin/coroutines/CoroutineContext;)Z", "getJob", "(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;", "job", "kotlinx-coroutines-core"}, k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/coroutines/JobKt")
@SourceDebugExtension({"SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,692:1\n1317#2,2:693\n1317#2,2:695\n1317#2,2:697\n1317#2,2:699\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n*L\n520#1:693,2\n534#1:695,2\n628#1:697,2\n652#1:699,2\n*E\n"})
/* loaded from: classes2.dex */
public final /* synthetic */ class x {
    public static /* synthetic */ DisposableHandle invokeOnCompletion$default(Job job, boolean z, JobNode jobNode, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return JobKt.invokeOnCompletion(job, z, jobNode);
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class a extends FunctionReferenceImpl implements Function1<Throwable, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            ((JobNode) this.receiver).invoke(th);
        }
    }

    @NotNull
    public static final DisposableHandle invokeOnCompletion(@NotNull Job job, boolean z, @NotNull JobNode jobNode) {
        return job instanceof JobSupport ? ((JobSupport) job).invokeOnCompletionInternal$kotlinx_coroutines_core(z, jobNode) : job.invokeOnCompletion(jobNode.getOnCancelling(), z, new a(1, jobNode, JobNode.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0));
    }

    public static /* synthetic */ CompletableJob Job$default(Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        return JobKt.Job(job);
    }

    @NotNull
    public static final CompletableJob Job(@Nullable Job job) {
        return new JobImpl(job);
    }

    /* renamed from: Job$default, reason: collision with other method in class */
    public static /* synthetic */ Job m1207Job$default(Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        return m1206Job(job);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    @JvmName(name = "Job")
    /* renamed from: Job, reason: collision with other method in class */
    public static final /* synthetic */ Job m1206Job(Job job) {
        return JobKt.Job(job);
    }

    @NotNull
    public static final DisposableHandle disposeOnCompletion(@NotNull Job job, @NotNull DisposableHandle disposableHandle) {
        return invokeOnCompletion$default(job, false, new q(disposableHandle), 1, null);
    }

    @Nullable
    public static final Object cancelAndJoin(@NotNull Job job, @NotNull Continuation<? super Unit> continuation) {
        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        Object objJoin = job.join(continuation);
        return objJoin == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objJoin : Unit.INSTANCE;
    }

    public static /* synthetic */ void cancelChildren$default(Job job, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        JobKt.cancelChildren(job, cancellationException);
    }

    public static final void cancelChildren(@NotNull Job job, @Nullable CancellationException cancellationException) {
        Iterator<Job> it = job.getChildren().iterator();
        while (it.hasNext()) {
            it.next().cancel(cancellationException);
        }
    }

    public static /* synthetic */ void cancelChildren$default(Job job, Throwable th, int i, Object obj) throws Throwable {
        if ((i & 1) != 0) {
            th = null;
        }
        cancelChildren(job, th);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final void cancelChildren(Job job, Throwable th) throws Throwable {
        for (Job job2 : job.getChildren()) {
            JobSupport jobSupport = job2 instanceof JobSupport ? (JobSupport) job2 : null;
            if (jobSupport != null) {
                jobSupport.cancelInternal(th == null ? new JobCancellationException("Job was cancelled", null, job) : th);
            }
        }
    }

    public static final boolean isActive(@NotNull CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job != null) {
            return job.isActive();
        }
        return true;
    }

    public static /* synthetic */ void cancel$default(CoroutineContext coroutineContext, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        JobKt.cancel(coroutineContext, cancellationException);
    }

    public static final void cancel(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job != null) {
            job.cancel(cancellationException);
        }
    }

    public static final void ensureActive(@NotNull Job job) {
        if (!job.isActive()) {
            throw job.getCancellationException();
        }
    }

    public static final void ensureActive(@NotNull CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job != null) {
            JobKt.ensureActive(job);
        }
    }

    public static final void cancel(@NotNull Job job, @NotNull String str, @Nullable Throwable th) {
        job.cancel(ExceptionsKt.CancellationException(str, th));
    }

    public static /* synthetic */ void cancel$default(Job job, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        JobKt.cancel(job, str, th);
    }

    public static /* synthetic */ boolean cancel$default(CoroutineContext coroutineContext, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        return cancel(coroutineContext, th);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final boolean cancel(CoroutineContext coroutineContext, Throwable th) throws Throwable {
        CoroutineContext.Element element = coroutineContext.get(Job.INSTANCE);
        JobSupport jobSupport = element instanceof JobSupport ? (JobSupport) element : null;
        if (jobSupport == null) {
            return false;
        }
        if (th == null) {
            th = new JobCancellationException("Job was cancelled", null, jobSupport);
        }
        jobSupport.cancelInternal(th);
        return true;
    }

    public static /* synthetic */ void cancelChildren$default(CoroutineContext coroutineContext, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        JobKt.cancelChildren(coroutineContext, cancellationException);
    }

    public static final void cancelChildren(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        Sequence<Job> children;
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job == null || (children = job.getChildren()) == null) {
            return;
        }
        Iterator<Job> it = children.iterator();
        while (it.hasNext()) {
            it.next().cancel(cancellationException);
        }
    }

    @NotNull
    public static final Job getJob(@NotNull CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job != null) {
            return job;
        }
        throw new IllegalStateException(("Current context doesn't contain Job in it: " + coroutineContext).toString());
    }

    public static /* synthetic */ void cancelChildren$default(CoroutineContext coroutineContext, Throwable th, int i, Object obj) throws Throwable {
        if ((i & 1) != 0) {
            th = null;
        }
        cancelChildren(coroutineContext, th);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final void cancelChildren(CoroutineContext coroutineContext, Throwable th) throws Throwable {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job == null) {
            return;
        }
        for (Job job2 : job.getChildren()) {
            JobSupport jobSupport = job2 instanceof JobSupport ? (JobSupport) job2 : null;
            if (jobSupport != null) {
                jobSupport.cancelInternal(th == null ? new JobCancellationException("Job was cancelled", null, job) : th);
            }
        }
    }
}
