.class public abstract Landroidx/concurrent/futures/AbstractResolvableFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/concurrent/futures/AbstractResolvableFuture$h;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$f;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$b;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$g;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$c;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$d;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$e;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final d:Z

.field public static final e:Ljava/util/logging/Logger;

.field public static final f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

.field public static final g:Ljava/lang/Object;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

.field public volatile c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 64
    const-string v0, "b"

    const-string v1, "a"

    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    const-string v3, "guava.concurrent.generate_cancellation_cause"

    const-string v4, "false"

    .line 66
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->d:Z

    .line 69
    const-class v3, Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    sput-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->e:Ljava/util/logging/Logger;

    .line 85
    :try_start_0
    new-instance v5, Landroidx/concurrent/futures/AbstractResolvableFuture$f;

    const-class v4, Ljava/lang/Thread;

    .line 87
    invoke-static {v2, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    .line 88
    invoke-static {v2, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-string v4, "c"

    .line 89
    invoke-static {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 90
    invoke-static {v3, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v9

    const-class v0, Ljava/lang/Object;

    .line 94
    invoke-static {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 101
    new-instance v5, Landroidx/concurrent/futures/AbstractResolvableFuture$h;

    invoke-direct {v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$h;-><init>()V

    .line 104
    :goto_0
    sput-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    if-eqz v0, :cond_0

    .line 114
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroidx/concurrent/futures/AbstractResolvableFuture;)V
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    .line 942
    :cond_0
    :goto_0
    iget-object v2, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    .line 943
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    invoke-virtual {v3, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->c(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$i;Landroidx/concurrent/futures/AbstractResolvableFuture$i;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    if-eqz v2, :cond_2

    .line 151
    iget-object v3, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 153
    iput-object v0, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->a:Ljava/lang/Thread;

    .line 154
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 945
    :cond_1
    iget-object v2, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    goto :goto_1

    .line 880
    :cond_2
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->afterDone()V

    .line 963
    :cond_3
    iget-object v2, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 964
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture$e;->d:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    invoke-virtual {v3, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->a(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$e;Landroidx/concurrent/futures/AbstractResolvableFuture$e;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move-object p0, v1

    move-object v1, v2

    if-eqz v1, :cond_4

    .line 968
    iget-object v2, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$e;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 969
    iput-object p0, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$e;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz p0, :cond_7

    .line 886
    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 887
    iget-object v2, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;->a:Ljava/lang/Runnable;

    .line 888
    instance-of v3, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    if-eqz v3, :cond_5

    .line 889
    check-cast v2, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 896
    iget-object p0, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->a:Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 897
    iget-object v3, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    if-ne v3, v2, :cond_6

    .line 898
    iget-object v3, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->e(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v3

    .line 899
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    invoke-virtual {v4, p0, v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 905
    :cond_5
    iget-object p0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;->b:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_6
    move-object p0, v1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public static c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .line 1056
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1061
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

    sget-object p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->e:Ljava/util/logging/Logger;

    invoke-virtual {p1, v1, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 513
    instance-of v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    if-nez v0, :cond_2

    .line 517
    instance-of v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    if-nez v0, :cond_1

    .line 519
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->g:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 518
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    iget-object p0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$d;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 514
    :cond_2
    check-cast p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    iget-object p0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->b:Ljava/util/concurrent/CancellationException;

    .line 1195
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 514
    throw v0
.end method

.method public static e(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 5

    .line 800
    instance-of v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 806
    check-cast p0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    iget-object p0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 807
    instance-of v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    if-eqz v0, :cond_1

    .line 811
    move-object v0, p0

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 812
    iget-boolean v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->a:Z

    if-eqz v2, :cond_1

    .line 813
    iget-object p0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->b:Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->b:Ljava/util/concurrent/CancellationException;

    invoke-direct {p0, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$c;-><init>(ZLjava/util/concurrent/CancellationException;)V

    return-object p0

    .line 814
    :cond_0
    sget-object p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->d:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    :cond_1
    return-object p0

    .line 819
    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    .line 821
    sget-boolean v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->d:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    .line 822
    sget-object p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->d:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    return-object p0

    .line 826
    :cond_3
    :try_start_0
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->f(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 827
    sget-object p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_4
    return-object v2

    .line 841
    :goto_0
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    invoke-direct {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :goto_1
    if-nez v0, :cond_5

    .line 832
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 839
    :cond_5
    new-instance p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    invoke-direct {p0, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$c;-><init>(ZLjava/util/concurrent/CancellationException;)V

    return-object p0

    .line 829
    :goto_2
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static f(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 856
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 863
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

    .line 865
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1026
    const-string v0, "]"

    :try_start_0
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->f(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v1

    .line 1027
    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, p0, :cond_0

    .line 1045
    const-string v1, "this future"

    goto :goto_0

    .line 1047
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1027
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    .line 1033
    :goto_1
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1031
    :catch_2
    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1029
    :goto_2
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    return-void
.end method

.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .line 1204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1204
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 656
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$e;->d:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    if-eq v0, v1, :cond_2

    .line 657
    new-instance v2, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    invoke-direct {v2, p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 659
    :cond_0
    iput-object v0, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$e;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 660
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    invoke-virtual {v3, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->a(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$e;Landroidx/concurrent/futures/AbstractResolvableFuture$e;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    if-ne v0, v1, :cond_0

    .line 668
    :cond_2
    invoke-static {p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public afterDone()V
    .locals 0

    return-void
.end method

.method public final cancel(Z)Z
    .locals 7

    .line 555
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 557
    :goto_0
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    or-int/2addr v3, v4

    if-eqz v3, :cond_9

    .line 561
    sget-boolean v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->d:Z

    if-eqz v3, :cond_1

    .line 562
    new-instance v3, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$c;-><init>(ZLjava/util/concurrent/CancellationException;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 566
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    goto :goto_1

    .line 567
    :cond_2
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->d:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    :goto_1
    const/4 v5, 0x0

    move-object v4, p0

    .line 570
    :cond_3
    :goto_2
    sget-object v6, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    invoke-virtual {v6, v4, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz p1, :cond_4

    .line 575
    invoke-virtual {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->interruptTask()V

    .line 577
    :cond_4
    invoke-static {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 578
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    if-eqz v4, :cond_7

    .line 582
    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 583
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    if-eqz v4, :cond_6

    .line 592
    move-object v4, v0

    check-cast v4, Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 594
    iget-object v0, v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    if-nez v0, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 595
    :goto_3
    instance-of v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    or-int/2addr v5, v6

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_2

    .line 601
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_7
    return v1

    .line 607
    :cond_8
    iget-object v0, v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 608
    instance-of v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    if-nez v6, :cond_3

    return v5

    :cond_9
    return v2
.end method

.method public final g(Landroidx/concurrent/futures/AbstractResolvableFuture$i;)V
    .locals 4

    const/4 v0, 0x0

    .line 171
    iput-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->a:Ljava/lang/Thread;

    .line 175
    :goto_0
    iget-object p1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    .line 176
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    if-ne p1, v1, :cond_0

    goto :goto_3

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 181
    iget-object v2, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    .line 182
    iget-object v3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    move-object v1, p1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    .line 185
    iput-object v2, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    .line 186
    iget-object p1, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->a:Ljava/lang/Thread;

    if-nez p1, :cond_3

    goto :goto_0

    .line 190
    :cond_2
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    invoke-virtual {v3, p0, p1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->c(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$i;Landroidx/concurrent/futures/AbstractResolvableFuture$i;)Z

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

.method public final get()Ljava/lang/Object;
    .locals 6
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

    .line 470
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 473
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 474
    :goto_0
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 475
    invoke-static {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 477
    :cond_1
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    .line 478
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    if-eq v0, v3, :cond_7

    .line 479
    new-instance v4, Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    invoke-direct {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$i;-><init>()V

    .line 143
    :cond_2
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    invoke-virtual {v5, v4, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->d(Landroidx/concurrent/futures/AbstractResolvableFuture$i;Landroidx/concurrent/futures/AbstractResolvableFuture$i;)V

    .line 482
    invoke-virtual {v5, p0, v0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->c(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$i;Landroidx/concurrent/futures/AbstractResolvableFuture$i;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 485
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 488
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 495
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 496
    :goto_1
    instance-of v5, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    xor-int/2addr v5, v2

    and-int/2addr v3, v5

    if-eqz v3, :cond_3

    .line 497
    invoke-static {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 489
    :cond_5
    invoke-virtual {p0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->g(Landroidx/concurrent/futures/AbstractResolvableFuture$i;)V

    .line 490
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 501
    :cond_6
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    if-ne v0, v3, :cond_2

    .line 506
    :cond_7
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 471
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 20
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

    .line 359
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 361
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 364
    iget-object v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 365
    :goto_0
    instance-of v10, v6, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 366
    invoke-static {v6}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 369
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

    .line 372
    iget-object v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    .line 373
    sget-object v15, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    if-eq v6, v15, :cond_9

    .line 374
    new-instance v7, Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    invoke-direct {v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$i;-><init>()V

    const/16 v17, 0x1

    .line 143
    :cond_3
    sget-object v8, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    invoke-virtual {v8, v7, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->d(Landroidx/concurrent/futures/AbstractResolvableFuture$i;Landroidx/concurrent/futures/AbstractResolvableFuture$i;)V

    .line 377
    invoke-virtual {v8, v0, v6, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->c(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$i;Landroidx/concurrent/futures/AbstractResolvableFuture$i;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 379
    :cond_4
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 382
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 389
    iget-object v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 390
    :goto_2
    instance-of v6, v4, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    xor-int/lit8 v6, v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 391
    invoke-static {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 395
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 399
    invoke-virtual {v0, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture;->g(Landroidx/concurrent/futures/AbstractResolvableFuture$i;)V

    goto :goto_3

    .line 383
    :cond_7
    invoke-virtual {v0, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture;->g(Landroidx/concurrent/futures/AbstractResolvableFuture$i;)V

    .line 384
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 404
    :cond_8
    iget-object v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    if-ne v6, v15, :cond_3

    .line 409
    :cond_9
    iget-object v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    const/16 v17, 0x1

    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 414
    iget-object v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 415
    :goto_4
    instance-of v6, v4, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    xor-int/lit8 v6, v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 416
    invoke-static {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 418
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 421
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 419
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 424
    :cond_e
    invoke-virtual {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->toString()Ljava/lang/String;

    move-result-object v6

    .line 425
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 426
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

    .line 431
    const-string v8, " (plus "

    .line 0
    invoke-static {v2, v8}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 433
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 434
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

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    .line 440
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

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    :cond_13
    const-string v1, "delay)"

    .line 0
    invoke-static {v2, v1}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    :cond_14
    invoke-virtual {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 454
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v3, " but future completed as timeout expired"

    .line 0
    invoke-static {v2, v3}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v3, " for "

    .line 0
    invoke-static {v2, v3, v6}, L_COROUTINE/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public interruptTask()V
    .locals 0

    return-void
.end method

.method public final isCancelled()Z
    .locals 1

    .line 536
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 537
    instance-of v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    return v0
.end method

.method public final isDone()Z
    .locals 3

    .line 530
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 531
    :goto_0
    instance-of v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method public pendingToString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1013
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 1014
    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    if-eqz v1, :cond_1

    .line 1015
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFuture=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    if-ne v0, p0, :cond_0

    .line 1045
    const-string v0, "this future"

    goto :goto_0

    .line 1047
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    :goto_0
    const-string v2, "]"

    .line 0
    invoke-static {v1, v0, v2}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1016
    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remaining delay=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1018
    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 685
    sget-object p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->g:Ljava/lang/Object;

    .line 686
    :cond_0
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 687
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 2

    .line 710
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    .line 1204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    invoke-direct {v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$d;-><init>(Ljava/lang/Throwable;)V

    .line 711
    sget-object p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 712
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 749
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 750
    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->e(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p1

    .line 751
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    invoke-virtual {v0, p0, v3, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 752
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    return v2

    .line 757
    :cond_0
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    invoke-direct {v0, p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$g;-><init>(Landroidx/concurrent/futures/AbstractResolvableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 758
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    invoke-virtual {v4, p0, v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 763
    :try_start_0
    sget-object v1, Landroidx/concurrent/futures/DirectExecutor;->INSTANCE:Landroidx/concurrent/futures/DirectExecutor;

    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    .line 771
    :try_start_1
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    invoke-direct {v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$d;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 773
    :catchall_1
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$d;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    .line 777
    :goto_0
    sget-object p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    invoke-virtual {p1, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    return v2

    .line 781
    :cond_1
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 785
    :cond_2
    instance-of v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    if-eqz v2, :cond_3

    .line 787
    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    iget-boolean v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->a:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    .line 980
    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 981
    :cond_0
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 982
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->a(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 986
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->pendingToString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 990
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception thrown from implementation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 994
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 995
    const-string v3, "PENDING, info=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 996
    :cond_2
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 997
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->a(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 999
    :cond_3
    const-string v1, "PENDING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wasInterrupted()Z
    .locals 2

    .line 642
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 643
    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    iget-boolean v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
