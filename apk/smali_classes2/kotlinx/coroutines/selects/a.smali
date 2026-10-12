.class public final synthetic Lkotlinx/coroutines/selects/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/selects/SelectInstance;

.field public final synthetic b:Lkotlinx/coroutines/selects/b;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/selects/SelectInstance;Lkotlinx/coroutines/selects/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/selects/a;->a:Lkotlinx/coroutines/selects/SelectInstance;

    iput-object p2, p0, Lkotlinx/coroutines/selects/a;->b:Lkotlinx/coroutines/selects/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 53
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v1, p0, Lkotlinx/coroutines/selects/a;->a:Lkotlinx/coroutines/selects/SelectInstance;

    iget-object v2, p0, Lkotlinx/coroutines/selects/a;->b:Lkotlinx/coroutines/selects/b;

    invoke-interface {v1, v2, v0}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
