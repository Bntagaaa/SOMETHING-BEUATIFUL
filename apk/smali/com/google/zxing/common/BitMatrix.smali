.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 50
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    .line 51
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    add-int/lit8 p1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x5

    .line 52
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int p1, p1, p2

    .line 53
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both dimensions must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 96
    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 271
    instance-of v0, p1, Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 274
    :cond_0
    check-cast p1, Lcom/google/zxing/common/BitMatrix;

    .line 275
    iget v0, p1, Lcom/google/zxing/common/BitMatrix;->a:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    if-ne v2, v0, :cond_4

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->b:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->c:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    array-length v2, v0

    iget-object p1, p1, Lcom/google/zxing/common/BitMatrix;->d:[I

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 279
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 280
    aget v3, v0, v2

    aget v4, p1, v2

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public flip(II)V
    .locals 3

    .line 86
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int p2, p2, v0

    shr-int/lit8 v0, p1, 0x5

    add-int/2addr p2, v0

    .line 87
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    xor-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public get(II)Z
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int p2, p2, v0

    shr-int/lit8 v0, p1, 0x5

    add-int/2addr p2, v0

    .line 65
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aget p2, v0, p2

    and-int/lit8 p1, p1, 0x1f

    ushr-int p1, p2, p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBottomRightOnBit()[I
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 235
    aget v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 242
    :cond_1
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    div-int v3, v1, v2

    .line 243
    rem-int v2, v1, v2

    shl-int/lit8 v2, v2, 0x5

    .line 245
    aget v0, v0, v1

    const/16 v1, 0x1f

    :goto_1
    ushr-int v4, v0, v1

    if-nez v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    add-int/2addr v2, v1

    .line 252
    filled-new-array {v2, v3}, [I

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingRectangle()[I
    .locals 12

    .line 166
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v6, v1

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_7

    const/4 v7, 0x0

    .line 167
    :goto_1
    iget v8, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    if-ge v7, v8, :cond_6

    mul-int v8, v8, v5

    add-int/2addr v8, v7

    .line 168
    iget-object v9, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aget v8, v9, v8

    if-eqz v8, :cond_5

    if-ge v5, v6, :cond_0

    move v6, v5

    :cond_0
    if-le v5, v4, :cond_1

    move v4, v5

    :cond_1
    mul-int/lit8 v9, v7, 0x20

    if-ge v9, v0, :cond_3

    const/4 v10, 0x0

    :goto_2
    rsub-int/lit8 v11, v10, 0x1f

    shl-int v11, v8, v11

    if-nez v11, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v10, v9

    if-ge v10, v0, :cond_3

    move v0, v10

    :cond_3
    add-int/lit8 v10, v9, 0x1f

    if-le v10, v2, :cond_5

    const/16 v10, 0x1f

    :goto_3
    ushr-int v11, v8, v10

    if-nez v11, :cond_4

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_4
    add-int/2addr v9, v10

    if-le v9, v2, :cond_5

    move v2, v9

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    sub-int/2addr v2, v0

    sub-int/2addr v4, v6

    if-ltz v2, :cond_9

    if-gez v4, :cond_8

    goto :goto_4

    .line 205
    :cond_8
    filled-new-array {v0, v6, v2, v4}, [I

    move-result-object v0

    return-object v0

    :cond_9
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 5

    .line 137
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 138
    :cond_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    invoke-direct {p2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 140
    :cond_1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int p1, p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    shl-int/lit8 v2, v1, 0x5

    .line 142
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    add-int v4, p1, v1

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getTopLeftOnBit()[I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 215
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v3, v2, v1

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_0
    array-length v3, v2

    if-ne v1, v3, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    div-int v4, v1, v3

    .line 222
    rem-int v3, v1, v3

    shl-int/lit8 v3, v3, 0x5

    .line 224
    aget v1, v2, v1

    :goto_1
    rsub-int/lit8 v2, v0, 0x1f

    shl-int v2, v1, v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v3, v0

    .line 230
    filled-new-array {v3, v4}, [I

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v0, 0x1f

    .line 290
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    const/16 v2, 0x1f

    .line 291
    invoke-static {v1, v0, v1, v2}, L_COROUTINE/a;->b(IIII)I

    move-result v0

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 292
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    add-int/2addr v0, v1

    .line 293
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public set(II)V
    .locals 3

    .line 75
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int p2, p2, v0

    shr-int/lit8 v0, p1, 0x5

    add-int/2addr p2, v0

    .line 76
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public setRegion(IIII)V
    .locals 7

    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    if-lt p4, v0, :cond_3

    if-lt p3, v0, :cond_3

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 117
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    if-gt p4, v1, :cond_2

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    if-gt p3, v1, :cond_2

    :goto_0
    if-ge p2, p4, :cond_1

    .line 121
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int v1, v1, p2

    move v2, p1

    :goto_1
    if-ge v2, p3, :cond_0

    shr-int/lit8 v3, v2, 0x5

    add-int/2addr v3, v1

    .line 123
    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    aget v5, v4, v3

    and-int/lit8 v6, v2, 0x1f

    shl-int v6, v0, v6

    or-int/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 118
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The region must fit inside the matrix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height and width must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Left and top must be nonnegative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .locals 3

    .line 152
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object p2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->c:I

    mul-int p1, p1, v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->d:[I

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->a:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->b:I

    mul-int v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 304
    invoke-virtual {p0, v5, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "X "

    goto :goto_2

    :cond_0
    const-string v6, "  "

    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/16 v5, 0xa

    .line 306
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
