.class public final synthetic Lkotlinx/coroutines/sync/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlinx/coroutines/sync/MutexImpl;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lkotlinx/coroutines/sync/a;->a:I

    iput-object p1, p0, Lkotlinx/coroutines/sync/a;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p2, p0, Lkotlinx/coroutines/sync/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/sync/a;->c:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/sync/a;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iget v2, p0, Lkotlinx/coroutines/sync/a;->a:I

    check-cast p1, Ljava/lang/Throwable;

    packed-switch v2, :pswitch_data_0

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    sget-object p1, Lkotlinx/coroutines/sync/MutexImpl;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 141
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 0
    :pswitch_0
    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    .line 260
    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    .line 261
    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl$a;

    iget-object p2, v0, Lkotlinx/coroutines/sync/MutexImpl$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    iget-object p1, v0, Lkotlinx/coroutines/sync/MutexImpl$a;->b:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    .line 263
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
