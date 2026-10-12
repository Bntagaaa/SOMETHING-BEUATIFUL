.class abstract enum Lcom/google/common/hash/Hashing$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/l;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/Hashing$b;",
        ">;",
        "Lcom/google/common/hash/l<",
        "Ljava/util/zip/Checksum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/google/common/hash/Hashing$b$a;

.field public static final enum c:Lcom/google/common/hash/Hashing$b$b;


# instance fields
.field public final a:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 391
    new-instance v0, Lcom/google/common/hash/Hashing$b$a;

    const/4 v1, 0x0

    .line 390
    const-string v2, "Hashing.crc32()"

    const-string v3, "CRC_32"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/hash/Hashing$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 391
    sput-object v0, Lcom/google/common/hash/Hashing$b;->b:Lcom/google/common/hash/Hashing$b$a;

    .line 397
    new-instance v0, Lcom/google/common/hash/Hashing$b$b;

    const/4 v1, 0x1

    .line 390
    const-string v2, "Hashing.adler32()"

    const-string v3, "ADLER_32"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/hash/Hashing$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 397
    sput-object v0, Lcom/google/common/hash/Hashing$b;->c:Lcom/google/common/hash/Hashing$b$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 406
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 407
    new-instance p1, Lcom/google/common/hash/i;

    invoke-direct {p1, p0, p3}, Lcom/google/common/hash/i;-><init>(Lcom/google/common/hash/Hashing$b;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/common/hash/Hashing$b;->a:Lcom/google/common/hash/HashFunction;

    return-void
.end method
