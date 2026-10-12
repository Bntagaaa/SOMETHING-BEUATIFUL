.class final Lcom/google/common/hash/j;
.super Lcom/google/common/hash/d;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/j$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/common/hash/j;

    invoke-direct {v0}, Lcom/google/common/hash/j;-><init>()V

    sput-object v0, Lcom/google/common/hash/j;->a:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/common/hash/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 1

    .line 36
    new-instance v0, Lcom/google/common/hash/j$a;

    invoke-direct {v0}, Lcom/google/common/hash/j$a;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "Hashing.crc32c()"

    return-object v0
.end method
