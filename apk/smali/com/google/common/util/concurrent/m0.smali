.class abstract Lcom/google/common/util/concurrent/m0;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/m0$b;,
        Lcom/google/common/util/concurrent/m0$c;
    }
.end annotation


# instance fields
.field public c:D

.field public d:D

.field public e:D

.field public f:J


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$a;)V
    .locals 2

    .line 330
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$a;)V

    const-wide/16 v0, 0x0

    .line 327
    iput-wide v0, p0, Lcom/google/common/util/concurrent/m0;->f:J

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 4

    .line 345
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/m0;->e:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final b(JD)V
    .locals 2

    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/m0;->h(J)V

    .line 336
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    long-to-double p1, p1

    div-double/2addr p1, p3

    .line 337
    iput-wide p1, p0, Lcom/google/common/util/concurrent/m0;->e:D

    .line 338
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/google/common/util/concurrent/m0;->g(DD)V

    return-void
.end method

.method public final d()J
    .locals 2

    .line 350
    iget-wide v0, p0, Lcom/google/common/util/concurrent/m0;->f:J

    return-wide v0
.end method

.method public final e(IJ)J
    .locals 8

    .line 355
    invoke-virtual {p0, p2, p3}, Lcom/google/common/util/concurrent/m0;->h(J)V

    .line 356
    iget-wide p2, p0, Lcom/google/common/util/concurrent/m0;->f:J

    int-to-double v0, p1

    .line 357
    iget-wide v2, p0, Lcom/google/common/util/concurrent/m0;->c:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 359
    iget-wide v4, p0, Lcom/google/common/util/concurrent/m0;->c:D

    .line 360
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/google/common/util/concurrent/m0;->i(DD)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/common/util/concurrent/m0;->e:D

    mul-double v0, v0, v6

    double-to-long v0, v0

    add-long/2addr v4, v0

    .line 363
    iget-wide v0, p0, Lcom/google/common/util/concurrent/m0;->f:J

    invoke-static {v0, v1, v4, v5}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/m0;->f:J

    .line 364
    iget-wide v0, p0, Lcom/google/common/util/concurrent/m0;->c:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/util/concurrent/m0;->c:D

    return-wide p2
.end method

.method public abstract f()D
.end method

.method public abstract g(DD)V
.end method

.method public final h(J)V
    .locals 6

    .line 385
    iget-wide v0, p0, Lcom/google/common/util/concurrent/m0;->f:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    sub-long v0, p1, v0

    long-to-double v0, v0

    .line 386
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m0;->f()D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 387
    iget-wide v2, p0, Lcom/google/common/util/concurrent/m0;->d:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/m0;->c:D

    add-double/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/m0;->c:D

    .line 388
    iput-wide p1, p0, Lcom/google/common/util/concurrent/m0;->f:J

    :cond_0
    return-void
.end method

.method public abstract i(DD)J
.end method
