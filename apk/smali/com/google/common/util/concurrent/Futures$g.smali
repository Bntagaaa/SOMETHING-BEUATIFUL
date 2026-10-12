.class final Lcom/google/common/util/concurrent/Futures$g;
.super Lcom/google/common/util/concurrent/AbstractFuture$j;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$j<",
        "TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public h:Lcom/google/common/util/concurrent/ListenableFuture;


# virtual methods
.method public afterDone()V
    .locals 1

    const/4 v0, 0x0

    .line 761
    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$g;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public pendingToString()Ljava/lang/String;
    .locals 3

    .line 752
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$g;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delegate=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$g;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    :cond_0
    return-void
.end method
