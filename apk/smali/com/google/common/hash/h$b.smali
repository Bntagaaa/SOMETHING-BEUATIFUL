.class final enum Lcom/google/common/hash/h$b;
.super Lcom/google/common/hash/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    const-string v0, "MURMUR128_MITZ_64"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a([B)J
    .locals 9

    const/4 v0, 0x7

    .line 132
    aget-byte v1, p0, v0

    const/4 v0, 0x6

    aget-byte v2, p0, v0

    const/4 v0, 0x5

    aget-byte v3, p0, v0

    const/4 v0, 0x4

    aget-byte v4, p0, v0

    const/4 v0, 0x3

    aget-byte v5, p0, v0

    const/4 v0, 0x2

    aget-byte v6, p0, v0

    const/4 v0, 0x1

    aget-byte v7, p0, v0

    const/4 v0, 0x0

    aget-byte v8, p0, v0

    invoke-static/range {v1 .. v8}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b([B)J
    .locals 9

    const/16 v0, 0xf

    .line 137
    aget-byte v1, p0, v0

    const/16 v0, 0xe

    aget-byte v2, p0, v0

    const/16 v0, 0xd

    aget-byte v3, p0, v0

    const/16 v0, 0xc

    aget-byte v4, p0, v0

    const/16 v0, 0xb

    aget-byte v5, p0, v0

    const/16 v0, 0xa

    aget-byte v6, p0, v0

    const/16 v0, 0x9

    aget-byte v7, p0, v0

    const/16 v0, 0x8

    aget-byte v8, p0, v0

    invoke-static/range {v1 .. v8}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/h$c;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lcom/google/common/hash/h$c;",
            ")Z"
        }
    .end annotation

    .line 115
    invoke-virtual {p4}, Lcom/google/common/hash/h$c;->a()J

    move-result-wide v0

    .line 116
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->c()[B

    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/google/common/hash/h$b;->a([B)J

    move-result-wide v2

    .line 118
    invoke-static {p1}, Lcom/google/common/hash/h$b;->b([B)J

    move-result-wide p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p3, :cond_1

    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v6, v2

    .line 123
    rem-long/2addr v6, v0

    invoke-virtual {p4, v6, v7}, Lcom/google/common/hash/h$c;->b(J)Z

    move-result v6

    if-nez v6, :cond_0

    return v4

    :cond_0
    add-long/2addr v2, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/h$c;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lcom/google/common/hash/h$c;",
            ")Z"
        }
    .end annotation

    .line 97
    invoke-virtual {p4}, Lcom/google/common/hash/h$c;->a()J

    move-result-wide v0

    .line 98
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->c()[B

    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/google/common/hash/h$b;->a([B)J

    move-result-wide v2

    .line 100
    invoke-static {p1}, Lcom/google/common/hash/h$b;->b([B)J

    move-result-wide p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, p3, :cond_0

    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v6, v2

    .line 106
    rem-long/2addr v6, v0

    invoke-virtual {p4, v6, v7}, Lcom/google/common/hash/h$c;->c(J)Z

    move-result v6

    or-int/2addr v5, v6

    add-long/2addr v2, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return v5
.end method
