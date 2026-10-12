.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/lit8 p1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x5

    .line 306
    new-array p1, p1, [I

    .line 36
    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x5

    if-le p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x5

    .line 306
    new-array p1, p1, [I

    .line 50
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    :cond_0
    return-void
.end method

.method public appendBit(Z)V
    .locals 4

    .line 221
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->a(I)V

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    shr-int/lit8 v2, v0, 0x5

    aget v3, p1, v2

    and-int/lit8 v0, v0, 0x1f

    shl-int v0, v1, v0

    or-int/2addr v0, v3

    aput v0, p1, v2

    .line 225
    :cond_0
    iget p1, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/zxing/common/BitArray;->b:I

    return-void
.end method

.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .locals 3

    .line 244
    iget v0, p1, Lcom/google/zxing/common/BitArray;->b:I

    .line 245
    iget v1, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->a(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 247
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 2

    if-ltz p2, :cond_2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_2

    .line 237
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->a(I)V

    :goto_0
    if-lez p2, :cond_1

    add-int/lit8 v0, p2, -0x1

    shr-int v0, p1, v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 239
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void

    .line 235
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Num bits must be between 0 and 32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 175
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flip(I)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v3, 0x1

    shl-int p1, v3, p1

    xor-int/2addr p1, v2

    aput p1, v0, v1

    return-void
.end method

.method public get(I)Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    shr-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBitArray()[I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    return-object v0
.end method

.method public getNextSet(I)I
    .locals 3

    .line 88
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    if-lt p1, v0, :cond_0

    return v0

    :cond_0
    shr-int/lit8 v0, p1, 0x5

    .line 92
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v1, v1, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    not-int p1, p1

    and-int/2addr p1, v1

    :goto_0
    if-nez p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 96
    iget-object p1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 97
    iget p1, p0, Lcom/google/zxing/common/BitArray;->b:I

    return p1

    .line 99
    :cond_1
    aget p1, p1, v0

    goto :goto_0

    :cond_2
    shl-int/lit8 v0, v0, 0x5

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    add-int/2addr p1, v0

    .line 102
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    if-le p1, v0, :cond_3

    return v0

    :cond_3
    return p1
.end method

.method public getNextUnset(I)I
    .locals 3

    .line 109
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    if-lt p1, v0, :cond_0

    return v0

    :cond_0
    shr-int/lit8 v0, p1, 0x5

    .line 113
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v1, v1, v0

    not-int v1, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    not-int p1, p1

    and-int/2addr p1, v1

    :goto_0
    if-nez p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 117
    iget-object p1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 118
    iget p1, p0, Lcom/google/zxing/common/BitArray;->b:I

    return p1

    .line 120
    :cond_1
    aget p1, p1, v0

    not-int p1, p1

    goto :goto_0

    :cond_2
    shl-int/lit8 v0, v0, 0x5

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    add-int/2addr p1, v0

    .line 123
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    if-le p1, v0, :cond_3

    return v0

    :cond_3
    return p1
.end method

.method public getSize()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isRange(IIZ)Z
    .locals 10

    if-lt p2, p1, :cond_8

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    add-int/2addr p2, v1

    shr-int/lit8 v2, p1, 0x5

    shr-int/lit8 v3, p2, 0x5

    move v4, v2

    :goto_0
    if-gt v4, v3, :cond_7

    const/16 v5, 0x1f

    const/4 v6, 0x0

    if-le v4, v2, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    and-int/lit8 v7, p1, 0x1f

    :goto_1
    if-ge v4, v3, :cond_2

    const/16 v8, 0x1f

    goto :goto_2

    :cond_2
    and-int/lit8 v8, p2, 0x1f

    :goto_2
    if-nez v7, :cond_3

    if-ne v8, v5, :cond_3

    const/4 v5, -0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-gt v7, v8, :cond_4

    shl-int v9, v0, v7

    or-int/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 213
    :cond_4
    :goto_4
    iget-object v7, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v7, v7, v4

    and-int/2addr v7, v5

    if-eqz p3, :cond_5

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-eq v7, v5, :cond_6

    return v6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return v0

    .line 190
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public reverse()V
    .locals 7

    .line 295
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 296
    iget v1, p0, Lcom/google/zxing/common/BitArray;->b:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    sub-int v3, v1, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 298
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    shr-int/lit8 v3, v2, 0x5

    .line 299
    aget v5, v0, v3

    and-int/lit8 v6, v2, 0x1f

    shl-int/2addr v4, v6

    or-int/2addr v4, v5

    aput v4, v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_1
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    return-void
.end method

.method public set(I)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v3, 0x1

    shl-int p1, v3, p1

    or-int/2addr p1, v2

    aput p1, v0, v1

    return-void
.end method

.method public setBulk(II)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    shr-int/lit8 p1, p1, 0x5

    aput p2, v0, p1

    return-void
.end method

.method public setRange(II)V
    .locals 8

    if-lt p2, p1, :cond_6

    if-ne p2, p1, :cond_0

    goto :goto_5

    :cond_0
    const/4 v0, -0x1

    add-int/2addr p2, v0

    shr-int/lit8 v1, p1, 0x5

    shr-int/lit8 v2, p2, 0x5

    move v3, v1

    :goto_0
    if-gt v3, v2, :cond_5

    const/4 v4, 0x0

    const/16 v5, 0x1f

    if-le v3, v1, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    and-int/lit8 v6, p1, 0x1f

    :goto_1
    if-ge v3, v2, :cond_2

    const/16 v7, 0x1f

    goto :goto_2

    :cond_2
    and-int/lit8 v7, p2, 0x1f

    :goto_2
    if-nez v6, :cond_3

    if-ne v7, v5, :cond_3

    const/4 v4, -0x1

    goto :goto_4

    :cond_3
    :goto_3
    if-gt v6, v7, :cond_4

    const/4 v5, 0x1

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 165
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v6, v5, v3

    or-int/2addr v4, v6

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    return-void

    .line 145
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public toBytes(I[BII)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    .line 274
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    rsub-int/lit8 v4, v2, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int v2, p3, v1

    int-to-byte v3, v3

    .line 279
    aput-byte v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/BitArray;->b:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 312
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitArray;->b:I

    if-ge v1, v2, :cond_2

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_0

    const/16 v2, 0x20

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    goto :goto_1

    :cond_1
    const/16 v2, 0x2e

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xor(Lcom/google/zxing/common/BitArray;)V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v0, v0

    iget-object v1, p1, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 258
    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->a:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 253
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sizes don\'t match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
