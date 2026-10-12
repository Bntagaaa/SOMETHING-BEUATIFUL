.class public final Lokio/Throttler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0006J+\u0010\u0007\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001f\u001a\u00020\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0017\u0010%\u001a\u00020 8\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lokio/Throttler;",
        "",
        "",
        "allocatedUntil",
        "<init>",
        "(J)V",
        "()V",
        "bytesPerSecond",
        "waitByteCount",
        "maxByteCount",
        "",
        "(JJJ)V",
        "byteCount",
        "take$okio",
        "(J)J",
        "take",
        "now",
        "byteCountOrWaitNanos$okio",
        "(JJ)J",
        "byteCountOrWaitNanos",
        "Lokio/Source;",
        "source",
        "(Lokio/Source;)Lokio/Source;",
        "Lokio/Sink;",
        "sink",
        "(Lokio/Sink;)Lokio/Sink;",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "e",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "getLock",
        "()Ljava/util/concurrent/locks/ReentrantLock;",
        "lock",
        "Ljava/util/concurrent/locks/Condition;",
        "f",
        "Ljava/util/concurrent/locks/Condition;",
        "getCondition",
        "()Ljava/util/concurrent/locks/Condition;",
        "condition",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public final e:Ljava/util/concurrent/locks/ReentrantLock;

.field public final f:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lokio/Throttler;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lokio/Throttler;->a:J

    const-wide/16 p1, 0x2000

    .line 49
    iput-wide p1, p0, Lokio/Throttler;->c:J

    const-wide/32 p1, 0x40000

    .line 50
    iput-wide p1, p0, Lokio/Throttler;->d:J

    .line 52
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lokio/Throttler;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    const-string p2, "newCondition(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokio/Throttler;->f:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method public static synthetic bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 61
    iget-wide p3, p0, Lokio/Throttler;->c:J

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p7, 0x4

    if-eqz p3, :cond_1

    .line 62
    iget-wide p5, p0, Lokio/Throttler;->d:J

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p5

    .line 59
    invoke-virtual/range {v0 .. v6}, Lokio/Throttler;->bytesPerSecond(JJJ)V

    return-void
.end method


# virtual methods
.method public final byteCountOrWaitNanos$okio(JJ)J
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    .line 99
    iget-wide v3, v0, Lokio/Throttler;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    return-wide v1

    .line 101
    :cond_0
    iget-wide v3, v0, Lokio/Throttler;->a:J

    sub-long v3, v3, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 102
    iget-wide v7, v0, Lokio/Throttler;->d:J

    .line 129
    iget-wide v9, v0, Lokio/Throttler;->b:J

    mul-long v11, v3, v9

    const-wide/32 v13, 0x3b9aca00

    div-long/2addr v11, v13

    sub-long v11, v7, v11

    cmp-long v15, v11, v1

    if-ltz v15, :cond_1

    add-long v3, p1, v3

    mul-long v5, v1, v13

    .line 131
    div-long/2addr v5, v9

    add-long/2addr v5, v3

    .line 106
    iput-wide v5, v0, Lokio/Throttler;->a:J

    return-wide v1

    :cond_1
    move-wide v15, v5

    .line 111
    iget-wide v5, v0, Lokio/Throttler;->c:J

    cmp-long v17, v11, v5

    if-ltz v17, :cond_2

    mul-long v7, v7, v13

    .line 131
    div-long/2addr v7, v9

    add-long v7, v7, p1

    .line 112
    iput-wide v7, v0, Lokio/Throttler;->a:J

    return-wide v11

    .line 117
    :cond_2
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 118
    iget-wide v5, v0, Lokio/Throttler;->d:J

    sub-long v7, v1, v5

    mul-long v7, v7, v13

    .line 131
    iget-wide v9, v0, Lokio/Throttler;->b:J

    div-long/2addr v7, v9

    add-long/2addr v7, v3

    cmp-long v3, v7, v15

    if-nez v3, :cond_3

    mul-long v5, v5, v13

    .line 131
    div-long/2addr v5, v9

    add-long v5, v5, p1

    .line 122
    iput-wide v5, v0, Lokio/Throttler;->a:J

    return-wide v1

    :cond_3
    neg-long v1, v7

    return-wide v1
.end method

.method public final bytesPerSecond(J)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v8}, Lokio/Throttler;->bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V

    return-void
.end method

.method public final bytesPerSecond(JJ)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v8}, Lokio/Throttler;->bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V

    return-void
.end method

.method public final bytesPerSecond(JJJ)V
    .locals 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 64
    iget-object v0, p0, Lokio/Throttler;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-wide/16 v1, 0x0

    .line 65
    const-string v3, "Failed requirement."

    cmp-long v4, p1, v1

    if-ltz v4, :cond_2

    cmp-long v4, p3, v1

    if-lez v4, :cond_1

    cmp-long v1, p5, p3

    if-ltz v1, :cond_0

    .line 69
    :try_start_0
    iput-wide p1, p0, Lokio/Throttler;->b:J

    .line 70
    iput-wide p3, p0, Lokio/Throttler;->c:J

    .line 71
    iput-wide p5, p0, Lokio/Throttler;->d:J

    .line 72
    iget-object p1, p0, Lokio/Throttler;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 67
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final getCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    iget-object v0, p0, Lokio/Throttler;->f:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public final getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    iget-object v0, p0, Lokio/Throttler;->e:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .locals 1
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v0, Lokio/Throttler$sink$1;

    invoke-direct {v0, p1, p0}, Lokio/Throttler$sink$1;-><init>(Lokio/Sink;Lokio/Throttler;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .locals 1
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lokio/Throttler$source$1;

    invoke-direct {v0, p1, p0}, Lokio/Throttler$source$1;-><init>(Lokio/Source;Lokio/Throttler;)V

    return-object v0
.end method

.method public final take$okio(J)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 83
    iget-object v2, p0, Lokio/Throttler;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 85
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 86
    invoke-virtual {p0, v3, v4, p1, p2}, Lokio/Throttler;->byteCountOrWaitNanos$okio(JJ)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v3, v0

    if-ltz v5, :cond_0

    .line 87
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v3

    .line 88
    :cond_0
    :try_start_1
    iget-object v5, p0, Lokio/Throttler;->f:Ljava/util/concurrent/locks/Condition;

    neg-long v3, v3

    invoke-interface {v5, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
