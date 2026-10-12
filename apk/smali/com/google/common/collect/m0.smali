.class final Lcom/google/common/collect/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_2

    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    if-ne v0, p0, :cond_2

    const/16 v0, 0x100

    if-gt p0, v0, :cond_0

    .line 81
    new-array p0, p0, [B

    return-object p0

    :cond_0
    const/high16 v0, 0x10000

    if-gt p0, v0, :cond_1

    .line 83
    new-array p0, p0, [S

    return-object p0

    .line 85
    :cond_1
    new-array p0, p0, [I

    return-object p0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be power of 2 between 2^1 and 2^30: "

    .line 0
    invoke-static {p0, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(III)I
    .locals 1

    not-int v0, p2

    and-int/2addr p0, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static c(I)I
    .locals 1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    add-int/lit8 p0, p0, 0x1

    mul-int p0, p0, v0

    return p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 9

    .line 153
    invoke-static {p0}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    and-int v1, v0, p2

    .line 155
    invoke-static {v1, p3}, Lcom/google/common/collect/m0;->e(ILjava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    not-int v4, p2

    and-int/2addr v0, v4

    const/4 v5, -0x1

    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 163
    aget v6, p4, v2

    and-int v7, v6, v4

    if-ne v7, v0, :cond_3

    .line 164
    aget-object v7, p5, v2

    .line 165
    invoke-static {p0, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p6, :cond_1

    aget-object v7, p6, v2

    .line 166
    invoke-static {p1, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    and-int p0, v6, p2

    if-ne v5, v3, :cond_2

    .line 170
    invoke-static {p3, v1, p0}, Lcom/google/common/collect/m0;->f(Ljava/lang/Object;II)V

    return v2

    .line 173
    :cond_2
    aget p1, p4, v5

    invoke-static {p1, p0, p2}, Lcom/google/common/collect/m0;->b(III)I

    move-result p0

    aput p0, p4, v5

    return v2

    :cond_3
    and-int v5, v6, p2

    if-nez v5, :cond_4

    return v3

    :cond_4
    move v8, v5

    move v5, v2

    move v2, v8

    goto :goto_0
.end method

.method public static e(ILjava/lang/Object;)I
    .locals 1

    .line 100
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, [B

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 102
    :cond_0
    instance-of v0, p1, [S

    if-eqz v0, :cond_1

    .line 103
    check-cast p1, [S

    aget-short p0, p1, p0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0

    .line 105
    :cond_1
    check-cast p1, [I

    aget p0, p1, p0

    return p0
.end method

.method public static f(Ljava/lang/Object;II)V
    .locals 1

    .line 110
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 111
    check-cast p0, [B

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void

    .line 112
    :cond_0
    instance-of v0, p0, [S

    if-eqz v0, :cond_1

    .line 113
    check-cast p0, [S

    int-to-short p2, p2

    aput-short p2, p0, p1

    return-void

    .line 115
    :cond_1
    check-cast p0, [I

    aput p2, p0, p1

    return-void
.end method
