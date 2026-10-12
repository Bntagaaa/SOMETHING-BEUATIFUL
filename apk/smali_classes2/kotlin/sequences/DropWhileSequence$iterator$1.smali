.class public final Lkotlin/sequences/DropWhileSequence$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/DropWhileSequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000e*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0002\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0004H\u0096\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001d\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\"\u0010\u0013\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u0019\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0003\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "kotlin/sequences/DropWhileSequence$iterator$1",
        "",
        "next",
        "()Ljava/lang/Object;",
        "",
        "hasNext",
        "()Z",
        "a",
        "Ljava/util/Iterator;",
        "getIterator",
        "()Ljava/util/Iterator;",
        "iterator",
        "",
        "b",
        "I",
        "getDropState",
        "()I",
        "setDropState",
        "(I)V",
        "dropState",
        "c",
        "Ljava/lang/Object;",
        "getNextItem",
        "setNextItem",
        "(Ljava/lang/Object;)V",
        "nextItem",
        "kotlin-stdlib"
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
.field public final a:Ljava/util/Iterator;

.field public b:I

.field public c:Ljava/lang/Object;

.field public final synthetic d:Lkotlin/sequences/DropWhileSequence;


# direct methods
.method public constructor <init>(Lkotlin/sequences/DropWhileSequence;)V
    .locals 0

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 0
    iput-object p1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->d:Lkotlin/sequences/DropWhileSequence;

    .line 542
    invoke-static {p1}, Lkotlin/sequences/DropWhileSequence;->access$getSequence$p(Lkotlin/sequences/DropWhileSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->a:Ljava/util/Iterator;

    const/4 p1, -0x1

    .line 543
    iput p1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 547
    :cond_0
    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->d:Lkotlin/sequences/DropWhileSequence;

    invoke-static {v1}, Lkotlin/sequences/DropWhileSequence;->access$getPredicate$p(Lkotlin/sequences/DropWhileSequence;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    iput-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 551
    iput v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->b:I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 555
    iput v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->b:I

    return-void
.end method

.method public final getDropState()I
    .locals 1

    .line 543
    iget v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->b:I

    return v0
.end method

.method public final getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public final getNextItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 573
    iget v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 574
    invoke-virtual {p0}, Lkotlin/sequences/DropWhileSequence$iterator$1;->a()V

    .line 575
    :cond_0
    iget v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 559
    iget v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 560
    invoke-virtual {p0}, Lkotlin/sequences/DropWhileSequence$iterator$1;->a()V

    .line 562
    :cond_0
    iget v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 564
    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 565
    iput-object v1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 566
    iput v1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->b:I

    return-object v0

    .line 569
    :cond_1
    iget-object v0, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setDropState(I)V
    .locals 0

    .line 543
    iput p1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->b:I

    return-void
.end method

.method public final setNextItem(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 544
    iput-object p1, p0, Lkotlin/sequences/DropWhileSequence$iterator$1;->c:Ljava/lang/Object;

    return-void
.end method
