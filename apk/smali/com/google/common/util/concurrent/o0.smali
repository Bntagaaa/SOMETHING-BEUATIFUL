.class final Lcom/google/common/util/concurrent/o0;
.super Lcom/google/common/util/concurrent/FluentFuture$a;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/o0$c;,
        Lcom/google/common/util/concurrent/o0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/FluentFuture$a<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public h:Lcom/google/common/util/concurrent/ListenableFuture;

.field public i:Ljava/util/concurrent/ScheduledFuture;


# virtual methods
.method public afterDone()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/google/common/util/concurrent/o0;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->h(Ljava/util/concurrent/Future;)V

    .line 176
    iget-object v0, p0, Lcom/google/common/util/concurrent/o0;->i:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 181
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/google/common/util/concurrent/o0;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 185
    iput-object v0, p0, Lcom/google/common/util/concurrent/o0;->i:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public pendingToString()Ljava/lang/String;
    .locals 6

    .line 156
    iget-object v0, p0, Lcom/google/common/util/concurrent/o0;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 157
    iget-object v1, p0, Lcom/google/common/util/concurrent/o0;->i:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "inputFuture=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 161
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remaining delay=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
