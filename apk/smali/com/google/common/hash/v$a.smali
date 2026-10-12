.class final Lcom/google/common/hash/v$a;
.super Lcom/google/common/hash/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final d:I

.field public final e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 2

    const/16 v0, 0x8

    .line 122
    invoke-direct {p0, v0}, Lcom/google/common/hash/g;-><init>(I)V

    const-wide/16 v0, 0x0

    .line 115
    iput-wide v0, p0, Lcom/google/common/hash/v$a;->j:J

    .line 119
    iput-wide v0, p0, Lcom/google/common/hash/v$a;->k:J

    .line 123
    iput p1, p0, Lcom/google/common/hash/v$a;->d:I

    .line 124
    iput p2, p0, Lcom/google/common/hash/v$a;->e:I

    const-wide p1, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long/2addr p1, p3

    .line 125
    iput-wide p1, p0, Lcom/google/common/hash/v$a;->f:J

    const-wide p1, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long/2addr p1, p5

    .line 126
    iput-wide p1, p0, Lcom/google/common/hash/v$a;->g:J

    const-wide p1, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long/2addr p1, p3

    .line 127
    iput-wide p1, p0, Lcom/google/common/hash/v$a;->h:J

    const-wide p1, 0x7465646279746573L    # 4.901176695720602E252

    xor-long/2addr p1, p5

    .line 128
    iput-wide p1, p0, Lcom/google/common/hash/v$a;->i:J

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 165
    iget-wide v1, p0, Lcom/google/common/hash/v$a;->f:J

    iget-wide v3, p0, Lcom/google/common/hash/v$a;->g:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/hash/v$a;->f:J

    .line 166
    iget-wide v1, p0, Lcom/google/common/hash/v$a;->h:J

    iget-wide v5, p0, Lcom/google/common/hash/v$a;->i:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/common/hash/v$a;->h:J

    const/16 v1, 0xd

    .line 167
    invoke-static {v3, v4, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/hash/v$a;->g:J

    .line 168
    iget-wide v1, p0, Lcom/google/common/hash/v$a;->i:J

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    .line 169
    iget-wide v3, p0, Lcom/google/common/hash/v$a;->g:J

    iget-wide v5, p0, Lcom/google/common/hash/v$a;->f:J

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/hash/v$a;->g:J

    .line 170
    iget-wide v3, p0, Lcom/google/common/hash/v$a;->h:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/hash/v$a;->i:J

    const/16 v1, 0x20

    .line 171
    invoke-static {v5, v6, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    .line 172
    iget-wide v4, p0, Lcom/google/common/hash/v$a;->h:J

    iget-wide v6, p0, Lcom/google/common/hash/v$a;->g:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/hash/v$a;->h:J

    .line 173
    iget-wide v4, p0, Lcom/google/common/hash/v$a;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/v$a;->f:J

    const/16 v2, 0x11

    .line 174
    invoke-static {v6, v7, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/hash/v$a;->g:J

    .line 175
    iget-wide v2, p0, Lcom/google/common/hash/v$a;->i:J

    const/16 v4, 0x15

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    .line 176
    iget-wide v4, p0, Lcom/google/common/hash/v$a;->g:J

    iget-wide v6, p0, Lcom/google/common/hash/v$a;->h:J

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/hash/v$a;->g:J

    .line 177
    iget-wide v4, p0, Lcom/google/common/hash/v$a;->f:J

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/v$a;->i:J

    .line 178
    invoke-static {v6, v7, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/hash/v$a;->h:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public makeHash()Lcom/google/common/hash/HashCode;
    .locals 5

    .line 148
    iget-wide v0, p0, Lcom/google/common/hash/v$a;->k:J

    iget-wide v2, p0, Lcom/google/common/hash/v$a;->j:J

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/v$a;->k:J

    .line 158
    iget-wide v2, p0, Lcom/google/common/hash/v$a;->i:J

    xor-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/hash/v$a;->i:J

    .line 159
    iget v2, p0, Lcom/google/common/hash/v$a;->d:I

    invoke-virtual {p0, v2}, Lcom/google/common/hash/v$a;->d(I)V

    .line 160
    iget-wide v2, p0, Lcom/google/common/hash/v$a;->f:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/v$a;->f:J

    .line 152
    iget-wide v0, p0, Lcom/google/common/hash/v$a;->h:J

    const-wide/16 v2, 0xff

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/v$a;->h:J

    .line 153
    iget v0, p0, Lcom/google/common/hash/v$a;->e:I

    invoke-virtual {p0, v0}, Lcom/google/common/hash/v$a;->d(I)V

    .line 154
    iget-wide v0, p0, Lcom/google/common/hash/v$a;->f:J

    iget-wide v2, p0, Lcom/google/common/hash/v$a;->g:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/v$a;->h:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/v$a;->i:J

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 133
    iget-wide v0, p0, Lcom/google/common/hash/v$a;->j:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/v$a;->j:J

    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 158
    iget-wide v2, p0, Lcom/google/common/hash/v$a;->i:J

    xor-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/hash/v$a;->i:J

    .line 159
    iget p1, p0, Lcom/google/common/hash/v$a;->d:I

    invoke-virtual {p0, p1}, Lcom/google/common/hash/v$a;->d(I)V

    .line 160
    iget-wide v2, p0, Lcom/google/common/hash/v$a;->f:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/v$a;->f:J

    return-void
.end method

.method public processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 139
    iget-wide v0, p0, Lcom/google/common/hash/v$a;->j:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/v$a;->j:J

    const/4 v0, 0x0

    .line 140
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-wide v1, p0, Lcom/google/common/hash/v$a;->k:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    shl-long/2addr v3, v0

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/hash/v$a;->k:J

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return-void
.end method
