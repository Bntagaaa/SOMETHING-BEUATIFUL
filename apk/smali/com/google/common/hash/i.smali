.class final Lcom/google/common/hash/i;
.super Lcom/google/common/hash/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/i$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/hash/l;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/common/hash/Hashing$b;Ljava/lang/String;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/google/common/hash/d;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/l;

    iput-object p1, p0, Lcom/google/common/hash/i;->a:Lcom/google/common/hash/l;

    const/4 p1, 0x1

    .line 38
    const-string v0, "bits (%s) must be either 32 or 64"

    const/16 v1, 0x20

    invoke-static {p1, v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 39
    iput v1, p0, Lcom/google/common/hash/i;->b:I

    .line 40
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/hash/i;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/google/common/hash/i;->b:I

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 2

    .line 50
    new-instance v0, Lcom/google/common/hash/i$b;

    iget-object v1, p0, Lcom/google/common/hash/i;->a:Lcom/google/common/hash/l;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/Checksum;

    invoke-direct {v0, p0, v1}, Lcom/google/common/hash/i$b;-><init>(Lcom/google/common/hash/i;Ljava/util/zip/Checksum;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/common/hash/i;->c:Ljava/lang/String;

    return-object v0
.end method
