.class Lcom/google/common/util/concurrent/AbstractScheduledService$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$c;->doStop()V
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

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$c;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$c;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    :try_start_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 256
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :try_start_1
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v1, v2, :cond_0

    .line 172
    :try_start_2
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 267
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 265
    :cond_0
    :try_start_3
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    :try_start_4
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 267
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 269
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyStopped()V

    return-void

    :catchall_1
    move-exception v1

    .line 172
    iget-object v2, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 267
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    return-void
.end method
