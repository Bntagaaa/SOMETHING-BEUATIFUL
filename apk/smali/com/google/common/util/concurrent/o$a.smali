.class final Lcom/google/common/util/concurrent/o$a;
.super Lcom/google/common/util/concurrent/o$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/o<",
        "TV;>.c<",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final g:Lcom/google/common/util/concurrent/AsyncCallable;

.field public final synthetic h:Lcom/google/common/util/concurrent/o;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/google/common/util/concurrent/o$a;->h:Lcom/google/common/util/concurrent/o;

    .line 150
    invoke-direct {p0, p1, p3}, Lcom/google/common/util/concurrent/o$c;-><init>(Lcom/google/common/util/concurrent/o;Ljava/util/concurrent/Executor;)V

    .line 151
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/AsyncCallable;

    iput-object p1, p0, Lcom/google/common/util/concurrent/o$a;->g:Lcom/google/common/util/concurrent/AsyncCallable;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/o$c;->e:Z

    .line 157
    iget-object v0, p0, Lcom/google/common/util/concurrent/o$a;->g:Lcom/google/common/util/concurrent/AsyncCallable;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/AsyncCallable;->call()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 158
    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/common/util/concurrent/o$a;->g:Lcom/google/common/util/concurrent/AsyncCallable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 1

    .line 144
    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 167
    iget-object v0, p0, Lcom/google/common/util/concurrent/o$a;->h:Lcom/google/common/util/concurrent/o;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method
