.class final Lcom/google/common/util/concurrent/AbstractScheduledService$c;
.super Lcom/google/common/util/concurrent/AbstractService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;
    }
.end annotation


# instance fields
.field public volatile p:Ljava/util/concurrent/Future;

.field public volatile q:Ljava/util/concurrent/ScheduledExecutorService;

.field public final r:Ljava/util/concurrent/locks/ReentrantLock;

.field public final s:Ljava/lang/Runnable;

.field public final synthetic t:Lcom/google/common/util/concurrent/AbstractScheduledService;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    .line 183
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 213
    new-instance p1, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;

    invoke-direct {p1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$c;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->s:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final doStart()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    .line 219
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->executor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$c$a;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$c$a;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$c;)V

    .line 896
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    new-instance v2, Lcom/google/common/util/concurrent/e0;

    invoke-direct {v2, v0, v1}, Lcom/google/common/util/concurrent/e0;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;)V

    .line 218
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 226
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->q:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final doStop()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->p:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 251
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->q:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$c$c;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$c$c;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
