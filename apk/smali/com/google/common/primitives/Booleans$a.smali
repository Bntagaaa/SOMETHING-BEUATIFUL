.class Lcom/google/common/primitives/Booleans$a;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Booleans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:[Z

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([ZII)V
    .locals 0

    .line 388
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    .line 390
    iput p2, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    .line 391
    iput p3, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 413
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    .line 414
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 45
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Booleans;->a([ZZII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 465
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/Booleans$a;

    if-eqz v1, :cond_4

    .line 466
    check-cast p1, Lcom/google/common/primitives/Booleans$a;

    .line 467
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$a;->size()I

    move-result v1

    .line 468
    invoke-virtual {p1}, Lcom/google/common/primitives/Booleans$a;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 472
    iget v4, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    aget-boolean v4, v5, v4

    iget v5, p1, Lcom/google/common/primitives/Booleans$a;->b:I

    add-int/2addr v5, v2

    iget-object v6, p1, Lcom/google/common/primitives/Booleans$a;->a:[Z

    aget-boolean v5, v6, v5

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    .line 478
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Boolean;
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 407
    iget v0, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    aget-boolean p1, p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Booleans$a;->get(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 484
    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 485
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    aget-boolean v2, v2, v1

    invoke-static {v2}, Lcom/google/common/primitives/Booleans;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 420
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 421
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 45
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Booleans;->a([ZZII)I

    move-result p1

    if-ltz p1, :cond_0

    sub-int/2addr p1, v1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .line 432
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 433
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 218
    iget v0, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    if-lt v0, v2, :cond_1

    .line 219
    iget-object v3, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    aget-boolean v3, v3, v0

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    sub-int/2addr v0, v2

    return v0

    :cond_2
    return v1
.end method

.method public set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3

    .line 443
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 444
    iget v0, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    aget-boolean v1, v2, v1

    add-int/2addr v0, p1

    .line 446
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aput-boolean p1, v2, v0

    .line 447
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 377
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$a;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 396
    iget v0, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$a;->size()I

    move-result v0

    .line 453
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    .line 455
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 457
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Booleans$a;

    iget v1, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    iget-object p2, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    invoke-direct {v0, p2, p1, v1}, Lcom/google/common/primitives/Booleans$a;-><init>([ZII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$a;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 493
    iget-object v1, p0, Lcom/google/common/primitives/Booleans$a;->a:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$a;->b:I

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_0

    const-string v3, "[true"

    goto :goto_0

    :cond_0
    const-string v3, "[false"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 494
    iget v3, p0, Lcom/google/common/primitives/Booleans$a;->c:I

    if-ge v2, v3, :cond_2

    .line 495
    aget-boolean v3, v1, v2

    if-eqz v3, :cond_1

    const-string v3, ", true"

    goto :goto_2

    :cond_1
    const-string v3, ", false"

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v1, 0x5d

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
