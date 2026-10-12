.class public abstract Lcom/google/common/util/concurrent/AbstractService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractService$h;,
        Lcom/google/common/util/concurrent/AbstractService$g;,
        Lcom/google/common/util/concurrent/AbstractService$d;,
        Lcom/google/common/util/concurrent/AbstractService$f;,
        Lcom/google/common/util/concurrent/AbstractService$e;
    }
.end annotation


# static fields
.field public static final h:Lcom/google/common/util/concurrent/AbstractService$a;

.field public static final i:Lcom/google/common/util/concurrent/AbstractService$b;

.field public static final j:Lcom/google/common/util/concurrent/d;

.field public static final k:Lcom/google/common/util/concurrent/d;

.field public static final l:Lcom/google/common/util/concurrent/c;

.field public static final m:Lcom/google/common/util/concurrent/c;

.field public static final n:Lcom/google/common/util/concurrent/c;

.field public static final o:Lcom/google/common/util/concurrent/c;


# instance fields
.field public final a:Lcom/google/common/util/concurrent/Monitor;

.field public final b:Lcom/google/common/util/concurrent/Monitor$Guard;

.field public final c:Lcom/google/common/util/concurrent/Monitor$Guard;

.field public final d:Lcom/google/common/util/concurrent/Monitor$Guard;

.field public final e:Lcom/google/common/util/concurrent/Monitor$Guard;

.field public final f:Lcom/google/common/util/concurrent/a0;

