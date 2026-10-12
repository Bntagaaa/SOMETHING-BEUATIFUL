.class final Lcom/google/zxing/oned/rss/expanded/decoders/b;
.super Lcom/google/zxing/oned/rss/expanded/decoders/f;
.source "SourceFile"


# virtual methods
.method public addWeightCode(Ljava/lang/StringBuilder;I)V
    .locals 1

    const/16 v0, 0x2710

    if-ge p2, v0, :cond_0

    .line 43
    const-string p2, "(3202)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 45
    :cond_0
    const-string p2, "(3203)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public checkWeight(I)I
    .locals 1

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    return p1
.end method
