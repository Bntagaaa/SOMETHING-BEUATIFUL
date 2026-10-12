.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation build Lcom/google/j2objc/annotations/ReflectionSupport;
    value = .enum Lcom/google/j2objc/annotations/ReflectionSupport$Level;->FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFuture$h;,
        Lcom/google/common/util/concurrent/AbstractFuture$f;,
        Lcom/google/common/util/concurrent/AbstractFuture$k;,
        Lcom/google/common/util/concurrent/AbstractFuture$b;,
        Lcom/google/common/util/concurrent/AbstractFuture$g;,
        Lcom/google/common/util/concurrent/AbstractFuture$c;,
        Lcom/google/common/util/concurrent/AbstractFuture$d;,
        Lcom/google/common/util/concurrent/AbstractFuture$e;,
        Lcom/google/common/util/concurrent/AbstractFuture$l;,
        Lcom/google/common/util/concurrent/AbstractFuture$j;,
        Lcom/google/common/util/concurrent/AbstractFuture$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final d:Z

.field public static final e:Ljava/util/logging/Logger;

.field public static final f:Lcom/google/common/util/concurrent/AbstractFuture$b;

.field public static final g:Ljava/lang/Object;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Lcom/google/common/util/concurrent/AbstractFuture$e;

.field public volatile c:Lcom/google/common/util/concurrent/AbstractFuture$l;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 72
    const-string v1, "b"

    const-string v2, "a"

    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture$l;

    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v4, "false"

    .line 74
    invoke-static {v0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/common/util/concurrent/AbstractFuture;->d:Z

    .line 124
    const-class v4, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->e:Ljava/util/logging/Logger;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 138
    :try_start_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$k;

    invoke-direct {v0, v5}, Lcom/google/common/util/concurrent/AbstractFuture$k;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v0

    .line 145
    :try_start_1
    new-instance v8, Lcom/google/common/util/concurrent/AbstractFuture$f;

    const-class v0, Ljava/lang/Thread;

    .line 147
    invoke-static {v3, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v9

    .line 148
    invoke-static {v3, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v10

    const-string v0, "c"

    .line 149
    invoke-static {v4, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v11

    const-class v0, Lcom/google/common/util/concurrent/AbstractFuture$e;

    .line 150
    invoke-static {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v12

    const-class v0, Ljava/lang/Object;

    .line 151
    invoke-static {v4, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lcom/google/common/util/concurrent/AbstractFuture$f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v8

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v0

    .line 158
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$h;

    invoke-direct {v0, v5}, Lcom/google/common/util/concurrent/AbstractFuture$h;-><init>(I)V

    .line 161
    :goto_0
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    if-eqz v6, :cond_0

    .line 171
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->e:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v0, v1, v2, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    const-string v2, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v1, v2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;-><init>()V

    return-void
.end method

.method public static c(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    .line 1027
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    .line 1028
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$l;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    invoke-virtual {v3, p0, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$b;->c(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$l;Lcom/google/common/util/concurrent/AbstractFuture$l;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    if-eqz v2, :cond_2

    .line 205
    iget-object v3, v2, Lcom/google/common/util/concurrent/AbstractFuture$l;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 207
    iput-object v0, v2, Lcom/google/common/util/concurrent/AbstractFuture$l;->a:Ljava/lang/Thread;

    .line 208
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1029
    :cond_1
    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractFuture$l;->b:Lcom/google/common/util/concurrent/AbstractFuture$l;

    goto :goto_1

    .line 934
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->afterDone()V

    .line 1047
    :cond_3
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$e;

    .line 1048
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$e;->d:Lcom/google/common/util/concurrent/AbstractFuture$e;

    invoke-virtual {v3, p0, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$b;->a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$e;Lcom/google/common/util/concurrent/AbstractFuture$e;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move-object p0, v1

    move-object v1, v2

    if-eqz v1, :cond_4

    .line 1052
    iget-object v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$e;->c:Lcom/google/common/util/concurrent/AbstractFuture$e;

    .line 1053
    iput-object p0, v1, Lcom/google/common/util/concurrent/AbstractFuture$e;->c:Lcom/google/common/util/concurrent/AbstractFuture$e;

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz p0, :cond_7

    .line 940
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$e;->c:Lcom/google/common/util/concurrent/AbstractFuture$e;

    .line 941
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture$e;->a:Ljava/lang/Runnable;

    .line 942
    instance-of v3, v2, Lcom/google/common/util/concurrent/AbstractFuture$g;

    if-eqz v3, :cond_5

    .line 943
    check-cast v2, Lcom/google/common/util/concurrent/AbstractFuture$g;

    .line 949
    iget-object p0, v2, Lcom/google/common/util/concurrent/AbstractFuture$g;->a:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 950
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    if-ne v3, v2, :cond_6

    .line 951
    iget-object v3, v2, Lcom/google/common/util/concurrent/AbstractFuture$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3}, Lcom/google/common/util/concurrent/AbstractFuture;->f(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v3

    .line 952
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    invoke-virtual {v4, p0, v2, v3}, Lcom/google/common/util/concurrent/AbstractFuture$b;->b(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 958
    :cond_5
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture$e;->b:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_6
    move-object p0, v1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public static d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .line 1165
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1170
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RuntimeException while executing runnable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/google/common/util/concurrent/AbstractFuture;->e:Ljava/util/logging/Logger;

    invoke-virtual {p1, v1, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 550
    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    if-nez v0, :cond_2

    .line 552
    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$d;

    if-nez v0, :cond_1

    .line 554
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->g:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 553
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture$d;

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture$d;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 551
    :cond_2
    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture$c;->b:Ljava/lang/RuntimeException;

    .line 1377
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 551
    throw v0
.end method

.method public static f(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 6

    .line 833
    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    instance-of v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$i;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 838
    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture;

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    .line 839
    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    if-eqz v0, :cond_1

    .line 843
    move-object v0, p0

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    .line 844
    iget-boolean v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$c;->a:Z

    if-eqz v1, :cond_1

    .line 845
    iget-object p0, v0, Lcom/google/common/util/concurrent/AbstractFuture$c;->b:Ljava/lang/RuntimeException;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$c;->b:Ljava/lang/RuntimeException;

    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$c;-><init>(ZLjava/lang/RuntimeException;)V

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/common/util/concurrent/AbstractFuture$c;->d:Lcom/google/common/util/concurrent/AbstractFuture$c;

    :cond_1
    return-object p0

    .line 853
    :cond_2
    instance-of v1, p0, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    if-eqz v1, :cond_3

    .line 854
    move-object v1, p0

    check-cast v1, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    .line 855
    invoke-static {v1}, Lcom/google/common/util/concurrent/internal/InternalFutures;->tryInternalFastPathGetFailure(Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 857
    new-instance p0, Lcom/google/common/util/concurrent/AbstractFuture$d;

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$d;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 860
    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    .line 862
    sget-boolean v3, Lcom/google/common/util/concurrent/AbstractFuture;->d:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 863
    sget-object p0, Lcom/google/common/util/concurrent/AbstractFuture$c;->d:Lcom/google/common/util/concurrent/AbstractFuture$c;

    return-object p0

    .line 867
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->g(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_5

    .line 869
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$c;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$c;-><init>(ZLjava/lang/RuntimeException;)V

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    .line 876
    sget-object p0, Lcom/google/common/util/concurrent/AbstractFuture;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_6
    return-object v3

    .line 898
    :goto_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$d;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractFuture$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :goto_1
    if-nez v1, :cond_7

    .line 890
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$d;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$d;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 896
    :cond_7
    new-instance p0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$c;-><init>(ZLjava/lang/RuntimeException;)V

    return-object p0

    :goto_2
    if-eqz v1, :cond_8

    .line 879
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$c;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$c;-><init>(ZLjava/lang/RuntimeException;)V

    return-object v1

    .line 887
    :cond_8
    new-instance p0, Lcom/google/common/util/concurrent/AbstractFuture$d;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$d;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static g(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 911
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 918
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 920
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1127
    const-string v0, "]"

    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->g(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v1

    .line 1128
    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    invoke-virtual {p0, v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->b(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 1130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 1136
    :goto_0
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1134
    :catch_2
    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1132
    :goto_1
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method

.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .line 682
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$e;

    .line 695
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$e;->d:Lcom/google/common/util/concurrent/AbstractFuture$e;

    if-eq v0, v1, :cond_2

    .line 696
    new-instance v2, Lcom/google/common/util/concurrent/AbstractFuture$e;

    invoke-direct {v2, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 698
    :cond_0
    iput-object v0, v2, Lcom/google/common/util/concurrent/AbstractFuture$e;->c:Lcom/google/common/util/concurrent/AbstractFuture$e;

    .line 699
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    invoke-virtual {v3, p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$b;->a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$e;Lcom/google/common/util/concurrent/AbstractFuture$e;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$e;

    if-ne v0, v1, :cond_0

    .line 708
    :cond_2
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public afterDone()V
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1

    if-ne p1, p0, :cond_0

    .line 1148
    :try_start_0
    const-string p1, "this future"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    .line 1150
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1155
    :goto_0
    const-string v0, "Exception thrown from implementation: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public cancel(Z)Z
    .locals 7
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 593
    :goto_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$g;

    or-int/2addr v3, v4

    if-eqz v3, :cond_9

    .line 596
    sget-boolean v3, Lcom/google/common/util/concurrent/AbstractFuture;->d:Z

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$c;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/google/common/util/concurrent/AbstractFuture$c;-><init>(ZLjava/lang/RuntimeException;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$c;->c:Lcom/google/common/util/concurrent/AbstractFuture$c;

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$c;->d:Lcom/google/common/util/concurrent/AbstractFuture$c;

    :goto_1
    const/4 v5, 0x0

    move-object v4, p0

    .line 605
    :cond_3
    :goto_2
    sget-object v6, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    invoke-virtual {v6, v4, v0, v3}, Lcom/google/common/util/concurrent/AbstractFuture$b;->b(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz p1, :cond_4

    .line 610
    invoke-virtual {v4}, Lcom/google/common/util/concurrent/AbstractFuture;->interruptTask()V

    .line 612
    :cond_4
    invoke-static {v4}, Lcom/google/common/util/concurrent/AbstractFuture;->c(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 613
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$g;

    if-eqz v4, :cond_7

    .line 616
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$g;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 617
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$i;

    if-eqz v4, :cond_6

    .line 625
    move-object v4, v0

    check-cast v4, Lcom/google/common/util/concurrent/AbstractFuture;

    .line 626
    iget-object v0, v4, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    if-nez v0, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 627
    :goto_3
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$g;

    or-int/2addr v5, v6

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_2

    .line 633
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_7
    return v1

    .line 639
    :cond_8
    iget-object v0, v4, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    .line 640
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$g;

    if-nez v6, :cond_3

    return v5

    :cond_9
    return v2
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 509
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 512
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 513
    :goto_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$g;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 514
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    .line 517
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$l;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    if-eq v0, v3, :cond_7

    .line 518
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$l;

    invoke-direct {v4}, Lcom/google/common/util/concurrent/AbstractFuture$l;-><init>()V

    .line 68
    :cond_2
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    .line 198
    invoke-virtual {v5, v4, v0}, Lcom/google/common/util/concurrent/AbstractFuture$b;->d(Lcom/google/common/util/concurrent/AbstractFuture$l;Lcom/google/common/util/concurrent/AbstractFuture$l;)V

    .line 521
    invoke-virtual {v5, p0, v0, v4}, Lcom/google/common/util/concurrent/AbstractFuture$b;->c(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$l;Lcom/google/common/util/concurrent/AbstractFuture$l;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 524
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 526
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 532
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 533
    :goto_1
    instance-of v5, v0, Lcom/google/common/util/concurrent/AbstractFuture$g;

    xor-int/2addr v5, v2

    and-int/2addr v3, v5

    if-eqz v3, :cond_3

    .line 534
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 527
    :cond_5
    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->i(Lcom/google/common/util/concurrent/AbstractFuture$l;)V

    .line 528
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 538
    :cond_6
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    if-ne v0, v3, :cond_2

    .line 543
    :cond_7
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 510
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 20
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 401
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 403
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 406
    iget-object v6, v0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 407
    :goto_0
    instance-of v10, v6, Lcom/google/common/util/concurrent/AbstractFuture$g;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 408
    invoke-static {v6}, Lcom/google/common/util/concurrent/AbstractFuture;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 411
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_1

    :cond_2
    move-wide v11, v9

    :goto_1
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_a

    .line 414
    iget-object v6, v0, Lcom/google/common/util/concurrent/AbstractFuture;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    .line 415
    sget-object v15, Lcom/google/common/util/concurrent/AbstractFuture$l;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    if-eq v6, v15, :cond_9

    .line 416
    new-instance v7, Lcom/google/common/util/concurrent/AbstractFuture$l;

    invoke-direct {v7}, Lcom/google/common/util/concurrent/AbstractFuture$l;-><init>()V

    const/16 v17, 0x1

    .line 68
    :cond_3
    sget-object v8, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    .line 198
    invoke-virtual {v8, v7, v6}, Lcom/google/common/util/concurrent/AbstractFuture$b;->d(Lcom/google/common/util/concurrent/AbstractFuture$l;Lcom/google/common/util/concurrent/AbstractFuture$l;)V

    .line 419
    invoke-virtual {v8, v0, v6, v7}, Lcom/google/common/util/concurrent/AbstractFuture$b;->c(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$l;Lcom/google/common/util/concurrent/AbstractFuture$l;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 421
    :cond_4
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 423
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 430
    iget-object v4, v0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 431
    :goto_2
    instance-of v6, v4, Lcom/google/common/util/concurrent/AbstractFuture$g;

    xor-int/lit8 v6, v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 432
    invoke-static {v4}, Lcom/google/common/util/concurrent/AbstractFuture;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 436
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 439
    invoke-virtual {v0, v7}, Lcom/google/common/util/concurrent/AbstractFuture;->i(Lcom/google/common/util/concurrent/AbstractFuture$l;)V

    goto :goto_3

    .line 424
    :cond_7
    invoke-virtual {v0, v7}, Lcom/google/common/util/concurrent/AbstractFuture;->i(Lcom/google/common/util/concurrent/AbstractFuture$l;)V

    .line 425
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 444
    :cond_8
    iget-object v6, v0, Lcom/google/common/util/concurrent/AbstractFuture;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    if-ne v6, v15, :cond_3

    .line 449
    :cond_9
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractFuture;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    const/16 v17, 0x1

    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 454
    iget-object v4, v0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 455
    :goto_4
    instance-of v6, v4, Lcom/google/common/util/concurrent/AbstractFuture$g;

    xor-int/lit8 v6, v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 456
    invoke-static {v4}, Lcom/google/common/util/concurrent/AbstractFuture;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 458
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 461
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 459
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 464
    :cond_e
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->toString()Ljava/lang/String;

    move-result-object v6

    .line 465
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 466
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Waited "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v8, v11, v9

    if-gez v8, :cond_14

    .line 470
    const-string v8, " (plus "

    .line 0
    invoke-static {v2, v8}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 472
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 473
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v18

    sub-long v4, v4, v18

    cmp-long v3, v11, v9

    if-eqz v3, :cond_10

    cmp-long v8, v4, v13

    if-lez v8, :cond_f

    goto :goto_5

    :cond_f
    const/16 v16, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/16 v16, 0x1

    :goto_6
    if-lez v3, :cond_12

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    .line 479
    const-string v3, ","

    .line 0
    invoke-static {v2, v3}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 0
    :cond_11
    invoke-static {v2, v1}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v16, :cond_13

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    :cond_13
    const-string v1, "delay)"

    .line 0
    invoke-static {v2, v1}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    :cond_14
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 493
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v3, " but future completed as timeout expired"

    .line 0
    invoke-static {v2, v3}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v3, " for "

    .line 0
    invoke-static {v2, v3, v6}, L_COROUTINE/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public final h(Ljava/util/concurrent/Future;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1018
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1019
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public final i(Lcom/google/common/util/concurrent/AbstractFuture$l;)V
    .locals 4

    const/4 v0, 0x0

    .line 225
    iput-object v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$l;->a:Ljava/lang/Thread;

    .line 229
    :goto_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    .line 230
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$l;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    if-ne p1, v1, :cond_0

    goto :goto_3

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 235
    iget-object v2, p1, Lcom/google/common/util/concurrent/AbstractFuture$l;->b:Lcom/google/common/util/concurrent/AbstractFuture$l;

    .line 236
    iget-object v3, p1, Lcom/google/common/util/concurrent/AbstractFuture$l;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    move-object v1, p1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    .line 239
    iput-object v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$l;->b:Lcom/google/common/util/concurrent/AbstractFuture$l;

    .line 240
    iget-object p1, v1, Lcom/google/common/util/concurrent/AbstractFuture$l;->a:Ljava/lang/Thread;

    if-nez p1, :cond_3

    goto :goto_0

    .line 243
    :cond_2
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$b;->c(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$l;Lcom/google/common/util/concurrent/AbstractFuture$l;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method public interruptTask()V
    .locals 0

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    .line 572
    instance-of v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    return v0
.end method

.method public isDone()Z
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 566
    :goto_0
    instance-of v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$g;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method public pendingToString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1082
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remaining delay=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1084
    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 725
    sget-object p1, Lcom/google/common/util/concurrent/AbstractFuture;->g:Ljava/lang/Object;

    .line 726
    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture$b;->b(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 727
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->c(Lcom/google/common/util/concurrent/AbstractFuture;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 747
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$d;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$d;-><init>(Ljava/lang/Throwable;)V

    .line 748
    sget-object p1, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$b;->b(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 749
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->c(Lcom/google/common/util/concurrent/AbstractFuture;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 783
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 786
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 787
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->f(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p1

    .line 788
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    invoke-virtual {v0, p0, v3, p1}, Lcom/google/common/util/concurrent/AbstractFuture$b;->b(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 789
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->c(Lcom/google/common/util/concurrent/AbstractFuture;)V

    return v2

    .line 794
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$g;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$g;-><init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 795
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    invoke-virtual {v4, p0, v3, v0}, Lcom/google/common/util/concurrent/AbstractFuture$b;->b(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 799
    :try_start_0
    sget-object v1, Lcom/google/common/util/concurrent/p;->a:Lcom/google/common/util/concurrent/p;

    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    .line 806
    :try_start_1
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$d;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture$d;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 808
    :catchall_1
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$d;->b:Lcom/google/common/util/concurrent/AbstractFuture$d;

    .line 811
    :goto_0
    sget-object p1, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$b;->b(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    return v2

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    .line 819
    :cond_2
    instance-of v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    if-eqz v2, :cond_3

    .line 821
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$c;->a:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    .line 1064
    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1066
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 1093
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1095
    const-string v3, "PENDING"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    .line 1098
    instance-of v4, v3, Lcom/google/common/util/concurrent/AbstractFuture$g;

    if-eqz v4, :cond_2

    .line 1099
    const-string v4, ", setFuture=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    check-cast v3, Lcom/google/common/util/concurrent/AbstractFuture$g;

    iget-object v3, v3, Lcom/google/common/util/concurrent/AbstractFuture$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v3, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->b(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 1101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1105
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 1109
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception thrown from implementation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    .line 1112
    const-string v4, ", info=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/StringBuilder;)V

    .line 1070
    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryInternalFastPathGetFailure()Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1004
    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$i;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    .line 1006
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$d;

    if-eqz v1, :cond_0

    .line 1007
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$d;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$d;->a:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final wasInterrupted()Z
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    .line 672
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$c;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
