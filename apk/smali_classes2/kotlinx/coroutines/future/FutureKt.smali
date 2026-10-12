.class public final Lkotlinx/coroutines/future/FutureKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aZ\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\u0008\u0000\u0010\u0000*\u00020\u00012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\'\u0010\n\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0006\u00a2\u0006\u0002\u0008\t\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a#\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000b*\u00020\u0011\u00a2\u0006\u0004\u0008\u000f\u0010\u0013\u001a#\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a \u0010\u0017\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0086@\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlinx/coroutines/CoroutineStart;",
        "start",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "block",
        "Ljava/util/concurrent/CompletableFuture;",
        "future",
        "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Ljava/util/concurrent/CompletableFuture;",
        "Lkotlinx/coroutines/Deferred;",
        "asCompletableFuture",
        "(Lkotlinx/coroutines/Deferred;)Ljava/util/concurrent/CompletableFuture;",
        "Lkotlinx/coroutines/Job;",
        "",
        "(Lkotlinx/coroutines/Job;)Ljava/util/concurrent/CompletableFuture;",
        "Ljava/util/concurrent/CompletionStage;",
        "asDeferred",
        "(Ljava/util/concurrent/CompletionStage;)Lkotlinx/coroutines/Deferred;",
        "await",
        "(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,208:1\n1#2:209\n426#3,11:210\n*S KotlinDebug\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n*L\n168#1:210,11\n*E\n"
    }
.end annotation


# direct methods
.method public static final asCompletableFuture(Lkotlinx/coroutines/Deferred;)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .param p0    # Lkotlinx/coroutines/Deferred;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 71
    invoke-static {}, Lkotlinx/coroutines/future/d;->a()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 98
    new-instance v1, Lkotlinx/coroutines/future/f;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/future/f;-><init>(Lkotlinx/coroutines/Job;)V

    new-instance v2, Lkotlinx/coroutines/future/e;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lkotlinx/coroutines/future/e;-><init>(Lkotlin/jvm/functions/Function2;I)V

    invoke-static {v0, v2}, Lkotlinx/coroutines/future/d;->d(Ljava/util/concurrent/CompletableFuture;Lkotlinx/coroutines/future/e;)V

    .line 73
    new-instance v1, Lkotlin/sequences/i;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p0, v2}, Lkotlin/sequences/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method public static final asCompletableFuture(Lkotlinx/coroutines/Job;)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .param p0    # Lkotlinx/coroutines/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 88
    invoke-static {}, Lkotlinx/coroutines/future/d;->a()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 98
    new-instance v1, Lkotlinx/coroutines/future/f;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/future/f;-><init>(Lkotlinx/coroutines/Job;)V

    new-instance v2, Lkotlinx/coroutines/future/e;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lkotlinx/coroutines/future/e;-><init>(Lkotlin/jvm/functions/Function2;I)V

    invoke-static {v0, v2}, Lkotlinx/coroutines/future/d;->d(Ljava/util/concurrent/CompletableFuture;Lkotlinx/coroutines/future/e;)V

    .line 90
    new-instance v1, Lkotlin/collections/a;

    const/16 v2, 0xb

    invoke-direct {v1, v0, v2}, Lkotlin/collections/a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method public static final asDeferred(Ljava/util/concurrent/CompletionStage;)Lkotlinx/coroutines/Deferred;
    .locals 7
    .param p0    # Ljava/util/concurrent/CompletionStage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;)",
            "Lkotlinx/coroutines/Deferred<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 113
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/fcm/a;->k(Ljava/util/concurrent/CompletionStage;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/fcm/a;->z(Ljava/util/concurrent/CompletableFuture;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 118
    :try_start_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/fcm/a;->c(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 121
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ExecutionException;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 122
    :cond_2
    :goto_1
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0

    .line 125
    :cond_3
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    .line 126
    new-instance v4, Lkotlin/sequences/h;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Lkotlin/sequences/h;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Lkotlinx/coroutines/future/e;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lkotlinx/coroutines/future/e;-><init>(Lkotlin/jvm/functions/Function2;I)V

    invoke-static {p0, v5}, Lcom/google/appinventor/components/runtime/fcm/a;->w(Ljava/util/concurrent/CompletionStage;Lkotlinx/coroutines/future/e;)V

    .line 141
    new-instance p0, Lkotlinx/coroutines/future/a;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/future/a;-><init>(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p0, v2, v3}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZLkotlinx/coroutines/JobNode;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    return-object v1
.end method

.method public static final await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/util/concurrent/CompletionStage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 157
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/fcm/a;->k(Ljava/util/concurrent/CompletionStage;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/fcm/a;->z(Ljava/util/concurrent/CompletableFuture;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :try_start_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/fcm/a;->c(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    throw p0

    .line 211
    :cond_1
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 217
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 169
    new-instance v2, Lkotlinx/coroutines/future/c;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/future/c;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 170
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/fcm/a;->m(Ljava/lang/Object;)Ljava/util/function/BiFunction;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/appinventor/components/runtime/fcm/a;->v(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)V

    .line 171
    new-instance p0, Lkotlinx/coroutines/future/FutureKt$a;

    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/future/FutureKt$a;-><init>(Ljava/util/concurrent/CompletableFuture;Lkotlinx/coroutines/future/c;)V

    invoke-interface {v1, p0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 219
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 210
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-object p0
.end method

.method public static final future(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0    # Lkotlinx/coroutines/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/CoroutineStart;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    .line 37
    invoke-static {}, Lkotlinx/coroutines/future/d;->a()Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 38
    new-instance v0, Lkotlinx/coroutines/future/b;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/future/b;-><init>(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CompletableFuture;)V

    .line 39
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/fcm/a;->m(Ljava/lang/Object;)Ljava/util/function/BiFunction;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/appinventor/components/runtime/fcm/a;->u(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    .line 40
    invoke-virtual {v0, p2, v0, p3}, Lkotlinx/coroutines/AbstractCoroutine;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-object p1

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " start is not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 31
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 32
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 30
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/future/FutureKt;->future(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method
