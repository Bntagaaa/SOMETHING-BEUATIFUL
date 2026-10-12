.class Lcom/google/common/util/concurrent/p0;
.super Lcom/google/common/util/concurrent/FluentFuture$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/p0$a;,
        Lcom/google/common/util/concurrent/p0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/FluentFuture$a<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public volatile h:Lcom/google/common/util/concurrent/z;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/google/common/util/concurrent/FluentFuture$a;-><init>()V

    .line 67
    new-instance v0, Lcom/google/common/util/concurrent/p0$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/p0$b;-><init>(Lcom/google/common/util/concurrent/p0;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/p0;->h:Lcom/google/common/util/concurrent/z;

    return-void
.end method


# virtual methods
.method public afterDone()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->afterDone()V

    .line 91
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->wasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0;->h:Lcom/google/common/util/concurrent/z;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/z;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/google/common/util/concurrent/p0;->h:Lcom/google/common/util/concurrent/z;

    return-void
.end method

.method public pendingToString()Ljava/lang/String;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0;->h:Lcom/google/common/util/concurrent/z;

    if-eqz v0, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "task=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0;->h:Lcom/google/common/util/concurrent/z;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/z;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/google/common/util/concurrent/p0;->h:Lcom/google/common/util/concurrent/z;

    return-void
.end method
