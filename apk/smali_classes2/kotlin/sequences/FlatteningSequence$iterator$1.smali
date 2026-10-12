.class public final Lkotlin/sequences/FlatteningSequence$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/FlatteningSequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0002\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0004H\u0096\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001d\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR*\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "kotlin/sequences/FlatteningSequence$iterator$1",
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
        "b",
        "getItemIterator",
        "setItemIterator",
        "(Ljava/util/Iterator;)V",
        "itemIterator",
        "",
        "c",
        "I",
        "getState",
        "()I",
        "setState",
        "(I)V",
        "state",
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

.field public b:Ljava/util/Iterator;

.field public c:I

.field public final synthetic d:Lkotlin/sequences/FlatteningSequence;


# direct methods
.method public constructor <init>(Lkotlin/sequences/FlatteningSequence;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 0
    iput-object p1, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->d:Lkotlin/sequences/FlatteningSequence;

    .line 299
    invoke-static {p1}, Lkotlin/sequences/FlatteningSequence;->access$getSequence$p(Lkotlin/sequences/FlatteningSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 322
    iget-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->b:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iput v1, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->c:I

    return v1

    .line 328
    :cond_0
    iget-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 330
    iget-object v2, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->d:Lkotlin/sequences/FlatteningSequence;

    invoke-static {v2}, Lkotlin/sequences/FlatteningSequence;->access$getIterator$p(Lkotlin/sequences/FlatteningSequence;)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-static {v2}, Lkotlin/sequences/FlatteningSequence;->access$getTransformer$p(Lkotlin/sequences/FlatteningSequence;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    iput-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->b:Ljava/util/Iterator;

    .line 333
    iput v1, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->c:I

    return v1

    :cond_1
    const/4 v0, 0x2

    .line 338
    iput v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->c:I

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->b:Ljava/util/Iterator;

    const/4 v0, 0x0

    return v0
.end method

.method public final getItemIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->b:Ljava/util/Iterator;

    return-object v0
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

    .line 299
    iget-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 304
    iget v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->c:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 316
    iget v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 318
    :cond_1
    invoke-virtual {p0}, Lkotlin/sequences/FlatteningSequence$iterator$1;->a()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 307
    iget v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    .line 308
    invoke-virtual {p0}, Lkotlin/sequences/FlatteningSequence$iterator$1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->c:I

    .line 312
    iget-object v0, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->b:Ljava/util/Iterator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 307
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setItemIterator(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->b:Ljava/util/Iterator;

    return-void
.end method

.method public final setState(I)V
    .locals 0

    .line 304
    iput p1, p0, Lkotlin/sequences/FlatteningSequence$iterator$1;->c:I

    return-void
.end method
