.class public final Lkotlin/internal/ProgressionUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\u001a\'\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a\'\u0010\u0004\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "",
        "start",
        "end",
        "step",
        "getProgressionLastElement",
        "(III)I",
        "",
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
.method public static final getProgressionLastElement(III)I
    .locals 1
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    if-lez p2, :cond_4

    if-lt p0, p1, :cond_0

    goto :goto_3

    .line 10
    :cond_0
    rem-int v0, p1, p2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, p2

    :goto_0
    rem-int/2addr p0, p2

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p0, p2

    :goto_1
    sub-int/2addr v0, p0

    rem-int/2addr v0, p2

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v0, p2

    :goto_2
    sub-int/2addr p1, v0

    return p1

    :cond_4
    if-gez p2, :cond_9

    if-gt p0, p1, :cond_5

    :goto_3
    return p1

    :cond_5
    neg-int p2, p2

    .line 10
    rem-int/2addr p0, p2

    if-ltz p0, :cond_6

    goto :goto_4

    :cond_6
    add-int/2addr p0, p2

    :goto_4
    rem-int v0, p1, p2

    if-ltz v0, :cond_7

    goto :goto_5

    :cond_7
    add-int/2addr v0, p2

    :goto_5
    sub-int/2addr p0, v0

    rem-int/2addr p0, p2

    if-ltz p0, :cond_8

    goto :goto_6

    :cond_8
    add-int/2addr p0, p2

    :goto_6
    add-int/2addr p0, p1

    return p0

    .line 48
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getProgressionLastElement(JJJ)J
    .locals 5
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    goto :goto_3

    .line 15
    :cond_0
    rem-long v2, p2, p4

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    add-long/2addr v2, p4

    :goto_0
    rem-long/2addr p0, p4

    cmp-long v4, p0, v0

    if-ltz v4, :cond_2

    goto :goto_1

    :cond_2
    add-long/2addr p0, p4

    :goto_1
    sub-long/2addr v2, p0

    rem-long/2addr v2, p4

    cmp-long p0, v2, v0

    if-ltz p0, :cond_3

    goto :goto_2

    :cond_3
    add-long/2addr v2, p4

    :goto_2
    sub-long/2addr p2, v2

    return-wide p2

    :cond_4
    if-gez v2, :cond_9

    cmp-long v2, p0, p2

    if-gtz v2, :cond_5

    :goto_3
    return-wide p2

    :cond_5
    neg-long p4, p4

    .line 15
    rem-long/2addr p0, p4

    cmp-long v2, p0, v0

    if-ltz v2, :cond_6

    goto :goto_4

    :cond_6
    add-long/2addr p0, p4

    :goto_4
    rem-long v2, p2, p4

    cmp-long v4, v2, v0

    if-ltz v4, :cond_7

    goto :goto_5

    :cond_7
    add-long/2addr v2, p4

    :goto_5
    sub-long/2addr p0, v2

    rem-long/2addr p0, p4

    cmp-long v2, p0, v0

    if-ltz v2, :cond_8

    goto :goto_6

    :cond_8
    add-long/2addr p0, p4

    :goto_6
    add-long/2addr p2, p0

    return-wide p2

    .line 71
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
