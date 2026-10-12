.class final Lcom/google/common/hash/f$a;
.super Lcom/google/common/hash/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/common/hash/f$b;

.field public final synthetic b:Lcom/google/common/hash/f;


# direct methods
.method public constructor <init>(Lcom/google/common/hash/f;I)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/common/hash/f$a;->b:Lcom/google/common/hash/f;

    invoke-direct {p0}, Lcom/google/common/hash/e;-><init>()V

    .line 83
    new-instance p1, Lcom/google/common/hash/f$b;

    .line 113
    invoke-direct {p1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 83
    iput-object p1, p0, Lcom/google/common/hash/f$a;->a:Lcom/google/common/hash/f$b;

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/google/common/hash/f$a;->a:Lcom/google/common/hash/f$b;

    invoke-virtual {v0}, Lcom/google/common/hash/f$b;->a()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/hash/f$b;->b()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/hash/f$a;->b:Lcom/google/common/hash/f;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/common/hash/f;->hashBytes([BII)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/common/hash/f$a;->a:Lcom/google/common/hash/f$b;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/common/hash/f$a;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/common/hash/f$a;->a:Lcom/google/common/hash/f$b;

    invoke-virtual {v0, p1}, Lcom/google/common/hash/f$b;->c(Ljava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/common/hash/f$a;->a:Lcom/google/common/hash/f$b;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/common/hash/f$a;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/f$a;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method
