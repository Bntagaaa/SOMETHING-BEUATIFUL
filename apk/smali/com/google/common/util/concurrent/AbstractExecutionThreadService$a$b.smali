.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a$b;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a$b;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;

    :try_start_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;->p:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->startUp()V

    .line 61
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyStarted()V

    .line 64
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->isRunning()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 66
    :try_start_1
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;->p:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 69
    :try_start_2
    iget-object v2, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;->p:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 37
    :try_start_3
    sget-object v3, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->b:Ljava/util/logging/Logger;

    .line 74
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Error while attempting to shut down the service after failure."

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 84
    :cond_0
    :goto_1
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;->p:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V

    .line 85
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyStopped()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 87
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
