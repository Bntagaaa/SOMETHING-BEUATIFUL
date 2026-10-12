.class final Lkotlin/collections/SlidingWindowKt$a;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        ""
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
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x2,
        0x2,
        0x3,
        0x3
    }
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "buffer",
        "gap",
        "$this$iterator",
        "buffer",
        "$this$iterator",
        "buffer"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Object;

.field public d:Ljava/util/Iterator;

.field public e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Ljava/util/Iterator;

.field public final synthetic k:Z

.field public final synthetic l:Z


# direct methods
.method public constructor <init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lkotlin/collections/SlidingWindowKt$a;->h:I

    iput p2, p0, Lkotlin/collections/SlidingWindowKt$a;->i:I

    iput-object p3, p0, Lkotlin/collections/SlidingWindowKt$a;->j:Ljava/util/Iterator;

    iput-boolean p4, p0, Lkotlin/collections/SlidingWindowKt$a;->k:Z

    iput-boolean p5, p0, Lkotlin/collections/SlidingWindowKt$a;->l:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lkotlin/collections/SlidingWindowKt$a;

    iget-boolean v4, p0, Lkotlin/collections/SlidingWindowKt$a;->k:Z

    iget-boolean v5, p0, Lkotlin/collections/SlidingWindowKt$a;->l:Z

    iget v1, p0, Lkotlin/collections/SlidingWindowKt$a;->h:I

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$a;->i:I

    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$a;->j:Ljava/util/Iterator;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lkotlin/collections/SlidingWindowKt$a;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/collections/SlidingWindowKt$a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$a;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/collections/SlidingWindowKt$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/collections/SlidingWindowKt$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$a;->f:I

    iget-boolean v2, p0, Lkotlin/collections/SlidingWindowKt$a;->l:Z

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    iget-boolean v8, p0, Lkotlin/collections/SlidingWindowKt$a;->k:Z

    iget v9, p0, Lkotlin/collections/SlidingWindowKt$a;->i:I

    iget v10, p0, Lkotlin/collections/SlidingWindowKt$a;->h:I

    const/4 v11, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lkotlin/collections/SlidingWindowKt$a;->c:Ljava/lang/Object;

    check-cast v1, Lkotlin/collections/RingBuffer;

    iget-object v2, p0, Lkotlin/collections/SlidingWindowKt$a;->g:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_2
    iget-object v1, p0, Lkotlin/collections/SlidingWindowKt$a;->d:Ljava/util/Iterator;

    iget-object v6, p0, Lkotlin/collections/SlidingWindowKt$a;->c:Ljava/lang/Object;

    check-cast v6, Lkotlin/collections/RingBuffer;

    iget-object v7, p0, Lkotlin/collections/SlidingWindowKt$a;->g:Ljava/lang/Object;

    check-cast v7, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_4
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$a;->e:I

    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$a;->d:Ljava/util/Iterator;

    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$a;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lkotlin/collections/SlidingWindowKt$a;->g:Ljava/lang/Object;

    check-cast v5, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v12, v1

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/collections/SlidingWindowKt$a;->g:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/SequenceScope;

    const/16 v1, 0x400

    .line 25
    invoke-static {v10, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    sub-int v12, v9, v10

    .line 27
    iget-object v13, p0, Lkotlin/collections/SlidingWindowKt$a;->j:Ljava/util/Iterator;

    if-ltz v12, :cond_c

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move-object v5, p1

    move-object v4, v3

    move-object v3, v13

    .line 30
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-lez v1, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 32
    :cond_7
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v10, :cond_6

    .line 34
    iput-object v5, p0, Lkotlin/collections/SlidingWindowKt$a;->g:Ljava/lang/Object;

    iput-object v4, p0, Lkotlin/collections/SlidingWindowKt$a;->c:Ljava/lang/Object;

    iput-object v3, p0, Lkotlin/collections/SlidingWindowKt$a;->d:Ljava/util/Iterator;

    iput v12, p0, Lkotlin/collections/SlidingWindowKt$a;->e:I

    iput v7, p0, Lkotlin/collections/SlidingWindowKt$a;->f:I

    invoke-virtual {v5, v4, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto/16 :goto_a

    :cond_8
    :goto_2
    if-eqz v8, :cond_9

    .line 35
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, p1

    :goto_3
    move v1, v12

    goto :goto_1

    .line 39
    :cond_a
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    if-nez v2, :cond_b

    .line 40
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v10, :cond_15

    :cond_b
    iput-object v11, p0, Lkotlin/collections/SlidingWindowKt$a;->g:Ljava/lang/Object;

    iput-object v11, p0, Lkotlin/collections/SlidingWindowKt$a;->c:Ljava/lang/Object;

    iput-object v11, p0, Lkotlin/collections/SlidingWindowKt$a;->d:Ljava/util/Iterator;

    iput v6, p0, Lkotlin/collections/SlidingWindowKt$a;->f:I

    invoke-virtual {v5, v4, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_15

    goto/16 :goto_a

    .line 43
    :cond_c
    new-instance v6, Lkotlin/collections/RingBuffer;

    invoke-direct {v6, v1}, Lkotlin/collections/RingBuffer;-><init>(I)V

    move-object v7, p1

    move-object v1, v13

    .line 44
    :cond_d
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 45
    invoke-virtual {v6, p1}, Lkotlin/collections/RingBuffer;->add(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v6}, Lkotlin/collections/RingBuffer;->isFull()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 47
    invoke-virtual {v6}, Lkotlin/collections/AbstractCollection;->size()I

    move-result p1

    if-ge p1, v10, :cond_e

    invoke-virtual {v6, v10}, Lkotlin/collections/RingBuffer;->expanded(I)Lkotlin/collections/RingBuffer;

    move-result-object v6

    goto :goto_4

    :cond_e
    if-eqz v8, :cond_f

    move-object p1, v6

    goto :goto_5

    .line 49
    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    iput-object v7, p0, Lkotlin/collections/SlidingWindowKt$a;->g:Ljava/lang/Object;

    iput-object v6, p0, Lkotlin/collections/SlidingWindowKt$a;->c:Ljava/lang/Object;

    iput-object v1, p0, Lkotlin/collections/SlidingWindowKt$a;->d:Ljava/util/Iterator;

    iput v5, p0, Lkotlin/collections/SlidingWindowKt$a;->f:I

    invoke-virtual {v7, p1, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    goto :goto_a

    .line 50
    :cond_10
    :goto_6
    invoke-virtual {v6, v9}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    goto :goto_4

    :cond_11
    if-eqz v2, :cond_15

    move-object v1, v6

    move-object v2, v7

    .line 54
    :goto_7
    invoke-virtual {v1}, Lkotlin/collections/AbstractCollection;->size()I

    move-result p1

    if-le p1, v9, :cond_14

    if-eqz v8, :cond_12

    move-object p1, v1

    goto :goto_8

    .line 55
    :cond_12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_8
    iput-object v2, p0, Lkotlin/collections/SlidingWindowKt$a;->g:Ljava/lang/Object;

    iput-object v1, p0, Lkotlin/collections/SlidingWindowKt$a;->c:Ljava/lang/Object;

    iput-object v11, p0, Lkotlin/collections/SlidingWindowKt$a;->d:Ljava/util/Iterator;

    iput v4, p0, Lkotlin/collections/SlidingWindowKt$a;->f:I

    invoke-virtual {v2, p1, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_13

    goto :goto_a

    .line 56
    :cond_13
    :goto_9
    invoke-virtual {v1, v9}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    goto :goto_7

    .line 58
    :cond_14
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    iput-object v11, p0, Lkotlin/collections/SlidingWindowKt$a;->g:Ljava/lang/Object;

    iput-object v11, p0, Lkotlin/collections/SlidingWindowKt$a;->c:Ljava/lang/Object;

    iput-object v11, p0, Lkotlin/collections/SlidingWindowKt$a;->d:Ljava/util/Iterator;

    iput v3, p0, Lkotlin/collections/SlidingWindowKt$a;->f:I

    invoke-virtual {v2, v1, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_15

    :goto_a
    return-object v0

    .line 61
    :cond_15
    :goto_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
