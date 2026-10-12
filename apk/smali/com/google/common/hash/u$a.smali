.class final Lcom/google/common/hash/u$a;
.super Lcom/google/common/hash/e;
.source "SourceFile"


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:Z


# virtual methods
.method public final a(IJ)V
    .locals 4

    .line 275
    iget-wide v0, p0, Lcom/google/common/hash/u$a;->b:J

    const-wide v2, 0xffffffffL

    and-long/2addr p2, v2

    iget v2, p0, Lcom/google/common/hash/u$a;->c:I

    shl-long/2addr p2, v2

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/common/hash/u$a;->b:J

    mul-int/lit8 v0, p1, 0x8

    add-int/2addr v0, v2

    .line 276
    iput v0, p0, Lcom/google/common/hash/u$a;->c:I

    .line 277
    iget v1, p0, Lcom/google/common/hash/u$a;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/common/hash/u$a;->d:I

    const/16 p1, 0x20

    if-lt v0, p1, :cond_0

    .line 280
    iget v0, p0, Lcom/google/common/hash/u$a;->a:I

    long-to-int p3, p2

    .line 54
    invoke-static {p3}, Lcom/google/common/hash/u;->e(I)I

    move-result p2

    .line 54
    invoke-static {v0, p2}, Lcom/google/common/hash/u;->d(II)I

    move-result p2

    .line 280
    iput p2, p0, Lcom/google/common/hash/u$a;->a:I

    .line 281
    iget-wide p2, p0, Lcom/google/common/hash/u$a;->b:J

    ushr-long/2addr p2, p1

    iput-wide p2, p0, Lcom/google/common/hash/u$a;->b:J

    .line 282
    iget p2, p0, Lcom/google/common/hash/u$a;->c:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/common/hash/u$a;->c:I

    :cond_0
    return-void
.end method

.method public hash()Lcom/google/common/hash/HashCode;
    .locals 3

    .line 386
    iget-boolean v0, p0, Lcom/google/common/hash/u$a;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 387
    iput-boolean v1, p0, Lcom/google/common/hash/u$a;->e:Z

    .line 388
    iget v0, p0, Lcom/google/common/hash/u$a;->a:I

    iget-wide v1, p0, Lcom/google/common/hash/u$a;->b:J

    long-to-int v2, v1

    .line 54
    invoke-static {v2}, Lcom/google/common/hash/u;->e(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 388
    iput v0, p0, Lcom/google/common/hash/u$a;->a:I

    .line 389
    iget v1, p0, Lcom/google/common/hash/u$a;->d:I

    .line 54
    invoke-static {v0, v1}, Lcom/google/common/hash/u;->c(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    const/4 p1, 0x1

    .line 288
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/hash/u$a;->a(IJ)V

    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/hash/u$a;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 3

    .line 307
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 308
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 309
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/u$a;->putInt(I)Lcom/google/common/hash/Hasher;

    goto :goto_0

    .line 312
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/u$a;->putByte(B)Lcom/google/common/hash/Hasher;

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 6

    const/4 v0, 0x4

    add-int v1, p2, p3

    .line 294
    array-length v2, p1

    invoke-static {p2, v1, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x4

    if-gt v2, p3, :cond_0

    add-int/2addr v1, p2

    .line 54
    sget-object v3, Lcom/google/common/hash/u;->b:Lcom/google/common/hash/HashFunction;

    add-int/lit8 v3, v1, 0x3

    .line 231
    aget-byte v3, p1, v3

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p1, v4

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    aget-byte v1, p1, v1

    invoke-static {v3, v4, v5, v1}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v1

    int-to-long v3, v1

    .line 297
    invoke-virtual {p0, v0, v3, v4}, Lcom/google/common/hash/u$a;->a(IJ)V

    move v1, v2

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p3, :cond_1

    add-int v0, p2, v1

    .line 300
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/u$a;->putByte(B)Lcom/google/common/hash/Hasher;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/hash/u$a;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/u$a;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .locals 3

    const/4 v0, 0x2

    int-to-long v1, p1

    .line 334
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/hash/u$a;->a(IJ)V

    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/hash/u$a;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .locals 3

    const/4 v0, 0x4

    int-to-long v1, p1

    .line 321
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/hash/u$a;->a(IJ)V

    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/hash/u$a;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .locals 3

    long-to-int v0, p1

    int-to-long v0, v0

    const/4 v2, 0x4

    .line 327
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/common/hash/u$a;->a(IJ)V

    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    .line 328
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/common/hash/u$a;->a(IJ)V

    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/u$a;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 341
    sget-object v4, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 342
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v5, 0x4

    const/16 v7, 0x80

    if-gt v6, v4, :cond_0

    .line 347
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v5, 0x1

    .line 348
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    add-int/lit8 v10, v5, 0x2

    .line 349
    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    add-int/lit8 v11, v5, 0x3

    .line 350
    invoke-interface {p1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ge v8, v7, :cond_0

    if-ge v9, v7, :cond_0

    if-ge v10, v7, :cond_0

    if-ge v11, v7, :cond_0

    shl-int/lit8 v5, v9, 0x8

    or-int/2addr v5, v8

    shl-int/lit8 v7, v10, 0x10

    or-int/2addr v5, v7

    shl-int/lit8 v7, v11, 0x18

    or-int/2addr v5, v7

    int-to-long v7, v5

    .line 352
    invoke-virtual {p0, v2, v7, v8}, Lcom/google/common/hash/u$a;->a(IJ)V

    move v5, v6

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v5, v4, :cond_6

    .line 360
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v7, :cond_1

    int-to-long v8, v6

    .line 362
    invoke-virtual {p0, v3, v8, v9}, Lcom/google/common/hash/u$a;->a(IJ)V

    goto :goto_3

    :cond_1
    const/16 v8, 0x800

    if-ge v6, v8, :cond_2

    .line 54
    sget-object v8, Lcom/google/common/hash/u;->b:Lcom/google/common/hash/HashFunction;

    ushr-int/lit8 v8, v6, 0x6

    or-int/lit16 v8, v8, 0x3c0

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v8

    int-to-long v8, v6

    .line 364
    invoke-virtual {p0, v1, v8, v9}, Lcom/google/common/hash/u$a;->a(IJ)V

    goto :goto_3

    :cond_2
    const v8, 0xd800

    if-lt v6, v8, :cond_5

    const v8, 0xdfff

    if-le v6, v8, :cond_3

    goto :goto_2

    .line 368
    :cond_3
    invoke-static {p1, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    if-ne v8, v6, :cond_4

    .line 371
    invoke-interface {p1, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/e;->putBytes([B)Lcom/google/common/hash/Hasher;

    return-object p0

    :cond_4
    add-int/2addr v5, v3

    .line 54
    invoke-static {v8}, Lcom/google/common/hash/u;->b(I)J

    move-result-wide v8

    .line 375
    invoke-virtual {p0, v2, v8, v9}, Lcom/google/common/hash/u$a;->a(IJ)V

    goto :goto_3

    .line 54
    :cond_5
    :goto_2
    invoke-static {v6}, Lcom/google/common/hash/u;->a(C)J

    move-result-wide v8

    .line 366
    invoke-virtual {p0, v0, v8, v9}, Lcom/google/common/hash/u$a;->a(IJ)V

    :goto_3
    add-int/2addr v5, v3

    goto :goto_1

    :cond_6
    return-object p0

    .line 380
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/google/common/hash/e;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/u$a;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method
