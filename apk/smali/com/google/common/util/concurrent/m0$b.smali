.class final Lcom/google/common/util/concurrent/m0$b;
.super Lcom/google/common/util/concurrent/m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final g:D


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$a;)V
    .locals 2

    .line 281
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/m0;-><init>(Lcom/google/common/util/concurrent/RateLimiter$a;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 282
    iput-wide v0, p0, Lcom/google/common/util/concurrent/m0$b;->g:D

    return-void
.end method


# virtual methods
.method public final f()D
    .locals 2

    .line 307
    iget-wide v0, p0, Lcom/google/common/util/concurrent/m0;->e:D

    return-wide v0
.end method

.method public final g(DD)V
    .locals 3

    .line 287
    iget-wide p3, p0, Lcom/google/common/util/concurrent/m0;->d:D

    .line 288
    iget-wide v0, p0, Lcom/google/common/util/concurrent/m0$b;->g:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Lcom/google/common/util/concurrent/m0;->d:D

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p3, p1

    if-nez v2, :cond_0

    .line 291
    iput-wide v0, p0, Lcom/google/common/util/concurrent/m0;->c:D

    return-void

    :cond_0
    const-wide/16 p1, 0x0

    cmpl-double v2, p3, p1

    if-nez v2, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    iget-wide p1, p0, Lcom/google/common/util/concurrent/m0;->c:D

    mul-double p1, p1, v0

    div-double/2addr p1, p3

    :goto_0
    iput-wide p1, p0, Lcom/google/common/util/concurrent/m0;->c:D

    return-void
.end method

.method public final i(DD)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method
