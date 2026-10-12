.class Lcom/google/common/collect/LinkedListMultimap$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public c:Lcom/google/common/collect/LinkedListMultimap$d;

.field public d:Lcom/google/common/collect/LinkedListMultimap$d;

.field public e:Lcom/google/common/collect/LinkedListMultimap$d;

.field public final synthetic f:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap;

    .line 464
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$f;->a:Ljava/lang/Object;

    .line 97
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    .line 465
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/LinkedListMultimap$c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 466
    :cond_0
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap$c;->a:Lcom/google/common/collect/LinkedListMultimap$d;

    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V
    .locals 3
    .param p1    # Lcom/google/common/collect/LinkedListMultimap;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 477
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    .line 478
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/LinkedListMultimap$c;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 479
    :cond_0
    iget v0, p1, Lcom/google/common/collect/LinkedListMultimap$c;->c:I

    .line 480
    :goto_0
    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 481
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-lt p3, v1, :cond_2

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_1

    .line 482
    :cond_1
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap$c;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    :goto_1
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 483
    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->b:I

    :goto_2
    add-int/lit8 p1, p3, 0x1

    if-ge p3, v0, :cond_4

    .line 485
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$f;->previous()Ljava/lang/Object;

    move p3, p1

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v2

    goto :goto_3

    .line 488
    :cond_3
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap$c;->a:Lcom/google/common/collect/LinkedListMultimap$d;

    :goto_3
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    :goto_4
    add-int/lit8 p1, p3, -0x1

    if-lez p3, :cond_4

    .line 490
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$f;->next()Ljava/lang/Object;

    move p3, p1

    goto :goto_4

    .line 493
    :cond_4
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$f;->a:Ljava/lang/Object;

    .line 494
    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 97
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$f;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/common/collect/LinkedListMultimap;->h(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$d;)Lcom/google/common/collect/LinkedListMultimap$d;

    move-result-object p1

    .line 559
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 560
    iget p1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->b:I

    const/4 p1, 0x0

    .line 561
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_0

    .line 506
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 507
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$d;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 508
    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->b:I

    .line 509
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$d;->b:Ljava/lang/Object;

    return-object v0

    .line 302
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 529
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->b:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_0

    .line 521
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 522
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$d;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 523
    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->b:I

    .line 524
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$d;->b:Ljava/lang/Object;

    return-object v0

    .line 302
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 534
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 540
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eq v0, v2, :cond_1

    .line 541
    iget-object v2, v0, Lcom/google/common/collect/LinkedListMultimap$d;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 542
    iget v2, p0, Lcom/google/common/collect/LinkedListMultimap$f;->b:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/common/collect/LinkedListMultimap$f;->b:I

    goto :goto_1

    .line 544
    :cond_1
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$d;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 546
    :goto_1
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v1, v0}, Lcom/google/common/collect/LinkedListMultimap;->g(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$d;)V

    const/4 v0, 0x0

    .line 547
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 553
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object p1, v0, Lcom/google/common/collect/LinkedListMultimap$d;->b:Ljava/lang/Object;

    return-void
.end method
