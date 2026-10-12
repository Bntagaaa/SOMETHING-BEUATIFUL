.class public final Lcom/google/common/hash/BloomFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/BloomFilter$b;,
        Lcom/google/common/hash/BloomFilter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/hash/h$c;

.field public final b:I

.field public final c:Lcom/google/common/hash/Funnel;

.field public final d:Lcom/google/common/hash/BloomFilter$c;


# direct methods
.method public constructor <init>(Lcom/google/common/hash/h$c;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$c;)V
    .locals 4

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 114
    :goto_0
    const-string v3, "numHashFunctions (%s) must be > 0"

    invoke-static {v2, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    const/16 v2, 0xff

    if-gt p2, v2, :cond_1

    const/4 v0, 0x1

    .line 115
    :cond_1
    const-string v1, "numHashFunctions (%s) must be <= 255"

    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 117
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/h$c;

    iput-object p1, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    .line 118
    iput p2, p0, Lcom/google/common/hash/BloomFilter;->b:I

    .line 119
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/Funnel;

    iput-object p1, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    .line 120
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/BloomFilter$c;

    iput-object p1, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    return-void
.end method

.method public static create(Lcom/google/common/hash/Funnel;I)Lcom/google/common/hash/BloomFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    int-to-long v0, p1

    .line 388
    invoke-static {p0, v0, v1}, Lcom/google/common/hash/BloomFilter;->create(Lcom/google/common/hash/Funnel;J)Lcom/google/common/hash/BloomFilter;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/common/hash/Funnel;ID)Lcom/google/common/hash/BloomFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;ID)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    int-to-long v0, p1

    .line 312
    invoke-static {p0, v0, v1, p2, p3}, Lcom/google/common/hash/BloomFilter;->create(Lcom/google/common/hash/Funnel;JD)Lcom/google/common/hash/BloomFilter;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/common/hash/Funnel;J)Lcom/google/common/hash/BloomFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;J)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x3f9eb851eb851eb8L    # 0.03

    .line 412
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/hash/BloomFilter;->create(Lcom/google/common/hash/Funnel;JD)Lcom/google/common/hash/BloomFilter;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/common/hash/Funnel;JD)Lcom/google/common/hash/BloomFilter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;JD)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/google/common/hash/h;->a:Lcom/google/common/hash/h$b;

    .line 344
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmp-long v5, p1, v1

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 345
    :goto_0
    const-string v2, "Expected insertions (%s) must be >= 0"

    invoke-static {v1, v2, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    const-wide/16 v1, 0x0

    cmpl-double v6, p3, v1

    if-lez v6, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 347
    :goto_1
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v7, "False positive probability (%s) must be > 0.0"

    invoke-static {v1, v7, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, p3, v1

    if-gez v7, :cond_2

    const/4 v3, 0x1

    .line 348
    :cond_2
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "False positive probability (%s) must be < 1.0"

    invoke-static {v3, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 349
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_3

    const-wide/16 p1, 0x1

    :cond_3
    if-nez v6, :cond_4

    const-wide/16 p3, 0x1

    :cond_4
    neg-long v1, p1

    long-to-double v1, v1

    .line 457
    invoke-static {p3, p4}, Ljava/lang/Math;->log(D)D

    move-result-wide p3

    mul-double p3, p3, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    div-double/2addr p3, v7

    double-to-long p3, p3

    long-to-double v5, p3

    long-to-double p1, p1

    div-double/2addr v5, p1

    .line 439
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double p1, p1, v5

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 362
    :try_start_0
    new-instance p2, Lcom/google/common/hash/BloomFilter;

    new-instance v1, Lcom/google/common/hash/h$c;

    invoke-direct {v1, p3, p4}, Lcom/google/common/hash/h$c;-><init>(J)V

    invoke-direct {p2, v1, p1, p0, v0}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/h$c;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$c;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 364
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not create BloomFilter of "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bits"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readFrom(Ljava/io/InputStream;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/BloomFilter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    const-string v0, "InputStream"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v0, "Funnel"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    .line 525
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 529
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 530
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 531
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 533
    :try_start_3
    invoke-static {}, Lcom/google/common/hash/h;->values()[Lcom/google/common/hash/h;

    move-result-object v3

    aget-object v3, v3, p0

    .line 534
    new-array v4, v0, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    .line 536
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    move v8, v0

    move v0, p0

    move p0, v8

    goto :goto_2

    .line 538
    :cond_0
    new-instance v1, Lcom/google/common/hash/BloomFilter;

    new-instance v5, Lcom/google/common/hash/h$c;

    invoke-direct {v5, v4}, Lcom/google/common/hash/h$c;-><init>([J)V

    invoke-direct {v1, v5, v2, p1, v3}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/h$c;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$c;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v1

    :catch_1
    move-exception p1

    :goto_1
    move v0, p0

    const/4 p0, -0x1

    goto :goto_2

    :catch_2
    move-exception p1

    const/4 v2, -0x1

    goto :goto_1

    :catch_3
    move-exception p1

    const/4 p0, -0x1

    const/4 v2, -0x1

    .line 540
    :goto_2
    const-string v1, "Unable to deserialize BloomFilter from InputStream. strategyOrdinal: "

    const-string v3, " numHashFunctions: "

    const-string v4, " dataLength: "

    .line 0
    invoke-static {v0, v2, v1, v3, v4}, L_COROUTINE/a;->n(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 540
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 548
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-virtual {p0, p1}, Lcom/google/common/hash/BloomFilter;->mightContain(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public approximateElementCount()J
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    invoke-virtual {v0}, Lcom/google/common/hash/h$c;->a()J

    move-result-wide v1

    .line 229
    iget-object v0, v0, Lcom/google/common/hash/h$c;->b:Lcom/google/common/hash/o;

    .line 229
    invoke-interface {v0}, Lcom/google/common/hash/o;->sum()J

    move-result-wide v3

    long-to-double v3, v3

    long-to-double v0, v1

    div-double/2addr v3, v0

    neg-double v2, v3

    .line 202
    invoke-static {v2, v3}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v2

    neg-double v2, v2

    mul-double v2, v2, v0

    iget v0, p0, Lcom/google/common/hash/BloomFilter;->b:I

    int-to-double v0, v0

    div-double/2addr v2, v0

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 201
    invoke-static {v2, v3, v0}, Lcom/google/common/math/DoubleMath;->roundToLong(DLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public copy()Lcom/google/common/hash/BloomFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/google/common/hash/BloomFilter;

    .line 233
    new-instance v1, Lcom/google/common/hash/h$c;

    .line 233
    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    iget-object v2, v2, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 233
    invoke-static {v2}, Lcom/google/common/hash/h$c;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/hash/h$c;-><init>([J)V

    .line 130
    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget v4, p0, Lcom/google/common/hash/BloomFilter;->b:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/h$c;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$c;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 275
    :cond_0
    instance-of v1, p1, Lcom/google/common/hash/BloomFilter;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 276
    check-cast p1, Lcom/google/common/hash/BloomFilter;

    .line 277
    iget v1, p1, Lcom/google/common/hash/BloomFilter;->b:I

    iget v3, p0, Lcom/google/common/hash/BloomFilter;->b:I

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    iget-object v3, p1, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    .line 278
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    iget-object v3, p1, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    .line 279
    invoke-virtual {v1, v3}, Lcom/google/common/hash/h$c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget-object p1, p1, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    .line 280
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public expectedFpp()D
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    iget-object v1, v0, Lcom/google/common/hash/h$c;->b:Lcom/google/common/hash/o;

    .line 229
    invoke-interface {v1}, Lcom/google/common/hash/o;->sum()J

    move-result-wide v1

    long-to-double v1, v1

    .line 208
    invoke-virtual {v0}, Lcom/google/common/hash/h$c;->a()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v1, v3

    .line 180
    iget v0, p0, Lcom/google/common/hash/BloomFilter;->b:I

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 287
    iget v0, p0, Lcom/google/common/hash/BloomFilter;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCompatible(Lcom/google/common/hash/BloomFilter;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;)Z"
        }
    .end annotation

    .line 227
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq p0, p1, :cond_0

    .line 228
    iget v0, p1, Lcom/google/common/hash/BloomFilter;->b:I

    iget v1, p0, Lcom/google/common/hash/BloomFilter;->b:I

    if-ne v1, v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    invoke-virtual {v0}, Lcom/google/common/hash/h$c;->a()J

    move-result-wide v0

    iget-object v2, p1, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    invoke-virtual {v2}, Lcom/google/common/hash/h$c;->a()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget-object v1, p1, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    iget-object p1, p1, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public mightContain(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 138
    iget v0, p0, Lcom/google/common/hash/BloomFilter;->b:I

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/common/hash/BloomFilter$c;->mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/h$c;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/Object;)Z
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 164
    iget v0, p0, Lcom/google/common/hash/BloomFilter;->b:I

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/common/hash/BloomFilter$c;->put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/h$c;)Z

    move-result p1

    return p1
.end method

.method public putAll(Lcom/google/common/hash/BloomFilter;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 245
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 246
    :goto_0
    const-string v5, "Cannot combine a BloomFilter with itself."

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 247
    iget v4, v1, Lcom/google/common/hash/BloomFilter;->b:I

    iget v5, v0, Lcom/google/common/hash/BloomFilter;->b:I

    if-ne v5, v4, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-string v7, "BloomFilters must have the same number of hash functions (%s != %s)"

    invoke-static {v6, v7, v5, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 208
    iget-object v4, v0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    invoke-virtual {v4}, Lcom/google/common/hash/h$c;->a()J

    move-result-wide v5

    iget-object v7, v1, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    invoke-virtual {v7}, Lcom/google/common/hash/h$c;->a()J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-nez v10, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 208
    :goto_2
    invoke-virtual {v4}, Lcom/google/common/hash/h$c;->a()J

    move-result-wide v13

    .line 208
    invoke-virtual {v7}, Lcom/google/common/hash/h$c;->a()J

    move-result-wide v15

    .line 252
    const-string v12, "BloomFilters must have the same size underlying bit arrays (%s != %s)"

    invoke-static/range {v11 .. v16}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JJ)V

    .line 258
    iget-object v5, v0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget-object v6, v1, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "BloomFilters must have equal strategies (%s != %s)"

    .line 257
    invoke-static {v8, v9, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    iget-object v5, v0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    iget-object v1, v1, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "BloomFilters must have equal funnels (%s != %s)"

    .line 262
    invoke-static {v6, v8, v5, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    iget-object v1, v4, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 247
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v5

    iget-object v6, v7, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v6

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 249
    :goto_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v5

    .line 250
    iget-object v6, v7, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v7

    .line 246
    const-string v8, "BitArrays must be of equal length (%s != %s)"

    invoke-static {v3, v8, v5, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    const/4 v10, 0x0

    .line 251
    :goto_4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v2

    if-ge v10, v2, :cond_6

    .line 252
    invoke-virtual {v6, v10}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    .line 258
    :cond_4
    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v11

    or-long v13, v11, v2

    cmp-long v5, v11, v13

    if-nez v5, :cond_5

    goto :goto_5

    .line 264
    :cond_5
    iget-object v9, v4, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual/range {v9 .. v14}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 267
    invoke-static {v13, v14}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    invoke-static {v11, v12}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    sub-int/2addr v2, v3

    .line 268
    iget-object v3, v4, Lcom/google/common/hash/h$c;->b:Lcom/google/common/hash/o;

    int-to-long v7, v2

    invoke-interface {v3, v7, v8}, Lcom/google/common/hash/o;->add(J)V

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 498
    iget-object p1, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    invoke-interface {p1}, Lcom/google/common/hash/BloomFilter$c;->ordinal()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/google/common/primitives/SignedBytes;->checkedCast(J)B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 499
    iget p1, p0, Lcom/google/common/hash/BloomFilter;->b:I

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/google/common/primitives/UnsignedBytes;->checkedCast(J)B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 500
    iget-object p1, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/h$c;

    iget-object v1, p1, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .line 501
    :goto_0
    iget-object v2, p1, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 502
    iget-object v2, p1, Lcom/google/common/hash/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
