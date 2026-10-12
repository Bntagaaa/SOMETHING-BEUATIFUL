.class final Lcom/google/zxing/oned/rss/expanded/decoders/d;
.super Lcom/google/zxing/oned/rss/expanded/decoders/h;
.source "SourceFile"


# virtual methods
.method public parseInformation()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->getInformation()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    .line 52
    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/h;->encodeCompressedGtin(Ljava/lang/StringBuilder;I)V

    .line 54
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/r;

    move-result-object v2

    .line 103
    iget-object v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/r;->a:Lcom/google/zxing/common/BitArray;

    const/4 v3, 0x2

    .line 103
    invoke-static {v1, v3, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v2

    .line 57
    const-string v3, "(393"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/r;

    move-result-object v2

    .line 103
    iget-object v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/r;->a:Lcom/google/zxing/common/BitArray;

    const/16 v3, 0x32

    const/16 v4, 0xa

    .line 103
    invoke-static {v3, v4, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v2

    .line 63
    div-int/lit8 v3, v2, 0x64

    if-nez v3, :cond_0

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    :cond_0
    div-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/r;

    move-result-object v1

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->b(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/n;

    move-result-object v1

    .line 73
    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
