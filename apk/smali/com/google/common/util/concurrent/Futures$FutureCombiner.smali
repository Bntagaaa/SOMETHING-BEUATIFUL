.class public final Lcom/google/common/util/concurrent/Futures$FutureCombiner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FutureCombiner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Z)V
    .locals 0

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->a:Z

    .line 650
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->b:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TC;>;"
        }
    .end annotation

    .line 687
    new-instance v0, Lcom/google/common/util/concurrent/o;

    .line 50
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->b:Lcom/google/common/collect/ImmutableList;

    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->a:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/i;-><init>(Lcom/google/common/collect/ImmutableCollection;ZZ)V

    .line 51
    new-instance v1, Lcom/google/common/util/concurrent/o$b;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/common/util/concurrent/o$b;-><init>(Lcom/google/common/util/concurrent/o;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object v1, v0, Lcom/google/common/util/concurrent/o;->p:Lcom/google/common/util/concurrent/o$c;

    .line 52
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->n()V

    return-object v0
.end method

.method public callAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/AsyncCallable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TC;>;"
        }
    .end annotation

    .line 668
    new-instance v0, Lcom/google/common/util/concurrent/o;

    .line 40
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->b:Lcom/google/common/collect/ImmutableList;

    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->a:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/i;-><init>(Lcom/google/common/collect/ImmutableCollection;ZZ)V

    .line 41
    new-instance v1, Lcom/google/common/util/concurrent/o$a;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/common/util/concurrent/o$a;-><init>(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)V

    iput-object v1, v0, Lcom/google/common/util/concurrent/o;->p:Lcom/google/common/util/concurrent/o$c;

    .line 42
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->n()V

    return-object v0
.end method

.method public run(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 702
    new-instance v0, Lcom/google/common/util/concurrent/Futures$FutureCombiner$a;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/Futures$FutureCombiner$a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
