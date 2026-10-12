.class public final synthetic Lkotlinx/coroutines/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/internal/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lkotlinx/coroutines/internal/h;->a:I

    packed-switch v1, :pswitch_data_0

    check-cast p1, Lkotlinx/coroutines/ThreadContextElement;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    sget-object v1, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 43
    :cond_0
    instance-of p1, p2, Lkotlinx/coroutines/ThreadContextElement;

    if-eqz p1, :cond_1

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/ThreadContextElement;

    :cond_1
    :goto_0
    return-object v0

    .line 0
    :pswitch_0
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    sget-object v1, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 32
    instance-of v1, p2, Lkotlinx/coroutines/ThreadContextElement;

    if-eqz v1, :cond_5

    .line 33
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    :cond_2
    const/4 p1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    move-object p1, p2

    goto :goto_2

    :cond_4
    add-int/2addr v0, p1

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_5
    :goto_2
    return-object p1

    .line 0
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/internal/i;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 49
    instance-of v0, p2, Lkotlinx/coroutines/ThreadContextElement;

    if-eqz v0, :cond_6

    .line 50
    check-cast p2, Lkotlinx/coroutines/ThreadContextElement;

    iget-object v0, p1, Lkotlinx/coroutines/internal/i;->a:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p2, v0}, Lkotlinx/coroutines/ThreadContextElement;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/internal/i;->append(Lkotlinx/coroutines/ThreadContextElement;Ljava/lang/Object;)V

    :cond_6
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
