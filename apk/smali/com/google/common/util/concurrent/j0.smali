.class final Lcom/google/common/util/concurrent/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/j0$b;,
        Lcom/google/common/util/concurrent/j0$c;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/ArrayDeque;

.field public c:Lcom/google/common/util/concurrent/j0$c;

.field public d:J

.field public final e:Lcom/google/common/util/concurrent/j0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/google/common/util/concurrent/j0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/j0;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/j0;->b:Ljava/util/ArrayDeque;

    .line 69
    sget-object v0, Lcom/google/common/util/concurrent/j0$c;->a:Lcom/google/common/util/concurrent/j0$c;

    iput-object v0, p0, Lcom/google/common/util/concurrent/j0;->c:Lcom/google/common/util/concurrent/j0$c;

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/google/common/util/concurrent/j0;->d:J

    .line 82
    new-instance v0, Lcom/google/common/util/concurrent/j0$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/j0$b;-><init>(Lcom/google/common/util/concurrent/j0;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/j0;->e:Lcom/google/common/util/concurrent/j0$b;

    .line 86
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/j0;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 7

    .line 97
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/google/common/util/concurrent/j0;->b:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/j0;->c:Lcom/google/common/util/concurrent/j0$c;

    sget-object v2, Lcom/google/common/util/concurrent/j0$c;->d:Lcom/google/common/util/concurrent/j0$c;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/google/common/util/concurrent/j0$c;->c:Lcom/google/common/util/concurrent/j0$c;

    if-ne v1, v2, :cond_0

    goto :goto_7

    .line 108
    :cond_0
    iget-wide v3, p0, Lcom/google/common/util/concurrent/j0;->d:J

    .line 116
    new-instance v1, Lcom/google/common/util/concurrent/j0$a;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/j0$a;-><init>(Ljava/lang/Runnable;)V

    .line 123
    iget-object p1, p0, Lcom/google/common/util/concurrent/j0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object p1, Lcom/google/common/util/concurrent/j0$c;->b:Lcom/google/common/util/concurrent/j0$c;

    iput-object p1, p0, Lcom/google/common/util/concurrent/j0;->c:Lcom/google/common/util/concurrent/j0$c;

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/j0;->a:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/google/common/util/concurrent/j0;->e:Lcom/google/common/util/concurrent/j0$b;

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    iget-object v0, p0, Lcom/google/common/util/concurrent/j0;->c:Lcom/google/common/util/concurrent/j0$c;

    if-eq v0, p1, :cond_1

    goto :goto_5

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/j0;->b:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 159
    :try_start_2
    iget-wide v5, p0, Lcom/google/common/util/concurrent/j0;->d:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/common/util/concurrent/j0;->c:Lcom/google/common/util/concurrent/j0$c;

    if-ne v1, p1, :cond_2

    .line 160
    iput-object v2, p0, Lcom/google/common/util/concurrent/j0;->c:Lcom/google/common/util/concurrent/j0$c;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 162
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 130
    :goto_2
    iget-object v2, p0, Lcom/google/common/util/concurrent/j0;->b:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 131
    :try_start_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/j0;->c:Lcom/google/common/util/concurrent/j0$c;

    sget-object v3, Lcom/google/common/util/concurrent/j0$c;->a:Lcom/google/common/util/concurrent/j0$c;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/google/common/util/concurrent/j0$c;->b:Lcom/google/common/util/concurrent/j0$c;

    if-ne v0, v3, :cond_4

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/j0;->b:Ljava/util/ArrayDeque;

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 136
    :goto_4
    instance-of v1, p1, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 139
    monitor-exit v2

    :goto_5
    return-void

    .line 137
    :cond_5
    throw p1

    .line 139
    :goto_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    goto :goto_8

    .line 104
    :cond_6
    :goto_7
    :try_start_4
    iget-object v1, p0, Lcom/google/common/util/concurrent/j0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 105
    monitor-exit v0

    return-void

    .line 125
    :goto_8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
