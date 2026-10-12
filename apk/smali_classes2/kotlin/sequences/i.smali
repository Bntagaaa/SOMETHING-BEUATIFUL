.class public final synthetic Lkotlin/sequences/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lkotlin/sequences/i;->a:I

    iput-object p1, p0, Lkotlin/sequences/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/sequences/i;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/sequences/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/sequences/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    iget-object v1, p0, Lkotlin/sequences/i;->c:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/Deferred;

    check-cast p1, Ljava/lang/Throwable;

    .line 75
    :try_start_0
    invoke-interface {v1}, Lkotlinx/coroutines/Deferred;->getCompleted()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/fcm/a;->s(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 77
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/fcm/a;->t(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)V

    .line 79
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 0
    :pswitch_0
    iget-object v0, p0, Lkotlin/sequences/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/core/content/res/e;

    check-cast p1, Ljava/lang/Throwable;

    iget-object v1, p0, Lkotlin/sequences/i;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {v1, v0, p1}, Lkotlinx/coroutines/android/HandlerContext;->c(Lkotlinx/coroutines/android/HandlerContext;Landroidx/core/content/res/e;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    .line 2625
    :pswitch_1
    iget-object v0, p0, Lkotlin/sequences/i;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lkotlin/sequences/i;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v2, 0x0

    .line 0
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
