.class final Lcom/google/common/util/concurrent/e0;
.super Lcom/google/common/util/concurrent/r0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/google/common/base/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;)V
    .locals 0

    .line 898
    iput-object p2, p0, Lcom/google/common/util/concurrent/e0;->c:Lcom/google/common/base/Supplier;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/r0;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method


# virtual methods
.method public wrapTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2

    .line 906
    iget-object v0, p0, Lcom/google/common/util/concurrent/e0;->c:Lcom/google/common/base/Supplier;

    .line 110
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Lcom/google/common/util/concurrent/m;

    invoke-direct {v1, v0, p1}, Lcom/google/common/util/concurrent/m;-><init>(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public wrapTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/google/common/util/concurrent/e0;->c:Lcom/google/common/base/Supplier;

    .line 80
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Lcom/google/common/util/concurrent/l;

    invoke-direct {v1, v0, p1}, Lcom/google/common/util/concurrent/l;-><init>(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;)V

    return-object v1
.end method
