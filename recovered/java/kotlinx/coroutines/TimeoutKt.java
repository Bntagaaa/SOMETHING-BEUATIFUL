package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aT\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\t\u0010\n\u001aT\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\f\u001a\u00020\u000b2'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\r\u0010\n\u001aI\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@¢\u0006\u0004\b\u000e\u0010\n\u001aI\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\f\u001a\u00020\u000b2'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@¢\u0006\u0004\b\u000f\u0010\n\u001a'\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0000¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"T", "", "timeMillis", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "withTimeout", "(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/time/Duration;", "timeout", "withTimeout-KLykuaI", "withTimeoutOrNull", "withTimeoutOrNull-KLykuaI", "time", "Lkotlinx/coroutines/Delay;", "delay", "Lkotlinx/coroutines/Job;", "coroutine", "Lkotlinx/coroutines/TimeoutCancellationException;", "TimeoutCancellationException", "(JLkotlinx/coroutines/Delay;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/TimeoutCancellationException;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class TimeoutKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.TimeoutKt", f = "Timeout.kt", i = {0, 0, 0}, l = {102}, m = "withTimeoutOrNull", n = {"block", "coroutine", "timeMillis"}, s = {"L$0", "L$1", "J$0"})
    public static final class a<T> extends ContinuationImpl {
        public Function2 d;
        public Ref.ObjectRef e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public int f6146g;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f = obj;
            this.f6146g |= Integer.MIN_VALUE;
            return TimeoutKt.withTimeoutOrNull(0L, null, this);
        }
    }

    @Nullable
    public static final <T> Object withTimeout(long j, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        if (j <= 0) {
            throw new TimeoutCancellationException("Timed out immediately");
        }
        l0 l0Var = new l0(j, continuation);
        JobKt.disposeOnCompletion(l0Var, DelayKt.getDelay(l0Var.uCont.getF5543a()).invokeOnTimeout(l0Var.d, l0Var, l0Var.getF5543a()));
        Object objStartUndispatchedOrReturnIgnoreTimeout = UndispatchedKt.startUndispatchedOrReturnIgnoreTimeout(l0Var, l0Var, function2);
        if (objStartUndispatchedOrReturnIgnoreTimeout == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objStartUndispatchedOrReturnIgnoreTimeout;
    }

    @Nullable
    /* renamed from: withTimeout-KLykuaI, reason: not valid java name */
    public static final <T> Object m1140withTimeoutKLykuaI(long j, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return withTimeout(DelayKt.m1134toDelayMillisLRDsOJo(j), function2, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0087 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object, java.lang.Runnable, kotlinx.coroutines.AbstractCoroutine, kotlinx.coroutines.Job, kotlinx.coroutines.internal.ScopeCoroutine, kotlinx.coroutines.l0] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object withTimeoutOrNull(long r6, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super kotlinx.coroutines.CoroutineScope, ? super kotlin.coroutines.Continuation<? super T>, ? extends java.lang.Object> r8, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super T> r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.TimeoutKt.a
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.TimeoutKt$a r0 = (kotlinx.coroutines.TimeoutKt.a) r0
            int r1 = r0.f6146g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6146g = r1
            goto L18
        L13:
            kotlinx.coroutines.TimeoutKt$a r0 = new kotlinx.coroutines.TimeoutKt$a
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6146g
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            kotlin.jvm.internal.Ref$ObjectRef r6 = r0.e
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2b
            return r9
        L2b:
            r7 = move-exception
            goto L81
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            kotlin.ResultKt.throwOnFailure(r9)
            r4 = 0
            int r9 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r9 > 0) goto L3f
            goto L87
        L3f:
            kotlin.jvm.internal.Ref$ObjectRef r9 = new kotlin.jvm.internal.Ref$ObjectRef
            r9.<init>()
            r0.d = r8     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L76
            r0.e = r9     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L76
            r0.f6146g = r3     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L76
            kotlinx.coroutines.l0 r2 = new kotlinx.coroutines.l0     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L76
            r2.<init>(r6, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L76
            r9.element = r2     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L76
            kotlin.coroutines.Continuation<T> r6 = r2.uCont     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L7f
            kotlin.coroutines.CoroutineContext r6 = r6.getF5543a()     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L7f
            kotlinx.coroutines.Delay r6 = kotlinx.coroutines.DelayKt.getDelay(r6)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L7f
            long r3 = r2.d     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L7f
            kotlin.coroutines.CoroutineContext r7 = r2.getF5543a()     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L7f
            kotlinx.coroutines.DisposableHandle r6 = r6.invokeOnTimeout(r3, r2, r7)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L7f
            kotlinx.coroutines.JobKt.disposeOnCompletion(r2, r6)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L7f
            java.lang.Object r6 = kotlinx.coroutines.intrinsics.UndispatchedKt.startUndispatchedOrReturnIgnoreTimeout(r2, r2, r8)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L7f
            java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L76
            if (r6 != r7) goto L79
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L76
            goto L79
        L76:
            r7 = move-exception
        L77:
            r6 = r9
            goto L81
        L79:
            if (r6 != r1) goto L7c
            return r1
        L7c:
            return r6
        L7d:
            r7 = r6
            goto L77
        L7f:
            r6 = move-exception
            goto L7d
        L81:
            kotlinx.coroutines.Job r8 = r7.coroutine
            T r6 = r6.element
            if (r8 != r6) goto L89
        L87:
            r6 = 0
            return r6
        L89:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.TimeoutKt.withTimeoutOrNull(long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Nullable
    /* renamed from: withTimeoutOrNull-KLykuaI, reason: not valid java name */
    public static final <T> Object m1141withTimeoutOrNullKLykuaI(long j, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return withTimeoutOrNull(DelayKt.m1134toDelayMillisLRDsOJo(j), function2, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlinx.coroutines.TimeoutCancellationException TimeoutCancellationException(long r2, @org.jetbrains.annotations.NotNull kotlinx.coroutines.Delay r4, @org.jetbrains.annotations.NotNull kotlinx.coroutines.Job r5) {
        /*
            boolean r0 = r4 instanceof kotlinx.coroutines.DelayWithTimeoutDiagnostics
            if (r0 == 0) goto L7
            kotlinx.coroutines.DelayWithTimeoutDiagnostics r4 = (kotlinx.coroutines.DelayWithTimeoutDiagnostics) r4
            goto L8
        L7:
            r4 = 0
        L8:
            if (r4 == 0) goto L18
            kotlin.time.Duration$Companion r0 = kotlin.time.Duration.INSTANCE
            kotlin.time.DurationUnit r0 = kotlin.time.DurationUnit.MILLISECONDS
            long r0 = kotlin.time.DurationKt.toDuration(r2, r0)
            java.lang.String r4 = r4.m1135timeoutMessageLRDsOJo(r0)
            if (r4 != 0) goto L2b
        L18:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r0 = "Timed out waiting for "
            r4.<init>(r0)
            r4.append(r2)
            java.lang.String r2 = " ms"
            r4.append(r2)
            java.lang.String r4 = r4.toString()
        L2b:
            kotlinx.coroutines.TimeoutCancellationException r2 = new kotlinx.coroutines.TimeoutCancellationException
            r2.<init>(r4, r5)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.TimeoutKt.TimeoutCancellationException(long, kotlinx.coroutines.Delay, kotlinx.coroutines.Job):kotlinx.coroutines.TimeoutCancellationException");
    }
}
