.class final Lcom/google/zxing/pdf417/decoder/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/b$b;
    }
.end annotation


# static fields
.field public static final a:[C

.field public static final b:[C

.field public static final c:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x1d

    .line 58
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/b;->a:[C

    const/16 v0, 0x19

    .line 63
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/b;->b:[C

    const/16 v0, 0x10

    .line 74
    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/b;->c:[Ljava/math/BigInteger;

    const/4 v1, 0x0

    .line 75
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const-wide/16 v1, 0x384

    .line 76
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    .line 77
    aput-object v1, v0, v2

    const/4 v0, 0x2

    .line 78
    :goto_0
    sget-object v3, Lcom/google/zxing/pdf417/decoder/b;->c:[Ljava/math/BigInteger;

    array-length v4, v3

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v0, -0x1

    .line 79
    aget-object v4, v3, v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x7ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[IILjava/lang/StringBuilder;)I
    .locals 25

    move/from16 v0, p0

    move-object/from16 v1, p3

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    const/16 v5, 0x3a0

    const/16 v6, 0x386

    const-wide/16 v9, 0x0

    const/16 v11, 0x39c

    const/16 v12, 0x384

    const/4 v13, 0x6

    const/16 v16, 0x8

    const/16 v2, 0x385

    if-ne v0, v2, :cond_7

    .line 366
    new-array v0, v13, [C

    const-wide/16 v17, 0x384

    .line 367
    new-array v7, v13, [I

    add-int/lit8 v8, p2, 0x1

    .line 369
    aget v19, p1, p2

    move/from16 v14, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 370
    :goto_0
    aget v15, p1, v22

    if-ge v8, v15, :cond_4

    if-nez v20, :cond_4

    add-int/lit8 v15, v21, 0x1

    .line 371
    aput v14, v7, v21

    mul-long v9, v9, v17

    int-to-long v13, v14

    add-long/2addr v9, v13

    add-int/lit8 v13, v8, 0x1

    .line 374
    aget v14, p1, v8

    if-eq v14, v12, :cond_3

    if-eq v14, v2, :cond_3

    if-eq v14, v6, :cond_3

    if-eq v14, v11, :cond_3

    if-eq v14, v5, :cond_3

    if-eq v14, v4, :cond_3

    if-ne v14, v3, :cond_0

    goto :goto_2

    .line 386
    :cond_0
    rem-int/lit8 v8, v15, 0x5

    if-nez v8, :cond_2

    if-lez v15, :cond_2

    const/4 v15, 0x0

    :goto_1
    const/4 v8, 0x6

    if-ge v15, v8, :cond_1

    rsub-int/lit8 v8, v15, 0x5

    const-wide/16 v23, 0x100

    .line 390
    rem-long v3, v9, v23

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v0, v8

    shr-long v9, v9, v16

    add-int/lit8 v15, v15, 0x1

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    goto :goto_1

    .line 393
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move v8, v13

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    const/4 v13, 0x6

    const/16 v21, 0x0

    goto :goto_0

    :cond_2
    move v8, v13

    move/from16 v21, v15

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    const/4 v13, 0x6

    goto :goto_0

    :cond_3
    :goto_2
    move/from16 v21, v15

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    const/4 v13, 0x6

    const/16 v20, 0x1

    goto :goto_0

    :cond_4
    if-ne v8, v15, :cond_5

    if-ge v14, v12, :cond_5

    add-int/lit8 v0, v21, 0x1

    .line 401
    aput v14, v7, v21

    goto :goto_3

    :cond_5
    move/from16 v0, v21

    :goto_3
    const/4 v15, 0x0

    :goto_4
    if-ge v15, v0, :cond_6

    .line 408
    aget v2, v7, v15

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_6
    return v8

    :cond_7
    const-wide/16 v17, 0x384

    const/16 v22, 0x0

    if-ne v0, v11, :cond_f

    move/from16 v0, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 417
    :goto_5
    aget v7, p1, v22

    if-ge v0, v7, :cond_e

    if-nez v3, :cond_e

    add-int/lit8 v7, v0, 0x1

    .line 418
    aget v8, p1, v0

    if-ge v8, v12, :cond_8

    add-int/lit8 v4, v4, 0x1

    mul-long v9, v9, v17

    int-to-long v13, v8

    add-long/2addr v9, v13

    move v0, v7

    const/16 v13, 0x39b

    const/16 v14, 0x39a

    goto :goto_7

    :cond_8
    if-eq v8, v12, :cond_a

    if-eq v8, v2, :cond_a

    if-eq v8, v6, :cond_a

    if-eq v8, v11, :cond_a

    if-eq v8, v5, :cond_a

    const/16 v13, 0x39b

    const/16 v14, 0x39a

    if-eq v8, v13, :cond_b

    if-ne v8, v14, :cond_9

    goto :goto_6

    :cond_9
    move v0, v7

    goto :goto_7

    :cond_a
    const/16 v13, 0x39b

    const/16 v14, 0x39a

    :cond_b
    :goto_6
    const/4 v3, 0x1

    .line 435
    :goto_7
    rem-int/lit8 v7, v4, 0x5

    if-nez v7, :cond_d

    if-lez v4, :cond_d

    const/4 v8, 0x6

    .line 438
    new-array v4, v8, [C

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v8, :cond_c

    rsub-int/lit8 v15, v7, 0x5

    const-wide/16 v20, 0xff

    move/from16 p0, v3

    and-long v2, v9, v20

    long-to-int v3, v2

    int-to-char v2, v3

    .line 440
    aput-char v2, v4, v15

    shr-long v9, v9, v16

    add-int/lit8 v7, v7, 0x1

    move/from16 v3, p0

    const/16 v2, 0x385

    goto :goto_8

    :cond_c
    move/from16 p0, v3

    .line 443
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_9

    :cond_d
    move/from16 p0, v3

    const/4 v8, 0x6

    :goto_9
    move/from16 v3, p0

    const/16 v2, 0x385

    goto :goto_5

    :cond_e
    return v0

    :cond_f
    return p2
.end method

.method public static b([IILjava/lang/StringBuilder;)I
    .locals 19

    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 140
    aget v2, p0, v1

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v4, v2, [I

    .line 142
    new-array v2, v2, [I

    move/from16 v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 146
    :goto_0
    aget v8, p0, v1

    const/16 v9, 0x391

    const/16 v10, 0x384

    if-ge v5, v8, :cond_3

    if-nez v6, :cond_3

    add-int/lit8 v8, v5, 0x1

    .line 147
    aget v11, p0, v5

    if-ge v11, v10, :cond_0

    .line 149
    div-int/lit8 v5, v11, 0x1e

    aput v5, v4, v7

    add-int/lit8 v5, v7, 0x1

    .line 150
    rem-int/lit8 v11, v11, 0x1e

    aput v11, v4, v5

    add-int/lit8 v7, v7, 0x2

    :goto_1
    move v5, v8

    goto :goto_0

    :cond_0
    if-eq v11, v9, :cond_2

    const/16 v9, 0x39c

    if-eq v11, v9, :cond_1

    packed-switch v11, :pswitch_data_0

    goto :goto_1

    :cond_1
    :pswitch_0
    const/4 v6, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v5, v7, 0x1

    .line 156
    aput v10, v4, v7

    move v7, v5

    goto :goto_1

    .line 173
    :cond_2
    aput v9, v4, v7

    add-int/lit8 v5, v5, 0x2

    .line 174
    aget v8, p0, v8

    .line 175
    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 213
    :cond_3
    sget-object v6, Lcom/google/zxing/pdf417/decoder/b$b;->a:Lcom/google/zxing/pdf417/decoder/b$b;

    move-object v11, v6

    move-object v12, v11

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_28

    .line 217
    aget v13, v4, v8

    .line 219
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    sget-object v15, Lcom/google/zxing/pdf417/decoder/b$b;->c:Lcom/google/zxing/pdf417/decoder/b$b;

    sget-object v16, Lcom/google/zxing/pdf417/decoder/b$b;->b:Lcom/google/zxing/pdf417/decoder/b$b;

    sget-object v17, Lcom/google/zxing/pdf417/decoder/b$b;->f:Lcom/google/zxing/pdf417/decoder/b$b;

    const/16 v18, 0x20

    const/16 v1, 0x1d

    if-eqz v14, :cond_20

    if-eq v14, v3, :cond_19

    const/4 v15, 0x2

    if-eq v14, v15, :cond_11

    sget-object v15, Lcom/google/zxing/pdf417/decoder/b;->a:[C

    const/4 v3, 0x3

    if-eq v14, v3, :cond_d

    const/4 v3, 0x4

    if-eq v14, v3, :cond_9

    const/4 v3, 0x5

    if-eq v14, v3, :cond_4

    goto :goto_5

    :cond_4
    if-ge v13, v1, :cond_5

    .line 327
    aget-char v18, v15, v13

    move-object v11, v12

    :goto_3
    move/from16 v1, v18

    goto/16 :goto_d

    :cond_5
    if-ne v13, v1, :cond_7

    :goto_4
    move-object v11, v6

    :cond_6
    :goto_5
    const/4 v1, 0x0

    goto/16 :goto_d

    :cond_7
    if-ne v13, v9, :cond_8

    .line 334
    aget v1, v2, v8

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_8
    if-ne v13, v10, :cond_c

    goto :goto_4

    :cond_9
    const/16 v1, 0x1a

    if-ge v13, v1, :cond_a

    add-int/lit8 v13, v13, 0x41

    int-to-char v1, v13

    move-object v11, v12

    goto/16 :goto_d

    :cond_a
    if-ne v13, v1, :cond_b

    move-object v11, v12

    :goto_6
    const/16 v1, 0x20

    goto/16 :goto_d

    :cond_b
    if-ne v13, v10, :cond_c

    goto :goto_4

    :cond_c
    :goto_7
    move-object v11, v12

    goto :goto_5

    :cond_d
    if-ge v13, v1, :cond_e

    .line 297
    aget-char v18, v15, v13

    goto :goto_3

    :cond_e
    if-ne v13, v1, :cond_f

    goto :goto_4

    :cond_f
    if-ne v13, v9, :cond_10

    .line 302
    aget v1, v2, v8

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_10
    if-ne v13, v10, :cond_6

    goto :goto_4

    :cond_11
    const/16 v3, 0x19

    if-ge v13, v3, :cond_12

    .line 272
    sget-object v1, Lcom/google/zxing/pdf417/decoder/b;->b:[C

    aget-char v18, v1, v13

    goto :goto_3

    :cond_12
    if-ne v13, v3, :cond_13

    .line 275
    sget-object v11, Lcom/google/zxing/pdf417/decoder/b$b;->d:Lcom/google/zxing/pdf417/decoder/b$b;

    goto :goto_5

    :cond_13
    const/16 v3, 0x1a

    if-ne v13, v3, :cond_14

    :goto_8
    goto :goto_6

    :cond_14
    const/16 v3, 0x1b

    if-ne v13, v3, :cond_15

    :goto_9
    move-object/from16 v11, v16

    goto :goto_5

    :cond_15
    const/16 v3, 0x1c

    if-ne v13, v3, :cond_16

    goto :goto_4

    :cond_16
    if-ne v13, v1, :cond_17

    :goto_a
    move-object v12, v11

    move-object/from16 v11, v17

    goto :goto_5

    :cond_17
    if-ne v13, v9, :cond_18

    .line 287
    aget v1, v2, v8

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_18
    if-ne v13, v10, :cond_6

    goto :goto_4

    :cond_19
    const/16 v3, 0x1a

    if-ge v13, v3, :cond_1a

    add-int/lit8 v13, v13, 0x61

    :goto_b
    int-to-char v1, v13

    goto :goto_d

    :cond_1a
    if-ne v13, v3, :cond_1b

    goto :goto_8

    :cond_1b
    const/16 v3, 0x1b

    if-ne v13, v3, :cond_1c

    .line 254
    sget-object v1, Lcom/google/zxing/pdf417/decoder/b$b;->e:Lcom/google/zxing/pdf417/decoder/b$b;

    move-object v12, v11

    move-object v11, v1

    goto :goto_5

    :cond_1c
    const/16 v3, 0x1c

    if-ne v13, v3, :cond_1d

    :goto_c
    move-object v11, v15

    goto/16 :goto_5

    :cond_1d
    if-ne v13, v1, :cond_1e

    goto :goto_a

    :cond_1e
    if-ne v13, v9, :cond_1f

    .line 262
    aget v1, v2, v8

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_1f
    if-ne v13, v10, :cond_6

    goto/16 :goto_4

    :cond_20
    const/16 v3, 0x1a

    if-ge v13, v3, :cond_21

    add-int/lit8 v13, v13, 0x41

    goto :goto_b

    :cond_21
    if-ne v13, v3, :cond_22

    goto :goto_8

    :cond_22
    const/16 v3, 0x1b

    if-ne v13, v3, :cond_23

    goto :goto_9

    :cond_23
    const/16 v3, 0x1c

    if-ne v13, v3, :cond_24

    goto :goto_c

    :cond_24
    if-ne v13, v1, :cond_25

    goto :goto_a

    :cond_25
    if-ne v13, v9, :cond_26

    .line 237
    aget v1, v2, v8

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_26
    if-ne v13, v10, :cond_6

    goto/16 :goto_4

    :goto_d
    if-eqz v1, :cond_27

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_27
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_28
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
