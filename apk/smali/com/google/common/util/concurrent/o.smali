.class final Lcom/google/common/util/concurrent/o;
.super Lcom/google/common/util/concurrent/i;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/o$b;,
        Lcom/google/common/util/concurrent/o$a;,
        Lcom/google/common/util/concurrent/o$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/i<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field public p:Lcom/google/common/util/concurrent/o$c;


# virtual methods
.method public interruptTask()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/common/util/concurrent/o;->p:Lcom/google/common/util/concurrent/o$c;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/z;->b()V

    :cond_0
    return-void
.end method

.method public final k(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/google/common/util/concurrent/o;->p:Lcom/google/common/util/concurrent/o$c;

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/o$c;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 107
    iget-boolean v2, v0, Lcom/google/common/util/concurrent/o$c;->e:Z

    if-eqz v2, :cond_0

    .line 108
    iget-object v0, v0, Lcom/google/common/util/concurrent/o$c;->f:Lcom/google/common/util/concurrent/o;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method public final o(Lcom/google/common/util/concurrent/i$a;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/i;->o(Lcom/google/common/util/concurrent/i$a;)V

    .line 76
    sget-object v0, Lcom/google/common/util/concurrent/i$a;->a:Lcom/google/common/util/concurrent/i$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/google/common/util/concurrent/o;->p:Lcom/google/common/util/concurrent/o$c;

    :cond_0
    return-void
.end method
