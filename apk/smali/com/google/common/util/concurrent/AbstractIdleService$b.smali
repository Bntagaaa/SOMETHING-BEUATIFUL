.class final Lcom/google/common/util/concurrent/AbstractIdleService$b;
.super Lcom/google/common/util/concurrent/AbstractService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractIdleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic p:Lcom/google/common/util/concurrent/AbstractIdleService;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$b;->p:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    return-void
.end method


# virtual methods
.method public final doStart()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$b;->p:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->executor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 36
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractIdleService;->a:Lcom/google/common/base/Supplier;

    .line 841
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    new-instance v2, Lcom/google/common/util/concurrent/c0;

    invoke-direct {v2, v1, v0}, Lcom/google/common/util/concurrent/c0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)V

    .line 56
    new-instance v0, Lcom/google/common/util/concurrent/AbstractIdleService$b$a;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractIdleService$b$a;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService$b;)V

    .line 57
    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final doStop()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$b;->p:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->executor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 36
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractIdleService;->a:Lcom/google/common/base/Supplier;

    .line 841
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    new-instance v2, Lcom/google/common/util/concurrent/c0;

    invoke-direct {v2, v1, v0}, Lcom/google/common/util/concurrent/c0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)V

    .line 73
    new-instance v0, Lcom/google/common/util/concurrent/AbstractIdleService$b$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractIdleService$b$b;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService$b;)V

    .line 74
    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$b;->p:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
