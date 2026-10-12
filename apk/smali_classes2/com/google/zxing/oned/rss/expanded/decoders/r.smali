.class final Lcom/google/zxing/oned/rss/expanded/decoders/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/BitArray;

.field public final b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

.field public final c:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/r;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c:Ljava/lang/StringBuilder;

    .line 43
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/r;->a:Lcom/google/zxing/common/BitArray;

    return-void
.end method

.method public static c(IILcom/google/zxing/common/BitArray;)I
    .locals 4

    const/16 v0, 0x20

    if-gt p1, v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    add-int v2, p0, v0

    .line 113
    invoke-virtual {p2, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p1, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 108
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "extractNumberValueFromBitArray can\'t handle more than 32 bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    .line 50
    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->b(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/n;

    move-result-object v1

    .line 51
    iget-object v2, v1, Lcom/google/zxing/oned/rss/expanded/decoders/n;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_0
    iget-boolean v2, v1, Lcom/google/zxing/oned/rss/expanded/decoders/n;->d:Z

    if-eqz v2, :cond_1

    .line 56
    iget v2, v1, Lcom/google/zxing/oned/rss/expanded/decoders/n;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 61
    :goto_1
    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/p;->a:I

    if-ne p2, v1, :cond_2

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    move p2, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public final b(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/n;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 122
    iget-object v2, v0, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    iget-object v1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/r;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    move/from16 v4, p1

    iput v4, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 49
    :goto_0
    iget v4, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 61
    iget-object v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    .line 61
    sget-object v6, Lcom/google/zxing/oned/rss/expanded/decoders/l$a;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/l$a;->c:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/l$a;->a:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    iget-object v9, v0, Lcom/google/zxing/oned/rss/expanded/decoders/r;->a:Lcom/google/zxing/common/BitArray;

    const/16 v10, 0x24

    const/4 v11, 0x5

    const/16 v16, 0x2e

    const/16 v17, 0x2f

    const/16 v15, 0xf

    const/16 v3, 0x3f

    const/16 v12, 0x10

    if-ne v5, v6, :cond_e

    .line 49
    :goto_1
    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/lit8 v6, v5, 0x5

    .line 369
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v13

    if-le v6, v13, :cond_1

    goto/16 :goto_6

    .line 103
    :cond_1
    invoke-static {v5, v11, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v6

    const/4 v13, 0x6

    if-lt v6, v11, :cond_2

    if-ge v6, v12, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v5, 0x6

    .line 379
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v14

    if-le v6, v14, :cond_3

    goto/16 :goto_6

    .line 103
    :cond_3
    invoke-static {v5, v13, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v5

    if-lt v5, v12, :cond_8

    if-ge v5, v3, :cond_8

    .line 49
    :goto_2
    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 103
    invoke-static {v5, v11, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v6

    if-ne v6, v15, :cond_4

    .line 390
    new-instance v6, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    add-int/lit8 v5, v5, 0x5

    invoke-direct {v6, v5, v10}, Lcom/google/zxing/oned/rss/expanded/decoders/m;-><init>(IC)V

    :goto_3
    const/16 v13, 0x20

    const/16 v14, 0x3a

    goto :goto_5

    :cond_4
    if-lt v6, v11, :cond_5

    if-ge v6, v15, :cond_5

    .line 394
    new-instance v13, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v6, v6, 0x2b

    int-to-char v6, v6

    invoke-direct {v13, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/m;-><init>(IC)V

    move-object v6, v13

    goto :goto_3

    .line 103
    :cond_5
    invoke-static {v5, v13, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v6

    const/16 v13, 0x20

    const/16 v14, 0x3a

    if-lt v6, v13, :cond_6

    if-ge v6, v14, :cond_6

    .line 400
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v6, 0x21

    int-to-char v6, v6

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/m;-><init>(IC)V

    move-object v6, v3

    goto :goto_5

    :cond_6
    packed-switch v6, :pswitch_data_0

    .line 421
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Decoding invalid alphanumeric value: "

    .line 0
    invoke-static {v6, v2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v3, 0x2f

    goto :goto_4

    :pswitch_1
    const/16 v3, 0x2e

    goto :goto_4

    :pswitch_2
    const/16 v3, 0x2d

    goto :goto_4

    :pswitch_3
    const/16 v3, 0x2c

    goto :goto_4

    :pswitch_4
    const/16 v3, 0x2a

    .line 423
    :goto_4
    new-instance v6, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    add-int/lit8 v5, v5, 0x6

    invoke-direct {v6, v5, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/m;-><init>(IC)V

    .line 53
    :goto_5
    iget v3, v6, Lcom/google/zxing/oned/rss/expanded/decoders/p;->a:I

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 49
    iget-char v5, v6, Lcom/google/zxing/oned/rss/expanded/decoders/m;->b:C

    if-ne v5, v10, :cond_7

    .line 226
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(ILjava/lang/String;)V

    .line 227
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/n;Z)V

    goto :goto_b

    .line 230
    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x3f

    goto/16 :goto_1

    .line 49
    :cond_8
    :goto_6
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/lit8 v5, v3, 0x3

    .line 446
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    if-le v5, v6, :cond_9

    goto :goto_8

    :cond_9
    :goto_7
    if-ge v3, v5, :cond_c

    .line 451
    invoke-virtual {v9, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 49
    :goto_8
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 236
    invoke-virtual {v0, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->d(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 49
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/2addr v3, v11

    .line 237
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 57
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/2addr v3, v11

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    goto :goto_9

    .line 240
    :cond_a
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 53
    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 81
    :goto_9
    iput-object v7, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    goto :goto_a

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 57
    :cond_c
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 73
    iput-object v8, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    .line 245
    :cond_d
    :goto_a
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 39
    invoke-direct {v3, v6, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/n;Z)V

    .line 145
    :goto_b
    iget-boolean v5, v3, Lcom/google/zxing/oned/rss/expanded/decoders/k;->b:Z

    :goto_c
    move v6, v5

    const/4 v5, 0x0

    goto/16 :goto_23

    :cond_e
    const/16 v13, 0x20

    const/16 v14, 0x3a

    const/16 v3, 0x8

    const/4 v13, 0x7

    if-ne v5, v7, :cond_1f

    .line 49
    :goto_d
    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/lit8 v7, v5, 0x5

    .line 249
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v14

    if-le v7, v14, :cond_f

    goto/16 :goto_12

    .line 103
    :cond_f
    invoke-static {v5, v11, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v7

    const/16 v14, 0x74

    const/16 v10, 0x40

    if-lt v7, v11, :cond_10

    if-ge v7, v12, :cond_10

    goto :goto_e

    :cond_10
    add-int/lit8 v7, v5, 0x7

    .line 258
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v12

    if-le v7, v12, :cond_11

    goto/16 :goto_12

    .line 103
    :cond_11
    invoke-static {v5, v13, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v7

    if-lt v7, v10, :cond_12

    if-ge v7, v14, :cond_12

    goto :goto_e

    :cond_12
    add-int/lit8 v7, v5, 0x8

    .line 267
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v12

    if-le v7, v12, :cond_13

    goto/16 :goto_12

    .line 103
    :cond_13
    invoke-static {v5, v3, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v5

    const/16 v7, 0xe8

    if-lt v5, v7, :cond_19

    const/16 v7, 0xfd

    if-ge v5, v7, :cond_19

    .line 49
    :goto_e
    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 103
    invoke-static {v5, v11, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v7

    if-ne v7, v15, :cond_14

    .line 279
    new-instance v7, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    add-int/lit8 v5, v5, 0x5

    const/16 v10, 0x24

    invoke-direct {v7, v5, v10}, Lcom/google/zxing/oned/rss/expanded/decoders/m;-><init>(IC)V

    goto/16 :goto_11

    :cond_14
    if-lt v7, v11, :cond_15

    if-ge v7, v15, :cond_15

    .line 283
    new-instance v10, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v7, v7, 0x2b

    int-to-char v7, v7

    invoke-direct {v10, v5, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/m;-><init>(IC)V

    :goto_f
    move-object v7, v10

    goto/16 :goto_11

    .line 103
    :cond_15
    invoke-static {v5, v13, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v7

    const/16 v12, 0x5a

    if-lt v7, v10, :cond_16

    if-ge v7, v12, :cond_16

    .line 289
    new-instance v10, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v7, v7, 0x1

    int-to-char v7, v7

    invoke-direct {v10, v5, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/m;-><init>(IC)V

    goto :goto_f

    :cond_16
    if-lt v7, v12, :cond_17

    if-ge v7, v14, :cond_17

    .line 293
    new-instance v10, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v7, v7, 0x7

    int-to-char v7, v7

    invoke-direct {v10, v5, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/m;-><init>(IC)V

    goto :goto_f

    .line 103
    :cond_17
    invoke-static {v5, v3, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Decoding invalid ISO/IEC 646 value: "

    .line 0
    invoke-static {v7, v2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5
    const/16 v7, 0x20

    goto :goto_10

    :pswitch_6
    const/16 v7, 0x5f

    goto :goto_10

    :pswitch_7
    const/16 v7, 0x3f

    goto :goto_10

    :pswitch_8
    const/16 v7, 0x3e

    goto :goto_10

    :pswitch_9
    const/16 v7, 0x3d

    goto :goto_10

    :pswitch_a
    const/16 v7, 0x3c

    goto :goto_10

    :pswitch_b
    const/16 v7, 0x3b

    goto :goto_10

    :pswitch_c
    const/16 v7, 0x3a

    goto :goto_10

    :pswitch_d
    const/16 v7, 0x2f

    goto :goto_10

    :pswitch_e
    const/16 v7, 0x2e

    goto :goto_10

    :pswitch_f
    const/16 v7, 0x2d

    goto :goto_10

    :pswitch_10
    const/16 v7, 0x2c

    goto :goto_10

    :pswitch_11
    const/16 v7, 0x2b

    goto :goto_10

    :pswitch_12
    const/16 v7, 0x2a

    goto :goto_10

    :pswitch_13
    const/16 v7, 0x29

    goto :goto_10

    :pswitch_14
    const/16 v7, 0x28

    goto :goto_10

    :pswitch_15
    const/16 v7, 0x27

    goto :goto_10

    :pswitch_16
    const/16 v7, 0x26

    goto :goto_10

    :pswitch_17
    const/16 v7, 0x25

    goto :goto_10

    :pswitch_18
    const/16 v7, 0x22

    goto :goto_10

    :pswitch_19
    const/16 v7, 0x21

    .line 365
    :goto_10
    new-instance v10, Lcom/google/zxing/oned/rss/expanded/decoders/m;

    add-int/lit8 v5, v5, 0x8

    invoke-direct {v10, v5, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/m;-><init>(IC)V

    goto :goto_f

    .line 53
    :goto_11
    iget v5, v7, Lcom/google/zxing/oned/rss/expanded/decoders/p;->a:I

    iput v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 49
    iget-char v7, v7, Lcom/google/zxing/oned/rss/expanded/decoders/m;->b:C

    const/16 v10, 0x24

    if-ne v7, v10, :cond_18

    .line 199
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(ILjava/lang/String;)V

    .line 200
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/n;Z)V

    move-object v3, v5

    goto :goto_17

    .line 202
    :cond_18
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v12, 0x10

    const/16 v14, 0x3a

    goto/16 :goto_d

    .line 49
    :cond_19
    :goto_12
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/lit8 v5, v3, 0x3

    .line 446
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-le v5, v7, :cond_1a

    goto :goto_14

    :cond_1a
    :goto_13
    if-ge v3, v5, :cond_1d

    .line 451
    invoke-virtual {v9, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 49
    :goto_14
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 208
    invoke-virtual {v0, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->d(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 49
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/2addr v3, v11

    .line 209
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-ge v3, v5, :cond_1b

    .line 57
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/2addr v3, v11

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    goto :goto_15

    .line 212
    :cond_1b
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 53
    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 77
    :goto_15
    iput-object v6, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    goto :goto_16

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 57
    :cond_1d
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 73
    iput-object v8, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    .line 217
    :cond_1e
    :goto_16
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 39
    invoke-direct {v3, v6, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/n;Z)V

    .line 148
    :goto_17
    iget-boolean v5, v3, Lcom/google/zxing/oned/rss/expanded/decoders/k;->b:Z

    goto/16 :goto_c

    .line 49
    :cond_1f
    :goto_18
    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/lit8 v7, v5, 0x7

    .line 73
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    if-le v7, v8, :cond_21

    add-int/lit8 v5, v5, 0x4

    .line 74
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-gt v5, v7, :cond_20

    :goto_19
    const/4 v5, 0x1

    goto :goto_1b

    :cond_20
    const/4 v5, 0x0

    goto :goto_1b

    :cond_21
    move v7, v5

    :goto_1a
    add-int/lit8 v8, v5, 0x3

    if-ge v7, v8, :cond_23

    .line 78
    invoke-virtual {v9, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_22

    goto :goto_19

    :cond_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 83
    :cond_23
    invoke-virtual {v9, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    :goto_1b
    const/4 v7, 0x4

    if-eqz v5, :cond_2a

    .line 49
    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/lit8 v8, v5, 0x7

    .line 87
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    const/16 v11, 0xa

    if-le v8, v10, :cond_25

    .line 103
    invoke-static {v5, v7, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v5

    if-nez v5, :cond_24

    .line 90
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/o;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    invoke-direct {v5, v7, v11, v11}, Lcom/google/zxing/oned/rss/expanded/decoders/o;-><init>(III)V

    goto :goto_1c

    .line 92
    :cond_24
    new-instance v7, Lcom/google/zxing/oned/rss/expanded/decoders/o;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v7, v8, v5, v11}, Lcom/google/zxing/oned/rss/expanded/decoders/o;-><init>(III)V

    move-object v5, v7

    goto :goto_1c

    .line 103
    :cond_25
    invoke-static {v5, v13, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->c(IILcom/google/zxing/common/BitArray;)I

    move-result v5

    sub-int/2addr v5, v3

    .line 96
    div-int/lit8 v7, v5, 0xb

    .line 97
    rem-int/lit8 v5, v5, 0xb

    .line 99
    new-instance v10, Lcom/google/zxing/oned/rss/expanded/decoders/o;

    invoke-direct {v10, v8, v7, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/o;-><init>(III)V

    move-object v5, v10

    .line 53
    :goto_1c
    iget v7, v5, Lcom/google/zxing/oned/rss/expanded/decoders/p;->a:I

    iput v7, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 68
    iget v8, v5, Lcom/google/zxing/oned/rss/expanded/decoders/o;->b:I

    if-ne v8, v11, :cond_26

    const/4 v10, 0x1

    goto :goto_1d

    :cond_26
    const/4 v10, 0x0

    .line 168
    :goto_1d
    iget v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/o;->c:I

    if-eqz v10, :cond_28

    if-ne v5, v11, :cond_27

    .line 171
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v7, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(ILjava/lang/String;)V

    goto :goto_1e

    .line 173
    :cond_27
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v7, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(IILjava/lang/String;)V

    .line 175
    :goto_1e
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/n;Z)V

    :goto_1f
    move-object v3, v5

    const/4 v5, 0x0

    goto :goto_22

    .line 177
    :cond_28
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne v5, v11, :cond_29

    .line 180
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    .line 49
    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(ILjava/lang/String;)V

    .line 181
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    const/4 v8, 0x1

    invoke-direct {v5, v3, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/n;Z)V

    goto :goto_1f

    :cond_29
    const/4 v8, 0x1

    .line 183
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    .line 49
    :cond_2a
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/lit8 v5, v3, 0x1

    .line 461
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    if-le v5, v8, :cond_2b

    goto :goto_21

    :cond_2b
    const/4 v5, 0x0

    :goto_20
    if-ge v5, v7, :cond_2d

    add-int v8, v5, v3

    .line 465
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    if-ge v8, v10, :cond_2d

    .line 466
    invoke-virtual {v9, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2c

    goto :goto_21

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 77
    :cond_2d
    iput-object v6, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l$a;

    .line 57
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    add-int/2addr v3, v7

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    .line 190
    :goto_21
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 39
    invoke-direct {v3, v6, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/n;Z)V

    .line 151
    :goto_22
    iget-boolean v6, v3, Lcom/google/zxing/oned/rss/expanded/decoders/k;->b:Z

    .line 49
    :goto_23
    iget v7, v1, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a:I

    if-eq v4, v7, :cond_2e

    goto :goto_24

    :cond_2e
    if-nez v6, :cond_2f

    goto :goto_25

    :cond_2f
    :goto_24
    if-eqz v6, :cond_31

    .line 131
    :goto_25
    iget-object v1, v3, Lcom/google/zxing/oned/rss/expanded/decoders/k;->a:Lcom/google/zxing/oned/rss/expanded/decoders/n;

    if-eqz v1, :cond_30

    iget-boolean v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/n;->d:Z

    if-eqz v3, :cond_30

    .line 132
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/n;->c:I

    invoke-direct {v3, v7, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(IILjava/lang/String;)V

    return-object v3

    .line 134
    :cond_30
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_31
    const/4 v3, 0x0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe8
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
    .end packed-switch
.end method

.method public final d(I)Z
    .locals 5

    add-int/lit8 v0, p1, 0x1

    .line 427
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/r;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    add-int v2, v0, p1

    .line 431
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ge v2, v4, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    add-int/lit8 v2, p1, 0x2

    .line 433
    invoke-virtual {v1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    .line 436
    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
