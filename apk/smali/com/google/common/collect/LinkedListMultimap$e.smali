.class Lcom/google/common/collect/LinkedListMultimap$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/google/common/collect/LinkedListMultimap$d;

.field public c:Lcom/google/common/collect/LinkedListMultimap$d;

.field public d:Lcom/google/common/collect/LinkedListMultimap$d;

.field public e:I

.field public final synthetic f:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;I)V
    .locals 2

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->f:Lcom/google/common/collect/LinkedListMultimap;

    .line 97
    iget v0, p1, Lcom/google/common/collect/LinkedListMultimap;->j:I

    .line 312
    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->e:I

    .line 315
    invoke-virtual {p1}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v0

    .line 316
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 317
    div-int/lit8 v1, v0, 0x2

    if-lt p2, v1, :cond_0

    .line 97
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 318
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 319
    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:I

    :goto_0
    add-int/lit8 p1, p2, 0x1

    if-ge p2, v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$e;->previous()Lcom/google/common/collect/LinkedListMultimap$d;

    move p2, p1

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 324
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    :goto_1
    add-int/lit8 p1, p2, -0x1

    if-lez p2, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$e;->next()Lcom/google/common/collect/LinkedListMultimap$d;

    move p2, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 329
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget v0, v0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    .line 333
    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->e:I

    if-ne v0, v1, :cond_0

    return-void

    .line 334
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 307
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$e;->add(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public add(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 404
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hasNext()Z
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$e;->a()V

    .line 341
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$e;->a()V

    .line 373
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/google/common/collect/LinkedListMultimap$d;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedListMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$e;->a()V

    .line 348
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_0

    .line 349
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 350
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$d;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 351
    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:I

    return-object v0

    .line 302
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 307
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$e;->next()Lcom/google/common/collect/LinkedListMultimap$d;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:I

    return v0
.end method

.method public previous()Lcom/google/common/collect/LinkedListMultimap$d;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedListMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$e;->a()V

    .line 380
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_0

    .line 381
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 382
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$d;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 383
    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:I

    return-object v0

    .line 302
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 307
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$e;->previous()Lcom/google/common/collect/LinkedListMultimap$d;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 357
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$e;->a()V

    .line 358
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 359
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eq v0, v2, :cond_1

    .line 360
    iget-object v2, v0, Lcom/google/common/collect/LinkedListMultimap$d;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$e;->d:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 361
    iget v2, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:I

    goto :goto_1

    .line 363
    :cond_1
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$d;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 365
    :goto_1
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v1, v0}, Lcom/google/common/collect/LinkedListMultimap;->g(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$d;)V

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 97
    iget v0, v1, Lcom/google/common/collect/LinkedListMultimap;->j:I

    .line 367
    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->e:I

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 307
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$e;->set(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public set(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 399
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
