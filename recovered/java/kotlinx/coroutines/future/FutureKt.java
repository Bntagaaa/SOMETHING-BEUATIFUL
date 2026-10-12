package kotlinx.coroutines.future;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.ExecutionException;
import java.util.function.BiFunction;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.h;
import kotlin.sequences.i;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001aZ\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006¢\u0006\u0002\b\t¢\u0006\u0004\b\f\u0010\r\u001a#\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000e¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00120\u000b*\u00020\u0011¢\u0006\u0004\b\u000f\u0010\u0013\u001a#\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0014¢\u0006\u0004\b\u0015\u0010\u0016\u001a \u0010\u0017\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0086@¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"T", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/CoroutineStart;", "start", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "Ljava/util/concurrent/CompletableFuture;", "future", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Ljava/util/concurrent/CompletableFuture;", "Lkotlinx/coroutines/Deferred;", "asCompletableFuture", "(Lkotlinx/coroutines/Deferred;)Ljava/util/concurrent/CompletableFuture;", "Lkotlinx/coroutines/Job;", "", "(Lkotlinx/coroutines/Job;)Ljava/util/concurrent/CompletableFuture;", "Ljava/util/concurrent/CompletionStage;", "asDeferred", "(Ljava/util/concurrent/CompletionStage;)Lkotlinx/coroutines/Deferred;", "await", "(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,208:1\n1#2:209\n426#3,11:210\n*S KotlinDebug\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n*L\n168#1:210,11\n*E\n"})
/* loaded from: classes2.dex */
public final class FutureKt {
    public static /* synthetic */ CompletableFuture future$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return future(coroutineScope, coroutineContext, coroutineStart, function2);
    }

    @NotNull
    public static final <T> CompletableFuture<T> future(@NotNull CoroutineScope coroutineScope, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
        if (coroutineStart.isLazy()) {
            throw new IllegalArgumentException((coroutineStart + " start is not supported").toString());
        }
        CoroutineContext coroutineContextNewCoroutineContext = CoroutineContextKt.newCoroutineContext(coroutineScope, coroutineContext);
        CompletableFuture<T> completableFutureA = d.a();
        b bVar = new b(coroutineContextNewCoroutineContext, completableFutureA);
        completableFutureA.handle(com.google.appinventor.components.runtime.fcm.a.m(bVar));
        bVar.start(coroutineStart, bVar, function2);
        return completableFutureA;
    }

    @NotNull
    public static final <T> CompletableFuture<T> asCompletableFuture(@NotNull Deferred<? extends T> deferred) {
        CompletableFuture<T> completableFutureA = d.a();
        completableFutureA.handle((BiFunction) new e(new f(deferred), 1));
        deferred.invokeOnCompletion(new i(completableFutureA, deferred, 2));
        return completableFutureA;
    }

    @NotNull
    public static final CompletableFuture<Unit> asCompletableFuture(@NotNull Job job) {
        CompletableFuture<Unit> completableFutureA = d.a();
        completableFutureA.handle((BiFunction<? super Unit, Throwable, ? extends U>) ((BiFunction) new e(new f(job), 1)));
        job.invokeOnCompletion(new kotlin.collections.a(completableFutureA, 11));
        return completableFutureA;
    }

    @NotNull
    public static final <T> Deferred<T> asDeferred(@NotNull CompletionStage<T> completionStage) {
        Throwable cause;
        CompletableFuture completableFuture = completionStage.toCompletableFuture();
        if (completableFuture.isDone()) {
            try {
                return CompletableDeferredKt.CompletableDeferred(completableFuture.get());
            } catch (Throwable th) {
                th = th;
                ExecutionException executionException = th instanceof ExecutionException ? (ExecutionException) th : null;
                if (executionException != null && (cause = executionException.getCause()) != null) {
                    th = cause;
                }
                CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                completableDeferredCompletableDeferred$default.completeExceptionally(th);
                return completableDeferredCompletableDeferred$default;
            }
        }
        CompletableDeferred completableDeferredCompletableDeferred$default2 = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        completionStage.handle(new e(new h(completableDeferredCompletableDeferred$default2, 2), 0));
        x.invokeOnCompletion$default(completableDeferredCompletableDeferred$default2, false, new kotlinx.coroutines.future.a(completableFuture), 1, null);
        return completableDeferredCompletableDeferred$default2;
    }

    @Nullable
    public static final <T> Object await(@NotNull CompletionStage<T> completionStage, @NotNull Continuation<? super T> continuation) throws Throwable {
        CompletableFuture completableFuture = completionStage.toCompletableFuture();
        if (completableFuture.isDone()) {
            try {
                return completableFuture.get();
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause == null) {
                    throw e;
                }
                throw cause;
            }
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        c cVar = new c(cancellableContinuationImpl);
        completionStage.handle(com.google.appinventor.components.runtime.fcm.a.m(cVar));
        cancellableContinuationImpl.invokeOnCancellation(new a(completableFuture, cVar));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class a implements Function1<Throwable, Unit> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ CompletableFuture f6601a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ c f6602b;

        public a(CompletableFuture completableFuture, c cVar) {
            this.f6601a = completableFuture;
            this.f6602b = cVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            this.f6601a.cancel(false);
            this.f6602b.cont = null;
        }
    }
}