.field public volatile g:Lcom/google/common/util/concurrent/AbstractService$h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractService$a;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/AbstractService$a;

    .line 65
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$b;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractService$b;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->i:Lcom/google/common/util/concurrent/AbstractService$b;

    .line 77
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 106
    new-instance v1, Lcom/google/common/util/concurrent/d;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/d;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 78
    sput-object v1, Lcom/google/common/util/concurrent/AbstractService;->j:Lcom/google/common/util/concurrent/d;

    .line 79
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 106
    new-instance v2, Lcom/google/common/util/concurrent/d;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/d;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 80
    sput-object v2, Lcom/google/common/util/concurrent/AbstractService;->k:Lcom/google/common/util/concurrent/d;

    .line 82
    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 92
    new-instance v3, Lcom/google/common/util/concurrent/c;

    invoke-direct {v3, v2}, Lcom/google/common/util/concurrent/c;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 83
    sput-object v3, Lcom/google/common/util/concurrent/AbstractService;->l:Lcom/google/common/util/concurrent/c;

    .line 92
    new-instance v2, Lcom/google/common/util/concurrent/c;

    invoke-direct {v2, v0}, Lcom/google/common/util/concurrent/c;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 85
    sput-object v2, Lcom/google/common/util/concurrent/AbstractService;->m:Lcom/google/common/util/concurrent/c;

    .line 92
    new-instance v0, Lcom/google/common/util/concurrent/c;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/c;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 87
    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/c;

    .line 88
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 92
    new-instance v1, Lcom/google/common/util/concurrent/c;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/c;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 89
    sput-object v1, Lcom/google/common/util/concurrent/AbstractService;->o:Lcom/google/common/util/concurrent/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Monitor;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    .line 121
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$e;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$e;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->b:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 135
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$f;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$f;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->c:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 149
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$d;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$d;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 163
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$g;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$g;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->e:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 178
    new-instance v0, Lcom/google/common/util/concurrent/a0;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/a0;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->f:Lcom/google/common/util/concurrent/a0;

    .line 189
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$h;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$h;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 5

    .line 360
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 362
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    const-string v2, " to be "

    const-string v3, "Expected the service "

    if-ne v0, v1, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but the service has FAILED"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->failureCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 368
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public final addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->f:Lcom/google/common/util/concurrent/a0;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/a0;->addListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final awaitRunning()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Monitor$Guard;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 302
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->a(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 305
    throw v0
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Monitor$Guard;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 312
    :try_start_0
    sget-object p1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractService;->a(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 315
    throw p1

    .line 321
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Timed out waiting for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to reach the RUNNING state."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final awaitTerminated()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->e:Lcom/google/common/util/concurrent/Monitor$Guard;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 329
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->a(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 332
    throw v0
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->e:Lcom/google/common/util/concurrent/Monitor$Guard;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 339
    :try_start_0
    sget-object p1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractService;->a(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 342
    throw p1

    .line 348
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Timed out waiting for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to reach a terminal state. Current state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->isOccupiedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->f:Lcom/google/common/util/concurrent/a0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/a0;->dispatch()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 1

    .line 524
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->f:Lcom/google/common/util/concurrent/a0;

    packed-switch p1, :pswitch_data_0

    return-void

    .line 539
    :pswitch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 535
    :pswitch_1
    sget-object p1, Lcom/google/common/util/concurrent/AbstractService;->o:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V

    return-void

    .line 532
    :pswitch_2
    sget-object p1, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V

    return-void

    .line 529
    :pswitch_3
    sget-object p1, Lcom/google/common/util/concurrent/AbstractService;->m:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V

    return-void

    .line 526
    :pswitch_4
    sget-object p1, Lcom/google/common/util/concurrent/AbstractService;->l:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public doCancelStart()V
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    return-void
.end method

.method public abstract doStart()V
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation
.end method

.method public abstract doStop()V
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 4

    .line 481
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    iget-object v2, v0, Lcom/google/common/util/concurrent/AbstractService$h;->a:Lcom/google/common/util/concurrent/Service$State;

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "failureCause() is only valid if the service has failed, service is %s"

    invoke-static {v1, v3, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 616
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$h;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final isRunning()Z
    .locals 2

    .line 470
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyFailed(Ljava/lang/Throwable;)V
    .locals 4

    .line 443
    const-string v0, "Failed while in state:"

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    .line 448
    sget-object v2, Lcom/google/common/util/concurrent/AbstractService$c;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 455
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$h;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p1}, Lcom/google/common/util/concurrent/AbstractService$h;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    .line 545
    new-instance v0, Lcom/google/common/util/concurrent/e;

    invoke-direct {v0, v1, p1}, Lcom/google/common/util/concurrent/e;-><init>(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractService;->f:Lcom/google/common/util/concurrent/a0;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :goto_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 464
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 451
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 464
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    .line 465
    throw p1
.end method

.method public final notifyStarted()V
    .locals 3

    .line 380
    const-string v0, "Cannot notifyStarted() when the service is "

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractService$h;->a:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v1, v2, :cond_1

    .line 392
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractService$h;->b:Z

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$h;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$h;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    .line 396
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 398
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$h;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$h;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    .line 510
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->i:Lcom/google/common/util/concurrent/AbstractService$b;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->f:Lcom/google/common/util/concurrent/a0;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 403
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    return-void

    .line 385
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$h;->a:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 389
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 403
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    .line 404
    throw v0
.end method

.method public final notifyStopped()V
    .locals 4

    .line 416
    const-string v0, "Cannot notifyStopped() when the service is "

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    .line 419
    sget-object v2, Lcom/google/common/util/concurrent/AbstractService$c;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 427
    :pswitch_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$h;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v2}, Lcom/google/common/util/concurrent/AbstractService$h;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    .line 428
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractService;->c(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 433
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 423
    :pswitch_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 433
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    .line 434
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/Service;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->b:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$h;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$h;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    .line 506
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/AbstractService$a;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->f:Lcom/google/common/util/concurrent/a0;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V

    .line 248
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 253
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    return-object p0

    :catchall_0
    move-exception v0

    .line 250
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 253
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    return-object p0

    :catchall_1
    move-exception v0

    .line 252
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 253
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    .line 254
    throw v0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has already been started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    .line 603
    iget-boolean v1, v0, Lcom/google/common/util/concurrent/AbstractService$h;->b:Z

    .line 603
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$h;->a:Lcom/google/common/util/concurrent/Service$State;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    .line 604
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    :cond_0
    return-object v0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/Service;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 264
    const-string v0, "isStoppable is incorrectly implemented, saw: "

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->c:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/Monitor;->enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    .line 267
    sget-object v2, Lcom/google/common/util/concurrent/AbstractService$c;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 286
    :pswitch_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 278
    :pswitch_1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$h;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$h;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    .line 279
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 514
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->f:Lcom/google/common/util/concurrent/a0;

    if-ne v0, v1, :cond_0

    .line 515
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->j:Lcom/google/common/util/concurrent/d;

    invoke-virtual {v2, v0}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V

    goto :goto_0

    .line 517
    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->k:Lcom/google/common/util/concurrent/d;

    invoke-virtual {v2, v0}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V

    goto :goto_1

    .line 273
    :pswitch_2
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$h;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/AbstractService$h;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    .line 514
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->f:Lcom/google/common/util/concurrent/a0;

    .line 515
    sget-object v1, Lcom/google/common/util/concurrent/AbstractService;->j:Lcom/google/common/util/concurrent/d;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/a0;->enqueue(Lcom/google/common/util/concurrent/a0$a;)V

    .line 275
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doCancelStart()V

    goto :goto_1

    .line 269
    :pswitch_3
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$h;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$h;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->g:Lcom/google/common/util/concurrent/AbstractService$h;

    .line 270
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->c(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 292
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    return-object p0

    .line 289
    :goto_2
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 291
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 292
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 291
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 292
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    .line 293
    throw v0

    :cond_1
    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
