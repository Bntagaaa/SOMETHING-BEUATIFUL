.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;
.super Lcom/google/common/util/concurrent/AbstractService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic p:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;->p:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    return-void
.end method


# virtual methods
.method public final doStart()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;->p:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    .line 48
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a$a;-><init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;)V

    .line 841
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    new-instance v2, Lcom/google/common/util/concurrent/c0;

    invoke-direct {v2, v0, v1}, Lcom/google/common/util/concurrent/c0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)V

    .line 55
    new-instance v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a$b;-><init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public doStop()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;->p:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->triggerShutdown()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$a;->p:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
