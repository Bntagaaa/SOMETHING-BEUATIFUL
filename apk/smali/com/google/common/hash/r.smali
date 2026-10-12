.class final Lcom/google/common/hash/r;
.super Lcom/google/common/hash/d;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/r$b;
    }
.end annotation


# instance fields
.field public final a:Ljavax/crypto/Mac;

.field public final b:Ljava/security/Key;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/common/hash/d;-><init>()V

    .line 69
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    .line 70
    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    iput-object p1, p0, Lcom/google/common/hash/r;->a:Ljavax/crypto/Mac;

    .line 47
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/Key;

    iput-object p2, p0, Lcom/google/common/hash/r;->b:Ljava/security/Key;

    .line 48
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/common/hash/r;->c:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p2

    mul-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/google/common/hash/r;->d:I

    .line 60
    :try_start_1
    invoke-virtual {p1}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 50
    :goto_0
    iput-boolean p1, p0, Lcom/google/common/hash/r;->e:Z

    return-void

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    .line 75
    :goto_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 73
    :goto_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/common/hash/r;->d:I

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 3

    .line 81
    iget-boolean v0, p0, Lcom/google/common/hash/r;->e:Z

    iget-object v1, p0, Lcom/google/common/hash/r;->a:Ljavax/crypto/Mac;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    new-instance v0, Lcom/google/common/hash/r$b;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Mac;

    invoke-direct {v0, v2}, Lcom/google/common/hash/r$b;-><init>(Ljavax/crypto/Mac;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    :cond_0
    new-instance v0, Lcom/google/common/hash/r$b;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/hash/r;->b:Ljava/security/Key;

    .line 69
    :try_start_1
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    invoke-direct {v0, v1}, Lcom/google/common/hash/r$b;-><init>(Ljavax/crypto/Mac;)V

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    .line 75
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/common/hash/r;->c:Ljava/lang/String;

    return-object v0
.end method
