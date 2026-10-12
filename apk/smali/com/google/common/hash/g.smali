.class abstract Lcom/google/common/hash/g;
.super Lcom/google/common/hash/e;
.source "SourceFile"


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p1}, Lcom/google/common/hash/g;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/google/common/hash/e;-><init>()V

    .line 64
    rem-int v0, p2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    add-int/lit8 v0, p2, 0x7

    .line 68
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/g;->a:Ljava/nio/ByteBuffer;

    .line 69
    iput p2, p0, Lcom/google/common/hash/g;->b:I

    .line 70
    iput p1, p0, Lcom/google/common/hash/g;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/google/common/hash/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 207
    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, p0, Lcom/google/common/hash/g;->c:I

    if-lt v1, v2, :cond_0

    .line 210
    invoke-virtual {p0, v0}, Lcom/google/common/hash/g;->process(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/google/common/hash/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/google/common/hash/g;->a()V

    :cond_0
    return-void
.end method

.method public final c(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 111
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/hash/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 112
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {p0}, Lcom/google/common/hash/g;->b()V

    return-void

    .line 118
    :cond_0
    iget v0, p0, Lcom/google/common/hash/g;->b:I

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/hash/g;->a()V

    .line 125
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v2, p0, Lcom/google/common/hash/g;->c:I

    if-lt v0, v2, :cond_2

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/common/hash/g;->process(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final hash()Lcom/google/common/hash/HashCode;
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/google/common/hash/g;->a()V

    .line 182
    iget-object v0, p0, Lcom/google/common/hash/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 183
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 184
    invoke-virtual {p0, v0}, Lcom/google/common/hash/g;->processRemaining(Ljava/nio/ByteBuffer;)V

    .line 185
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/hash/g;->makeHash()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public abstract makeHash()Lcom/google/common/hash/HashCode;
.end method

.method public abstract process(Ljava/nio/ByteBuffer;)V
.end method

.method public processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 83
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    iget v0, p0, Lcom/google/common/hash/g;->c:I

    add-int/lit8 v1, v0, 0x7

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 85
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-ge v1, v0, :cond_0

    const-wide/16 v1, 0x0

    .line 86
    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/common/hash/g;->process(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final putByte(B)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/common/hash/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {p0}, Lcom/google/common/hash/g;->b()V

    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/common/hash/g;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public final putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 2

    .line 100
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 102
    :try_start_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/common/hash/g;->c(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 106
    throw v1
.end method

.method public final putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 0

    .line 95
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/g;->c(Ljava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/common/hash/g;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/g;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public final putChar(C)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/common/hash/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {p0}, Lcom/google/common/hash/g;->b()V

    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/common/hash/g;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public final putInt(I)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/common/hash/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 168
    invoke-virtual {p0}, Lcom/google/common/hash/g;->b()V

    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/common/hash/g;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public final putLong(J)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/common/hash/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 175
    invoke-virtual {p0}, Lcom/google/common/hash/g;->b()V

    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/g;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public final putShort(S)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/common/hash/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {p0}, Lcom/google/common/hash/g;->b()V

    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/common/hash/g;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method
