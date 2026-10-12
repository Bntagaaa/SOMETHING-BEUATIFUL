.class abstract Lcom/google/common/hash/c;
.super Lcom/google/common/hash/d;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field public final a:[Lcom/google/common/hash/HashFunction;


# direct methods
.method public varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Lcom/google/common/hash/d;-><init>()V

    .line 38
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 39
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/google/common/hash/c;->a:[Lcom/google/common/hash/HashFunction;

    return-void
.end method


# virtual methods
.method public abstract a([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/google/common/hash/c;->a:[Lcom/google/common/hash/HashFunction;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/common/hash/Hasher;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 56
    aget-object v4, v0, v3

    invoke-interface {v4}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lcom/google/common/hash/b;

    invoke-direct {v0, p0, v2}, Lcom/google/common/hash/b;-><init>(Lcom/google/common/hash/c;[Lcom/google/common/hash/Hasher;)V

    return-object v0
.end method

.method public newHasher(I)Lcom/google/common/hash/Hasher;
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 63
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 64
    iget-object v1, p0, Lcom/google/common/hash/c;->a:[Lcom/google/common/hash/HashFunction;

    array-length v2, v1

    new-array v3, v2, [Lcom/google/common/hash/Hasher;

    :goto_1
    if-ge v0, v2, :cond_1

    .line 66
    aget-object v4, v1, v0

    invoke-interface {v4, p1}, Lcom/google/common/hash/HashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_1
    new-instance p1, Lcom/google/common/hash/b;

    invoke-direct {p1, p0, v3}, Lcom/google/common/hash/b;-><init>(Lcom/google/common/hash/c;[Lcom/google/common/hash/Hasher;)V

    return-object p1
.end method
