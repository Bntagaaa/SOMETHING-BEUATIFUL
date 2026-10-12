.class public abstract synthetic Lkotlinx/coroutines/future/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a()Ljava/util/concurrent/CompletableFuture;
    .locals 1

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic b(Ljava/util/concurrent/CompletableFuture;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    return-void
.end method

.method public static bridge synthetic c(Ljava/util/concurrent/CompletableFuture;Lkotlin/Unit;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic d(Ljava/util/concurrent/CompletableFuture;Lkotlinx/coroutines/future/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static bridge synthetic e(Ljava/util/stream/Stream;)V
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/Stream;->close()V

    return-void
.end method

.method public static bridge synthetic f(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0
.end method
