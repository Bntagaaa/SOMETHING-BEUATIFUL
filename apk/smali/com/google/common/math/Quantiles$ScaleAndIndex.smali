.class public final Lcom/google/common/math/Quantiles$ScaleAndIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleAndIndex"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    if-gt p2, p1, :cond_0

    .line 222
    iput p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->a:I

    .line 223
    iput p2, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->b:I

    return-void

    .line 486
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Quantile indexes must be between 0 and the scale, which is "

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public compute(Ljava/util/Collection;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 235
    invoke-static {p1}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([D)D
    .locals 2

    .line 246
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([I)D
    .locals 5

    .line 501
    array-length v0, p1

    .line 502
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 504
    aget v3, p1, v2

    int-to-double v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([J)D
    .locals 5

    .line 492
    array-length v0, p1

    .line 493
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 495
    aget-wide v3, p1, v2

    long-to-double v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs computeInPlace([D)D
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 280
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Cannot calculate quantiles of an empty dataset"

    invoke-static {v2, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 455
    array-length v2, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    aget-wide v6, v1, v5

    .line 456
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    return-wide v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 292
    :cond_2
    iget v2, v0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->b:I

    int-to-long v5, v2

    array-length v2, v1

    sub-int/2addr v2, v4

    int-to-long v7, v2

    mul-long v5, v5, v7

    .line 296
    iget v2, v0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->a:I

    int-to-long v7, v2

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v9

    long-to-int v10, v9

    int-to-long v11, v10

    mul-long v11, v11, v7

    sub-long/2addr v5, v11

    long-to-int v6, v5

    .line 298
    array-length v5, v1

    sub-int/2addr v5, v4

    .line 131
    invoke-static {v10, v3, v5, v1}, Lcom/google/common/math/Quantiles;->c(III[D)V

    if-nez v6, :cond_3

    .line 300
    aget-wide v2, v1, v10

    return-wide v2

    :cond_3
    add-int/lit8 v3, v10, 0x1

    .line 302
    array-length v5, v1

    sub-int/2addr v5, v4

    .line 131
    invoke-static {v3, v3, v5, v1}, Lcom/google/common/math/Quantiles;->c(III[D)V

    .line 303
    aget-wide v11, v1, v10

    aget-wide v13, v1, v3

    int-to-double v3, v6

    int-to-double v1, v2

    move-wide/from16 v17, v1

    move-wide v15, v3

    invoke-static/range {v11 .. v18}, Lcom/google/common/math/Quantiles;->a(DDDD)D

    move-result-wide v1

    return-wide v1
.end method
