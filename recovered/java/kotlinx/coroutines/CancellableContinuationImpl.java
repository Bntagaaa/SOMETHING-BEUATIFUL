package kotlinx.coroutines;

import gnu.expr.Declaration;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000¼\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0011\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\u00060\u0004j\u0002`\u00052\u00020\u0006B\u001d\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\n\u0018\u00010\u0013j\u0004\u0018\u0001`\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0017H\u0010¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010 \u001a\u00020\r2\b\u0010\u001b\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001d\u001a\u00020\u001cH\u0010¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010!\u001a\u00020\u00102\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001cH\u0000¢\u0006\u0004\b#\u0010$J\u001f\u0010(\u001a\u00020\r2\u0006\u0010'\u001a\u00020&2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b(\u0010)Jp\u00102\u001a\u00020\r\"\u0004\b\u0001\u0010*2K\u00101\u001aG\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(.\u0012\u0013\u0012\u00110/¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\r0+2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010.\u001a\u00028\u0001¢\u0006\u0004\b2\u00103J\u0017\u00106\u001a\u00020\u001c2\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\b6\u00107J\u0011\u00108\u001a\u0004\u0018\u00010\u0017H\u0001¢\u0006\u0004\b8\u0010\u0019J\u000f\u0010:\u001a\u00020\rH\u0000¢\u0006\u0004\b9\u0010\u000fJ\u001d\u0010=\u001a\u00020\r2\f\u0010<\u001a\b\u0012\u0004\u0012\u00028\u00000;H\u0016¢\u0006\u0004\b=\u0010>J<\u0010@\u001a\u00020\r2\u0006\u0010.\u001a\u00028\u00002#\u00101\u001a\u001f\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\r\u0018\u00010?H\u0016¢\u0006\u0004\b@\u0010AJp\u0010@\u001a\u00020\r\"\b\b\u0001\u0010**\u00028\u00002\u0006\u0010.\u001a\u00028\u00012M\u00101\u001aI\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(.\u0012\u0013\u0012\u00110/¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\r\u0018\u00010+H\u0016¢\u0006\u0004\b@\u0010BJ#\u0010F\u001a\u00020\r2\n\u0010D\u001a\u0006\u0012\u0002\b\u00030C2\u0006\u0010E\u001a\u00020\tH\u0016¢\u0006\u0004\bF\u0010GJ8\u0010F\u001a\u00020\r2'\u0010'\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\r0?j\u0002`HH\u0016¢\u0006\u0004\bF\u0010IJ\u0017\u0010L\u001a\u00020\r2\u0006\u0010'\u001a\u00020&H\u0000¢\u0006\u0004\bJ\u0010KJv\u0010P\u001a\u00020\r\"\u0004\b\u0001\u0010*2\u0006\u0010M\u001a\u00028\u00012\u0006\u0010\n\u001a\u00020\t2O\b\u0002\u00101\u001aI\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(.\u0012\u0013\u0012\u00110/¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\r\u0018\u00010+H\u0000¢\u0006\u0004\bN\u0010OJ\u000f\u0010R\u001a\u00020\rH\u0000¢\u0006\u0004\bQ\u0010\u000fJ#\u0010T\u001a\u0004\u0018\u00010\u00172\u0006\u0010.\u001a\u00028\u00002\b\u0010S\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\bT\u0010UJ|\u0010T\u001a\u0004\u0018\u00010\u0017\"\b\b\u0001\u0010**\u00028\u00002\u0006\u0010.\u001a\u00028\u00012\b\u0010S\u001a\u0004\u0018\u00010\u00172M\u00101\u001aI\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(.\u0012\u0013\u0012\u00110/¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\r\u0018\u00010+H\u0016¢\u0006\u0004\bT\u0010VJ\u0019\u0010X\u001a\u0004\u0018\u00010\u00172\u0006\u0010W\u001a\u00020\u001cH\u0016¢\u0006\u0004\bX\u0010YJ\u0017\u0010[\u001a\u00020\r2\u0006\u0010Z\u001a\u00020\u0017H\u0016¢\u0006\u0004\b[\u0010>J\u001b\u0010]\u001a\u00020\r*\u00020\\2\u0006\u0010.\u001a\u00028\u0000H\u0016¢\u0006\u0004\b]\u0010^J\u001b\u0010_\u001a\u00020\r*\u00020\\2\u0006\u0010W\u001a\u00020\u001cH\u0016¢\u0006\u0004\b_\u0010`J\u001f\u0010d\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010a\u001a\u0004\u0018\u00010\u0017H\u0010¢\u0006\u0004\bb\u0010cJ\u001b\u0010g\u001a\u0004\u0018\u00010\u001c2\b\u0010a\u001a\u0004\u0018\u00010\u0017H\u0010¢\u0006\u0004\be\u0010fJ\u000f\u0010i\u001a\u00020hH\u0016¢\u0006\u0004\bi\u0010jJ\u000f\u0010k\u001a\u00020hH\u0014¢\u0006\u0004\bk\u0010jR \u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\bl\u0010m\u001a\u0004\bn\u0010oR\u001a\u00100\u001a\u00020/8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bp\u0010q\u001a\u0004\br\u0010sR\u0016\u0010a\u001a\u0004\u0018\u00010\u00178@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bt\u0010\u0019R\u0014\u0010u\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bu\u0010\u0012R\u0014\u0010v\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bv\u0010\u0012R\u0014\u0010w\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bw\u0010\u0012R\u001c\u0010z\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bx\u0010yR\u000b\u0010|\u001a\u00020{8\u0002X\u0082\u0004R\u0013\u0010~\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170}8\u0002X\u0082\u0004R\u0014\u0010\u0080\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u007f0}8\u0002X\u0082\u0004¨\u0006\u0081\u0001"}, d2 = {"Lkotlinx/coroutines/CancellableContinuationImpl;", "T", "Lkotlinx/coroutines/DispatchedTask;", "Lkotlinx/coroutines/CancellableContinuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/Waiter;", "Lkotlin/coroutines/Continuation;", "delegate", "", "resumeMode", "<init>", "(Lkotlin/coroutines/Continuation;I)V", "", "initCancellability", "()V", "", "resetStateReusable", "()Z", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "takenState", "", "cause", "cancelCompletedResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelCompletedResult", "cancel", "(Ljava/lang/Throwable;)Z", "parentCancelled$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "parentCancelled", "Lkotlinx/coroutines/CancelHandler;", "handler", "callCancelHandler", "(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V", "R", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "value", "Lkotlin/coroutines/CoroutineContext;", "context", "onCancellation", "callOnCancellation", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Throwable;Ljava/lang/Object;)V", "Lkotlinx/coroutines/Job;", "parent", "getContinuationCancellationCause", "(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;", "getResult", "releaseClaimedReusableContinuation$kotlinx_coroutines_core", "releaseClaimedReusableContinuation", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "Lkotlin/Function1;", "resume", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "Lkotlinx/coroutines/internal/Segment;", "segment", "index", "invokeOnCancellation", "(Lkotlinx/coroutines/internal/Segment;I)V", "Lkotlinx/coroutines/CompletionHandler;", "(Lkotlin/jvm/functions/Function1;)V", "invokeOnCancellationInternal$kotlinx_coroutines_core", "(Lkotlinx/coroutines/CancelHandler;)V", "invokeOnCancellationInternal", "proposedUpdate", "resumeImpl$kotlinx_coroutines_core", "(Ljava/lang/Object;ILkotlin/jvm/functions/Function3;)V", "resumeImpl", "detachChild$kotlinx_coroutines_core", "detachChild", "idempotent", "tryResume", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "exception", "tryResumeWithException", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "token", "completeResume", "Lkotlinx/coroutines/CoroutineDispatcher;", "resumeUndispatched", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V", "resumeUndispatchedWithException", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V", "state", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "getSuccessfulResult", "getExceptionalResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getExceptionalResult", "", "toString", "()Ljava/lang/String;", "nameString", "a", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "b", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getState$kotlinx_coroutines_core", "isActive", "isCompleted", "isCancelled", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlinx/atomicfu/AtomicInt;", "_decisionAndIndex", "Lkotlinx/atomicfu/AtomicRef;", "_state", "Lkotlinx/coroutines/DisposableHandle;", "_parentHandle", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImplKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,701:1\n227#1,10:705\n227#1,10:716\n1#2:702\n20#3:703\n20#3:704\n18#3:715\n17#3:726\n18#3,3:727\n17#3:730\n18#3,3:731\n18#3:738\n17#3,4:739\n57#4,2:734\n57#4,2:736\n57#4,2:743\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n239#1:705,10\n244#1:716,10\n69#1:703\n155#1:704\n242#1:715\n271#1:726\n272#1:727,3\n281#1:730\n282#1:731,3\n387#1:738\n390#1:739,4\n323#1:734,2\n333#1:736,2\n614#1:743,2\n*E\n"})
/* loaded from: classes2.dex */
public class CancellableContinuationImpl<T> extends DispatchedTask<T> implements CancellableContinuation<T>, CoroutineStackFrame, Waiter {
    public static final /* synthetic */ AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(CancellableContinuationImpl.class, "_decisionAndIndex$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_state$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final Continuation delegate;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final CoroutineContext context;

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    /* renamed from: getStackTraceElement */
    public StackTraceElement getF6258b() {
        return null;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @NotNull
    public final Continuation<T> getDelegate$kotlinx_coroutines_core() {
        return this.delegate;
    }

    public CancellableContinuationImpl(@NotNull Continuation<? super T> continuation, int i) {
        super(i);
        this.delegate = continuation;
        this.context = continuation.getContext();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = a.f6147a;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.context;
    }

    public final void detachChild$kotlinx_coroutines_core() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
        DisposableHandle disposableHandle = (DisposableHandle) atomicReferenceFieldUpdater.get(this);
        if (disposableHandle == null) {
            return;
        }
        disposableHandle.dispose();
        atomicReferenceFieldUpdater.set(this, NonDisposableHandle.INSTANCE);
    }

    @Nullable
    public final Object getState$kotlinx_coroutines_core() {
        return d.get(this);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isActive() {
        return getState$kotlinx_coroutines_core() instanceof NotCompleted;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof NotCompleted);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isCancelled() {
        return getState$kotlinx_coroutines_core() instanceof CancelledContinuation;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void initCancellability() {
        DisposableHandle disposableHandleC = c();
        if (disposableHandleC != null && isCompleted()) {
            disposableHandleC.dispose();
            e.set(this, NonDisposableHandle.INSTANCE);
        }
    }

    public final boolean e() {
        if (!DispatchedTaskKt.isReusableMode(this.resumeMode)) {
            return false;
        }
        Continuation continuation = this.delegate;
        Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((DispatchedContinuation) continuation).isReusable$kotlinx_coroutines_core();
    }

    @JvmName(name = "resetStateReusable")
    public final boolean resetStateReusable() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if ((obj instanceof k) && ((k) obj).d != null) {
            detachChild$kotlinx_coroutines_core();
            return false;
        }
        c.set(this, 536870911);
        atomicReferenceFieldUpdater.set(this, a.f6147a);
        return true;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.delegate;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @Nullable
    public Object takeState$kotlinx_coroutines_core() {
        return getState$kotlinx_coroutines_core();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public void cancelCompletedResult$kotlinx_coroutines_core(@Nullable Object takenState, @NotNull Throwable cause) {
        Throwable th;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof NotCompleted) {
                throw new IllegalStateException("Not completed");
            }
            if (obj instanceof CompletedExceptionally) {
                return;
            }
            if (obj instanceof k) {
                k kVar = (k) obj;
                if (kVar.getCancelled()) {
                    throw new IllegalStateException("Must be called at most once");
                }
                Throwable th2 = cause;
                k kVarCopy$default = k.copy$default(kVar, null, null, null, null, th2, 15, null);
                th = th2;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, kVarCopy$default)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                kVar.invokeHandlers(this, th);
                return;
            }
            th = cause;
            k kVar2 = new k(obj, null, null, null, th, 14, null);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, kVar2)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            return;
            cause = th;
        }
    }

