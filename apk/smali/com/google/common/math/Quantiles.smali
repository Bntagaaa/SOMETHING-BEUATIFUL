.class public final Lcom/google/common/math/Quantiles;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/Quantiles$ScaleAndIndexes;,
        Lcom/google/common/math/Quantiles$ScaleAndIndex;,
        Lcom/google/common/math/Quantiles$Scale;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DDDD)D
    .locals 5

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v4, p0, v2

    if-nez v4, :cond_1

    cmpl-double p0, p2, v0

    if-nez p0, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    return-wide v2

    :cond_1
    cmpl-double v2, p2, v0

    if-nez v2, :cond_2

    return-wide v0

    :cond_2
    sub-double/2addr p2, p0

    mul-double p2, p2, p4

    div-double/2addr p2, p6

    add-double/2addr p2, p0

    return-wide p2
.end method

.method public static b([III[DII)V
    .locals 9

    if-ne p1, p2, :cond_0

    move v2, p1

    goto :goto_1

    :cond_0
    add-int v0, p4, p5

    ushr-int/lit8 v1, v0, 0x1

    move v3, p1

    move v2, p2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-le v2, v4, :cond_3

    add-int v4, v3, v2

    ushr-int/lit8 v4, v4, 0x1

    .line 675
    aget v5, p0, v4

    if-le v5, v1, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    if-ge v5, v1, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 685
    :cond_3
    aget v1, p0, v3

    sub-int/2addr v0, v1

    aget v1, p0, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    .line 623
    :goto_1
    aget v0, p0, v2

    .line 626
    invoke-static {v0, p4, p5, p3}, Lcom/google/common/math/Quantiles;->c(III[D)V

    add-int/lit8 v1, v2, -0x1

    move v5, v1

    :goto_2
    if-lt v5, p1, :cond_5

    .line 630
    aget v1, p0, v5

    if-ne v1, v0, :cond_5

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    if-lt v5, p1, :cond_6

    add-int/lit8 v8, v0, -0x1

    move-object v3, p0

    move v4, p1

    move-object v6, p3

    move v7, p4

    .line 634
    invoke-static/range {v3 .. v8}, Lcom/google/common/math/Quantiles;->b([III[DII)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move p1, v2

    :goto_3
    if-gt p1, p2, :cond_7

    .line 639
    aget p4, p0, p1

    if-ne p4, v0, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    if-gt p1, p2, :cond_8

    add-int/lit8 p4, v0, 0x1

    .line 643
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/Quantiles;->b([III[DII)V

    :cond_8
    return-void
.end method

.method public static c(III[D)V
    .locals 12

    if-ne p0, p1, :cond_2

    add-int/lit8 p0, p1, 0x1

    move v0, p1

    :goto_0
    if-gt p0, p2, :cond_1

    .line 536
    aget-wide v1, p3, v0

    aget-wide v3, p3, p0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    move v0, p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-eq v0, p1, :cond_b

    .line 694
    aget-wide v1, p3, v0

    .line 695
    aget-wide v3, p3, p1

    aput-wide v3, p3, v0

    .line 696
    aput-wide v1, p3, p1

    return-void

    :cond_2
    :goto_1
    if-le p2, p1, :cond_b

    add-int v0, p1, p2

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    .line 601
    aget-wide v2, p3, p2

    aget-wide v4, p3, v0

    const/4 v6, 0x0

    cmpg-double v7, v2, v4

    if-gez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 602
    :goto_2
    aget-wide v8, p3, p1

    cmpg-double v10, v4, v8

    if-gez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    cmpg-double v11, v2, v8

    if-gez v11, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-ne v7, v10, :cond_6

    .line 695
    aput-wide v8, p3, v0

    .line 696
    aput-wide v4, p3, p1

    goto :goto_5

    :cond_6
    if-eq v7, v1, :cond_7

    .line 695
    aput-wide v2, p3, p1

    .line 696
    aput-wide v8, p3, p2

    .line 570
    :cond_7
    :goto_5
    aget-wide v0, p3, p1

    move v2, p2

    move v3, v2

    :goto_6
    if-le v2, p1, :cond_9

    .line 576
    aget-wide v4, p3, v2

    cmpl-double v6, v4, v0

    if-lez v6, :cond_8

    .line 694
    aget-wide v6, p3, v3

    .line 695
    aput-wide v4, p3, v3

    .line 696
    aput-wide v6, p3, v2

    add-int/lit8 v3, v3, -0x1

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 694
    :cond_9
    aget-wide v0, p3, p1

    .line 695
    aget-wide v4, p3, v3

    aput-wide v4, p3, p1

    .line 696
    aput-wide v0, p3, v3

    if-lt v3, p0, :cond_a

    add-int/lit8 p2, v3, -0x1

    :cond_a
    if-gt v3, p0, :cond_2

    add-int/lit8 v3, v3, 0x1

    move p1, v3

    goto :goto_1

    :cond_b
    return-void
.end method

.method public static median()Lcom/google/common/math/Quantiles$ScaleAndIndex;
    .locals 2

    const/4 v0, 0x2

    .line 135
    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/math/Quantiles$Scale;->index(I)Lcom/google/common/math/Quantiles$ScaleAndIndex;

    move-result-object v0

    return-object v0
.end method

.method public static percentiles()Lcom/google/common/math/Quantiles$Scale;
    .locals 1

    const/16 v0, 0x64

    .line 145
    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    return-object v0
.end method

.method public static quartiles()Lcom/google/common/math/Quantiles$Scale;
    .locals 1

    const/4 v0, 0x4

    .line 140
    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    return-object v0
.end method

.method public static scale(I)Lcom/google/common/math/Quantiles$Scale;
    .locals 1

    .line 155
    new-instance v0, Lcom/google/common/math/Quantiles$Scale;

    invoke-direct {v0, p0}, Lcom/google/common/math/Quantiles$Scale;-><init>(I)V

    return-object v0
.end method
