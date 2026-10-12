.class final Lcom/google/common/hash/v;
.super Lcom/google/common/hash/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/v$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/google/common/hash/HashFunction;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lcom/google/common/hash/v;

    const-wide v1, 0x706050403020100L

    const-wide v3, 0xf0e0d0c0b0a0908L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/hash/v;-><init>(JJ)V

    sput-object v0, Lcom/google/common/hash/v;->e:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 4

    .line 55
    invoke-direct {p0}, Lcom/google/common/hash/d;-><init>()V

    .line 56
    const-string v0, "The number of SipRound iterations (c=%s) during Compression must be positive."

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 58
    const-string v0, "The number of SipRound iterations (d=%s) during Finalization must be positive."

    const/4 v3, 0x4

    invoke-static {v1, v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 60
    iput v2, p0, Lcom/google/common/hash/v;->a:I

    .line 61
    iput v3, p0, Lcom/google/common/hash/v;->b:I

    .line 62
    iput-wide p1, p0, Lcom/google/common/hash/v;->c:J

    .line 63
    iput-wide p3, p0, Lcom/google/common/hash/v;->d:J

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 85
    instance-of v0, p1, Lcom/google/common/hash/v;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Lcom/google/common/hash/v;

    .line 87
    iget v0, p1, Lcom/google/common/hash/v;->a:I

    iget v1, p0, Lcom/google/common/hash/v;->a:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/google/common/hash/v;->b:I

    iget v1, p1, Lcom/google/common/hash/v;->b:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/common/hash/v;->c:J

    iget-wide v2, p1, Lcom/google/common/hash/v;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/google/common/hash/v;->d:J

    iget-wide v2, p1, Lcom/google/common/hash/v;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 94
    const-class v0, Lcom/google/common/hash/v;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/v;->a:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/hash/v;->b:I

    xor-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/hash/v;->c:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/v;->d:J

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 7

    .line 73
    new-instance v0, Lcom/google/common/hash/v$a;

    iget v1, p0, Lcom/google/common/hash/v;->a:I

    iget v2, p0, Lcom/google/common/hash/v;->b:I

    iget-wide v3, p0, Lcom/google/common/hash/v;->c:J

    iget-wide v5, p0, Lcom/google/common/hash/v;->d:J

    invoke-direct/range {v0 .. v6}, Lcom/google/common/hash/v$a;-><init>(IIJJ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hashing.sipHash"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/common/hash/v;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/common/hash/v;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/common/hash/v;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/common/hash/v;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
