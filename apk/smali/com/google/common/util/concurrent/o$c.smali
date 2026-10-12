.class abstract Lcom/google/common/util/concurrent/o$c;
.super Lcom/google/common/util/concurrent/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/Executor;

.field public e:Z

.field public final synthetic f:Lcom/google/common/util/concurrent/o;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/o;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/common/util/concurrent/o$c;->f:Lcom/google/common/util/concurrent/o;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/z;-><init>()V

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/o$c;->e:Z

    .line 95
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/o$c;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/google/common/util/concurrent/o$c;->f:Lcom/google/common/util/concurrent/o;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/common/util/concurrent/o;->p:Lcom/google/common/util/concurrent/o$c;

    if-eqz p2, :cond_2

    .line 129
    instance-of p1, p2, Ljava/util/concurrent/ExecutionException;

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 131
    :cond_0
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 132
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$j;->cancel(Z)Z

    return-void

    .line 134
    :cond_1
    invoke-virtual {v0, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 137
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/o$c;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/common/util/concurrent/o$c;->f:Lcom/google/common/util/concurrent/o;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$j;->isDone()Z

    move-result v0

    return v0
.end method

.method public abstract f(Ljava/lang/Object;)V
.end method
