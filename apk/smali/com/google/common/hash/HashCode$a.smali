.class final Lcom/google/common/hash/HashCode$a;
.super Lcom/google/common/hash/HashCode;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    .line 256
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public asInt()I
    .locals 6

    .line 271
    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    array-length v5, v0

    invoke-static {v1, v2, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 275
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public asLong()J
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    array-length v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes)."

    array-length v0, v0

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 287
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode$a;->padToLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Lcom/google/common/hash/HashCode;)Z
    .locals 7

    .line 313
    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    array-length v1, v0

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->c()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 318
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 319
    aget-byte v5, v0, v2

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->c()[B

    move-result-object v6

    aget-byte v6, v6, v2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    and-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public bits()I
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final c()[B
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    return-object v0
.end method

.method public final d([BII)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public padToLong()J
    .locals 8

    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    const/4 v0, 0x1

    .line 293
    :goto_0
    array-length v4, v1

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 294
    aget-byte v4, v1, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method
