.class final Lcom/google/common/hash/i$b;
.super Lcom/google/common/hash/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/util/zip/Checksum;

.field public final synthetic c:Lcom/google/common/hash/i;


# direct methods
.method public constructor <init>(Lcom/google/common/hash/i;Ljava/util/zip/Checksum;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/common/hash/i$b;->c:Lcom/google/common/hash/i;

    invoke-direct {p0}, Lcom/google/common/hash/a;-><init>()V

    .line 63
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/zip/Checksum;

    iput-object p1, p0, Lcom/google/common/hash/i$b;->b:Ljava/util/zip/Checksum;

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/google/common/hash/i$b;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/google/common/hash/i$b;->c:Lcom/google/common/hash/i;

    const/16 v3, 0x20

    .line 79
    iget v2, v2, Lcom/google/common/hash/i;->b:I

    if-ne v2, v3, :cond_0

    long-to-int v1, v0

    .line 85
    invoke-static {v1}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public update(B)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/common/hash/i$b;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/common/hash/i$b;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    return-void
.end method
