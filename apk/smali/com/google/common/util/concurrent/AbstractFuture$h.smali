.class final Lcom/google/common/util/concurrent/AbstractFuture$h;
.super Lcom/google/common/util/concurrent/AbstractFuture$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1330
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$b;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1330
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$e;Lcom/google/common/util/concurrent/AbstractFuture$e;)Z
    .locals 1

    .line 1354
    monitor-enter p1

    .line 68
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$e;

    if-ne v0, p2, :cond_0

    .line 68
    iput-object p3, p1, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$e;

    const/4 p2, 0x1

    .line 1357
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1359
    monitor-exit p1

    return p2

    .line 1360
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final b(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1365
    monitor-enter p1

    .line 68
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 68
    iput-object p3, p1, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 1368
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1370
    monitor-exit p1

    return p2

    .line 1371
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final c(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$l;Lcom/google/common/util/concurrent/AbstractFuture$l;)Z
    .locals 1

    .line 1343
    monitor-enter p1

    .line 68
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/AbstractFuture;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    if-ne v0, p2, :cond_0

    .line 68
    iput-object p3, p1, Lcom/google/common/util/concurrent/AbstractFuture;->c:Lcom/google/common/util/concurrent/AbstractFuture$l;

    const/4 p2, 0x1

    .line 1346
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1348
    monitor-exit p1

    return p2

    .line 1349
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final d(Lcom/google/common/util/concurrent/AbstractFuture$l;Lcom/google/common/util/concurrent/AbstractFuture$l;)V
    .locals 0

    .line 1338
    iput-object p2, p1, Lcom/google/common/util/concurrent/AbstractFuture$l;->b:Lcom/google/common/util/concurrent/AbstractFuture$l;

    return-void
.end method

.method public final e(Lcom/google/common/util/concurrent/AbstractFuture$l;Ljava/lang/Thread;)V
    .locals 0

    .line 1333
    iput-object p2, p1, Lcom/google/common/util/concurrent/AbstractFuture$l;->a:Ljava/lang/Thread;

    return-void
.end method
