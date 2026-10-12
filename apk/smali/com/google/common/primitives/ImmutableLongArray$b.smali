.class Lcom/google/common/primitives/ImmutableLongArray$b;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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
.field public final a:Lcom/google/common/primitives/ImmutableLongArray;


# direct methods
.method public constructor <init>(Lcom/google/common/primitives/ImmutableLongArray;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableLongArray$b;->a:Lcom/google/common/primitives/ImmutableLongArray;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 440
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$b;->indexOf(Ljava/lang/Object;)I

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

    .line 460
    instance-of v0, p1, Lcom/google/common/primitives/ImmutableLongArray$b;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$b;->a:Lcom/google/common/primitives/ImmutableLongArray;

    if-eqz v0, :cond_0

    .line 461
    check-cast p1, Lcom/google/common/primitives/ImmutableLongArray$b;

    .line 462
    iget-object p1, p1, Lcom/google/common/primitives/ImmutableLongArray$b;->a:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v1, p1}, Lcom/google/common/primitives/ImmutableLongArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 465
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 468
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 469
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray$b;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    return v2

    .line 83
    :cond_2
    iget v0, v1, Lcom/google/common/primitives/ImmutableLongArray;->b:I

    .line 474
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 475
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_4

    .line 83
    iget-object v4, v1, Lcom/google/common/primitives/ImmutableLongArray;->a:[J

    add-int/lit8 v5, v0, 0x1

    .line 475
    aget-wide v6, v4, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v6, v3

    if-eqz v0, :cond_3

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

.method public get(I)Ljava/lang/Long;
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$b;->a:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0, p1}, Lcom/google/common/primitives/ImmutableLongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$b;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$b;->a:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    .line 445
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/common/primitives/ImmutableLongArray$b;->a:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {p1, v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;->indexOf(J)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 450
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/common/primitives/ImmutableLongArray$b;->a:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {p1, v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;->lastIndexOf(J)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public size()I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$b;->a:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$b;->a:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/primitives/ImmutableLongArray;->subArray(II)Lcom/google/common/primitives/ImmutableLongArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableLongArray;->asList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$b;->a:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
