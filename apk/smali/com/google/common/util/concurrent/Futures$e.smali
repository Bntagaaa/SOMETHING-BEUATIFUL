.class final Lcom/google/common/util/concurrent/Futures$e;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public h:Lcom/google/common/util/concurrent/Futures$f;


# virtual methods
.method public afterDone()V
    .locals 1

    const/4 v0, 0x0

    .line 895
    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$e;->h:Lcom/google/common/util/concurrent/Futures$f;

    return-void
.end method

.method public cancel(Z)Z
    .locals 3

    .line 885
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$e;->h:Lcom/google/common/util/concurrent/Futures$f;

    .line 886
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 930
    iput-boolean v1, v0, Lcom/google/common/util/concurrent/Futures$f;->a:Z

    if-nez p1, :cond_0

    .line 934
    iput-boolean v2, v0, Lcom/google/common/util/concurrent/Futures$f;->b:Z

    .line 936
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Futures$f;->a()V

    return v1

    :cond_1
    return v2
.end method

.method public pendingToString()Ljava/lang/String;
    .locals 3

    .line 900
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$e;->h:Lcom/google/common/util/concurrent/Futures$f;

    if-eqz v0, :cond_0

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inputCount=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 905
    iget-object v2, v0, Lcom/google/common/util/concurrent/Futures$f;->d:[Lcom/google/common/util/concurrent/ListenableFuture;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], remaining=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    iget-object v0, v0, Lcom/google/common/util/concurrent/Futures$f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 907
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
