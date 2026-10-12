.class final Lcom/google/common/hash/t$a;
.super Lcom/google/common/hash/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public d:J

.field public e:J

.field public f:I


# virtual methods
.method public makeHash()Lcom/google/common/hash/HashCode;
    .locals 11

    .line 170
    iget-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    iget v2, p0, Lcom/google/common/hash/t$a;->f:I

    int-to-long v2, v2

    xor-long/2addr v0, v2

    .line 171
    iget-wide v4, p0, Lcom/google/common/hash/t$a;->e:J

    xor-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long/2addr v2, v0

    const/16 v4, 0x21

    ushr-long v5, v0, v4

    xor-long/2addr v0, v5

    const-wide v5, -0xae502812aa7333L

    mul-long v0, v0, v5

    ushr-long v7, v0, v4

    xor-long/2addr v0, v7

    const-wide v7, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long v0, v0, v7

    ushr-long v9, v0, v4

    xor-long/2addr v0, v9

    ushr-long v9, v2, v4

    xor-long/2addr v2, v9

    mul-long v2, v2, v5

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    mul-long v2, v2, v7

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 179
    iput-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    add-long/2addr v2, v0

    .line 180
    iput-wide v2, p0, Lcom/google/common/hash/t$a;->e:J

    const/16 v0, 0x10

    .line 182
    new-array v0, v0, [B

    .line 183
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 184
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/t$a;->d:J

    .line 185
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/t$a;->e:J

    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 182
    sget-object v1, Lcom/google/common/hash/HashCode;->a:[C

    .line 249
    new-instance v1, Lcom/google/common/hash/HashCode$a;

    invoke-direct {v1, v0}, Lcom/google/common/hash/HashCode$a;-><init>([B)V

    return-object v1
.end method

.method public process(Ljava/nio/ByteBuffer;)V
    .locals 14

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 110
    iget-wide v4, p0, Lcom/google/common/hash/t$a;->d:J

    const-wide v6, -0x783c846eeebdac2bL

    mul-long v0, v0, v6

    const/16 p1, 0x1f

    .line 201
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    const-wide v8, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long v0, v0, v8

    xor-long/2addr v0, v4

    .line 110
    iput-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    const/16 v4, 0x1b

    .line 112
    invoke-static {v0, v1, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 113
    iget-wide v4, p0, Lcom/google/common/hash/t$a;->e:J

    add-long/2addr v0, v4

    const-wide/16 v10, 0x5

    mul-long v0, v0, v10

    const-wide/32 v12, 0x52dce729

    add-long/2addr v0, v12

    .line 114
    iput-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    mul-long v2, v2, v8

    const/16 v0, 0x21

    .line 208
    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    mul-long v0, v0, v6

    xor-long/2addr v0, v4

    .line 116
    iput-wide v0, p0, Lcom/google/common/hash/t$a;->e:J

    .line 118
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 119
    iget-wide v2, p0, Lcom/google/common/hash/t$a;->d:J

    add-long/2addr v0, v2

    mul-long v0, v0, v10

    const-wide/32 v2, 0x38495ab5

    add-long/2addr v0, v2

    .line 120
    iput-wide v0, p0, Lcom/google/common/hash/t$a;->e:J

    .line 106
    iget p1, p0, Lcom/google/common/hash/t$a;->f:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/common/hash/t$a;->f:I

    return-void
.end method

.method public processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 13

    .line 127
    iget v0, p0, Lcom/google/common/hash/t$a;->f:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/hash/t$a;->f:I

    .line 128
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x18

    const/16 v3, 0x20

    const/16 v4, 0x28

    const/16 v5, 0x30

    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    packed-switch v0, :pswitch_data_0

    .line 162
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Should never get here."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    const/16 v0, 0xe

    .line 130
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v7, v0

    shl-long/2addr v7, v5

    :pswitch_1
    const/16 v0, 0xd

    .line 132
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v9, v0

    shl-long v4, v9, v4

    xor-long/2addr v7, v4

    :pswitch_2
    const/16 v0, 0xc

    .line 134
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v4, v0

    shl-long v3, v4, v3

    xor-long/2addr v7, v3

    :pswitch_3
    const/16 v0, 0xb

    .line 136
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v3, v0

    shl-long v2, v3, v2

    xor-long/2addr v7, v2

    :pswitch_4
    const/16 v0, 0xa

    .line 138
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v2, v0

    shl-long v0, v2, v1

    xor-long/2addr v7, v0

    :pswitch_5
    const/16 v0, 0x9

    .line 140
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v6

    xor-long/2addr v7, v0

    .line 142
    :pswitch_6
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v0, v0

    xor-long/2addr v7, v0

    .line 144
    :pswitch_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_6

    :pswitch_8
    const/4 v0, 0x6

    .line 147
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v9, v0

    shl-long/2addr v9, v5

    goto :goto_0

    :pswitch_9
    move-wide v9, v7

    :goto_0
    const/4 v0, 0x5

    .line 149
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v11, v0

    shl-long v4, v11, v4

    xor-long/2addr v4, v9

    goto :goto_1

    :pswitch_a
    move-wide v4, v7

    :goto_1
    const/4 v0, 0x4

    .line 151
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v9, v0

    shl-long/2addr v9, v3

    xor-long/2addr v4, v9

    goto :goto_2

    :pswitch_b
    move-wide v4, v7

    :goto_2
    const/4 v0, 0x3

    .line 153
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v9, v0

    shl-long v2, v9, v2

    xor-long/2addr v2, v4

    goto :goto_3

    :pswitch_c
    move-wide v2, v7

    :goto_3
    const/4 v0, 0x2

    .line 155
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v4, v0

    shl-long v0, v4, v1

    xor-long/2addr v0, v2

    goto :goto_4

    :pswitch_d
    move-wide v0, v7

    :goto_4
    const/4 v2, 0x1

    .line 157
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    xor-long/2addr v0, v2

    goto :goto_5

    :pswitch_e
    move-wide v0, v7

    :goto_5
    const/4 v2, 0x0

    .line 159
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result p1

    int-to-long v2, p1

    xor-long/2addr v0, v2

    .line 164
    :goto_6
    iget-wide v2, p0, Lcom/google/common/hash/t$a;->d:J

    const-wide v4, -0x783c846eeebdac2bL

    mul-long v0, v0, v4

    const/16 p1, 0x1f

    .line 201
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    const-wide v9, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long v0, v0, v9

    xor-long/2addr v0, v2

    .line 164
    iput-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    .line 165
    iget-wide v0, p0, Lcom/google/common/hash/t$a;->e:J

    mul-long v7, v7, v9

    const/16 p1, 0x21

    .line 208
    invoke-static {v7, v8, p1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    mul-long v2, v2, v4

    xor-long/2addr v0, v2

    .line 165
    iput-wide v0, p0, Lcom/google/common/hash/t$a;->e:J

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
