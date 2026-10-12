package kotlinx.coroutines.internal;

import com.airbnb.lottie.BuildConfig;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletionStateKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DispatchedTask;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.ThreadLocalEventLoop;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u0005B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\u0013H\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0013H\u0000¢\u0006\u0004\b\u0017\u0010\u0015J\u0017\u0010\u001c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0019H\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010!\u001a\u0004\u0018\u00010\u001e2\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u001dH\u0000¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010%\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u001eH\u0000¢\u0006\u0004\b#\u0010$J\u0011\u0010)\u001a\u0004\u0018\u00010&H\u0010¢\u0006\u0004\b'\u0010(J\u001d\u0010,\u001a\u00020\u00132\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0016¢\u0006\u0004\b,\u0010-J\u001e\u0010/\u001a\u00020\u00132\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0080\b¢\u0006\u0004\b.\u0010-J\u001a\u00103\u001a\u00020\u000f2\b\u00100\u001a\u0004\u0018\u00010&H\u0080\b¢\u0006\u0004\b1\u00102J\u001e\u00105\u001a\u00020\u00132\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0080\b¢\u0006\u0004\b4\u0010-J\u001f\u0010;\u001a\u00020\u00132\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00028\u0000H\u0000¢\u0006\u0004\b9\u0010:J\u000f\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b=\u0010>R\u0014\u0010\u0007\u001a\u00020\u00068\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010?R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010@R\u001e\u0010A\u001a\u0004\u0018\u00010&8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bA\u0010B\u0012\u0004\bC\u0010\u0015R\u0014\u0010D\u001a\u00020&8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\bD\u0010BR\u001c\u0010G\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bE\u0010FR\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058PX\u0090\u0004¢\u0006\u0006\u001a\u0004\bH\u0010IR\u0014\u00107\u001a\u0002068\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bK\u0010LR\u0013\u0010N\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010&0M8\u0002X\u0082\u0004¨\u0006O"}, d2 = {"Lkotlinx/coroutines/internal/DispatchedContinuation;", "T", "Lkotlinx/coroutines/DispatchedTask;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/CoroutineDispatcher;", "dispatcher", "continuation", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "", "isReusable$kotlinx_coroutines_core", "()Z", "isReusable", "", "awaitReusability$kotlinx_coroutines_core", "()V", "awaitReusability", "release$kotlinx_coroutines_core", BuildConfig.BUILD_TYPE, "Lkotlinx/coroutines/CancellableContinuationImpl;", "claimReusableCancellableContinuation$kotlinx_coroutines_core", "()Lkotlinx/coroutines/CancellableContinuationImpl;", "claimReusableCancellableContinuation", "Lkotlinx/coroutines/CancellableContinuation;", "", "tryReleaseClaimedContinuation$kotlinx_coroutines_core", "(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;", "tryReleaseClaimedContinuation", "cause", "postponeCancellation$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)Z", "postponeCancellation", "", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "resumeCancellableWith$kotlinx_coroutines_core", "resumeCancellableWith", "state", "resumeCancelled$kotlinx_coroutines_core", "(Ljava/lang/Object;)Z", "resumeCancelled", "resumeUndispatchedWith$kotlinx_coroutines_core", "resumeUndispatchedWith", "Lkotlin/coroutines/CoroutineContext;", "context", "value", "dispatchYield$kotlinx_coroutines_core", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "dispatchYield", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlin/coroutines/Continuation;", "_state", "Ljava/lang/Object;", "get_state$kotlinx_coroutines_core$annotations", "countOrElement", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "delegate", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/atomicfu/AtomicRef;", "_reusableCancellableContinuation", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,313:1\n224#1,8:377\n236#1:385\n237#1,2:396\n239#1:400\n1#2:314\n1#2:320\n1#2:361\n293#3,5:315\n298#3,12:321\n310#3:355\n293#3,5:356\n298#3,12:362\n310#3:415\n184#4,3:333\n187#4,14:341\n184#4,3:374\n187#4,14:401\n91#5,5:336\n103#5,10:386\n114#5,2:398\n103#5,13:416\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n214#1:377,8\n215#1:385\n215#1:396,2\n215#1:400\n195#1:320\n213#1:361\n195#1:315,5\n195#1:321,12\n195#1:355\n213#1:356,5\n213#1:362,12\n213#1:415\n195#1:333,3\n195#1:341,14\n213#1:374,3\n213#1:401,14\n196#1:336,5\n215#1:386,10\n215#1:398,2\n236#1:416,13\n*E\n"})
/* loaded from: classes2.dex */
public final class DispatchedContinuation<T> extends DispatchedTask<T> implements CoroutineStackFrame, Continuation<T> {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f6619a = AtomicReferenceFieldUpdater.newUpdater(DispatchedContinuation.class, Object.class, "_reusableCancellableContinuation$volatile");
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;

