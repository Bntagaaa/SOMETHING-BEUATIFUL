.class public final synthetic Lkotlinx/coroutines/debug/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/debug/internal/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/debug/internal/b;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object p2, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object p1

    :pswitch_0
    sget-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 58
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$b;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
