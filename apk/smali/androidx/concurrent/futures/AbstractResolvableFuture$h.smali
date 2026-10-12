.class final Landroidx/concurrent/futures/AbstractResolvableFuture$h;
.super Landroidx/concurrent/futures/AbstractResolvableFuture$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1146
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$e;Landroidx/concurrent/futures/AbstractResolvableFuture$e;)Z
    .locals 1

    .line 1172
    monitor-enter p1

    .line 1173
    :try_start_0
    iget-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    if-ne v0, p2, :cond_0

    .line 1174
    iput-object p3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    const/4 p2, 0x1

    .line 1175
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1177
    monitor-exit p1

    return p2

    .line 1178
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final b(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1183
    monitor-enter p1

    .line 1184
    :try_start_0
    iget-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 1185
    iput-object p3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 1186
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1188
    monitor-exit p1

    return p2

    .line 1189
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final c(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$i;Landroidx/concurrent/futures/AbstractResolvableFuture$i;)Z
    .locals 1

    .line 1161
    monitor-enter p1

    .line 1162
    :try_start_0
    iget-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    if-ne v0, p2, :cond_0

    .line 1163
    iput-object p3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    const/4 p2, 0x1

    .line 1164
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1166
    monitor-exit p1

    return p2

    .line 1167
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final d(Landroidx/concurrent/futures/AbstractResolvableFuture$i;Landroidx/concurrent/futures/AbstractResolvableFuture$i;)V
    .locals 0

    .line 1156
    iput-object p2, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$i;

    return-void
.end method

.method public final e(Landroidx/concurrent/futures/AbstractResolvableFuture$i;Ljava/lang/Thread;)V
    .locals 0

    .line 1151
    iput-object p2, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$i;->a:Ljava/lang/Thread;

    return-void
.end method
