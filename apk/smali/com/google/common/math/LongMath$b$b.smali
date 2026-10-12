.class final enum Lcom/google/common/math/LongMath$b$b;
.super Lcom/google/common/math/LongMath$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1066
    const-string v0, "LARGE"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(JJ)J
    .locals 2

    const/16 v0, 0x20

    .line 1096
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    shl-long/2addr p0, v1

    .line 1099
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide p0

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    return-wide p0
.end method


# virtual methods
.method public final a(JJJ)J
    .locals 7

    const/16 v0, 0x20

    ushr-long v1, p1, v0

    ushr-long v3, p3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr p1, v5

    and-long/2addr p3, v5

    mul-long v5, v1, v3

    .line 1120
    invoke-static {v5, v6, p5, p6}, Lcom/google/common/math/LongMath$b$b;->c(JJ)J

    move-result-wide v5

    mul-long v1, v1, p3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-gez v0, :cond_0

    .line 1123
    invoke-static {v1, v2, p5, p6}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v1

    .line 1126
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    mul-long v3, v3, p1

    add-long/2addr v3, v1

    .line 1127
    invoke-static {v3, v4, p5, p6}, Lcom/google/common/math/LongMath$b$b;->c(JJ)J

    move-result-wide v0

    mul-long p1, p1, p3

    .line 1128
    invoke-static {p1, p2, p5, p6}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide p1

    sub-long p3, p5, p1

    cmp-long v2, v0, p3

    add-long/2addr v0, p1

    if-ltz v2, :cond_1

    sub-long/2addr v0, p5

    :cond_1
    return-wide v0
.end method

.method public final b(JJ)J
    .locals 7

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    mul-long v2, v0, v0

    .line 1143
    invoke-static {v2, v3, p3, p4}, Lcom/google/common/math/LongMath$b$b;->c(JJ)J

    move-result-wide v2

    mul-long v0, v0, p1

    const-wide/16 v4, 0x2

    mul-long v0, v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 1146
    invoke-static {v0, v1, p3, p4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v0

    :cond_0
    add-long/2addr v2, v0

    .line 1150
    invoke-static {v2, v3, p3, p4}, Lcom/google/common/math/LongMath$b$b;->c(JJ)J

    move-result-wide v0

    mul-long p1, p1, p1

    .line 1151
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide p1

    sub-long v2, p3, p1

    cmp-long v4, v0, v2

    add-long/2addr v0, p1

    if-ltz v4, :cond_1

    sub-long/2addr v0, p3

    :cond_1
    return-wide v0
.end method
