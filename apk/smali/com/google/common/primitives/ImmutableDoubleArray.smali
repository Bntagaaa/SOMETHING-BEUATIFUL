.class public final Lcom/google/common/primitives/ImmutableDoubleArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/ImmutableDoubleArray$b;,
        Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/common/primitives/ImmutableDoubleArray;


# instance fields
.field public final a:[D

.field public final transient b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x0

    new-array v2, v1, [D

    .line 321
    invoke-direct {v0, v2, v1, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    .line 84
    sput-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->d:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    .line 321
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-void
.end method

.method public constructor <init>([DII)V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->a:[D

    .line 326
    iput p2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    .line 327
    iput p3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:I

    return-void
.end method

.method public static a(DD)Z
    .locals 1

    .line 523
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static builder()Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 2

    .line 190
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 2

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 178
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray;"
        }
    .end annotation

    .line 160
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 161
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object p0

    return-object p0

    .line 163
    :cond_0
    invoke-static {}, Lcom/google/common/primitives/ImmutableDoubleArray;->builder()Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->build()Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray;"
        }
    .end annotation

    .line 149
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/primitives/ImmutableDoubleArray;->d:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {p0}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static copyOf([D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 2

    .line 142
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/common/primitives/ImmutableDoubleArray;->d:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    array-length v1, p0

    .line 144
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 1

    .line 88
    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->d:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object v0
.end method

.method public static of(D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4

    .line 93
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x1

    new-array v2, v1, [D

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    .line 321
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-object v0
.end method

.method public static of(DD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4

    .line 98
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x2

    new-array v2, v1, [D

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    const/4 p0, 0x1

    aput-wide p2, v2, p0

    .line 321
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-object v0
.end method

.method public static of(DDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4

    .line 103
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x3

    new-array v2, v1, [D

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    const/4 p0, 0x1

    aput-wide p2, v2, p0

    const/4 p0, 0x2

    aput-wide p4, v2, p0

    .line 321
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-object v0
.end method

.method public static of(DDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4

    .line 108
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x4

    new-array v2, v1, [D

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    const/4 p0, 0x1

    aput-wide p2, v2, p0

    const/4 p0, 0x2

    aput-wide p4, v2, p0

    const/4 p0, 0x3

    aput-wide p6, v2, p0

    .line 321
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-object v0
.end method

.method public static of(DDDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4

    .line 113
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x5

    new-array v2, v1, [D

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    const/4 p0, 0x1

    aput-wide p2, v2, p0

    const/4 p0, 0x2

    aput-wide p4, v2, p0

    const/4 p0, 0x3

    aput-wide p6, v2, p0

    const/4 p0, 0x4

    aput-wide p8, v2, p0

    .line 321
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-object v0
.end method

.method public static of(DDDDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4

    .line 119
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x6

    new-array v2, v1, [D

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    const/4 p0, 0x1

    aput-wide p2, v2, p0

    const/4 p0, 0x2

    aput-wide p4, v2, p0

    const/4 p0, 0x3

    aput-wide p6, v2, p0

    const/4 p0, 0x4

    aput-wide p8, v2, p0

    const/4 p0, 0x5

    aput-wide p10, v2, p0

    .line 321
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-object v0
.end method

.method public static varargs of(D[D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4

    .line 132
    array-length v0, p2

    const v1, 0x7ffffffe

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "the total number of elements must fit in an int"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 134
    array-length v0, p2

    add-int/2addr v0, v2

    new-array v1, v0, [D

    .line 135
    aput-wide p0, v1, v3

    .line 136
    array-length p0, p2

    invoke-static {p2, v3, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    new-instance p0, Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 321
    invoke-direct {p0, v1, v3, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-object p0
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$b;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray$b;-><init>(Lcom/google/common/primitives/ImmutableDoubleArray;)V

    return-object v0
.end method

.method public contains(D)Z
    .locals 0

    .line 384
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->indexOf(D)I

    move-result p1

    if-ltz p1, :cond_0

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

    .line 506
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 509
    :cond_1
    check-cast p1, Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 510
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    .line 513
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 514
    invoke-virtual {p0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v3

    invoke-virtual {p1, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/google/common/primitives/ImmutableDoubleArray;->a(DD)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public get(I)D
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 348
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->a:[D

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x1

    .line 530
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 532
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->a:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/google/common/primitives/Doubles;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOf(D)I
    .locals 5

    .line 357
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:I

    if-ge v1, v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->a:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 337
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(D)I
    .locals 5

    .line 371
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    if-lt v0, v1, :cond_1

    .line 372
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->a:[D

    aget-wide v3, v2, v0

    invoke-static {v3, v4, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public length()I
    .locals 2

    .line 332
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subArray(II)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 2

    .line 400
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    .line 401
    sget-object p1, Lcom/google/common/primitives/ImmutableDoubleArray;->d:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    iget-object p2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->a:[D

    invoke-direct {v0, p2, p1, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-object v0
.end method

.method public toArray()[D
    .locals 3

    .line 389
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:I

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->a:[D

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 543
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "[]"

    return-object v0

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->a:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    aget-wide v3, v1, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 549
    iget v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:I

    if-ge v2, v3, :cond_1

    .line 550
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v1, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimmed()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 2

    .line 567
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->a:[D

    array-length v0, v0

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 563
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->toArray()[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method
