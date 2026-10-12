.class Landroidx/recyclerview/widget/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/q;->getBackgroundProxy(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/q$c;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/lang/Runnable;

.field public final synthetic e:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/q$b;->e:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 89
    new-instance p1, Landroidx/recyclerview/widget/q$c;

    invoke-direct {p1}, Landroidx/recyclerview/widget/q$c;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/q$b;->a:Landroidx/recyclerview/widget/q$c;

    .line 90
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/recyclerview/widget/q$b;->b:Ljava/util/concurrent/Executor;

    .line 91
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/recyclerview/widget/q$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance p1, Landroidx/recyclerview/widget/q$b$a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/q$b$a;-><init>(Landroidx/recyclerview/widget/q$b;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/q$b;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    .line 225
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/q$d;->a(IIIIIILandroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/q$d;

    move-result-object p1

    .line 121
    iget-object p2, p0, Landroidx/recyclerview/widget/q$b;->a:Landroidx/recyclerview/widget/q$c;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/q$c;->c(Landroidx/recyclerview/widget/q$d;)V

    .line 131
    iget-object p1, p0, Landroidx/recyclerview/widget/q$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Landroidx/recyclerview/widget/q$b;->d:Ljava/lang/Runnable;

    iget-object p2, p0, Landroidx/recyclerview/widget/q$b;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p1

    .line 229
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/q$d;->a(IIIIIILandroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/q$d;

    move-result-object p1

    .line 121
    iget-object v0, p0, Landroidx/recyclerview/widget/q$b;->a:Landroidx/recyclerview/widget/q$c;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/q$c;->c(Landroidx/recyclerview/widget/q$d;)V

    .line 131
    iget-object p1, p0, Landroidx/recyclerview/widget/q$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Landroidx/recyclerview/widget/q$b;->d:Ljava/lang/Runnable;

    iget-object v0, p0, Landroidx/recyclerview/widget/q$b;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public refresh(I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move v1, p1

    .line 229
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/q$d;->a(IIIIIILandroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/q$d;

    move-result-object p1

    .line 126
    iget-object v0, p0, Landroidx/recyclerview/widget/q$b;->a:Landroidx/recyclerview/widget/q$c;

    .line 250
    iget-object v1, v0, Landroidx/recyclerview/widget/q$c;->b:Ljava/lang/Object;

    .line 250
    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v2, v0, Landroidx/recyclerview/widget/q$c;->a:Landroidx/recyclerview/widget/q$d;

    iput-object v2, p1, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    .line 252
    iput-object p1, v0, Landroidx/recyclerview/widget/q$c;->a:Landroidx/recyclerview/widget/q$d;

    .line 253
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object p1, p0, Landroidx/recyclerview/widget/q$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Landroidx/recyclerview/widget/q$b;->d:Ljava/lang/Runnable;

    iget-object v0, p0, Landroidx/recyclerview/widget/q$b;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 253
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateRange(IIIII)V
    .locals 7

    const/4 v0, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 106
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/q$d;->a(IIIIIILandroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/q$d;

    move-result-object p1

    .line 126
    iget-object p2, p0, Landroidx/recyclerview/widget/q$b;->a:Landroidx/recyclerview/widget/q$c;

    .line 250
    iget-object p3, p2, Landroidx/recyclerview/widget/q$c;->b:Ljava/lang/Object;

    .line 250
    monitor-enter p3

    .line 251
    :try_start_0
    iget-object p4, p2, Landroidx/recyclerview/widget/q$c;->a:Landroidx/recyclerview/widget/q$d;

    iput-object p4, p1, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    .line 252
    iput-object p1, p2, Landroidx/recyclerview/widget/q$c;->a:Landroidx/recyclerview/widget/q$d;

    .line 253
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object p1, p0, Landroidx/recyclerview/widget/q$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Landroidx/recyclerview/widget/q$b;->d:Ljava/lang/Runnable;

    iget-object p2, p0, Landroidx/recyclerview/widget/q$b;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 253
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
