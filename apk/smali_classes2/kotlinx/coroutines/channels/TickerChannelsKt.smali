.class public final Lkotlinx/coroutines/channels/TickerChannelsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a;\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "",
        "delayMillis",
        "initialDelayMillis",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlinx/coroutines/channels/TickerMode;",
        "mode",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "",
        "ticker",
        "(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;)Lkotlinx/coroutines/channels/ReceiveChannel;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTickerChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TickerChannels.kt\nkotlinx/coroutines/channels/TickerChannelsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,108:1\n1#2:109\n*E\n"
    }
.end annotation


# direct methods
.method public static final access$fixedDelayTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 0
    instance-of v0, p5, Lkotlinx/coroutines/channels/q;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lkotlinx/coroutines/channels/q;

    iget v1, v0, Lkotlinx/coroutines/channels/q;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/q;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/q;

    .line 0
    invoke-direct {v0, p5}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 0
    :goto_0
    iget-object p5, v0, Lkotlinx/coroutines/channels/q;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget v2, v0, Lkotlinx/coroutines/channels/q;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-wide p0, v0, Lkotlinx/coroutines/channels/q;->d:J

    iget-object p2, v0, Lkotlinx/coroutines/channels/q;->e:Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object p4, p2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-wide p0, v0, Lkotlinx/coroutines/channels/q;->d:J

    iget-object p2, v0, Lkotlinx/coroutines/channels/q;->e:Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-wide p0, v0, Lkotlinx/coroutines/channels/q;->d:J

    iget-object p4, v0, Lkotlinx/coroutines/channels/q;->e:Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 102
    iput-object p4, v0, Lkotlinx/coroutines/channels/q;->e:Lkotlinx/coroutines/channels/SendChannel;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/q;->d:J

    iput v5, v0, Lkotlinx/coroutines/channels/q;->g:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_3

    .line 104
    :cond_6
    :goto_1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p4, v0, Lkotlinx/coroutines/channels/q;->e:Lkotlinx/coroutines/channels/SendChannel;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/q;->d:J

    iput v4, v0, Lkotlinx/coroutines/channels/q;->g:I

    invoke-interface {p4, p2, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_3

    :cond_7
    move-object p2, p4

    .line 105
    :goto_2
    iput-object p2, v0, Lkotlinx/coroutines/channels/q;->e:Lkotlinx/coroutines/channels/SendChannel;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/q;->d:J

    iput v3, v0, Lkotlinx/coroutines/channels/q;->g:I

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_1

    :goto_3
    return-object v1
.end method

.method public static final access$fixedPeriodTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p5

    .line 0
    instance-of v1, v0, Lkotlinx/coroutines/channels/r;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/r;

    iget v2, v1, Lkotlinx/coroutines/channels/r;->h:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/r;->h:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/r;

    .line 0
    invoke-direct {v1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 0
    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/r;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 74
    iget v3, v1, Lkotlinx/coroutines/channels/r;->h:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_6

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-wide v7, v1, Lkotlinx/coroutines/channels/r;->e:J

    iget-wide v9, v1, Lkotlinx/coroutines/channels/r;->d:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/r;->f:Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_3
    move-wide/from16 v17, v9

    move-wide v9, v7

    move-wide/from16 v7, v17

    :goto_2
    move-object v0, v3

    goto :goto_5

    :cond_4
    iget-wide v7, v1, Lkotlinx/coroutines/channels/r;->e:J

    iget-wide v9, v1, Lkotlinx/coroutines/channels/r;->d:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/r;->f:Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6

    :cond_5
    iget-wide v7, v1, Lkotlinx/coroutines/channels/r;->e:J

    iget-wide v9, v1, Lkotlinx/coroutines/channels/r;->d:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/r;->f:Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v3

    move-wide v10, v9

    goto :goto_4

    :cond_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v8

    goto :goto_3

    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    :goto_3
    invoke-static/range {p2 .. p3}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    move-object/from16 v0, p4

    .line 80
    iput-object v0, v1, Lkotlinx/coroutines/channels/r;->f:Lkotlinx/coroutines/channels/SendChannel;

    move-wide/from16 v10, p0

    iput-wide v10, v1, Lkotlinx/coroutines/channels/r;->d:J

    iput-wide v8, v1, Lkotlinx/coroutines/channels/r;->e:J

    iput v7, v1, Lkotlinx/coroutines/channels/r;->h:I

    move-wide/from16 v12, p2

    invoke-static {v12, v13, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_8

    goto/16 :goto_8

    :cond_8
    move-wide v7, v8

    .line 81
    :goto_4
    invoke-static {v10, v11}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide v9

    :goto_5
    add-long/2addr v7, v9

    .line 84
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v0, v1, Lkotlinx/coroutines/channels/r;->f:Lkotlinx/coroutines/channels/SendChannel;

    iput-wide v7, v1, Lkotlinx/coroutines/channels/r;->d:J

    iput-wide v9, v1, Lkotlinx/coroutines/channels/r;->e:J

    iput v6, v1, Lkotlinx/coroutines/channels/r;->h:I

    invoke-interface {v0, v3, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_9

    goto :goto_8

    :cond_9
    move-wide/from16 v17, v9

    move-wide v9, v7

    move-wide/from16 v7, v17

    move-object v3, v0

    .line 85
    :goto_6
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v11

    goto :goto_7

    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    :goto_7
    sub-long v13, v9, v11

    .line 86
    invoke-static {v13, v14}, Lkotlin/ranges/RangesKt;->a(J)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-nez v0, :cond_c

    cmp-long v0, v7, v15

    if-eqz v0, :cond_c

    sub-long v9, v11, v9

    .line 88
    rem-long/2addr v9, v7

    sub-long v9, v7, v9

    add-long/2addr v11, v9

    .line 90
    invoke-static {v9, v10}, Lkotlinx/coroutines/EventLoop_commonKt;->delayNanosToMillis(J)J

    move-result-wide v9

    iput-object v3, v1, Lkotlinx/coroutines/channels/r;->f:Lkotlinx/coroutines/channels/SendChannel;

    iput-wide v11, v1, Lkotlinx/coroutines/channels/r;->d:J

    iput-wide v7, v1, Lkotlinx/coroutines/channels/r;->e:J

    iput v5, v1, Lkotlinx/coroutines/channels/r;->h:I

    invoke-static {v9, v10, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_b

    goto :goto_8

    :cond_b
    move-wide v9, v7

    move-wide v7, v11

    goto/16 :goto_2

    .line 92
    :cond_c
    invoke-static {v13, v14}, Lkotlinx/coroutines/EventLoop_commonKt;->delayNanosToMillis(J)J

    move-result-wide v11

    iput-object v3, v1, Lkotlinx/coroutines/channels/r;->f:Lkotlinx/coroutines/channels/SendChannel;

    iput-wide v9, v1, Lkotlinx/coroutines/channels/r;->d:J

    iput-wide v7, v1, Lkotlinx/coroutines/channels/r;->e:J

    iput v4, v1, Lkotlinx/coroutines/channels/r;->h:I

    invoke-static {v11, v12, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3

    :goto_8
    return-object v2
.end method

.method public static final ticker(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 8
    .param p4    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlinx/coroutines/channels/TickerMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/channels/TickerMode;",
            ")",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/ObsoleteCoroutinesApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 64
    const-string v0, " ms"

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-ltz v3, :cond_1

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    .line 66
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-virtual {v1, p4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p4

    new-instance v1, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;

    const/4 v7, 0x0

    move-wide v3, p0

    move-wide v5, p2

    move-object v2, p5

    invoke-direct/range {v1 .. v7}, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;-><init>(Lkotlinx/coroutines/channels/TickerMode;JJLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x0

    invoke-static {v0, p4, p0, v1}, Lkotlinx/coroutines/channels/ProduceKt;->produce(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0

    :cond_0
    move-wide v5, p2

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Expected non-negative initial delay, but has "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-wide v3, p0

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Expected non-negative delay, but has "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic ticker$default(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 0

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    move-wide p2, p0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 61
    sget-object p4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 62
    sget-object p5, Lkotlinx/coroutines/channels/TickerMode;->FIXED_PERIOD:Lkotlinx/coroutines/channels/TickerMode;

    .line 57
    :cond_2
    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/channels/TickerChannelsKt;->ticker(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method
