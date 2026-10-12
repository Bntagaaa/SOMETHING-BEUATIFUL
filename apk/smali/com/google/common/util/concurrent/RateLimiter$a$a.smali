.class final Lcom/google/common/util/concurrent/RateLimiter$a$a;
.super Lcom/google/common/util/concurrent/RateLimiter$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/RateLimiter$a;->createFromSystemTimer()Lcom/google/common/util/concurrent/RateLimiter$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final a:Lcom/google/common/base/Stopwatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 413
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter$a;-><init>()V

    .line 414
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter$a$a;->a:Lcom/google/common/base/Stopwatch;

    return-void
.end method


# virtual methods
.method public readMicros()J
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter$a$a;->a:Lcom/google/common/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sleepMicrosUninterruptibly(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 424
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method
