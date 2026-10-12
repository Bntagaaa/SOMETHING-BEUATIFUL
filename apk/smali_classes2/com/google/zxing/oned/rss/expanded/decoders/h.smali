.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/h;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.source "SourceFile"


# virtual methods
.method public final encodeCompressedGtin(Ljava/lang/StringBuilder;I)V
    .locals 2

    .line 44
    const-string v0, "(01)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x39

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/h;->encodeCompressedGtinWithoutAI(Ljava/lang/StringBuilder;II)V

    return-void
.end method

.method public final encodeCompressedGtinWithoutAI(Ljava/lang/StringBuilder;II)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/16 v3, 0x30

    const/16 v4, 0xa

    if-ge v1, v2, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/r;

    move-result-object v2

    mul-int/lit8 v5, v1, 0xa

    add-int/2addr v5, p2

    .line 103
    iget-object v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/r;->a:Lcom/google/zxing/common/BitArray;

    .line 103
    invoke-static {v5, v4, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v2

    .line 54
    div-int/lit8 v4, v2, 0x64

    if-nez v4, :cond_0

    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    div-int/lit8 v4, v2, 0xa

    if-nez v4, :cond_1

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xd

    if-ge p2, v2, :cond_4

    add-int v2, p2, p3

    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_3

    mul-int/lit8 v2, v2, 0x3

    :cond_3
    add-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 73
    :cond_4
    rem-int/2addr v1, v4

    rsub-int/lit8 p2, v1, 0xa

    if-ne p2, v4, :cond_5

    goto :goto_2

    :cond_5
    move v0, p2

    .line 78
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
