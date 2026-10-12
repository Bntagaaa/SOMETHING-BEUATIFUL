.class public final Landroidx/core/location/LocationRequestCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/LocationRequestCompat$b;,
        Landroidx/core/location/LocationRequestCompat$a;,
        Landroidx/core/location/LocationRequestCompat$Builder;,
        Landroidx/core/location/LocationRequestCompat$Quality;
    }
.end annotation


# static fields
.field public static final PASSIVE_INTERVAL:J = 0x7fffffffffffffffL

.field public static final QUALITY_BALANCED_POWER_ACCURACY:I = 0x66

.field public static final QUALITY_HIGH_ACCURACY:I = 0x64

.field public static final QUALITY_LOW_POWER:I = 0x68


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:F

.field public final g:J


# direct methods
.method public constructor <init>(JIJIJFJ)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat;->b:J

    .line 110
    iput p3, p0, Landroidx/core/location/LocationRequestCompat;->a:I

    .line 111
    iput-wide p7, p0, Landroidx/core/location/LocationRequestCompat;->c:J

    .line 112
    iput-wide p4, p0, Landroidx/core/location/LocationRequestCompat;->d:J

    .line 113
    iput p6, p0, Landroidx/core/location/LocationRequestCompat;->e:I

    .line 114
    iput p9, p0, Landroidx/core/location/LocationRequestCompat;->f:F

    .line 115
    iput-wide p10, p0, Landroidx/core/location/LocationRequestCompat;->g:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 248
    :cond_0
    instance-of v1, p1, Landroidx/core/location/LocationRequestCompat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 252
    :cond_1
    check-cast p1, Landroidx/core/location/LocationRequestCompat;

    .line 253
    iget v1, p1, Landroidx/core/location/LocationRequestCompat;->a:I

    iget v3, p0, Landroidx/core/location/LocationRequestCompat;->a:I

    if-ne v3, v1, :cond_2

    iget-wide v3, p0, Landroidx/core/location/LocationRequestCompat;->b:J

    iget-wide v5, p1, Landroidx/core/location/LocationRequestCompat;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/core/location/LocationRequestCompat;->c:J

    iget-wide v5, p1, Landroidx/core/location/LocationRequestCompat;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/core/location/LocationRequestCompat;->d:J

    iget-wide v5, p1, Landroidx/core/location/LocationRequestCompat;->d:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/core/location/LocationRequestCompat;->e:I

    iget v3, p1, Landroidx/core/location/LocationRequestCompat;->e:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Landroidx/core/location/LocationRequestCompat;->f:F

    iget v3, p0, Landroidx/core/location/LocationRequestCompat;->f:F

    .line 256
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/core/location/LocationRequestCompat;->g:J

    iget-wide v5, p1, Landroidx/core/location/LocationRequestCompat;->g:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getDurationMillis()J
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation

    .line 167
    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->d:J

    return-wide v0
.end method

.method public getIntervalMillis()J
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 138
    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->b:J

    return-wide v0
.end method

.method public getMaxUpdateDelayMillis()J
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 206
    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->g:J

    return-wide v0
.end method

.method public getMaxUpdates()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
        to = 0x7fffffffL
    .end annotation

    .line 176
    iget v0, p0, Landroidx/core/location/LocationRequestCompat;->e:I

    return v0
.end method

.method public getMinUpdateDistanceMeters()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 3.4028234663852886E38
    .end annotation

    .line 188
    iget v0, p0, Landroidx/core/location/LocationRequestCompat;->f:F

    return v0
.end method

.method public getMinUpdateIntervalMillis()J
    .locals 5
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    const-wide/16 v0, -0x1

    .line 153
    iget-wide v2, p0, Landroidx/core/location/LocationRequestCompat;->c:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 154
    iget-wide v0, p0, Landroidx/core/location/LocationRequestCompat;->b:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public getQuality()I
    .locals 1

    .line 124
    iget v0, p0, Landroidx/core/location/LocationRequestCompat;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 263
    iget v0, p0, Landroidx/core/location/LocationRequestCompat;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->b:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 264
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->c:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toLocationRequest()Landroid/location/LocationRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    .line 218
    invoke-static {p0}, Landroidx/core/location/LocationRequestCompat$b;->toLocationRequest(Landroidx/core/location/LocationRequestCompat;)Landroid/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 236
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest()Landroid/location/LocationRequest;

    move-result-object p1

    return-object p1

    .line 239
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/location/LocationRequestCompat$a;->toLocationRequest(Landroidx/core/location/LocationRequestCompat;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/g;->d(Ljava/lang/Object;)Landroid/location/LocationRequest;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 272
    const-string v0, "Request["

    .line 0
    invoke-static {v0}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    iget-wide v1, p0, Landroidx/core/location/LocationRequestCompat;->b:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 274
    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {v1, v2, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const/16 v5, 0x64

    .line 277
    iget v6, p0, Landroidx/core/location/LocationRequestCompat;->a:I

    if-eq v6, v5, :cond_2

    const/16 v5, 0x66

    if-eq v6, v5, :cond_1

    const/16 v5, 0x68

    if-eq v6, v5, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    const-string v5, " LOW_POWER"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 282
    :cond_1
    const-string v5, " BALANCED"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 279
    :cond_2
    const-string v5, " HIGH_ACCURACY"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 289
    :cond_3
    const-string v5, "PASSIVE"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :goto_0
    iget-wide v5, p0, Landroidx/core/location/LocationRequestCompat;->d:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_4

    .line 292
    const-string v3, ", duration="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-static {v5, v6, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_4
    const v3, 0x7fffffff

    .line 295
    iget v4, p0, Landroidx/core/location/LocationRequestCompat;->e:I

    if-eq v4, v3, :cond_5

    .line 296
    const-string v3, ", maxUpdates="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    const-wide/16 v3, -0x1

    .line 298
    iget-wide v5, p0, Landroidx/core/location/LocationRequestCompat;->c:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_6

    cmp-long v3, v5, v1

    if-gez v3, :cond_6

    .line 300
    const-string v3, ", minUpdateInterval="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-static {v5, v6, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 303
    :cond_6
    iget v3, p0, Landroidx/core/location/LocationRequestCompat;->f:F

    float-to-double v4, v3

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_7

    .line 304
    const-string v4, ", minUpdateDistance="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_7
    const-wide/16 v3, 0x2

    .line 306
    iget-wide v5, p0, Landroidx/core/location/LocationRequestCompat;->g:J

    div-long v3, v5, v3

    cmp-long v7, v3, v1

    if-lez v7, :cond_8

    .line 307
    const-string v1, ", maxUpdateDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {v5, v6, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_8
    const/16 v1, 0x5d

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
