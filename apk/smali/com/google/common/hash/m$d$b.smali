.class final enum Lcom/google/common/hash/m$d$b;
.super Lcom/google/common/hash/m$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/m$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 126
    const-string v0, "UNSAFE_BIG_ENDIAN"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getLongLittleEndian([BI)J
    .locals 5

    .line 126
    sget-object v0, Lcom/google/common/hash/m$d;->c:Lsun/misc/Unsafe;

    int-to-long v1, p2

    .line 142
    sget p2, Lcom/google/common/hash/m$d;->d:I

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    .line 144
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    return-wide p1
.end method
