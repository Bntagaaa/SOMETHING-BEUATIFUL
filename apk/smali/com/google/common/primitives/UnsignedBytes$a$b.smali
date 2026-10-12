.class final enum Lcom/google/common/primitives/UnsignedBytes$a$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedBytes$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/primitives/UnsignedBytes$a$b;",
        ">;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:Lsun/misc/Unsafe;

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 297
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/common/primitives/UnsignedBytes$a$b;->a:Z

    .line 315
    invoke-static {}, Lcom/google/common/primitives/UnsignedBytes$a$b;->a()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$a$b;->b:Lsun/misc/Unsafe;

    .line 318
    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lcom/google/common/primitives/UnsignedBytes$a$b;->c:I

    .line 323
    const-string v3, "sun.arch.data.model"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "64"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    rem-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 326
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public static a()Lsun/misc/Unsafe;
    .locals 3

    .line 339
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 344
    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/common/primitives/c;

    invoke-direct {v0}, Lcom/google/common/primitives/c;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 360
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 293
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/UnsignedBytes$a$b;->compare([B[B)I

    move-result p1

    return p1
.end method

.method public compare([B[B)I
    .locals 11

    .line 367
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    and-int/lit8 v1, v0, -0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 376
    sget-object v3, Lcom/google/common/primitives/UnsignedBytes$a$b;->b:Lsun/misc/Unsafe;

    sget v4, Lcom/google/common/primitives/UnsignedBytes$a$b;->c:I

    int-to-long v5, v4

    int-to-long v7, v2

    add-long/2addr v5, v7

    invoke-virtual {v3, p1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    int-to-long v9, v4

    add-long/2addr v9, v7

    .line 377
    invoke-virtual {v3, p2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    .line 379
    sget-boolean p1, Lcom/google/common/primitives/UnsignedBytes$a$b;->a:Z

    if-eqz p1, :cond_0

    .line 380
    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result p1

    return p1

    :cond_0
    xor-long p1, v5, v3

    .line 390
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    and-int/lit8 p1, p1, -0x8

    ushr-long v0, v5, p1

    const-wide/16 v5, 0xff

    and-long/2addr v0, v5

    long-to-int p2, v0

    ushr-long v0, v3, p1

    and-long/2addr v0, v5

    long-to-int p1, v0

    sub-int/2addr p2, p1

    return p2

    :cond_1
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v0, :cond_4

    .line 397
    aget-byte v1, p1, v2

    aget-byte v3, p2, v2

    invoke-static {v1, v3}, Lcom/google/common/primitives/UnsignedBytes;->compare(BB)I

    move-result v1

    if-eqz v1, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 402
    :cond_4
    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 407
    const-string v0, "UnsignedBytes.lexicographicalComparator() (sun.misc.Unsafe version)"

    return-object v0
.end method
