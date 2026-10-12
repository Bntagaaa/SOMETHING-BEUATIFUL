.class Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$c;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$c;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 230
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 230
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->startUp()V

    .line 233
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService;->scheduler()Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    iget-object v3, v2, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    .line 100
    iget-object v3, v3, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/AbstractService;

    .line 172
    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 233
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v4, v4, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->s:Ljava/lang/Runnable;

    .line 233
    invoke-virtual {v1, v3, v2, v4}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;->schedule(Lcom/google/common/util/concurrent/AbstractService;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 172
    iput-object v1, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->p:Ljava/util/concurrent/Future;

    .line 234
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 242
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 236
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 237
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->p:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->p:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    .line 239
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 242
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 242
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 242
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 243
    throw v0
.end method
