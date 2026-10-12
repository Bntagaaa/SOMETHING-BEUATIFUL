.class Lcom/google/common/collect/g$i;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/g$i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/util/Collection;

.field public final c:Lcom/google/common/collect/g$i;

.field public final d:Ljava/util/Collection;

.field public final synthetic e:Lcom/google/common/collect/g;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/g$i;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/google/common/collect/g$i;->e:Lcom/google/common/collect/g;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 331
    iput-object p2, p0, Lcom/google/common/collect/g$i;->a:Ljava/lang/Object;

    .line 332
    iput-object p3, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 333
    iput-object p4, p0, Lcom/google/common/collect/g$i;->c:Lcom/google/common/collect/g$i;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 416
    :cond_0
    iget-object p1, p4, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 334
    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/g$i;->d:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/google/common/collect/g$i;->c:Lcom/google/common/collect/g$i;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/google/common/collect/g$i;->a()V

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/g$i;->e:Lcom/google/common/collect/g;

    iget-object v0, v0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    .line 384
    iget-object v1, p0, Lcom/google/common/collect/g$i;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 475
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 476
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/google/common/collect/g$i;->e:Lcom/google/common/collect/g;

    iget v2, v1, Lcom/google/common/collect/g;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/common/collect/g;->g:I

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->a()V

    :cond_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 495
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->size()I

    move-result v0

    .line 499
    iget-object v1, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 85
    iget-object v2, p0, Lcom/google/common/collect/g$i;->e:Lcom/google/common/collect/g;

    iget v3, v2, Lcom/google/common/collect/g;->g:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v3

    .line 85
    iput v1, v2, Lcom/google/common/collect/g;->g:I

    if-nez v0, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->a()V

    :cond_1
    return p1
.end method

.method public final b()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/google/common/collect/g$i;->c:Lcom/google/common/collect/g$i;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Lcom/google/common/collect/g$i;->b()V

    .line 416
    iget-object v0, v0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    .line 347
    iget-object v1, p0, Lcom/google/common/collect/g$i;->d:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/google/common/collect/g$i;->e:Lcom/google/common/collect/g;

    iget-object v0, v0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    .line 351
    iget-object v1, p0, Lcom/google/common/collect/g$i;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 353
    iput-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    :cond_2
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/google/common/collect/g$i;->c:Lcom/google/common/collect/g$i;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/google/common/collect/g$i;->c()V

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/google/common/collect/g$i;->e:Lcom/google/common/collect/g;

    iget-object v0, v0, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    .line 366
    iget-object v1, p0, Lcom/google/common/collect/g$i;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 3

    .line 524
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 85
    iget-object v1, p0, Lcom/google/common/collect/g$i;->e:Lcom/google/common/collect/g;

    iget v2, v1, Lcom/google/common/collect/g;->g:I

    sub-int/2addr v2, v0

    .line 85
    iput v2, v1, Lcom/google/common/collect/g;->g:I

    .line 530
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->c()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 513
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 519
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 400
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 405
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 406
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 422
    new-instance v0, Lcom/google/common/collect/g$i$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g$i$a;-><init>(Lcom/google/common/collect/g$i;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 535
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 536
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/common/collect/g$i;->e:Lcom/google/common/collect/g;

    iget v1, v0, Lcom/google/common/collect/g;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/g;->g:I

    .line 539
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->c()V

    :cond_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 546
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->size()I

    move-result v0

    .line 550
    iget-object v1, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 85
    iget-object v2, p0, Lcom/google/common/collect/g$i;->e:Lcom/google/common/collect/g;

    iget v3, v2, Lcom/google/common/collect/g;->g:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v3

    .line 85
    iput v1, v2, Lcom/google/common/collect/g;->g:I

    .line 554
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->c()V

    :cond_1
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 561
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->size()I

    move-result v0

    .line 563
    iget-object v1, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 85
    iget-object v2, p0, Lcom/google/common/collect/g$i;->e:Lcom/google/common/collect/g;

    iget v3, v2, Lcom/google/common/collect/g;->g:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v3

    .line 85
    iput v1, v2, Lcom/google/common/collect/g;->g:I

    .line 567
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->c()V

    :cond_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 391
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/google/common/collect/g$i;->b()V

    .line 412
    iget-object v0, p0, Lcom/google/common/collect/g$i;->b:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
