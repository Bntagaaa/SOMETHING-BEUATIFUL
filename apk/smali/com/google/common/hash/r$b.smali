.class final Lcom/google/common/hash/r$b;
.super Lcom/google/common/hash/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljavax/crypto/Mac;

.field public c:Z


# direct methods
.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/google/common/hash/a;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/google/common/hash/r$b;->b:Ljavax/crypto/Mac;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lcom/google/common/hash/r$b;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method public hash()Lcom/google/common/hash/HashCode;
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/google/common/hash/r$b;->b()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/google/common/hash/r$b;->c:Z

    .line 138
    iget-object v0, p0, Lcom/google/common/hash/r$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    sget-object v1, Lcom/google/common/hash/HashCode;->a:[C

    .line 249
    new-instance v1, Lcom/google/common/hash/HashCode$a;

    invoke-direct {v1, v0}, Lcom/google/common/hash/HashCode$a;-><init>([B)V

    return-object v1
.end method

.method public update(B)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/google/common/hash/r$b;->b()V

    .line 108
    iget-object v0, p0, Lcom/google/common/hash/r$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    return-void
.end method

.method public update(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/google/common/hash/r$b;->b()V

    .line 126
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/google/common/hash/r$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public update([B)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/google/common/hash/r$b;->b()V

    .line 114
    iget-object v0, p0, Lcom/google/common/hash/r$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/google/common/hash/r$b;->b()V

    .line 120
    iget-object v0, p0, Lcom/google/common/hash/r$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
