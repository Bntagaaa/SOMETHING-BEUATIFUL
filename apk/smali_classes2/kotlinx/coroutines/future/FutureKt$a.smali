.class final Lkotlinx/coroutines/future/FutureKt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/future/FutureKt;->await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic b:Lkotlinx/coroutines/future/c;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;Lkotlinx/coroutines/future/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/future/FutureKt$a;->a:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Lkotlinx/coroutines/future/FutureKt$a;->b:Lkotlinx/coroutines/future/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 171
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/future/FutureKt$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lkotlinx/coroutines/future/FutureKt$a;->a:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1}, Lkotlinx/coroutines/future/d;->b(Ljava/util/concurrent/CompletableFuture;)V

    .line 173
    iget-object p1, p0, Lkotlinx/coroutines/future/FutureKt$a;->b:Lkotlinx/coroutines/future/c;

    const/4 v0, 0x0

    iput-object v0, p1, Lkotlinx/coroutines/future/c;->cont:Lkotlin/coroutines/Continuation;

    return-void
.end method
