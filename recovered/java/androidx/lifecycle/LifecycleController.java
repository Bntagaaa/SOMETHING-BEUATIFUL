package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/lifecycle/LifecycleController;", "", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Landroidx/lifecycle/Lifecycle$State;", "minState", "Landroidx/lifecycle/DispatchQueue;", "dispatchQueue", "Lkotlinx/coroutines/Job;", "parentJob", "<init>", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/DispatchQueue;Lkotlinx/coroutines/Job;)V", "", "finish", "()V", "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
@MainThread
@SourceDebugExtension({"SMAP\nLifecycleController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleController.kt\nandroidx/lifecycle/LifecycleController\n*L\n1#1,71:1\n57#1,3:72\n57#1,3:75\n*S KotlinDebug\n*F\n+ 1 LifecycleController.kt\nandroidx/lifecycle/LifecycleController\n*L\n49#1:72,3\n36#1:75,3\n*E\n"})
/* loaded from: classes.dex */
public final class LifecycleController {

    /* renamed from: a, reason: collision with root package name */
    public final Lifecycle f1812a;

    /* renamed from: b, reason: collision with root package name */
    public final Lifecycle.State f1813b;
    public final DispatchQueue c;
    public final g d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.lifecycle.LifecycleObserver, androidx.lifecycle.g] */
    public LifecycleController(@NotNull Lifecycle lifecycle, @NotNull Lifecycle.State minState, @NotNull DispatchQueue dispatchQueue, @NotNull final Job parentJob) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(minState, "minState");
        Intrinsics.checkNotNullParameter(dispatchQueue, "dispatchQueue");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        this.f1812a = lifecycle;
        this.f1813b = minState;
        this.c = dispatchQueue;
        ?? r3 = new LifecycleEventObserver() { // from class: androidx.lifecycle.g
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                LifecycleController this$0 = this.f1898a;
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                Job parentJob2 = parentJob;
                Intrinsics.checkNotNullParameter(parentJob2, "$parentJob");
                Intrinsics.checkNotNullParameter(source, "source");
                Intrinsics.checkNotNullParameter(event, "<anonymous parameter 1>");
                if (source.getLifecycle().getD() == Lifecycle.State.DESTROYED) {
                    Job.DefaultImpls.cancel$default(parentJob2, (CancellationException) null, 1, (Object) null);
                    this$0.finish();
                    return;
                }
                int iCompareTo = source.getLifecycle().getD().compareTo(this$0.f1813b);
                DispatchQueue dispatchQueue2 = this$0.c;
                if (iCompareTo < 0) {
                    dispatchQueue2.pause();
                } else {
                    dispatchQueue2.resume();
                }
            }
        };
        this.d = r3;
        if (lifecycle.getD() != Lifecycle.State.DESTROYED) {
            lifecycle.addObserver(r3);
        } else {
            Job.DefaultImpls.cancel$default(parentJob, (CancellationException) null, 1, (Object) null);
            finish();
        }
    }

    @MainThread
    public final void finish() {
        this.f1812a.removeObserver(this.d);
        this.c.finish();
    }
}
