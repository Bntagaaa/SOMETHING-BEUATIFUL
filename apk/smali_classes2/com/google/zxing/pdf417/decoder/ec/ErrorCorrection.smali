.class public final Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->PDF417_GF:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    return-void
.end method


# virtual methods
.method public decode([II[I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 42
    new-instance v5, Lcom/google/zxing/pdf417/decoder/ec/a;

    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v5, v7, v0}, Lcom/google/zxing/pdf417/decoder/ec/a;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 43
    new-array v8, v1, [I

    const/4 v9, 0x0

    move v10, v1

    const/4 v11, 0x0

    :goto_0
    if-lez v10, :cond_1

    .line 82
    iget-object v12, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a:[I

    .line 82
    aget v12, v12, v10

    .line 46
    invoke-virtual {v5, v12}, Lcom/google/zxing/pdf417/decoder/ec/a;->b(I)I

    move-result v12

    sub-int v13, v1, v10

    .line 47
    aput v12, v8, v13

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_1
    if-eqz v11, :cond_16

    .line 58
    iget-object v5, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->d:Lcom/google/zxing/pdf417/decoder/ec/a;

    .line 56
    array-length v10, v2

    const/4 v11, 0x0

    :goto_1
    iget v12, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->e:I

    if-ge v11, v10, :cond_2

    aget v13, v2, v11

    .line 57
    array-length v14, v0

    sub-int/2addr v14, v4

    sub-int/2addr v14, v13

    .line 82
    iget-object v13, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a:[I

    .line 82
    aget v13, v13, v14

    .line 59
    new-instance v14, Lcom/google/zxing/pdf417/decoder/ec/a;

    sub-int v13, v12, v13

    .line 78
    rem-int/2addr v13, v12

    .line 59
    filled-new-array {v13, v4}, [I

    move-result-object v12

    invoke-direct {v14, v7, v12}, Lcom/google/zxing/pdf417/decoder/ec/a;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 60
    invoke-virtual {v5, v14}, Lcom/google/zxing/pdf417/decoder/ec/a;->g(Lcom/google/zxing/pdf417/decoder/ec/a;)Lcom/google/zxing/pdf417/decoder/ec/a;

    move-result-object v5

    add-int/2addr v11, v4

    goto :goto_1

    .line 63
    :cond_2
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/a;

    invoke-direct {v2, v7, v8}, Lcom/google/zxing/pdf417/decoder/ec/a;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    if-ltz v1, :cond_15

    add-int/lit8 v5, v1, 0x1

    .line 68
    new-array v5, v5, [I

    .line 69
    aput v4, v5, v9

    .line 70
    new-instance v8, Lcom/google/zxing/pdf417/decoder/ec/a;

    invoke-direct {v8, v7, v5}, Lcom/google/zxing/pdf417/decoder/ec/a;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 89
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v10

    if-ge v5, v10, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v18, v8

    move-object v8, v2

    move-object/from16 v2, v18

    .line 98
    :goto_2
    iget-object v5, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c:Lcom/google/zxing/pdf417/decoder/ec/a;

    iget-object v10, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->d:Lcom/google/zxing/pdf417/decoder/ec/a;

    move-object v11, v8

    move-object v8, v2

    move-object v2, v11

    move-object v11, v5

    .line 101
    :goto_3
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v13

    div-int/lit8 v14, v1, 0x2

    if-lt v13, v14, :cond_c

    .line 108
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/a;->e()Z

    move-result v13

    if-nez v13, :cond_b

    .line 114
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/google/zxing/pdf417/decoder/ec/a;->c(I)I

    move-result v13

    .line 115
    invoke-virtual {v7, v13}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a(I)I

    move-result v13

    move-object v14, v5

    .line 116
    :goto_4
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v15

    const/16 v16, 0x1

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v4

    if-lt v15, v4, :cond_9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/a;->e()Z

    move-result v4

    if-nez v4, :cond_9

    .line 117
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v15

    sub-int/2addr v4, v15

    .line 118
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v15

    invoke-virtual {v8, v15}, Lcom/google/zxing/pdf417/decoder/ec/a;->c(I)I

    move-result v15

    invoke-virtual {v7, v15, v13}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b(II)I

    move-result v15

    if-ltz v4, :cond_8

    if-nez v15, :cond_4

    move-object v9, v5

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v4, 0x1

    .line 68
    new-array v3, v3, [I

    .line 69
    aput v15, v3, v9

    .line 70
    new-instance v9, Lcom/google/zxing/pdf417/decoder/ec/a;

    invoke-direct {v9, v7, v3}, Lcom/google/zxing/pdf417/decoder/ec/a;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 119
    :goto_5
    invoke-virtual {v14, v9}, Lcom/google/zxing/pdf417/decoder/ec/a;->a(Lcom/google/zxing/pdf417/decoder/ec/a;)Lcom/google/zxing/pdf417/decoder/ec/a;

    move-result-object v14

    if-ltz v4, :cond_7

    .line 193
    iget-object v3, v2, Lcom/google/zxing/pdf417/decoder/ec/a;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    if-nez v15, :cond_5

    .line 54
    iget-object v3, v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c:Lcom/google/zxing/pdf417/decoder/ec/a;

    move-object/from16 p3, v5

    goto :goto_7

    .line 196
    :cond_5
    iget-object v9, v2, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    array-length v1, v9

    add-int/2addr v4, v1

    .line 197
    new-array v4, v4, [I

    move-object/from16 p3, v5

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v1, :cond_6

    move/from16 v17, v1

    .line 199
    aget v1, v9, v5

    invoke-virtual {v3, v1, v15}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b(II)I

    move-result v1

    aput v1, v4, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v17

    goto :goto_6

    .line 201
    :cond_6
    new-instance v1, Lcom/google/zxing/pdf417/decoder/ec/a;

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/pdf417/decoder/ec/a;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v3, v1

    .line 120
    :goto_7
    invoke-virtual {v8, v3}, Lcom/google/zxing/pdf417/decoder/ec/a;->h(Lcom/google/zxing/pdf417/decoder/ec/a;)Lcom/google/zxing/pdf417/decoder/ec/a;

    move-result-object v8

    move/from16 v1, p2

    move-object/from16 v5, p3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_4

    .line 191
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_9
    move-object/from16 p3, v5

    .line 123
    invoke-virtual {v14, v10}, Lcom/google/zxing/pdf417/decoder/ec/a;->g(Lcom/google/zxing/pdf417/decoder/ec/a;)Lcom/google/zxing/pdf417/decoder/ec/a;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/google/zxing/pdf417/decoder/ec/a;->h(Lcom/google/zxing/pdf417/decoder/ec/a;)Lcom/google/zxing/pdf417/decoder/ec/a;

    move-result-object v1

    .line 166
    iget-object v3, v1, Lcom/google/zxing/pdf417/decoder/ec/a;->b:[I

    array-length v4, v3

    .line 167
    new-array v5, v4, [I

    const/4 v9, 0x0

    .line 168
    :goto_8
    iget-object v11, v1, Lcom/google/zxing/pdf417/decoder/ec/a;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    if-ge v9, v4, :cond_a

    .line 169
    aget v13, v3, v9

    .line 78
    iget v11, v11, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->e:I

    sub-int v13, v11, v13

    .line 78
    rem-int/2addr v13, v11

    .line 169
    aput v13, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 171
    :cond_a
    new-instance v1, Lcom/google/zxing/pdf417/decoder/ec/a;

    invoke-direct {v1, v11, v5}, Lcom/google/zxing/pdf417/decoder/ec/a;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v3, v8

    move-object v8, v2

    move-object v2, v3

    move-object/from16 v5, p3

    move-object v11, v10

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    move-object v10, v1

    move/from16 v1, p2

    goto/16 :goto_3

    .line 110
    :cond_b
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_c
    const/4 v1, 0x0

    const/16 v16, 0x1

    .line 126
    invoke-virtual {v10, v1}, Lcom/google/zxing/pdf417/decoder/ec/a;->c(I)I

    move-result v3

    if-eqz v3, :cond_14

    .line 131
    invoke-virtual {v7, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a(I)I

    move-result v3

    .line 132
    invoke-virtual {v10, v3}, Lcom/google/zxing/pdf417/decoder/ec/a;->f(I)Lcom/google/zxing/pdf417/decoder/ec/a;

    move-result-object v4

    .line 133
    invoke-virtual {v2, v3}, Lcom/google/zxing/pdf417/decoder/ec/a;->f(I)Lcom/google/zxing/pdf417/decoder/ec/a;

    move-result-object v2

    const/4 v3, 0x2

    .line 134
    new-array v3, v3, [Lcom/google/zxing/pdf417/decoder/ec/a;

    aput-object v4, v3, v1

    aput-object v2, v3, v16

    .line 68
    aget-object v2, v3, v1

    .line 69
    aget-object v3, v3, v16

    .line 139
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v4

    .line 140
    new-array v5, v4, [I

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_9
    if-ge v8, v12, :cond_e

    if-ge v9, v4, :cond_e

    .line 143
    invoke-virtual {v2, v8}, Lcom/google/zxing/pdf417/decoder/ec/a;->b(I)I

    move-result v10

    if-nez v10, :cond_d

    .line 144
    invoke-virtual {v7, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a(I)I

    move-result v10

    aput v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_e
    if-ne v9, v4, :cond_13

    .line 157
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/a;->d()I

    move-result v8

    .line 158
    new-array v9, v8, [I

    const/4 v10, 0x1

    :goto_a
    if-gt v10, v8, :cond_f

    sub-int v11, v8, v10

    .line 160
    invoke-virtual {v2, v10}, Lcom/google/zxing/pdf417/decoder/ec/a;->c(I)I

    move-result v13

    invoke-virtual {v7, v10, v13}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b(II)I

    move-result v13

    aput v13, v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 163
    :cond_f
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/a;

    invoke-direct {v2, v7, v9}, Lcom/google/zxing/pdf417/decoder/ec/a;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 167
    new-array v8, v4, [I

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v4, :cond_10

    .line 169
    aget v10, v5, v9

    invoke-virtual {v7, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a(I)I

    move-result v10

    .line 170
    invoke-virtual {v3, v10}, Lcom/google/zxing/pdf417/decoder/ec/a;->b(I)I

    move-result v11

    sub-int v11, v12, v11

    .line 78
    rem-int/2addr v11, v12

    .line 171
    invoke-virtual {v2, v10}, Lcom/google/zxing/pdf417/decoder/ec/a;->b(I)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a(I)I

    move-result v10

    .line 172
    invoke-virtual {v7, v11, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b(II)I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_10
    const/4 v9, 0x0

    :goto_c
    if-ge v9, v4, :cond_16

    .line 77
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v2, v5, v9

    if-eqz v2, :cond_12

    .line 89
    iget-object v3, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b:[I

    .line 89
    aget v2, v3, v2

    sub-int/2addr v1, v2

    if-ltz v1, :cond_11

    .line 81
    aget v2, v0, v1

    aget v3, v8, v9

    add-int/2addr v2, v12

    sub-int/2addr v2, v3

    .line 78
    rem-int/2addr v2, v12

    .line 81
    aput v2, v0, v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 79
    :cond_11
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 87
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 149
    :cond_13
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 128
    :cond_14
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 63
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_16
    return-void
.end method
