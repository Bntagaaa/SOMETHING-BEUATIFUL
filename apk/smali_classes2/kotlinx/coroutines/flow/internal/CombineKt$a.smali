.class final Lkotlinx/coroutines/flow/internal/CombineKt$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x33,
        0x49,
        0x4c
    }
    m = "invokeSuspend"
    n = {
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch",
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch",
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field public e:Lkotlinx/coroutines/channels/Channel;

.field public f:[B

.field public g:I

.field public h:I

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:[Lkotlinx/coroutines/flow/Flow;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function3;

.field public final synthetic n:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->k:[Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->l:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->m:Lkotlin/jvm/functions/Function3;

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->n:Lkotlinx/coroutines/flow/FlowCollector;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->m:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->n:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->k:[Lkotlinx/coroutines/flow/Flow;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->l:Lkotlin/jvm/functions/Function0;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$a;-><init>(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$a;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/CombineKt$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->i:I

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->h:I

    iget v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->g:I

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:[B

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->e:Lkotlinx/coroutines/channels/Channel;

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->j:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v9

    goto/16 :goto_5

    :cond_2
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->h:I

    iget v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->g:I

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:[B

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->e:Lkotlinx/coroutines/channels/Channel;

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->j:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v10}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v9

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->j:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 17
    iget-object v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->k:[Lkotlinx/coroutines/flow/Flow;

    array-length v2, v2

    if-nez v2, :cond_4

    .line 18
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 19
    :cond_4
    new-array v12, v2, [Ljava/lang/Object;

    .line 20
    sget-object v7, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v12, v7}, Lkotlin/collections/ArraysKt;->f([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 21
    invoke-static {v2, v8, v8, v7, v8}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v17

    .line 22
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/16 v19, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v2, :cond_5

    .line 26
    new-instance v9, Lkotlinx/coroutines/flow/internal/CombineKt$a$a;

    iget-object v14, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->k:[Lkotlinx/coroutines/flow/Flow;

    const/16 v18, 0x0

    move-object/from16 v16, v7

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Lkotlinx/coroutines/flow/internal/CombineKt$a$a;-><init>([Lkotlinx/coroutines/flow/Flow;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v16

    goto :goto_1

    .line 45
    :cond_5
    new-array v6, v2, [B

    move-object/from16 v7, v17

    :goto_2
    add-int/lit8 v8, v19, 0x1

    int-to-byte v8, v8

    .line 51
    iput-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->j:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->e:Lkotlinx/coroutines/channels/Channel;

    iput-object v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:[B

    iput v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->g:I

    iput v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->h:I

    iput v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->i:I

    invoke-interface {v7, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object/from16 v20, v6

    move v6, v2

    move v2, v8

    move-object v8, v7

    move-object/from16 v7, v20

    :goto_3
    invoke-static {v10}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/collections/IndexedValue;

    if-nez v9, :cond_7

    .line 80
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 53
    :cond_7
    invoke-virtual {v9}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result v10

    .line 55
    aget-object v11, v12, v10

    .line 56
    invoke-virtual {v9}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v12, v10

    .line 57
    sget-object v9, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v11, v9, :cond_8

    add-int/lit8 v6, v6, -0x1

    .line 60
    :cond_8
    aget-byte v9, v7, v10

    if-eq v9, v2, :cond_9

    int-to-byte v9, v2

    .line 61
    aput-byte v9, v7, v10

    .line 62
    invoke-interface {v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/collections/IndexedValue;

    if-nez v9, :cond_7

    :cond_9
    if-nez v6, :cond_b

    .line 71
    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->l:Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    .line 72
    iget-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->n:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->m:Lkotlin/jvm/functions/Function3;

    if-nez v9, :cond_a

    .line 73
    iput-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->j:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->e:Lkotlinx/coroutines/channels/Channel;

    iput-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:[B

    iput v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->g:I

    iput v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->h:I

    iput v5, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->i:I

    invoke-interface {v11, v10, v12, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_b

    goto :goto_4

    .line 75
    :cond_a
    invoke-static {v12, v9}, Lkotlin/collections/ArraysKt;->d([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 76
    iput-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->j:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->e:Lkotlinx/coroutines/channels/Channel;

    iput-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->f:[B

    iput v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->g:I

    iput v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->h:I

    iput v4, v0, Lkotlinx/coroutines/flow/internal/CombineKt$a;->i:I

    invoke-interface {v11, v10, v9, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_b

    :goto_4
    return-object v1

    :cond_b
    :goto_5
    move/from16 v19, v2

    move v2, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_2
.end method
