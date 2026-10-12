.class final Lcom/google/common/util/concurrent/j0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/j0;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/j0;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/j0$b;->a:Lcom/google/common/util/concurrent/j0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 200
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/j0$b;->a:Lcom/google/common/util/concurrent/j0;

    .line 49
    iget-object v2, v2, Lcom/google/common/util/concurrent/j0;->b:Ljava/util/ArrayDeque;

    .line 200
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/j0$b;->a:Lcom/google/common/util/concurrent/j0;

    .line 49
    iget-object v3, v0, Lcom/google/common/util/concurrent/j0;->c:Lcom/google/common/util/concurrent/j0$c;

    .line 204
    sget-object v4, Lcom/google/common/util/concurrent/j0$c;->d:Lcom/google/common/util/concurrent/j0$c;

    if-ne v3, v4, :cond_0

    .line 206
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 237
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 49
    :cond_0
    :try_start_2
    iget-wide v5, v0, Lcom/google/common/util/concurrent/j0;->d:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/common/util/concurrent/j0;->d:J

    .line 49
    iput-object v4, v0, Lcom/google/common/util/concurrent/j0;->c:Lcom/google/common/util/concurrent/j0$c;

    const/4 v0, 0x1

    .line 216
    :cond_1
    iget-object v3, p0, Lcom/google/common/util/concurrent/j0$b;->a:Lcom/google/common/util/concurrent/j0;

    .line 49
    iget-object v3, v3, Lcom/google/common/util/concurrent/j0;->b:Ljava/util/ArrayDeque;

    .line 216
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    if-nez v3, :cond_3

    .line 218
    iget-object v0, p0, Lcom/google/common/util/concurrent/j0$b;->a:Lcom/google/common/util/concurrent/j0;

    sget-object v3, Lcom/google/common/util/concurrent/j0$c;->a:Lcom/google/common/util/concurrent/j0$c;

    .line 49
    iput-object v3, v0, Lcom/google/common/util/concurrent/j0;->c:Lcom/google/common/util/concurrent/j0$c;

    .line 219
    monitor-exit v2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    .line 221
    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    or-int/2addr v1, v2

    .line 227
    :try_start_4
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v2

    .line 49
    :try_start_5
    sget-object v4, Lcom/google/common/util/concurrent/j0;->f:Ljava/util/logging/Logger;

    .line 229
    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 221
    :goto_3
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_4
    if-eqz v1, :cond_4

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 239
    :cond_4
    throw v0
.end method

.method public run()V
    .locals 4

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/j0$b;->a()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 173
    iget-object v1, p0, Lcom/google/common/util/concurrent/j0$b;->a:Lcom/google/common/util/concurrent/j0;

    .line 49
    iget-object v1, v1, Lcom/google/common/util/concurrent/j0;->b:Ljava/util/ArrayDeque;

    .line 173
    monitor-enter v1

    .line 174
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/j0$b;->a:Lcom/google/common/util/concurrent/j0;

    sget-object v3, Lcom/google/common/util/concurrent/j0$c;->a:Lcom/google/common/util/concurrent/j0$c;

    .line 49
    iput-object v3, v2, Lcom/google/common/util/concurrent/j0;->c:Lcom/google/common/util/concurrent/j0$c;

    .line 175
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    throw v0

    :catchall_0
    move-exception v0

    .line 175
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