    public final void parentCancelled$kotlinx_coroutines_core(@NotNull Throwable cause) {
        boolean zPostponeCancellation$kotlinx_coroutines_core;
        if (e()) {
            Continuation continuation = this.delegate;
            Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            zPostponeCancellation$kotlinx_coroutines_core = ((DispatchedContinuation) continuation).postponeCancellation$kotlinx_coroutines_core(cause);
        } else {
            zPostponeCancellation$kotlinx_coroutines_core = false;
        }
        if (zPostponeCancellation$kotlinx_coroutines_core) {
            return;
        }
        cancel(cause);
        if (e()) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean cancel(@Nullable Throwable cause) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof NotCompleted)) {
                return false;
            }
            CancelledContinuation cancelledContinuation = new CancelledContinuation(this, cause, (obj instanceof CancelHandler) || (obj instanceof Segment));
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, cancelledContinuation)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            NotCompleted notCompleted = (NotCompleted) obj;
            if (notCompleted instanceof CancelHandler) {
                callCancelHandler((CancelHandler) obj, cause);
            } else if (notCompleted instanceof Segment) {
                a((Segment) obj, cause);
            }
            if (!e()) {
                detachChild$kotlinx_coroutines_core();
            }
            b(this.resumeMode);
            return true;
        }
    }

    public final void callCancelHandler(@NotNull CancelHandler handler, @Nullable Throwable cause) {
        try {
            handler.invoke(cause);
        } catch (Throwable th) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th));
        }
    }

    public final void a(Segment segment, Throwable th) {
        int i = c.get(this) & 536870911;
        if (i == 536870911) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
        }
        try {
            segment.onCancellation(i, th, getContext());
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> void callOnCancellation(@NotNull Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation, @NotNull Throwable cause, R value) {
        try {
            onCancellation.invoke(cause, value, getContext());
        } catch (Throwable th) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th));
        }
    }

    @NotNull
    public Throwable getContinuationCancellationCause(@NotNull Job parent) {
        return parent.getCancellationException();
    }

    public final void b(int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = c;
            i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = i2 >> 29;
            if (i3 != 0) {
                if (i3 != 1) {
                    throw new IllegalStateException("Already resumed");
                }
                DispatchedTaskKt.dispatch(this, i);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, 1073741824 + (536870911 & i2)));
    }

    @PublishedApi
    @Nullable
    public final Object getResult() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        Job job;
        boolean zE = e();
        do {
            atomicIntegerFieldUpdater = c;
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new IllegalStateException("Already suspended");
                }
                if (zE) {
                    releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                }
                Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
                if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                    if (DispatchedTaskKt.isCancellableMode(this.resumeMode) && (job = (Job) getContext().get(Job.INSTANCE)) != null && !job.isActive()) {
                        CancellationException cancellationException = job.getCancellationException();
                        cancelCompletedResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core, cancellationException);
                        throw cancellationException;
                    }
                    return getSuccessfulResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core);
                }
                throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, Declaration.EARLY_INIT + (536870911 & i)));
        if (((DisposableHandle) e.get(this)) == null) {
            c();
        }
        if (zE) {
            releaseClaimedReusableContinuation$kotlinx_coroutines_core();
        }
        return IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }

    public final DisposableHandle c() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Job job = (Job) getContext().get(Job.INSTANCE);
        if (job == null) {
            return null;
        }
        DisposableHandle disposableHandleInvokeOnCompletion$default = x.invokeOnCompletion$default(job, false, new h(this), 1, null);
        do {
            atomicReferenceFieldUpdater = e;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, disposableHandleInvokeOnCompletion$default)) {
                return disposableHandleInvokeOnCompletion$default;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return disposableHandleInvokeOnCompletion$default;
    }

    public final void releaseClaimedReusableContinuation$kotlinx_coroutines_core() {
        Throwable thTryReleaseClaimedContinuation$kotlinx_coroutines_core;
        Continuation continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        if (dispatchedContinuation == null || (thTryReleaseClaimedContinuation$kotlinx_coroutines_core = dispatchedContinuation.tryReleaseClaimedContinuation$kotlinx_coroutines_core(this)) == null) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
        cancel(thTryReleaseClaimedContinuation$kotlinx_coroutines_core);
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object result) {
        resumeImpl$kotlinx_coroutines_core$default(this, CompletionStateKt.toState(result, this), this.resumeMode, null, 4, null);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resume(T value, @Nullable Function1<? super Throwable, Unit> onCancellation) {
        resumeImpl$kotlinx_coroutines_core(value, this.resumeMode, onCancellation != null ? new g(onCancellation, 0) : null);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public <R extends T> void resume(R value, @Nullable Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
        resumeImpl$kotlinx_coroutines_core(value, this.resumeMode, onCancellation);
    }

    @Override // kotlinx.coroutines.Waiter
    public void invokeOnCancellation(@NotNull Segment<?> segment, int index) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        do {
            atomicIntegerFieldUpdater = c;
            i = atomicIntegerFieldUpdater.get(this);
            if ((i & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, ((i >> 29) << 29) + index));
        d(segment);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void invokeOnCancellation(@NotNull Function1<? super Throwable, Unit> handler) {
        CancellableContinuationKt.invokeOnCancellation(this, new CancelHandler.UserSupplied(handler));
    }

    public final void invokeOnCancellationInternal$kotlinx_coroutines_core(@NotNull CancelHandler handler) {
        d(handler);
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00bd, code lost:
    
        f(r14, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c0, code lost:
    
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(kotlinx.coroutines.NotCompleted r14) {
        /*
            r13 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.CancellableContinuationImpl.d
            java.lang.Object r2 = r0.get(r13)
            boolean r1 = r2 instanceof kotlinx.coroutines.a
            if (r1 == 0) goto L19
        La:
            boolean r1 = r0.compareAndSet(r13, r2, r14)
            if (r1 == 0) goto L12
            goto Lb4
        L12:
            java.lang.Object r1 = r0.get(r13)
            if (r1 == r2) goto La
            goto L0
        L19:
            boolean r1 = r2 instanceof kotlinx.coroutines.CancelHandler
            r3 = 0
            if (r1 != 0) goto Lbd
            boolean r1 = r2 instanceof kotlinx.coroutines.internal.Segment
            if (r1 != 0) goto Lbd
            boolean r1 = r2 instanceof kotlinx.coroutines.CompletedExceptionally
            if (r1 == 0) goto L56
            r0 = r2
            kotlinx.coroutines.CompletedExceptionally r0 = (kotlinx.coroutines.CompletedExceptionally) r0
            boolean r1 = r0.makeHandled()
            if (r1 == 0) goto L52
            boolean r1 = r2 instanceof kotlinx.coroutines.CancelledContinuation
            if (r1 == 0) goto Lb4
            kotlinx.coroutines.CompletedExceptionally r2 = (kotlinx.coroutines.CompletedExceptionally) r2
            if (r2 == 0) goto L38
            goto L39
        L38:
            r0 = r3
        L39:
            if (r0 == 0) goto L3d
            java.lang.Throwable r3 = r0.cause
        L3d:
            boolean r0 = r14 instanceof kotlinx.coroutines.CancelHandler
            if (r0 == 0) goto L47
            kotlinx.coroutines.CancelHandler r14 = (kotlinx.coroutines.CancelHandler) r14
            r13.callCancelHandler(r14, r3)
            return
        L47:
            java.lang.String r0 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r14, r0)
            kotlinx.coroutines.internal.Segment r14 = (kotlinx.coroutines.internal.Segment) r14
            r13.a(r14, r3)
            return
        L52:
            f(r14, r2)
            throw r3
        L56:
            boolean r1 = r2 instanceof kotlinx.coroutines.k
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"
            if (r1 == 0) goto L98
            r5 = r2
            kotlinx.coroutines.k r5 = (kotlinx.coroutines.k) r5
            kotlinx.coroutines.CancelHandler r1 = r5.f6661b
            if (r1 != 0) goto L94
            boolean r1 = r14 instanceof kotlinx.coroutines.internal.Segment
            if (r1 == 0) goto L68
            return
        L68:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r14, r4)
            r7 = r14
            kotlinx.coroutines.CancelHandler r7 = (kotlinx.coroutines.CancelHandler) r7
            boolean r1 = r5.getCancelled()
            if (r1 == 0) goto L7a
            java.lang.Throwable r14 = r5.e
            r13.callCancelHandler(r7, r14)
            return
        L7a:
            r9 = 0
            r10 = 0
            r6 = 0
            r8 = 0
            r11 = 29
            r12 = 0
            kotlinx.coroutines.k r1 = kotlinx.coroutines.k.copy$default(r5, r6, r7, r8, r9, r10, r11, r12)
        L85:
            boolean r3 = r0.compareAndSet(r13, r2, r1)
            if (r3 == 0) goto L8c
            goto Lb4
        L8c:
            java.lang.Object r3 = r0.get(r13)
            if (r3 == r2) goto L85
            goto L0
        L94:
            f(r14, r2)
            throw r3
        L98:
            boolean r1 = r14 instanceof kotlinx.coroutines.internal.Segment
            if (r1 == 0) goto L9d
            return
        L9d:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r14, r4)
            r3 = r14
            kotlinx.coroutines.CancelHandler r3 = (kotlinx.coroutines.CancelHandler) r3
            kotlinx.coroutines.k r1 = new kotlinx.coroutines.k
            r5 = 0
            r6 = 0
            r4 = 0
            r7 = 28
            r8 = 0
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
        Lae:
            boolean r3 = r0.compareAndSet(r13, r2, r1)
            if (r3 == 0) goto Lb5
        Lb4:
            return
        Lb5:
            java.lang.Object r3 = r0.get(r13)
            if (r3 == r2) goto Lae
            goto L0
        Lbd:
            f(r14, r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CancellableContinuationImpl.d(kotlinx.coroutines.NotCompleted):void");
    }

    public static void f(NotCompleted notCompleted, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + notCompleted + ", already has " + obj).toString());
    }

    public static Object g(NotCompleted notCompleted, Object obj, int i, Function3 function3, Object obj2) {
        if (obj instanceof CompletedExceptionally) {
            return obj;
        }
        if ((DispatchedTaskKt.isCancellableMode(i) || obj2 != null) && !(function3 == null && !(notCompleted instanceof CancelHandler) && obj2 == null)) {
            return new k(obj, notCompleted instanceof CancelHandler ? (CancelHandler) notCompleted : null, function3, obj2, null, 16, null);
        }
        return obj;
    }

    public static /* synthetic */ void resumeImpl$kotlinx_coroutines_core$default(CancellableContinuationImpl cancellableContinuationImpl, Object obj, int i, Function3 function3, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i2 & 4) != 0) {
            function3 = null;
        }
        cancellableContinuationImpl.resumeImpl$kotlinx_coroutines_core(obj, i, function3);
    }

    public final <R> void resumeImpl$kotlinx_coroutines_core(R proposedUpdate, int resumeMode, @Nullable Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof NotCompleted) {
                Object objG = g((NotCompleted) obj, proposedUpdate, resumeMode, onCancellation, null);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, objG)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                if (!e()) {
                    detachChild$kotlinx_coroutines_core();
                }
                b(resumeMode);
                return;
            }
            if (obj instanceof CancelledContinuation) {
                CancelledContinuation cancelledContinuation = (CancelledContinuation) obj;
                if (cancelledContinuation.makeResumed()) {
                    if (onCancellation != null) {
                        callOnCancellation(onCancellation, cancelledContinuation.cause, proposedUpdate);
                        return;
                    }
                    return;
                }
            }
            throw new IllegalStateException(("Already resumed, but proposed with update " + proposedUpdate).toString());
        }
    }

    public final Symbol h(Object obj, Object obj2, Function3 function3) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj3 instanceof NotCompleted) {
                Object objG = g((NotCompleted) obj3, obj, this.resumeMode, function3, obj2);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, objG)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj3) {
                        break;
                    }
                }
                if (!e()) {
                    detachChild$kotlinx_coroutines_core();
                }
                return CancellableContinuationImplKt.RESUME_TOKEN;
            }
            if ((obj3 instanceof k) && obj2 != null && ((k) obj3).d == obj2) {
                return CancellableContinuationImplKt.RESUME_TOKEN;
            }
            return null;
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    @Nullable
    public Object tryResume(T value, @Nullable Object idempotent) {
        return h(value, idempotent, null);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    @Nullable
    public <R extends T> Object tryResume(R value, @Nullable Object idempotent, @Nullable Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
        return h(value, idempotent, onCancellation);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    @Nullable
    public Object tryResumeWithException(@NotNull Throwable exception) {
        return h(new CompletedExceptionally(exception, false, 2, null), null, null);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void completeResume(@NotNull Object token) {
        b(this.resumeMode);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resumeUndispatched(@NotNull CoroutineDispatcher coroutineDispatcher, T t) {
        Continuation continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        resumeImpl$kotlinx_coroutines_core$default(this, t, (dispatchedContinuation != null ? dispatchedContinuation.dispatcher : null) == coroutineDispatcher ? 4 : this.resumeMode, null, 4, null);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resumeUndispatchedWithException(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Throwable th) {
        Continuation continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        resumeImpl$kotlinx_coroutines_core$default(this, new CompletedExceptionally(th, false, 2, null), (dispatchedContinuation != null ? dispatchedContinuation.dispatcher : null) == coroutineDispatcher ? 4 : this.resumeMode, null, 4, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.DispatchedTask
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(@Nullable Object state) {
        return state instanceof k ? (T) ((k) state).f6660a : state;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @Nullable
    public Throwable getExceptionalResult$kotlinx_coroutines_core(@Nullable Object state) {
        Throwable exceptionalResult$kotlinx_coroutines_core = super.getExceptionalResult$kotlinx_coroutines_core(state);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            return exceptionalResult$kotlinx_coroutines_core;
        }
        return null;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(nameString());
        sb.append('(');
        sb.append(DebugStringsKt.toDebugString(this.delegate));
        sb.append("){");
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        sb.append(state$kotlinx_coroutines_core instanceof NotCompleted ? "Active" : state$kotlinx_coroutines_core instanceof CancelledContinuation ? "Cancelled" : "Completed");
        sb.append("}@");
        sb.append(DebugStringsKt.getHexAddress(this));
        return sb.toString();
    }

    @NotNull
    public String nameString() {
        return "CancellableContinuation";
    }
}
