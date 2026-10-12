.class public final Lcom/google/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 84
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-wide/16 v15, 0x0

    cmp-long v17, v1, v15

    if-ltz v17, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    .line 85
    :goto_0
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v3, v15

    if-ltz v17, :cond_1

    const/16 v17, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    .line 86
    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v5, v15

    if-ltz v17, :cond_2

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    .line 87
    :goto_2
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v7, v15

    if-ltz v17, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    .line 88
    :goto_3
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v9, v15

    if-ltz v17, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    .line 89
    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v11, v15

    if-ltz v17, :cond_5

    const/4 v13, 0x1

    .line 90
    :cond_5
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    iput-wide v1, v0, Lcom/google/common/cache/CacheStats;->a:J

    .line 93
    iput-wide v3, v0, Lcom/google/common/cache/CacheStats;->b:J

    .line 94
    iput-wide v5, v0, Lcom/google/common/cache/CacheStats;->c:J

    .line 95
    iput-wide v7, v0, Lcom/google/common/cache/CacheStats;->d:J

    .line 96
    iput-wide v9, v0, Lcom/google/common/cache/CacheStats;->e:J

    .line 97
    iput-wide v11, v0, Lcom/google/common/cache/CacheStats;->f:J

    return-void
.end method


# virtual methods
.method public averageLoadPenalty()D
    .locals 5

    .line 225
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->c:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 226
    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->e:J

    long-to-double v2, v2

    long-to-double v0, v0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 280
    instance-of v0, p1, Lcom/google/common/cache/CacheStats;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    check-cast p1, Lcom/google/common/cache/CacheStats;

    .line 282
    iget-wide v2, p1, Lcom/google/common/cache/CacheStats;->a:J

    iget-wide v4, p0, Lcom/google/common/cache/CacheStats;->a:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->b:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->b:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->c:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->d:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->d:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->e:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->e:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->f:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->f:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public evictionCount()J
    .locals 2

    .line 234
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->f:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .line 274
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->a:J

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/common/cache/CacheStats;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/common/cache/CacheStats;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/common/cache/CacheStats;->f:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    .line 274
    invoke-static {v6}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hitCount()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->a:J

    return-wide v0
.end method

.method public hitRate()D
    .locals 5

    .line 123
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 124
    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->a:J

    long-to-double v2, v2

    long-to-double v0, v0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public loadCount()J
    .locals 4

    .line 161
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->c:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public loadExceptionCount()J
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->d:J

    return-wide v0
.end method

.method public loadExceptionRate()D
    .locals 7

    .line 202
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->c:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    long-to-double v2, v2

    long-to-double v0, v0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public loadSuccessCount()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->c:J

    return-wide v0
.end method

.method public minus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 243
    new-instance v2, Lcom/google/common/cache/CacheStats;

    iget-wide v3, v1, Lcom/google/common/cache/CacheStats;->a:J

    .line 244
    iget-wide v5, v0, Lcom/google/common/cache/CacheStats;->a:J

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/common/cache/CacheStats;->b:J

    iget-wide v9, v1, Lcom/google/common/cache/CacheStats;->b:J

    .line 245
    invoke-static {v7, v8, v9, v10}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/common/cache/CacheStats;->c:J

    iget-wide v11, v1, Lcom/google/common/cache/CacheStats;->c:J

    .line 246
    invoke-static {v9, v10, v11, v12}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/common/cache/CacheStats;->d:J

    iget-wide v13, v1, Lcom/google/common/cache/CacheStats;->d:J

    .line 247
    invoke-static {v11, v12, v13, v14}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v11

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iget-wide v13, v0, Lcom/google/common/cache/CacheStats;->e:J

    move-object v15, v2

    move-wide/from16 v16, v3

    iget-wide v2, v1, Lcom/google/common/cache/CacheStats;->e:J

    .line 248
    invoke-static {v13, v14, v2, v3}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v13, v0, Lcom/google/common/cache/CacheStats;->f:J

    iget-wide v0, v1, Lcom/google/common/cache/CacheStats;->f:J

    .line 249
    invoke-static {v13, v14, v0, v1}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v4, v7

    move-wide v6, v9

    move-wide v8, v11

    move-wide v12, v0

    move-wide v10, v2

    move-object v1, v15

    move-wide/from16 v2, v16

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v15
.end method

.method public missCount()J
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->b:J

    return-wide v0
.end method

.method public missRate()D
    .locals 5

    .line 147
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 148
    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->b:J

    long-to-double v2, v2

    long-to-double v0, v0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public plus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 263
    new-instance v2, Lcom/google/common/cache/CacheStats;

    iget-wide v3, v1, Lcom/google/common/cache/CacheStats;->a:J

    .line 264
    iget-wide v5, v0, Lcom/google/common/cache/CacheStats;->a:J

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/common/cache/CacheStats;->b:J

    iget-wide v7, v1, Lcom/google/common/cache/CacheStats;->b:J

    .line 265
    invoke-static {v5, v6, v7, v8}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/common/cache/CacheStats;->c:J

    iget-wide v9, v1, Lcom/google/common/cache/CacheStats;->c:J

    .line 266
    invoke-static {v7, v8, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/common/cache/CacheStats;->d:J

    iget-wide v11, v1, Lcom/google/common/cache/CacheStats;->d:J

    .line 267
    invoke-static {v9, v10, v11, v12}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/common/cache/CacheStats;->e:J

    iget-wide v13, v1, Lcom/google/common/cache/CacheStats;->e:J

    .line 268
    invoke-static {v11, v12, v13, v14}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v11

    iget-wide v13, v0, Lcom/google/common/cache/CacheStats;->f:J

    iget-wide v0, v1, Lcom/google/common/cache/CacheStats;->f:J

    .line 269
    invoke-static {v13, v14, v0, v1}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v0

    move-wide v15, v0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v9

    move-wide v10, v11

    move-wide v12, v15

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v1
.end method

.method public requestCount()J
    .locals 4

    .line 109
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->a:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 294
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "hitCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->a:J

    .line 295
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "missCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->b:J

    .line 296
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadSuccessCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->c:J

    .line 297
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadExceptionCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->d:J

    .line 298
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "totalLoadTime"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->e:J

    .line 299
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "evictionCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->f:J

    .line 300
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalLoadTime()J
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->e:J

    return-wide v0
.end method
