.class public final Lkotlin/uuid/Uuid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/uuid/Uuid$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0007\u0018\u0000  2\u00060\u0001j\u0002`\u0002:\u0001 B\u0019\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\r\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0096\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R \u0010\u0004\u001a\u00020\u00038\u0000X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u0012\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001aR \u0010\u0005\u001a\u00020\u00038\u0000X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0018\u0012\u0004\u0008\u001f\u0010\u001c\u001a\u0004\u0008\u001e\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lkotlin/uuid/Uuid;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "",
        "mostSignificantBits",
        "leastSignificantBits",
        "<init>",
        "(JJ)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "toHexString",
        "",
        "toByteArray",
        "()[B",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "a",
        "J",
        "getMostSignificantBits",
        "()J",
        "getMostSignificantBits$annotations",
        "()V",
        "b",
        "getLeastSignificantBits",
        "getLeastSignificantBits$annotations",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "2.0"
.end annotation

.annotation build Lkotlin/uuid/ExperimentalUuidApi;
.end annotation


# static fields
.field public static final Companion:Lkotlin/uuid/Uuid$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SIZE_BITS:I = 0x80

.field public static final SIZE_BYTES:I = 0x10

.field public static final c:Lkotlin/uuid/Uuid;

.field public static final d:Landroidx/core/provider/e;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/uuid/Uuid$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/uuid/Uuid$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/uuid/Uuid;->Companion:Lkotlin/uuid/Uuid$Companion;

    .line 212
    new-instance v0, Lkotlin/uuid/Uuid;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    sput-object v0, Lkotlin/uuid/Uuid;->c:Lkotlin/uuid/Uuid;

    .line 394
    new-instance v0, Landroidx/core/provider/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/core/provider/e;-><init>(I)V

    sput-object v0, Lkotlin/uuid/Uuid;->d:Landroidx/core/provider/e;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lkotlin/uuid/Uuid;->a:J

    .line 42
    iput-wide p3, p0, Lkotlin/uuid/Uuid;->b:J

    return-void
.end method

.method public static final synthetic access$getLEXICAL_ORDER$cp()Ljava/util/Comparator;
    .locals 1

    .line 38
    sget-object v0, Lkotlin/uuid/Uuid;->d:Landroidx/core/provider/e;

    return-object v0
.end method

.method public static final synthetic access$getNIL$cp()Lkotlin/uuid/Uuid;
    .locals 1

    .line 38
    sget-object v0, Lkotlin/uuid/Uuid;->c:Lkotlin/uuid/Uuid;

    return-object v0
.end method

.method public static synthetic getLeastSignificantBits$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static synthetic getMostSignificantBits$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 193
    :cond_0
    instance-of v1, p1, Lkotlin/uuid/Uuid;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 194
    :cond_1
    check-cast p1, Lkotlin/uuid/Uuid;

    iget-wide v3, p1, Lkotlin/uuid/Uuid;->a:J

    iget-wide v5, p0, Lkotlin/uuid/Uuid;->a:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    .line 195
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->b:J

    iget-wide v5, p1, Lkotlin/uuid/Uuid;->b:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getLeastSignificantBits()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->b:J

    return-wide v0
.end method

.method public final getMostSignificantBits()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 199
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->a:J

    iget-wide v2, p0, Lkotlin/uuid/Uuid;->b:J

    xor-long/2addr v0, v2

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v3, v2

    long-to-int v1, v0

    xor-int v0, v3, v1

    return v0
.end method

.method public final toByteArray()[B
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x10

    .line 176
    new-array v0, v0, [B

    .line 177
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->a:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lkotlin/uuid/c;->access$toByteArray(J[BI)V

    .line 178
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->b:J

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lkotlin/uuid/c;->access$toByteArray(J[BI)V

    return-object v0
.end method

.method public final toHexString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x20

    .line 159
    new-array v0, v0, [B

    .line 160
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->b:J

    const/16 v3, 0x10

    const/16 v4, 0x8

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/c;->access$formatBytesInto(J[BII)V

    .line 161
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->a:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/c;->access$formatBytesInto(J[BII)V

    .line 162
    invoke-static {v0}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x24

    .line 130
    new-array v0, v0, [B

    .line 131
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->b:J

    const/16 v3, 0x18

    const/4 v4, 0x6

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/c;->access$formatBytesInto(J[BII)V

    const/16 v3, 0x17

    const/16 v4, 0x2d

    .line 132
    aput-byte v4, v0, v3

    const/16 v3, 0x30

    ushr-long/2addr v1, v3

    const/16 v3, 0x13

    const/4 v5, 0x2

    .line 133
    invoke-static {v1, v2, v0, v3, v5}, Lkotlin/uuid/c;->access$formatBytesInto(J[BII)V

    const/16 v1, 0x12

    .line 134
    aput-byte v4, v0, v1

    .line 135
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->a:J

    const/16 v3, 0xe

    invoke-static {v1, v2, v0, v3, v5}, Lkotlin/uuid/c;->access$formatBytesInto(J[BII)V

    const/16 v3, 0xd

    .line 136
    aput-byte v4, v0, v3

    const/16 v3, 0x10

    ushr-long v6, v1, v3

    const/16 v3, 0x9

    .line 137
    invoke-static {v6, v7, v0, v3, v5}, Lkotlin/uuid/c;->access$formatBytesInto(J[BII)V

    const/16 v3, 0x8

    .line 138
    aput-byte v4, v0, v3

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 139
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/c;->access$formatBytesInto(J[BII)V

    .line 140
    invoke-static {v0}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
