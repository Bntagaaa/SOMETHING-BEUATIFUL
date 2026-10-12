.class Lcom/google/common/cache/a$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/a$a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/a$a0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile a:Lcom/google/common/cache/a$a0;

.field public final b:Lcom/google/common/util/concurrent/SettableFuture;

.field public final c:Lcom/google/common/base/Stopwatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 723
    sget-object v0, Lcom/google/common/cache/a;->x:Lcom/google/common/cache/a$a;

    .line 3392
    invoke-direct {p0, v0}, Lcom/google/common/cache/a$m;-><init>(Lcom/google/common/cache/a$a0;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/a$a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/a$a0<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3388
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a$m;->b:Lcom/google/common/util/concurrent/SettableFuture;

    .line 3389
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createUnstarted()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a$m;->c:Lcom/google/common/base/Stopwatch;

    .line 3396
    iput-object p1, p0, Lcom/google/common/cache/a$m;->a:Lcom/google/common/cache/a$a0;

    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/f;)Lcom/google/common/cache/a$a0;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/a$a0<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public elapsedNanos()J
    .locals 2

    .line 3474
    iget-object v0, p0, Lcom/google/common/cache/a$m;->c:Lcom/google/common/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 3484
    iget-object v0, p0, Lcom/google/common/cache/a$m;->a:Lcom/google/common/cache/a$a0;

    invoke-interface {v0}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Lcom/google/common/cache/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOldValue()Lcom/google/common/cache/a$a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/a$a0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3488
    iget-object v0, p0, Lcom/google/common/cache/a$m;->a:Lcom/google/common/cache/a$a0;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 3411
    iget-object v0, p0, Lcom/google/common/cache/a$m;->a:Lcom/google/common/cache/a$a0;

    invoke-interface {v0}, Lcom/google/common/cache/a$a0;->getWeight()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 3406
    iget-object v0, p0, Lcom/google/common/cache/a$m;->a:Lcom/google/common/cache/a$a0;

    invoke-interface {v0}, Lcom/google/common/cache/a$a0;->isActive()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 3442
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/a$m;->c:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 3443
    iget-object v0, p0, Lcom/google/common/cache/a$m;->a:Lcom/google/common/cache/a$a0;

    invoke-interface {v0}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3445
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3446
    invoke-virtual {p0, p1}, Lcom/google/common/cache/a$m;->set(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/common/cache/a$m;->b:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 3448
    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/google/common/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 3450
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 3454
    :cond_2
    new-instance p2, Lcom/google/common/cache/a$m$a;

    invoke-direct {p2, p0}, Lcom/google/common/cache/a$m$a;-><init>(Lcom/google/common/cache/a$m;)V

    .line 3463
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 3454
    invoke-static {p1, p2, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 3465
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/a$m;->setException(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/common/cache/a$m;->b:Lcom/google/common/util/concurrent/SettableFuture;

    goto :goto_1

    .line 3423
    :cond_3
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 3466
    :goto_1
    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_4

    .line 3467
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    return-object p2
.end method

.method public notifyNewValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3431
    invoke-virtual {p0, p1}, Lcom/google/common/cache/a$m;->set(Ljava/lang/Object;)Z

    return-void

    .line 723
    :cond_0
    sget-object p1, Lcom/google/common/cache/a;->x:Lcom/google/common/cache/a$a;

    .line 3434
    iput-object p1, p0, Lcom/google/common/cache/a$m;->a:Lcom/google/common/cache/a$a0;

    return-void
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 3415
    iget-object v0, p0, Lcom/google/common/cache/a$m;->b:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1

    .line 3419
    iget-object v0, p0, Lcom/google/common/cache/a$m;->b:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3479
    iget-object v0, p0, Lcom/google/common/cache/a$m;->b:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
