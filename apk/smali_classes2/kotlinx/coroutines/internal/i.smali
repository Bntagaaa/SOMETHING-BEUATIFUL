.class final Lkotlinx/coroutines/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\u000c\u001a\u00020\u000b2\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/i;",
        "",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "",
        "n",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;I)V",
        "Lkotlinx/coroutines/ThreadContextElement;",
        "element",
        "value",
        "",
        "append",
        "(Lkotlinx/coroutines/ThreadContextElement;Ljava/lang/Object;)V",
        "restore",
        "(Lkotlin/coroutines/CoroutineContext;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlin/coroutines/CoroutineContext;

.field public final b:[Ljava/lang/Object;

.field public final c:[Lkotlinx/coroutines/ThreadContextElement;

.field public d:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;I)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/i;->a:Lkotlin/coroutines/CoroutineContext;

    .line 12
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/internal/i;->b:[Ljava/lang/Object;

    .line 13
    new-array p1, p2, [Lkotlinx/coroutines/ThreadContextElement;

    iput-object p1, p0, Lkotlinx/coroutines/internal/i;->c:[Lkotlinx/coroutines/ThreadContextElement;

    return-void
.end method


# virtual methods
.method public final append(Lkotlinx/coroutines/ThreadContextElement;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/ThreadContextElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 17
    iget v0, p0, Lkotlinx/coroutines/internal/i;->d:I

    iget-object v1, p0, Lkotlinx/coroutines/internal/i;->b:[Ljava/lang/Object;

    aput-object p2, v1, v0

    add-int/lit8 p2, v0, 0x1

    .line 18
    iput p2, p0, Lkotlinx/coroutines/internal/i;->d:I

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lkotlinx/coroutines/internal/i;->c:[Lkotlinx/coroutines/ThreadContextElement;

    aput-object p1, p2, v0

    return-void
.end method

.method public final restore(Lkotlin/coroutines/CoroutineContext;)V
    .locals 5
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 22
    iget-object v0, p0, Lkotlinx/coroutines/internal/i;->c:[Lkotlinx/coroutines/ThreadContextElement;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    .line 23
    aget-object v3, v0, v1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lkotlinx/coroutines/internal/i;->b:[Ljava/lang/Object;

    aget-object v1, v4, v1

    invoke-interface {v3, p1, v1}, Lkotlinx/coroutines/ThreadContextElement;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
