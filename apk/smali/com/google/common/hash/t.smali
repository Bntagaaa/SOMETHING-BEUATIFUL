.class final Lcom/google/common/hash/t;
.super Lcom/google/common/hash/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/t$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/google/common/hash/HashFunction;

.field public static final c:Lcom/google/common/hash/HashFunction;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/google/common/hash/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/t;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/t;->b:Lcom/google/common/hash/HashFunction;

    .line 47
    new-instance v0, Lcom/google/common/hash/t;

    sget v1, Lcom/google/common/hash/Hashing;->a:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/t;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/t;->c:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/common/hash/d;-><init>()V

    .line 54
    iput p1, p0, Lcom/google/common/hash/t;->a:I

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    instance-of v0, p1, Lcom/google/common/hash/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/google/common/hash/t;

    .line 76
    iget v0, p0, Lcom/google/common/hash/t;->a:I

    iget p1, p1, Lcom/google/common/hash/t;->a:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 83
    const-class v0, Lcom/google/common/hash/t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/t;->a:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 3

    .line 64
    new-instance v0, Lcom/google/common/hash/t$a;

    iget v1, p0, Lcom/google/common/hash/t;->a:I

    const/16 v2, 0x10

    .line 95
    invoke-direct {v0, v2}, Lcom/google/common/hash/g;-><init>(I)V

    int-to-long v1, v1

    .line 96
    iput-wide v1, v0, Lcom/google/common/hash/t$a;->d:J

    .line 97
    iput-wide v1, v0, Lcom/google/common/hash/t$a;->e:J

    const/4 v1, 0x0

    .line 98
    iput v1, v0, Lcom/google/common/hash/t$a;->f:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hashing.murmur3_128("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/common/hash/t;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
