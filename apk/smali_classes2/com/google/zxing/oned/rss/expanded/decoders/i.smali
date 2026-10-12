.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/i;
.super Lcom/google/zxing/oned/rss/expanded/decoders/h;
.source "SourceFile"


# virtual methods
.method public abstract addWeightCode(Ljava/lang/StringBuilder;I)V
.end method

.method public abstract checkWeight(I)I
.end method

.method public final encodeCompressedWeight(Ljava/lang/StringBuilder;II)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/r;

    move-result-object v0

    .line 103
    iget-object v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/r;->a:Lcom/google/zxing/common/BitArray;

    .line 103
    invoke-static {p2, p3, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result p2

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/decoders/i;->addWeightCode(Ljava/lang/StringBuilder;I)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/google/zxing/oned/rss/expanded/decoders/i;->checkWeight(I)I

    move-result p2

    const p3, 0x186a0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 48
    div-int v1, p2, p3

    if-nez v1, :cond_0

    const/16 v1, 0x30

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    div-int/lit8 p3, p3, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
