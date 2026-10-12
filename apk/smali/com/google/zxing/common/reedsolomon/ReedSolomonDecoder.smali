.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-void
.end method


# virtual methods
.method public decode([II)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x2

    .line 59
    new-instance v3, Lcom/google/zxing/common/reedsolomon/a;

    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v3, v5, v0}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 60
    new-array v6, v1, [I

    .line 61
    sget-object v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_0
    if-ge v10, v1, :cond_2

    if-eqz v7, :cond_0

    add-int/lit8 v12, v10, 0x1

    goto :goto_1

    :cond_0
    move v12, v10

    .line 136
    :goto_1
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    .line 138
    iget-object v13, v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->a:[I

    aget v12, v13, v12

    .line 65
    invoke-virtual {v3, v12}, Lcom/google/zxing/common/reedsolomon/a;->b(I)I

    move-result v12

    add-int/lit8 v13, v1, -0x1

    sub-int/2addr v13, v10

    .line 66
    aput v12, v6, v13

    if-eqz v12, :cond_1

    const/4 v11, 0x0

    :cond_1
    add-int/2addr v10, v8

    goto :goto_0

    :cond_2
    if-eqz v11, :cond_3

    goto/16 :goto_d

    .line 74
    :cond_3
    new-instance v3, Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/common/reedsolomon/a;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 75
    invoke-virtual {v5, v1, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a(II)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v6

    .line 93
    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v10

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v11

    if-ge v10, v11, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v17, v6

    move-object v6, v3

    move-object/from16 v3, v17

    .line 95
    :goto_2
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    .line 97
    iget-object v10, v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->c:Lcom/google/zxing/common/reedsolomon/a;

    .line 101
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    .line 103
    iget-object v11, v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->d:Lcom/google/zxing/common/reedsolomon/a;

    move-object/from16 v17, v6

    move-object v6, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v11

    move-object v11, v10

    move-object/from16 v10, v17

    .line 105
    :goto_3
    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v12

    div-int/lit8 v13, v1, 0x2

    if-lt v12, v13, :cond_7

    .line 112
    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->e()Z

    move-result v12

    if-nez v12, :cond_6

    .line 95
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    .line 97
    iget-object v12, v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->c:Lcom/google/zxing/common/reedsolomon/a;

    .line 118
    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v13

    invoke-virtual {v3, v13}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result v13

    .line 119
    invoke-virtual {v5, v13}, Lcom/google/zxing/common/reedsolomon/GenericGF;->d(I)I

    move-result v13

    .line 120
    :goto_4
    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v14

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v15

    if-lt v14, v15, :cond_5

    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/a;->e()Z

    move-result v14

    if-nez v14, :cond_5

    .line 121
    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v14

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v15

    sub-int/2addr v14, v15

    .line 122
    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v15

    invoke-virtual {v6, v15}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result v15

    invoke-virtual {v5, v15, v13}, Lcom/google/zxing/common/reedsolomon/GenericGF;->e(II)I

    move-result v15

    const/16 v16, 0x1

    .line 123
    invoke-virtual {v5, v14, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a(II)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v12

    .line 124
    invoke-virtual {v3, v14, v15}, Lcom/google/zxing/common/reedsolomon/a;->h(II)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    const/16 v16, 0x1

    .line 127
    invoke-virtual {v12, v10}, Lcom/google/zxing/common/reedsolomon/a;->g(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/google/zxing/common/reedsolomon/a;->a(Lcom/google/zxing/common/reedsolomon/a;)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v8

    move-object v11, v6

    move-object v6, v3

    move-object v3, v11

    move-object v11, v10

    move-object v10, v8

    const/4 v8, 0x1

    goto :goto_3

    .line 114
    :cond_6
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "r_{i-1} was zero"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v16, 0x1

    .line 130
    invoke-virtual {v10, v9}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result v1

    if-eqz v1, :cond_14

    .line 135
    invoke-virtual {v5, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->d(I)I

    move-result v1

    .line 136
    invoke-virtual {v10, v1}, Lcom/google/zxing/common/reedsolomon/a;->f(I)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v6

    .line 137
    invoke-virtual {v3, v1}, Lcom/google/zxing/common/reedsolomon/a;->f(I)Lcom/google/zxing/common/reedsolomon/a;

    move-result-object v1

    .line 138
    new-array v2, v2, [Lcom/google/zxing/common/reedsolomon/a;

    aput-object v6, v2, v9

    aput-object v1, v2, v16

    .line 77
    aget-object v1, v2, v9

    .line 78
    aget-object v2, v2, v16

    .line 143
    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/a;->d()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_8

    .line 145
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/reedsolomon/a;->c(I)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    goto :goto_7

    .line 147
    :cond_8
    new-array v6, v3, [I

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 149
    :goto_5
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getSize()I

    move-result v11

    if-ge v8, v11, :cond_a

    if-ge v10, v3, :cond_a

    .line 150
    invoke-virtual {v1, v8}, Lcom/google/zxing/common/reedsolomon/a;->b(I)I

    move-result v11

    if-nez v11, :cond_9

    .line 151
    invoke-virtual {v5, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->d(I)I

    move-result v11

    aput v11, v6, v10

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    const/16 v16, 0x1

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    if-ne v10, v3, :cond_13

    move-object v1, v6

    .line 165
    :goto_7
    array-length v3, v1

    .line 166
    new-array v6, v3, [I

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v3, :cond_f

    .line 168
    aget v10, v1, v8

    invoke-virtual {v5, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->d(I)I

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v3, :cond_d

    if-eq v8, v12, :cond_c

    .line 176
    aget v13, v1, v12

    invoke-virtual {v5, v13, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->e(II)I

    move-result v13

    const/16 v16, 0x1

    and-int/lit8 v14, v13, 0x1

    if-nez v14, :cond_b

    or-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_b
    and-int/lit8 v13, v13, -0x2

    .line 178
    :goto_a
    invoke-virtual {v5, v11, v13}, Lcom/google/zxing/common/reedsolomon/GenericGF;->e(II)I

    move-result v11

    goto :goto_b

    :cond_c
    const/16 v16, 0x1

    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_d
    const/16 v16, 0x1

    .line 181
    invoke-virtual {v2, v10}, Lcom/google/zxing/common/reedsolomon/a;->b(I)I

    move-result v12

    invoke-virtual {v5, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->d(I)I

    move-result v11

    invoke-virtual {v5, v12, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->e(II)I

    move-result v11

    aput v11, v6, v8

    if-eqz v7, :cond_e

    .line 185
    invoke-virtual {v5, v11, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->e(II)I

    move-result v10

    aput v10, v6, v8

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_f
    const/16 v16, 0x1

    .line 81
    :goto_c
    array-length v2, v1

    if-ge v9, v2, :cond_12

    .line 82
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v9

    .line 145
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b()V

    if-eqz v3, :cond_11

    .line 150
    iget-object v7, v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->b:[I

    aget v3, v7, v3

    sub-int/2addr v2, v3

    if-ltz v2, :cond_10

    .line 86
    aget v3, v0, v2

    aget v7, v6, v9

    xor-int/2addr v3, v7

    aput v3, v0, v2

    const/16 v16, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 84
    :cond_10
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "Bad error location"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_12
    :goto_d
    return-void

    .line 156
    :cond_13
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "Error locator degree does not match number of roots"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_14
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "sigmaTilde(0) was zero"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
