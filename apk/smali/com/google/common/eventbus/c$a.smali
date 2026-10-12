.class final Lcom/google/common/eventbus/c$a;
.super Lcom/google/common/eventbus/c;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/common/eventbus/c;->a(Ljava/lang/Object;)V

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
