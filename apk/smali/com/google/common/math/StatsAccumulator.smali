.class public final Lcom/google/common/math/StatsAccumulator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# instance fields
.field public a:J

.field public b:D

.field public c:D

.field public d:D

.field public e:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->b:D

    .line 43
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->c:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 44
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->d:D

    .line 45
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->e:D

    return-void
.end method

.method public static a(DD)D
    .locals 1

    .line 383
    invoke-static {p0, p1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    .line 386
    :cond_0
    invoke-static {p2, p3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-double v0, p0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :cond_2
    :goto_0
    return-wide p0
.end method


# virtual methods
.method public add(D)V
    .locals 9

    .line 49
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v6, 0x1

    cmp-long v8, v0, v2

    if-nez v8, :cond_1

    .line 50
    iput-wide v6, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    .line 51
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->b:D

    .line 52
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->d:D

    .line 53
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->e:D

    .line 54
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result p1

    if-nez p1, :cond_0

    .line 55
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->c:D

    :cond_0
    return-void

    :cond_1
    add-long/2addr v0, v6

    .line 58
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    .line 59
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->b:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->b:D

    sub-double v2, p1, v0

    .line 62
    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    long-to-double v4, v4

    div-double v4, v2, v4

    add-double/2addr v4, v0

    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->b:D

    .line 63
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->c:D

    sub-double v4, p1, v4

    mul-double v4, v4, v2

    add-double/2addr v4, v0

    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->c:D

    goto :goto_0

    .line 65
    :cond_2
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->b:D

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/StatsAccumulator;->a(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->b:D

    .line 66
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->c:D

    .line 68
    :goto_0
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->d:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->d:D

    .line 69
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->e:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->e:D

    return-void
.end method

.method public addAll(Lcom/google/common/math/Stats;)V
    .locals 16

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v14

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/common/math/Stats;->c:D

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/google/common/math/StatsAccumulator;->b(JDDDD)V

    return-void
.end method

.method public addAll(Lcom/google/common/math/StatsAccumulator;)V
    .locals 16

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v8

    move-object/from16 v0, p1

    .line 361
    iget-wide v10, v0, Lcom/google/common/math/StatsAccumulator;->c:D

    .line 152
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->min()D

    move-result-wide v12

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->max()D

    move-result-wide v14

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/google/common/math/StatsAccumulator;->b(JDDDD)V

    return-void
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 92
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs addAll([D)V
    .locals 4

    .line 103
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 104
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs addAll([I)V
    .locals 4

    .line 114
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    int-to-double v2, v2

    .line 115
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs addAll([J)V
    .locals 4

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    long-to-double v2, v2

    .line 127
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(JDDDD)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    .line 161
    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->a:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-nez v15, :cond_0

    .line 162
    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->a:J

    .line 163
    iput-wide v3, v0, Lcom/google/common/math/StatsAccumulator;->b:D

    .line 164
    iput-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->c:D

    .line 165
    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->d:D

    .line 166
    iput-wide v9, v0, Lcom/google/common/math/StatsAccumulator;->e:D

    return-void

    :cond_0
    add-long/2addr v11, v1

    .line 168
    iput-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->a:J

    .line 169
    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->b:D

    invoke-static {v11, v12}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v3, v4}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 171
    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->b:D

    sub-double v13, v3, v11

    long-to-double v1, v1

    mul-double v15, v13, v1

    move-wide/from16 p1, v1

    .line 172
    iget-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->a:J

    long-to-double v1, v1

    div-double/2addr v15, v1

    add-double v1, v15, v11

    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->b:D

    .line 173
    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->c:D

    sub-double v1, v3, v1

    mul-double v1, v1, v13

    mul-double v1, v1, p1

    add-double/2addr v1, v5

    add-double/2addr v1, v11

    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->c:D

    goto :goto_0

    .line 175
    :cond_1
    iget-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->b:D

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/math/StatsAccumulator;->a(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->b:D

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 176
    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->c:D

    .line 178
    :goto_0
    iget-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->d:D

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->d:D

    .line 179
    iget-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->e:D

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->e:D

    return-void
.end method

.method public count()J
    .locals 2

    .line 190
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    return-wide v0
.end method

.method public max()D
    .locals 5

    .line 356
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 357
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->e:D

    return-wide v0
.end method

.method public mean()D
    .locals 5

    .line 212
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 213
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->b:D

    return-wide v0
.end method

.method public min()D
    .locals 5

    .line 338
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 339
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->d:D

    return-wide v0
.end method

.method public final populationStandardDeviation()D
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->populationVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final populationVariance()D
    .locals 5

    .line 248
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 249
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 252
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    .line 255
    :cond_2
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->c:D

    invoke-static {v0, v1}, Lcom/google/common/math/a;->a(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final sampleStandardDeviation()D
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->sampleVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final sampleVariance()D
    .locals 6

    .line 295
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 296
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 299
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->c:D

    invoke-static {v0, v1}, Lcom/google/common/math/a;->a(D)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public snapshot()Lcom/google/common/math/Stats;
    .locals 11

    .line 185
    new-instance v0, Lcom/google/common/math/Stats;

    iget-wide v1, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    iget-wide v3, p0, Lcom/google/common/math/StatsAccumulator;->b:D

    iget-wide v5, p0, Lcom/google/common/math/StatsAccumulator;->c:D

    iget-wide v7, p0, Lcom/google/common/math/StatsAccumulator;->d:D

    iget-wide v9, p0, Lcom/google/common/math/StatsAccumulator;->e:D

    invoke-direct/range {v0 .. v10}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    return-object v0
.end method

.method public final sum()D
    .locals 4

    .line 229
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->b:D

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->a:J

    long-to-double v2, v2

    mul-double v0, v0, v2

    return-wide v0
.end method
