.class Lcom/google/common/primitives/Longs$c;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:[J

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([JII)V
    .locals 0

    .line 669
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 670
    iput-object p1, p0, Lcom/google/common/primitives/Longs$c;->a:[J

    .line 671
    iput p2, p0, Lcom/google/common/primitives/Longs$c;->b:I

    .line 672
    iput p3, p0, Lcom/google/common/primitives/Longs$c;->c:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 694
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 46
    iget-object p1, p0, Lcom/google/common/primitives/Longs$c;->a:[J

    iget v2, p0, Lcom/google/common/primitives/Longs$c;->b:I

    iget v3, p0, Lcom/google/common/primitives/Longs$c;->c:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->a([JJII)I

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
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 745
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/Longs$c;

    if-eqz v1, :cond_4

    .line 746
    check-cast p1, Lcom/google/common/primitives/Longs$c;

    .line 747
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$c;->size()I

    move-result v1

    .line 748
    invoke-virtual {p1}, Lcom/google/common/primitives/Longs$c;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 752
    iget v4, p0, Lcom/google/common/primitives/Longs$c;->b:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/google/common/primitives/Longs$c;->a:[J

    aget-wide v4, v5, v4

    iget v6, p1, Lcom/google/common/primitives/Longs$c;->b:I

    add-int/2addr v6, v2

    iget-object v7, p1, Lcom/google/common/primitives/Longs$c;->a:[J

    aget-wide v6, v7, v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    .line 758
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Long;
    .locals 2

    .line 687
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$c;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 688
    iget v0, p0, Lcom/google/common/primitives/Longs$c;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/common/primitives/Longs$c;->a:[J

    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 658
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Longs$c;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x1

    .line 764
    iget v1, p0, Lcom/google/common/primitives/Longs$c;->b:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Longs$c;->c:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 765
    iget-object v2, p0, Lcom/google/common/primitives/Longs$c;->a:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 700
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 701
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 46
    iget-object p1, p0, Lcom/google/common/primitives/Longs$c;->a:[J

    iget v2, p0, Lcom/google/common/primitives/Longs$c;->b:I

    iget v3, p0, Lcom/google/common/primitives/Longs$c;->c:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->a([JJII)I

    move-result p1

    if-ltz p1, :cond_0

    sub-int/2addr p1, v2

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
    .locals 7

    .line 712
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 713
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 177
    iget p1, p0, Lcom/google/common/primitives/Longs$c;->c:I

    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget v0, p0, Lcom/google/common/primitives/Longs$c;->b:I

    if-lt p1, v0, :cond_1

    .line 178
    iget-object v4, p0, Lcom/google/common/primitives/Longs$c;->a:[J

    aget-wide v5, v4, p1

    cmp-long v4, v5, v2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    if-ltz p1, :cond_2

    sub-int/2addr p1, v0

    return p1

    :cond_2
    return v1
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 5

    .line 723
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$c;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 724
    iget v0, p0, Lcom/google/common/primitives/Longs$c;->b:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/google/common/primitives/Longs$c;->a:[J

    aget-wide v3, v2, v1

    add-int/2addr v0, p1

    .line 726
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    aput-wide p1, v2, v0

    .line 727
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 658
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Longs$c;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 677
    iget v0, p0, Lcom/google/common/primitives/Longs$c;->c:I

    iget v1, p0, Lcom/google/common/primitives/Longs$c;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 732
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$c;->size()I

    move-result v0

    .line 733
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    .line 735
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 737
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Longs$c;

    iget v1, p0, Lcom/google/common/primitives/Longs$c;->b:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    iget-object p2, p0, Lcom/google/common/primitives/Longs$c;->a:[J

    invoke-direct {v0, p2, p1, v1}, Lcom/google/common/primitives/Longs$c;-><init>([JII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$c;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/Longs$c;->a:[J

    iget v2, p0, Lcom/google/common/primitives/Longs$c;->b:I

    aget-wide v3, v1, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 774
    iget v3, p0, Lcom/google/common/primitives/Longs$c;->c:I

    if-ge v2, v3, :cond_0

    .line 775
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v1, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    .line 777
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
