.class Lcom/google/common/util/concurrent/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/util/concurrent/i;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/i;Lcom/google/common/util/concurrent/ListenableFuture;I)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/g;->c:Lcom/google/common/util/concurrent/i;

    iput-object p2, p0, Lcom/google/common/util/concurrent/g;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    iput p3, p0, Lcom/google/common/util/concurrent/g;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/google/common/util/concurrent/g;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/g;->c:Lcom/google/common/util/concurrent/i;

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    iput-object v2, v1, Lcom/google/common/util/concurrent/i;->l:Lcom/google/common/collect/ImmutableCollection;

    const/4 v0, 0x0

    .line 137
    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$j;->cancel(Z)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 139
    :cond_0
    iget v3, p0, Lcom/google/common/util/concurrent/g;->b:I

    sget-object v4, Lcom/google/common/util/concurrent/i;->o:Ljava/util/logging/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :try_start_1
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/common/util/concurrent/i;->k(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 253
    :goto_0
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/i;->m(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 251
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/i;->m(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :goto_2
    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/i;->j(Lcom/google/common/util/concurrent/i;Lcom/google/common/collect/ImmutableCollection;)V

    return-void

    :goto_3
    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/i;->j(Lcom/google/common/util/concurrent/i;Lcom/google/common/collect/ImmutableCollection;)V

    .line 148
    throw v0
.end method
