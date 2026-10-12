.class Lcom/google/common/primitives/ImmutableDoubleArray$b;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableDoubleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/primitives/ImmutableDoubleArray;


# direct methods
.method public constructor <init>(Lcom/google/common/primitives/ImmutableDoubleArray;)V
    .locals 0

    .line 425
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 426
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$b;->a:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 443
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 463
    instance-of v0, p1, Lcom/google/common/primitives/ImmutableDoubleArray$b;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$b;->a:Lcom/google/common/primitives/ImmutableDoubleArray;

    if-eqz v0, :cond_0

    .line 464
    check-cast p1, Lcom/google/common/primitives/ImmutableDoubleArray$b;

    .line 465
    iget-object p1, p1, Lcom/google/common/primitives/ImmutableDoubleArray$b;->a:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v1, p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 468
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 471
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 472
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray$b;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    return v2

    .line 83
    :cond_2
    iget v0, v1, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    .line 477
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 478
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_4

    .line 83
    iget-object v4, v1, Lcom/google/common/primitives/ImmutableDoubleArray;->a:[D

    add-int/lit8 v5, v0, 0x1

    .line 478
    aget-wide v6, v4, v0

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 83
    invoke-static {v6, v7, v3, v4}, Lcom/google/common/primitives/ImmutableDoubleArray;->a(DD)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    :goto_1
    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)Ljava/lang/Double;
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$b;->a:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$b;->get(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$b;->a:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    .line 448
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$b;->a:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p1, v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;->indexOf(D)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 453
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$b;->a:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p1, v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;->lastIndexOf(D)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public size()I
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$b;->a:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$b;->a:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->subArray(II)Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->asList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$b;->a:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
