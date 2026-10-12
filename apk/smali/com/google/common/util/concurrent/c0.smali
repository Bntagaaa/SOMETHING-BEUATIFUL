.class final Lcom/google/common/util/concurrent/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lcom/google/common/base/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)V
    .locals 0

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/c0;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/common/util/concurrent/c0;->b:Lcom/google/common/base/Supplier;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/google/common/util/concurrent/c0;->b:Lcom/google/common/base/Supplier;

    .line 110
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Lcom/google/common/util/concurrent/m;

    invoke-direct {v1, v0, p1}, Lcom/google/common/util/concurrent/m;-><init>(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V

    .line 846
    iget-object p1, p0, Lcom/google/common/util/concurrent/c0;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
