.class abstract Lcom/google/common/util/concurrent/RateLimiter$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromSystemTimer()Lcom/google/common/util/concurrent/RateLimiter$a;
    .locals 1

    .line 413
    new-instance v0, Lcom/google/common/util/concurrent/RateLimiter$a$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/RateLimiter$a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract readMicros()J
.end method

.method public abstract sleepMicrosUninterruptibly(J)V
.end method
