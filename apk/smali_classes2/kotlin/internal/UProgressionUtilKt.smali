.class public final Lkotlin/internal/UProgressionUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u001a\'\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\'\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0001\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\tH\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlin/UInt;",
        "start",
        "end",
        "",
        "step",
        "getProgressionLastElement-Nkh28Cs",
        "(III)I",
        "getProgressionLastElement",
        "Lkotlin/ULong;",
        "",
        "getProgressionLastElement-7ftBX0g",
        "(JJJ)J",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(III)I
    .locals 6

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p2

    and-long/2addr v4, v2

    .line 10
    rem-long/2addr v0, v4

    long-to-int p0, v0

    int-to-long v0, p1

    and-long/2addr v0, v2

    .line 11
    rem-long/2addr v0, v4

    long-to-int p1, v0

    const/high16 v0, -0x80000000

    xor-int v1, p0, v0

    xor-int/2addr v0, p1

    .line 12
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    sub-int/2addr p0, p1

    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p0

    if-ltz v0, :cond_0

    return p0

    :cond_0
    add-int/2addr p0, p2

    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public static final b(JJJ)J
    .locals 11

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p4, v1

    if-gez v5, :cond_1

    xor-long v6, p0, v3

    xor-long v8, p4, v3

    cmp-long v10, v6, v8

    if-gez v10, :cond_0

    goto :goto_1

    :cond_0
    sub-long/2addr p0, p4

    goto :goto_1

    :cond_1
    cmp-long v6, p0, v1

    if-ltz v6, :cond_2

    .line 16
    rem-long/2addr p0, p4

    goto :goto_1

    :cond_2
    ushr-long v6, p0, v0

    div-long/2addr v6, p4

    shl-long/2addr v6, v0

    mul-long v6, v6, p4

    sub-long/2addr p0, v6

    xor-long v6, p0, v3

    xor-long v8, p4, v3

    cmp-long v10, v6, v8

    if-ltz v10, :cond_3

    move-wide v6, p4

    goto :goto_0

    :cond_3
    move-wide v6, v1

    :goto_0
    sub-long/2addr p0, v6

    :goto_1
    if-gez v5, :cond_5

    xor-long v0, p2, v3

    xor-long v5, p4, v3

    cmp-long v2, v0, v5

    if-gez v2, :cond_4

    move-wide v0, p2

    goto :goto_2

    :cond_4
    sub-long v0, p2, p4

    goto :goto_2

    :cond_5
    cmp-long v5, p2, v1

    if-ltz v5, :cond_6

    .line 17
    rem-long v0, p2, p4

    goto :goto_2

    :cond_6
    ushr-long v5, p2, v0

    div-long/2addr v5, p4

    shl-long/2addr v5, v0

    mul-long v5, v5, p4

    sub-long v5, p2, v5

    xor-long v7, v5, v3

    xor-long v9, p4, v3

    cmp-long v0, v7, v9

    if-ltz v0, :cond_7

    move-wide v1, p4

    :cond_7
    sub-long v1, v5, v1

    move-wide v0, v1

    :goto_2
    xor-long v5, p0, v3

    xor-long/2addr v3, v0

    .line 18
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v2

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    if-ltz v2, :cond_8

    return-wide p0

    :cond_8
    add-long/2addr p0, p4

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getProgressionLastElement-7ftBX0g(JJJ)J
    .locals 8
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p4, v0

    if-lez v4, :cond_1

    xor-long v0, p0, v2

    xor-long/2addr v2, p2

    .line 64
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-ltz v0, :cond_0

    move-wide p0, p2

    goto :goto_0

    :cond_0
    invoke-static {p4, p5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p4

    move-wide v6, p2

    move-wide p2, p0

    move-wide p0, v6

    invoke-static/range {p0 .. p5}, Lkotlin/internal/UProgressionUtilKt;->b(JJJ)J

    move-result-wide p2

    sub-long p2, p0, p2

    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    move-wide v6, p2

    move-wide p2, p0

    move-wide p0, v6

    if-gez v4, :cond_3

    xor-long v0, p2, v2

    xor-long/2addr v2, p0

    .line 65
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-gtz v0, :cond_2

    :goto_0
    return-wide p0

    :cond_2
    neg-long p4, p4

    invoke-static {p4, p5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    move-wide v2, p0

    move-wide v0, p2

    invoke-static/range {v0 .. v5}, Lkotlin/internal/UProgressionUtilKt;->b(JJJ)J

    move-result-wide p0

    add-long p2, v2, p0

    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0

    .line 66
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getProgressionLastElement-Nkh28Cs(III)I
    .locals 2
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    const/high16 v0, -0x80000000

    if-lez p2, :cond_1

    xor-int v1, p0, v0

    xor-int/2addr v0, p1

    .line 40
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p2

    invoke-static {p1, p0, p2}, Lkotlin/internal/UProgressionUtilKt;->a(III)I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p0

    return p0

    :cond_1
    if-gez p2, :cond_3

    xor-int v1, p0, v0

    xor-int/2addr v0, p1

    .line 41
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-gtz v0, :cond_2

    :goto_0
    return p1

    :cond_2
    neg-int p2, p2

    invoke-static {p2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lkotlin/internal/UProgressionUtilKt;->a(III)I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p0

    return p0

    .line 42
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
