.class public final synthetic Lkotlinx/coroutines/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lkotlinx/coroutines/g;->a:I

    iput-object p1, p0, Lkotlinx/coroutines/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/g;->b:Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/g;->a:I

    packed-switch v1, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    sget-object p1, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 149
    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 0
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/selects/SelectInstance;

    sget-object p1, Lkotlinx/coroutines/sync/MutexImpl;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 141
    new-instance p1, Lkotlinx/coroutines/sync/a;

    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl;

    const/4 p3, 0x1

    invoke-direct {p1, v0, p2, p3}, Lkotlinx/coroutines/sync/a;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;I)V

    return-object p1

    .line 0
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/selects/SelectInstance;

    sget-object p2, Lkotlinx/coroutines/channels/BufferedChannel;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1563
    new-instance p2, Lkotlinx/coroutines/channels/e;

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-direct {p2, v0, p1, p3}, Lkotlinx/coroutines/channels/e;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V

    return-object p2

    .line 0
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    sget-object p2, Lkotlinx/coroutines/CancellableContinuationImpl;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 363
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
