.class Lcom/google/common/primitives/Shorts$b;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Shorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:[S

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([SII)V
    .locals 0

    .line 568
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 569
    iput-object p1, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    .line 570
    iput p2, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    .line 571
    iput p3, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 593
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    .line 47
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    iget v2, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Shorts;->a([SSII)I

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

    .line 644
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/Shorts$b;

    if-eqz v1, :cond_4

    .line 645
    check-cast p1, Lcom/google/common/primitives/Shorts$b;

    .line 646
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v1

    .line 647
    invoke-virtual {p1}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 651
    iget v4, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    aget-short v4, v5, v4

    iget v5, p1, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int/2addr v5, v2

    iget-object v6, p1, Lcom/google/common/primitives/Shorts$b;->a:[S

    aget-short v5, v6, v5

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    .line 657
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 557
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Shorts$b;->get(I)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/Short;
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 587
    iget v0, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    aget-short p1, p1, v0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 663
    iget v1, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 664
    iget-object v2, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    aget-short v2, v2, v1

    invoke-static {v2}, Lcom/google/common/primitives/Shorts;->hashCode(S)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 599
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    .line 600
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    .line 47
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    iget v2, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Shorts;->a([SSII)I

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
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 611
    instance-of v0, p1, Ljava/lang/Short;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 612
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    .line 205
    iget v0, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    if-lt v0, v2, :cond_1

    .line 206
    iget-object v3, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    aget-short v3, v3, v0

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

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 557
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Shorts$b;->set(ILjava/lang/Short;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Short;)Ljava/lang/Short;
    .locals 3

    .line 622
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 623
    iget v0, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    aget-short v1, v2, v1

    add-int/2addr v0, p1

    .line 625
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    aput-short p1, v2, v0

    .line 626
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 576
    iget v0, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    iget v1, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 631
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v0

    .line 632
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    .line 634
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 636
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Shorts$b;

    iget v1, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    iget-object p2, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    invoke-direct {v0, p2, p1, v1}, Lcom/google/common/primitives/Shorts$b;-><init>([SII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$b;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/Shorts$b;->a:[S

    iget v2, p0, Lcom/google/common/primitives/Shorts$b;->b:I

    aget-short v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 673
    iget v3, p0, Lcom/google/common/primitives/Shorts$b;->c:I

    if-ge v2, v3, :cond_0

    .line 674
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-short v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
