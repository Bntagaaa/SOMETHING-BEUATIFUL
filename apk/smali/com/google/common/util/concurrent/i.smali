.class abstract Lcom/google/common/util/concurrent/i;
.super Lcom/google/common/util/concurrent/j;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/j<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field public static final o:Ljava/util/logging/Logger;


# instance fields
.field public l:Lcom/google/common/collect/ImmutableCollection;

.field public final m:Z

.field public final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/i;->o:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableCollection;ZZ)V
    .locals 2

    .line 64
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 75
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$j;-><init>()V

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/google/common/util/concurrent/j;->h:Ljava/util/Set;

    .line 76
    iput v0, p0, Lcom/google/common/util/concurrent/j;->i:I

    .line 65
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableCollection;

    iput-object p1, p0, Lcom/google/common/util/concurrent/i;->l:Lcom/google/common/collect/ImmutableCollection;

    .line 66
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/i;->m:Z

    .line 67
    iput-boolean p3, p0, Lcom/google/common/util/concurrent/i;->n:Z

    return-void
.end method

.method public static j(Lcom/google/common/util/concurrent/i;Lcom/google/common/collect/ImmutableCollection;)V
    .locals 4

    .line 137
    sget-object v0, Lcom/google/common/util/concurrent/j;->j:Lcom/google/common/util/concurrent/j$b;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/j$b;->b(Lcom/google/common/util/concurrent/i;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 262
    :goto_0
    const-string v3, "Less than 0 remaining futures"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 274
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 275
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/util/concurrent/i;->k(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    .line 253
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/i;->m(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 251
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/i;->m(Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/google/common/util/concurrent/j;->h:Ljava/util/Set;

    .line 282
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/i;->l()V

    .line 290
    sget-object p1, Lcom/google/common/util/concurrent/i$a;->b:Lcom/google/common/util/concurrent/i$a;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/i;->o(Lcom/google/common/util/concurrent/i$a;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final afterDone()V
    .locals 3

    .line 72
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->afterDone()V

    .line 74
    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->l:Lcom/google/common/collect/ImmutableCollection;

    .line 75
    sget-object v1, Lcom/google/common/util/concurrent/i$a;->a:Lcom/google/common/util/concurrent/i$a;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/i;->o(Lcom/google/common/util/concurrent/i$a;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$j;->isCancelled()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->wasInterrupted()Z

    move-result v1

    .line 79
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 80
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public abstract k(ILjava/lang/Object;)V
.end method

.method public abstract l()V
.end method

.method public final m(Ljava/lang/Throwable;)V
    .locals 5

    .line 192
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/i;->m:Z

    const-string v1, "Got more than one input Future failure. Logging failures after the first"

    const-string v2, "Input Future failed with Error"

    if-eqz v0, :cond_6

    .line 197
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 96
    iget-object v0, p0, Lcom/google/common/util/concurrent/j;->h:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 113
    invoke-static {}, Lcom/google/common/collect/Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$j;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->tryInternalFastPathGetFailure()Ljava/lang/Throwable;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    .line 332
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_0

    .line 121
    :cond_1
    :goto_1
    sget-object v3, Lcom/google/common/util/concurrent/j;->j:Lcom/google/common/util/concurrent/j$b;

    invoke-virtual {v3, p0, v0}, Lcom/google/common/util/concurrent/j$b;->a(Lcom/google/common/util/concurrent/i;Ljava/util/Set;)V

    .line 128
    iget-object v0, p0, Lcom/google/common/util/concurrent/j;->h:Ljava/util/Set;

    :cond_2
    move-object v3, p1

    :goto_2
    if-eqz v3, :cond_4

    .line 332
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 331
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_2

    .line 226
    :cond_4
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_5

    move-object v1, v2

    .line 230
    :cond_5
    sget-object v0, Lcom/google/common/util/concurrent/i;->o:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 213
    :cond_6
    :goto_3
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_8

    .line 226
    invoke-static {p1}, L_COROUTINE/a;->x(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v1, v2

    .line 230
    :cond_7
    sget-object v0, Lcom/google/common/util/concurrent/i;->o:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public final n()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->l:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/i;->l()V

    return-void

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/i;->m:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->l:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    add-int/lit8 v3, v1, 0x1

    .line 128
    new-instance v4, Lcom/google/common/util/concurrent/g;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/common/util/concurrent/g;-><init>(Lcom/google/common/util/concurrent/i;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    .line 151
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 128
    invoke-interface {v2, v4, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v1, v3

    goto :goto_0

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/i;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->l:Lcom/google/common/collect/ImmutableCollection;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 172
    :goto_1
    new-instance v1, Lcom/google/common/util/concurrent/h;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/h;-><init>(Lcom/google/common/util/concurrent/i;Lcom/google/common/collect/ImmutableCollection;)V

    .line 179
    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->l:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 180
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public o(Lcom/google/common/util/concurrent/i$a;)V
    .locals 0

    .line 306
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 313
    iput-object p1, p0, Lcom/google/common/util/concurrent/i;->l:Lcom/google/common/collect/ImmutableCollection;

    return-void
.end method

.method public final pendingToString()Ljava/lang/String;
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->l:Lcom/google/common/collect/ImmutableCollection;

    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "futures="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
