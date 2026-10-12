.class final Lcom/google/common/util/concurrent/p0$a;
.super Lcom/google/common/util/concurrent/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/z<",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final d:Lcom/google/common/util/concurrent/AsyncCallable;

.field public final synthetic e:Lcom/google/common/util/concurrent/p0;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/p0;Lcom/google/common/util/concurrent/AsyncCallable;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/google/common/util/concurrent/p0$a;->e:Lcom/google/common/util/concurrent/p0;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/z;-><init>()V

    .line 149
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/AsyncCallable;

    iput-object p1, p0, Lcom/google/common/util/concurrent/p0$a;->d:Lcom/google/common/util/concurrent/AsyncCallable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 143
    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 168
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0$a;->e:Lcom/google/common/util/concurrent/p0;

    if-nez p2, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void

    .line 171
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0$a;->e:Lcom/google/common/util/concurrent/p0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/FluentFuture$a;->isDone()Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0$a;->d:Lcom/google/common/util/concurrent/AsyncCallable;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/AsyncCallable;->call()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 159
    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0$a;->d:Lcom/google/common/util/concurrent/AsyncCallable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
