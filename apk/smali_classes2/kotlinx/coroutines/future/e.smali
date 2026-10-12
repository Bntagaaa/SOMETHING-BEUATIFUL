.class public final synthetic Lkotlinx/coroutines/future/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    iput p2, p0, Lkotlinx/coroutines/future/e;->a:I

    iput-object p1, p0, Lkotlinx/coroutines/future/e;->b:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/future/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlinx/coroutines/future/e;->b:Lkotlin/jvm/functions/Function2;

    check-cast p2, Ljava/lang/Throwable;

    .line 98
    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    return-object p1

    .line 0
    :pswitch_0
    iget-object v0, p0, Lkotlinx/coroutines/future/e;->b:Lkotlin/jvm/functions/Function2;

    check-cast v0, Lkotlin/sequences/h;

    check-cast p2, Ljava/lang/Throwable;

    .line 126
    invoke-virtual {v0, p1, p2}, Lkotlin/sequences/h;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