    @JvmField
    @Nullable
    public Object _state;

    @JvmField
    @NotNull
    public final Continuation<T> continuation;

    @JvmField
    @NotNull
    public final Object countOrElement;

    @JvmField
    @NotNull
    public final CoroutineDispatcher dispatcher;

    public static /* synthetic */ void get_state$kotlinx_coroutines_core$annotations() {
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.continuation.getContext();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @NotNull
    public Continuation<T> getDelegate$kotlinx_coroutines_core() {
        return this;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    /* renamed from: getStackTraceElement */
    public StackTraceElement getF6258b() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DispatchedContinuation(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Continuation<? super T> continuation) {
        super(-1);
        this.dispatcher = coroutineDispatcher;
        this.continuation = continuation;
        this._state = DispatchedContinuationKt.f6620a;
        this.countOrElement = ThreadContextKt.threadContextElements(getContext());
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.continuation;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    public final boolean isReusable$kotlinx_coroutines_core() {
        return f6619a.get(this) != null;
    }

    public final void awaitReusability$kotlinx_coroutines_core() {
        while (f6619a.get(this) == DispatchedContinuationKt.REUSABLE_CLAIMED) {
        }
    }

    public final void release$kotlinx_coroutines_core() {
        awaitReusability$kotlinx_coroutines_core();
        Object obj = f6619a.get(this);
        CancellableContinuationImpl cancellableContinuationImpl = obj instanceof CancellableContinuationImpl ? (CancellableContinuationImpl) obj : null;
        if (cancellableContinuationImpl != null) {
            cancellableContinuationImpl.detachChild$kotlinx_coroutines_core();
        }
    }

    @Nullable
    public final CancellableContinuationImpl<T> claimReusableCancellableContinuation$kotlinx_coroutines_core() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6619a;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                atomicReferenceFieldUpdater.set(this, DispatchedContinuationKt.REUSABLE_CLAIMED);
                return null;
            }
            if (obj instanceof CancellableContinuationImpl) {
                Symbol symbol = DispatchedContinuationKt.REUSABLE_CLAIMED;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, symbol)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return (CancellableContinuationImpl) obj;
            }
            if (obj != DispatchedContinuationKt.REUSABLE_CLAIMED && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    @Nullable
    public final Throwable tryReleaseClaimedContinuation$kotlinx_coroutines_core(@NotNull CancellableContinuation<?> continuation) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6619a;
            Object obj = atomicReferenceFieldUpdater.get(this);
            Symbol symbol = DispatchedContinuationKt.REUSABLE_CLAIMED;
            if (obj == symbol) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, symbol, continuation)) {
                    if (atomicReferenceFieldUpdater.get(this) != symbol) {
                        break;
                    }
                }
                return null;
            }
            if (obj instanceof Throwable) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                }
                return (Throwable) obj;
            }
            throw new IllegalStateException(("Inconsistent state " + obj).toString());
        }
    }

    public final boolean postponeCancellation$kotlinx_coroutines_core(@NotNull Throwable cause) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6619a;
            Object obj = atomicReferenceFieldUpdater.get(this);
            Symbol symbol = DispatchedContinuationKt.REUSABLE_CLAIMED;
            if (Intrinsics.areEqual(obj, symbol)) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, symbol, cause)) {
                    if (atomicReferenceFieldUpdater.get(this) != symbol) {
                        break;
                    }
                }
                return true;
            }
            if (obj instanceof Throwable) {
                return true;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            return false;
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @Nullable
    public Object takeState$kotlinx_coroutines_core() {
        Object obj = this._state;
        this._state = DispatchedContinuationKt.f6620a;
        return obj;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object result) {
        Object state = CompletionStateKt.toState(result);
        if (DispatchedContinuationKt.safeIsDispatchNeeded(this.dispatcher, getContext())) {
            this._state = state;
            this.resumeMode = 0;
            DispatchedContinuationKt.safeDispatch(this.dispatcher, getContext(), this);
            return;
        }
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            this._state = state;
            this.resumeMode = 0;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(this);
            return;
        }
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            CoroutineContext context = getContext();
            Object objUpdateThreadContext = ThreadContextKt.updateThreadContext(context, this.countOrElement);
            try {
                this.continuation.resumeWith(result);
                Unit unit = Unit.INSTANCE;
                while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent()) {
                }
            } finally {
                ThreadContextKt.restoreThreadContext(context, objUpdateThreadContext);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x008a A[Catch: all -> 0x0060, DONT_GENERATE, TryCatch #1 {all -> 0x0060, blocks: (B:10:0x0037, B:12:0x0045, B:14:0x004b, B:29:0x0090, B:17:0x0062, B:19:0x0072, B:23:0x007f, B:25:0x0084, B:28:0x008d, B:27:0x008a, B:34:0x00a1, B:36:0x00a6, B:39:0x00af, B:40:0x00b2, B:38:0x00ac, B:22:0x0078), top: B:49:0x0037, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void resumeCancellableWith$kotlinx_coroutines_core(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlinx.coroutines.CompletionStateKt.toState(r7)
            kotlinx.coroutines.CoroutineDispatcher r1 = r6.dispatcher
            kotlin.coroutines.CoroutineContext r2 = r6.getContext()
            boolean r1 = kotlinx.coroutines.internal.DispatchedContinuationKt.safeIsDispatchNeeded(r1, r2)
            r2 = 1
            if (r1 == 0) goto L1f
            r6._state = r0
            r6.resumeMode = r2
            kotlinx.coroutines.CoroutineDispatcher r7 = r6.dispatcher
            kotlin.coroutines.CoroutineContext r0 = r6.getContext()
            kotlinx.coroutines.internal.DispatchedContinuationKt.safeDispatch(r7, r0, r6)
            return
        L1f:
            kotlinx.coroutines.ThreadLocalEventLoop r1 = kotlinx.coroutines.ThreadLocalEventLoop.INSTANCE
            kotlinx.coroutines.EventLoop r1 = r1.getEventLoop$kotlinx_coroutines_core()
            boolean r3 = r1.isUnconfinedLoopActive()
            if (r3 == 0) goto L34
            r6._state = r0
            r6.resumeMode = r2
            r1.dispatchUnconfined(r6)
            goto Lba
        L34:
            r1.incrementUseCount(r2)
            kotlin.coroutines.CoroutineContext r3 = r6.getContext()     // Catch: java.lang.Throwable -> L60
            kotlinx.coroutines.Job$Key r4 = kotlinx.coroutines.Job.INSTANCE     // Catch: java.lang.Throwable -> L60
            kotlin.coroutines.CoroutineContext$Element r3 = r3.get(r4)     // Catch: java.lang.Throwable -> L60
            kotlinx.coroutines.Job r3 = (kotlinx.coroutines.Job) r3     // Catch: java.lang.Throwable -> L60
            if (r3 == 0) goto L62
            boolean r4 = r3.isActive()     // Catch: java.lang.Throwable -> L60
            if (r4 != 0) goto L62
            java.util.concurrent.CancellationException r7 = r3.getCancellationException()     // Catch: java.lang.Throwable -> L60
            r6.cancelCompletedResult$kotlinx_coroutines_core(r0, r7)     // Catch: java.lang.Throwable -> L60
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L60
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)     // Catch: java.lang.Throwable -> L60
            java.lang.Object r7 = kotlin.Result.m565constructorimpl(r7)     // Catch: java.lang.Throwable -> L60
            r6.resumeWith(r7)     // Catch: java.lang.Throwable -> L60
            goto L90
        L60:
            r7 = move-exception
            goto Lb3
        L62:
            kotlin.coroutines.Continuation<T> r0 = r6.continuation     // Catch: java.lang.Throwable -> L60
            java.lang.Object r3 = r6.countOrElement     // Catch: java.lang.Throwable -> L60
            kotlin.coroutines.CoroutineContext r4 = r0.getContext()     // Catch: java.lang.Throwable -> L60
            java.lang.Object r3 = kotlinx.coroutines.internal.ThreadContextKt.updateThreadContext(r4, r3)     // Catch: java.lang.Throwable -> L60
            kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.internal.ThreadContextKt.NO_THREAD_ELEMENTS     // Catch: java.lang.Throwable -> L60
            if (r3 == r5) goto L77
            kotlinx.coroutines.UndispatchedCoroutine r0 = kotlinx.coroutines.CoroutineContextKt.updateUndispatchedCompletion(r0, r4, r3)     // Catch: java.lang.Throwable -> L60
            goto L78
        L77:
            r0 = 0
        L78:
            kotlin.coroutines.Continuation<T> r5 = r6.continuation     // Catch: java.lang.Throwable -> La0
            r5.resumeWith(r7)     // Catch: java.lang.Throwable -> La0
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> La0
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)     // Catch: java.lang.Throwable -> L60
            if (r0 == 0) goto L8a
            boolean r7 = r0.clearThreadContext()     // Catch: java.lang.Throwable -> L60
            if (r7 == 0) goto L8d
        L8a:
            kotlinx.coroutines.internal.ThreadContextKt.restoreThreadContext(r4, r3)     // Catch: java.lang.Throwable -> L60
        L8d:
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)     // Catch: java.lang.Throwable -> L60
        L90:
            boolean r7 = r1.processUnconfinedEvent()     // Catch: java.lang.Throwable -> L60
            if (r7 != 0) goto L90
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
        L99:
            r1.decrementUseCount(r2)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            goto Lba
        La0:
            r7 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)     // Catch: java.lang.Throwable -> L60
            if (r0 == 0) goto Lac
            boolean r0 = r0.clearThreadContext()     // Catch: java.lang.Throwable -> L60
            if (r0 == 0) goto Laf
        Lac:
            kotlinx.coroutines.internal.ThreadContextKt.restoreThreadContext(r4, r3)     // Catch: java.lang.Throwable -> L60
        Laf:
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)     // Catch: java.lang.Throwable -> L60
            throw r7     // Catch: java.lang.Throwable -> L60
        Lb3:
            r6.handleFatalException$kotlinx_coroutines_core(r7)     // Catch: java.lang.Throwable -> Lbb
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            goto L99
        Lba:
            return
        Lbb:
            r7 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r1.decrementUseCount(r2)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.DispatchedContinuation.resumeCancellableWith$kotlinx_coroutines_core(java.lang.Object):void");
    }

    public final boolean resumeCancelled$kotlinx_coroutines_core(@Nullable Object state) {
        Job job = (Job) getContext().get(Job.INSTANCE);
        if (job == null || job.isActive()) {
            return false;
        }
        CancellationException cancellationException = job.getCancellationException();
        cancelCompletedResult$kotlinx_coroutines_core(state, cancellationException);
        Result.Companion companion = Result.INSTANCE;
        resumeWith(Result.m565constructorimpl(ResultKt.createFailure(cancellationException)));
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0029 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void resumeUndispatchedWith$kotlinx_coroutines_core(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.Continuation<T> r0 = r5.continuation
            java.lang.Object r1 = r5.countOrElement
            kotlin.coroutines.CoroutineContext r2 = r0.getContext()
            java.lang.Object r1 = kotlinx.coroutines.internal.ThreadContextKt.updateThreadContext(r2, r1)
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.internal.ThreadContextKt.NO_THREAD_ELEMENTS
            if (r1 == r3) goto L15
            kotlinx.coroutines.UndispatchedCoroutine r0 = kotlinx.coroutines.CoroutineContextKt.updateUndispatchedCompletion(r0, r2, r1)
            goto L16
        L15:
            r0 = 0
        L16:
            r3 = 1
            kotlin.coroutines.Continuation<T> r4 = r5.continuation     // Catch: java.lang.Throwable -> L30
            r4.resumeWith(r6)     // Catch: java.lang.Throwable -> L30
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L30
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            if (r0 == 0) goto L29
            boolean r6 = r0.clearThreadContext()
            if (r6 == 0) goto L2c
        L29:
            kotlinx.coroutines.internal.ThreadContextKt.restoreThreadContext(r2, r1)
        L2c:
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            return
        L30:
            r6 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            if (r0 == 0) goto L3c
            boolean r0 = r0.clearThreadContext()
            if (r0 == 0) goto L3f
        L3c:
            kotlinx.coroutines.internal.ThreadContextKt.restoreThreadContext(r2, r1)
        L3f:
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.DispatchedContinuation.resumeUndispatchedWith$kotlinx_coroutines_core(java.lang.Object):void");
    }

    public final void dispatchYield$kotlinx_coroutines_core(@NotNull CoroutineContext context, T value) {
        this._state = value;
        this.resumeMode = 1;
        this.dispatcher.dispatchYield(context, this);
    }

    @NotNull
    public String toString() {
        return "DispatchedContinuation[" + this.dispatcher + ", " + DebugStringsKt.toDebugString(this.continuation) + ']';
    }
}
