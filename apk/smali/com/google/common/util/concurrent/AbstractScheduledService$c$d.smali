.class Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$c;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 189
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->p:Ljava/util/concurrent/Future;

    .line 191
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 208
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 195
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->runOneIteration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 208
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 198
    :try_start_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 100
    :try_start_3
    sget-object v2, Lcom/google/common/util/concurrent/AbstractScheduledService;->b:Ljava/util/logging/Logger;

    .line 200
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 206
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->p:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    .line 206
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 208
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$c$d;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    .line 172
    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 208
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 209
    throw v0
.end method
