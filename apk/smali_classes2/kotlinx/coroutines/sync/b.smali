.class public final synthetic Lkotlinx/coroutines/sync/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/sync/MutexImpl;

.field public final synthetic b:Lkotlinx/coroutines/sync/MutexImpl$a;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/sync/b;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p2, p0, Lkotlinx/coroutines/sync/b;->b:Lkotlinx/coroutines/sync/MutexImpl$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    .line 277
    iget-object p1, p0, Lkotlinx/coroutines/sync/b;->b:Lkotlinx/coroutines/sync/MutexImpl$a;

    iget-object p1, p1, Lkotlinx/coroutines/sync/MutexImpl$a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lkotlinx/coroutines/sync/b;->a:Lkotlinx/coroutines/sync/MutexImpl;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
