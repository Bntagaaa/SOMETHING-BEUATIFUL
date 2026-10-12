package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0002\r\u000eB\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0086@¢\u0006\u0004\b\t\u0010\nR\u000b\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/b;", "T", "", "", "Lkotlinx/coroutines/Deferred;", "deferreds", "<init>", "([Lkotlinx/coroutines/Deferred;)V", "", "await", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/atomicfu/AtomicInt;", "notCompletedCount", "b", "a", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,121:1\n426#2,9:122\n435#2,2:133\n13402#3,2:131\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n*L\n63#1:122,9\n63#1:133,2\n75#1:131,2\n*E\n"})
/* loaded from: classes2.dex */
final class b<T> {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f6152b = AtomicIntegerFieldUpdater.newUpdater(b.class, "notCompletedCount$volatile");

    /* renamed from: a, reason: collision with root package name */
    public final Deferred[] f6153a;
    private volatile /* synthetic */ int notCompletedCount$volatile;

    public b(@NotNull Deferred<? extends T>[] deferredArr) {
        this.f6153a = deferredArr;
        this.notCompletedCount$volatile = deferredArr.length;
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u000e\u0012\f0\u0003R\b\u0012\u0004\u0012\u00028\u00000\u00040\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/b$b;", "Lkotlinx/coroutines/CancelHandler;", "", "Lkotlinx/coroutines/b$a;", "Lkotlinx/coroutines/b;", "nodes", "<init>", "(Lkotlinx/coroutines/b;[Lkotlinx/coroutines/b$a;)V", "", "disposeAll", "()V", "", "cause", "invoke", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,121:1\n13402#2,2:122\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel\n*L\n88#1:122,2\n*E\n"})
    /* renamed from: kotlinx.coroutines.b$b, reason: collision with other inner class name */
    public final class C0155b implements CancelHandler {

        /* renamed from: a, reason: collision with root package name */
        public final a[] f6155a;

        public C0155b(@NotNull b bVar, b<T>.a[] aVarArr) {
            this.f6155a = aVarArr;
        }

        @Override // kotlinx.coroutines.CancelHandler
        public void invoke(@Nullable Throwable cause) {
            disposeAll();
        }

        @NotNull
        public String toString() {
            return "DisposeHandlersOnCancel[" + this.f6155a + ']';
        }

        public final void disposeAll() {
            for (a aVar : this.f6155a) {
                aVar.getHandle().dispose();
            }
        }
    }

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R<\u0010\u001b\u001a\u000e\u0018\u00010\u0014R\b\u0012\u0004\u0012\u00028\u00000\u00152\u0012\u0010\u0016\u001a\u000e\u0018\u00010\u0014R\b\u0012\u0004\u0012\u00028\u00000\u00158F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u001d\u0010!\u001a\u0014\u0012\u0010\u0012\u000e\u0018\u00010\u0014R\b\u0012\u0004\u0012\u00028\u00000\u00150 8\u0002X\u0082\u0004¨\u0006\""}, d2 = {"Lkotlinx/coroutines/b$a;", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/CancellableContinuation;", "", "continuation", "<init>", "(Lkotlinx/coroutines/b;Lkotlinx/coroutines/CancellableContinuation;)V", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "Lkotlinx/coroutines/DisposableHandle;", "e", "Lkotlinx/coroutines/DisposableHandle;", "getHandle", "()Lkotlinx/coroutines/DisposableHandle;", "setHandle", "(Lkotlinx/coroutines/DisposableHandle;)V", "handle", "Lkotlinx/coroutines/b$b;", "Lkotlinx/coroutines/b;", "value", "getDisposer", "()Lkotlinx/coroutines/b$b;", "setDisposer", "(Lkotlinx/coroutines/b$b;)V", "disposer", "", "getOnCancelling", "()Z", "onCancelling", "Lkotlinx/atomicfu/AtomicRef;", "_disposer", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,121:1\n11158#2:122\n11493#2,3:123\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n*L\n115#1:122\n115#1:123,3\n*E\n"})
    public final class a extends JobNode {

        /* renamed from: g, reason: collision with root package name */
        public static final /* synthetic */ AtomicReferenceFieldUpdater f6154g = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_disposer$volatile");
        private volatile /* synthetic */ Object _disposer$volatile;
        public final CancellableContinuation d;

        /* renamed from: e, reason: from kotlin metadata */
        public DisposableHandle handle;

        @Override // kotlinx.coroutines.JobNode
        public boolean getOnCancelling() {
            return false;
        }

        public a(@NotNull CancellableContinuation<? super List<? extends T>> cancellableContinuation) {
            this.d = cancellableContinuation;
        }

        @NotNull
        public final DisposableHandle getHandle() {
            DisposableHandle disposableHandle = this.handle;
            if (disposableHandle != null) {
                return disposableHandle;
            }
            Intrinsics.throwUninitializedPropertyAccessException("handle");
            return null;
        }

        public final void setHandle(@NotNull DisposableHandle disposableHandle) {
            this.handle = disposableHandle;
        }

        @Nullable
        public final b<T>.C0155b getDisposer() {
            return (C0155b) f6154g.get(this);
        }

        public final void setDisposer(@Nullable b<T>.C0155b c0155b) {
            f6154g.set(this, c0155b);
        }

        @Override // kotlinx.coroutines.JobNode
        public void invoke(@Nullable Throwable cause) {
            CancellableContinuation cancellableContinuation = this.d;
            if (cause != null) {
                Object objTryResumeWithException = cancellableContinuation.tryResumeWithException(cause);
                if (objTryResumeWithException != null) {
                    cancellableContinuation.completeResume(objTryResumeWithException);
                    b<T>.C0155b disposer = getDisposer();
                    if (disposer != null) {
                        disposer.disposeAll();
                        return;
                    }
                    return;
                }
                return;
            }
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = b.f6152b;
            b bVar = b.this;
            if (atomicIntegerFieldUpdater.decrementAndGet(bVar) == 0) {
                Deferred[] deferredArr = bVar.f6153a;
                ArrayList arrayList = new ArrayList(deferredArr.length);
                for (Deferred deferred : deferredArr) {
                    arrayList.add(deferred.getCompleted());
                }
                cancellableContinuation.resumeWith(Result.m565constructorimpl(arrayList));
            }
        }
    }

    @Nullable
    public final Object await(@NotNull Continuation<? super List<? extends T>> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        int length = this.f6153a.length;
        a[] aVarArr = new a[length];
        for (int i = 0; i < length; i++) {
            Deferred deferred = this.f6153a[i];
            deferred.start();
            a aVar = new a(cancellableContinuationImpl);
            aVar.setHandle(x.invokeOnCompletion$default(deferred, false, aVar, 1, null));
            Unit unit = Unit.INSTANCE;
            aVarArr[i] = aVar;
        }
        b<T>.C0155b c0155b = new C0155b(this, aVarArr);
        for (int i2 = 0; i2 < length; i2++) {
            aVarArr[i2].setDisposer(c0155b);
        }
        if (cancellableContinuationImpl.isCompleted()) {
            c0155b.disposeAll();
        } else {
            CancellableContinuationKt.invokeOnCancellation(cancellableContinuationImpl, c0155b);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
