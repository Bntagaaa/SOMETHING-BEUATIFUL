.class final Lcom/google/common/hash/s$b;
.super Lcom/google/common/hash/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:I

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/google/common/hash/a;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/google/common/hash/s$b;->b:Ljava/security/MessageDigest;

    .line 130
    iput p2, p0, Lcom/google/common/hash/s$b;->c:I

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 3

    .line 152
    iget-boolean v0, p0, Lcom/google/common/hash/s$b;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 158
    iput-boolean v1, p0, Lcom/google/common/hash/s$b;->d:Z

    .line 159
    iget-object v0, p0, Lcom/google/common/hash/s$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    iget v2, p0, Lcom/google/common/hash/s$b;->c:I

    if-ne v2, v1, :cond_0

    .line 160
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    sget-object v1, Lcom/google/common/hash/HashCode;->a:[C

    .line 249
    new-instance v1, Lcom/google/common/hash/HashCode$a;

    invoke-direct {v1, v0}, Lcom/google/common/hash/HashCode$a;-><init>([B)V

    return-object v1

    .line 161
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    sget-object v1, Lcom/google/common/hash/HashCode;->a:[C

    .line 249
    new-instance v1, Lcom/google/common/hash/HashCode$a;

    invoke-direct {v1, v0}, Lcom/google/common/hash/HashCode$a;-><init>([B)V

    return-object v1
.end method

.method public update(B)V
    .locals 2

    .line 152
    iget-boolean v0, p0, Lcom/google/common/hash/s$b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/google/common/hash/s$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public update(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 152
    iget-boolean v0, p0, Lcom/google/common/hash/s$b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/google/common/hash/s$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    .line 152
    iget-boolean v0, p0, Lcom/google/common/hash/s$b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/google/common/hash/s$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
