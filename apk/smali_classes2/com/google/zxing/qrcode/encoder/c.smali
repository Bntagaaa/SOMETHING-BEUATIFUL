.class final Lcom/google/zxing/qrcode/encoder/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[[I

.field public static final b:[[I

.field public static final c:[[I

.field public static final d:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 54

    const/4 v0, 0x1

    const/4 v1, 0x7

    .line 34
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    new-array v4, v1, [I

    fill-array-data v4, :array_1

    new-array v5, v1, [I

    fill-array-data v5, :array_2

    new-array v6, v1, [I

    fill-array-data v6, :array_3

    new-array v7, v1, [I

    fill-array-data v7, :array_4

    new-array v8, v1, [I

    fill-array-data v8, :array_5

    new-array v9, v1, [I

    fill-array-data v9, :array_6

    new-array v10, v1, [[I

    aput-object v2, v10, v3

    aput-object v4, v10, v0

    const/4 v2, 0x2

    aput-object v5, v10, v2

    const/4 v4, 0x3

    aput-object v6, v10, v4

    const/4 v5, 0x4

    aput-object v7, v10, v5

    const/4 v6, 0x5

    aput-object v8, v10, v6

    const/4 v7, 0x6

    aput-object v9, v10, v7

    sput-object v10, Lcom/google/zxing/qrcode/encoder/c;->a:[[I

    .line 44
    new-array v8, v6, [[I

    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v9

    aput-object v9, v8, v3

    filled-new-array {v0, v3, v3, v3, v0}, [I

    move-result-object v9

    aput-object v9, v8, v0

    filled-new-array {v0, v3, v0, v3, v0}, [I

    move-result-object v9

    aput-object v9, v8, v2

    filled-new-array {v0, v3, v3, v3, v0}, [I

    move-result-object v9

    aput-object v9, v8, v4

    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v9

    aput-object v9, v8, v5

    sput-object v8, Lcom/google/zxing/qrcode/encoder/c;->b:[[I

    .line 53
    new-array v8, v1, [I

    fill-array-data v8, :array_7

    new-array v9, v1, [I

    fill-array-data v9, :array_8

    new-array v10, v1, [I

    fill-array-data v10, :array_9

    new-array v12, v1, [I

    fill-array-data v12, :array_a

    new-array v14, v1, [I

    fill-array-data v14, :array_b

    const/16 v16, 0x6

    new-array v7, v1, [I

    fill-array-data v7, :array_c

    const/16 v17, 0x1a

    new-array v11, v1, [I

    fill-array-data v11, :array_d

    const/16 v18, 0x1e

    new-array v13, v1, [I

    fill-array-data v13, :array_e

    const/16 v19, 0x22

    new-array v15, v1, [I

    fill-array-data v15, :array_f

    const/16 v20, 0x1c

    const/16 v21, 0x5

    new-array v6, v1, [I

    fill-array-data v6, :array_10

    const/16 v22, 0x4

    new-array v5, v1, [I

    fill-array-data v5, :array_11

    const/16 v23, 0x20

    const/16 v24, 0x3

    new-array v4, v1, [I

    fill-array-data v4, :array_12

    const/16 v25, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v26, 0x1

    new-array v0, v1, [I

    fill-array-data v0, :array_14

    const/16 v27, 0x0

    new-array v3, v1, [I

    fill-array-data v3, :array_15

    move-object/from16 v28, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_16

    move-object/from16 v29, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_17

    move-object/from16 v30, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_18

    move-object/from16 v31, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_19

    move-object/from16 v32, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_1a

    move-object/from16 v33, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_1b

    move-object/from16 v34, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_1c

    move-object/from16 v35, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_1d

    move-object/from16 v36, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_1e

    move-object/from16 v37, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_1f

    move-object/from16 v38, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_20

    move-object/from16 v39, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_21

    move-object/from16 v40, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_22

    move-object/from16 v41, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_23

    move-object/from16 v42, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_24

    move-object/from16 v43, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_25

    move-object/from16 v44, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_26

    move-object/from16 v45, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_27

    move-object/from16 v46, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_28

    move-object/from16 v47, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_29

    move-object/from16 v48, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_2a

    move-object/from16 v49, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_2b

    move-object/from16 v50, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_2c

    move-object/from16 v51, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_2d

    move-object/from16 v52, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    const/16 v53, 0x7

    const/16 v1, 0x28

    new-array v1, v1, [[I

    aput-object v8, v1, v27

    aput-object v9, v1, v26

    aput-object v10, v1, v25

    aput-object v12, v1, v24

    aput-object v14, v1, v22

    aput-object v7, v1, v21

    aput-object v11, v1, v16

    aput-object v13, v1, v53

    const/16 v7, 0x8

    aput-object v15, v1, v7

    const/16 v8, 0x9

    aput-object v6, v1, v8

    const/16 v6, 0xa

    aput-object v5, v1, v6

    const/16 v5, 0xb

    aput-object v4, v1, v5

    const/16 v4, 0xc

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v28, v1, v2

    const/16 v2, 0xe

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v29, v1, v2

    const/16 v2, 0x10

    aput-object v30, v1, v2

    const/16 v2, 0x11

    aput-object v31, v1, v2

    const/16 v2, 0x12

    aput-object v32, v1, v2

    const/16 v2, 0x13

    aput-object v33, v1, v2

    const/16 v2, 0x14

    aput-object v34, v1, v2

    const/16 v2, 0x15

    aput-object v35, v1, v2

    const/16 v2, 0x16

    aput-object v36, v1, v2

    const/16 v2, 0x17

    aput-object v37, v1, v2

    const/16 v2, 0x18

    aput-object v38, v1, v2

    const/16 v2, 0x19

    aput-object v39, v1, v2

    aput-object v40, v1, v17

    const/16 v2, 0x1b

    aput-object v41, v1, v2

    aput-object v42, v1, v20

    const/16 v2, 0x1d

    aput-object v43, v1, v2

    aput-object v44, v1, v18

    const/16 v2, 0x1f

    aput-object v45, v1, v2

    aput-object v46, v1, v23

    const/16 v2, 0x21

    aput-object v47, v1, v2

    aput-object v48, v1, v19

    const/16 v2, 0x23

    aput-object v49, v1, v2

    const/16 v2, 0x24

    aput-object v50, v1, v2

    const/16 v2, 0x25

    aput-object v51, v1, v2

    const/16 v2, 0x26

    aput-object v52, v1, v2

    const/16 v2, 0x27

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/zxing/qrcode/encoder/c;->c:[[I

    const/16 v0, 0xf

    .line 97
    new-array v0, v0, [[I

    const/4 v1, 0x0

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x7

    filled-new-array {v7, v2}, [I

    move-result-object v3

    aput-object v3, v0, v16

    filled-new-array {v7, v7}, [I

    move-result-object v3

    aput-object v3, v0, v2

    filled-new-array {v2, v7}, [I

    move-result-object v2

    aput-object v2, v0, v7

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/4 v1, 0x4

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/4 v1, 0x3

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/4 v1, 0x2

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/4 v1, 0x1

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/4 v1, 0x0

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/qrcode/encoder/c;->d:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_2c
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 19

    move/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, -0x1

    .line 127
    invoke-virtual {v1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->clear(B)V

    .line 428
    sget-object v3, Lcom/google/zxing/qrcode/encoder/c;->a:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    .line 430
    invoke-static {v4, v4, v1}, Lcom/google/zxing/qrcode/encoder/c;->c(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 432
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5, v4, v1}, Lcom/google/zxing/qrcode/encoder/c;->c(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 434
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v4, v5, v1}, Lcom/google/zxing/qrcode/encoder/c;->c(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    const/4 v3, 0x7

    .line 439
    invoke-static {v4, v3, v1}, Lcom/google/zxing/qrcode/encoder/c;->b(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 441
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    const/16 v6, 0x8

    sub-int/2addr v5, v6

    invoke-static {v5, v3, v1}, Lcom/google/zxing/qrcode/encoder/c;->b(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 444
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-static {v4, v5, v1}, Lcom/google/zxing/qrcode/encoder/c;->b(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 449
    invoke-static {v3, v4, v1}, Lcom/google/zxing/qrcode/encoder/c;->d(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 451
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-static {v5, v4, v1}, Lcom/google/zxing/qrcode/encoder/c;->d(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 453
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v3, v5, v1}, Lcom/google/zxing/qrcode/encoder/c;->d(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 378
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v1, v6, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v5

    if-eqz v5, :cond_22

    .line 381
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    sub-int/2addr v5, v6

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v5, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v5

    const/4 v8, 0x2

    const/4 v9, 0x5

    if-ge v5, v8, :cond_1

    :cond_0
    const/16 v16, 0x0

    const/16 v17, 0x1

    goto :goto_5

    .line 462
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v5

    sub-int/2addr v5, v7

    .line 463
    sget-object v10, Lcom/google/zxing/qrcode/encoder/c;->c:[[I

    aget-object v5, v10, v5

    .line 464
    array-length v10, v5

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_5

    .line 467
    aget v13, v5, v11

    .line 468
    aget v14, v5, v12

    if-eq v14, v2, :cond_2

    if-ne v13, v2, :cond_3

    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x1

    goto :goto_4

    .line 473
    :cond_3
    invoke-virtual {v1, v14, v13}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v15

    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/c;->e(I)Z

    move-result v15

    if-eqz v15, :cond_2

    add-int/lit8 v14, v14, -0x2

    add-int/lit8 v13, v13, -0x2

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v9, :cond_2

    const/16 v16, 0x0

    :goto_3
    if-ge v4, v9, :cond_4

    const/16 v17, 0x1

    add-int v7, v14, v4

    add-int v2, v13, v15

    .line 412
    sget-object v18, Lcom/google/zxing/qrcode/encoder/c;->b:[[I

    aget-object v18, v18, v15

    aget v8, v18, v4

    invoke-virtual {v1, v7, v2, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v4, v4, 0x1

    const/4 v2, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto :goto_3

    :cond_4
    const/16 v17, 0x1

    add-int/lit8 v15, v15, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto :goto_2

    :goto_4
    add-int/lit8 v12, v12, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    const/16 v17, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto :goto_0

    :goto_5
    const/16 v2, 0x8

    .line 363
    :goto_6
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    sub-int/2addr v4, v6

    const/4 v5, 0x6

    if-ge v2, v4, :cond_8

    add-int/lit8 v4, v2, 0x1

    .line 364
    rem-int/lit8 v7, v4, 0x2

    .line 366
    invoke-virtual {v1, v2, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v8

    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/c;->e(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 367
    invoke-virtual {v1, v2, v5, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 370
    :cond_6
    invoke-virtual {v1, v5, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v8

    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/c;->e(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 371
    invoke-virtual {v1, v5, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_7
    move v2, v4

    goto :goto_6

    .line 168
    :cond_8
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 325
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    move-result v4

    const/4 v7, 0x3

    shl-int/2addr v4, v7

    or-int/2addr v4, v0

    .line 329
    invoke-virtual {v2, v4, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v8, 0x537

    const/16 v9, 0x537

    const/4 v10, 0x0

    :goto_7
    if-eqz v9, :cond_9

    ushr-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v9, v10, -0x1

    shl-int/2addr v4, v9

    :goto_8
    move v9, v4

    const/4 v11, 0x0

    :goto_9
    if-eqz v9, :cond_a

    ushr-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_a
    if-lt v11, v10, :cond_c

    move v9, v4

    const/4 v11, 0x0

    :goto_a
    if-eqz v9, :cond_b

    ushr-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_b
    sub-int/2addr v11, v10

    shl-int v9, v8, v11

    xor-int/2addr v4, v9

    goto :goto_8

    :cond_c
    const/16 v8, 0xa

    .line 332
    invoke-virtual {v2, v4, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 334
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/16 v8, 0x5412

    const/16 v9, 0xf

    .line 335
    invoke-virtual {v4, v8, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 336
    invoke-virtual {v2, v4}, Lcom/google/zxing/common/BitArray;->xor(Lcom/google/zxing/common/BitArray;)V

    .line 338
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const-string v8, "should not happen but we got: "

    if-ne v4, v9, :cond_20

    const/4 v4, 0x0

    .line 171
    :goto_b
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    if-ge v4, v9, :cond_e

    .line 174
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v4

    invoke-virtual {v2, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    .line 177
    sget-object v10, Lcom/google/zxing/qrcode/encoder/c;->d:[[I

    aget-object v10, v10, v4

    aget v11, v10, v16

    .line 178
    aget v10, v10, v17

    .line 179
    invoke-virtual {v1, v11, v10, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    if-ge v4, v6, :cond_d

    .line 183
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v10

    sub-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x1

    .line 185
    invoke-virtual {v1, v10, v6, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    goto :goto_c

    .line 189
    :cond_d
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v10

    sub-int/2addr v10, v3

    add-int/lit8 v11, v4, -0x8

    add-int/2addr v11, v10

    .line 190
    invoke-virtual {v1, v6, v11, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 198
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v2

    if-ge v2, v3, :cond_f

    goto/16 :goto_13

    .line 201
    :cond_f
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 346
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v3

    const/16 v4, 0x1f25

    const/16 v6, 0x1f25

    const/4 v9, 0x0

    :goto_d
    if-eqz v6, :cond_10

    ushr-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_10
    add-int/lit8 v6, v9, -0x1

    shl-int/2addr v3, v6

    :goto_e
    move v6, v3

    const/4 v10, 0x0

    :goto_f
    if-eqz v6, :cond_11

    ushr-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_11
    if-lt v10, v9, :cond_13

    move v6, v3

    const/4 v10, 0x0

    :goto_10
    if-eqz v6, :cond_12

    ushr-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_12
    sub-int/2addr v10, v9

    shl-int v6, v4, v10

    xor-int/2addr v3, v6

    goto :goto_e

    :cond_13
    const/16 v4, 0xc

    .line 348
    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 350
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1f

    const/16 v3, 0x11

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v5, :cond_15

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v7, :cond_14

    .line 208
    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    add-int/lit8 v3, v3, -0x1

    .line 211
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0xb

    add-int/2addr v9, v6

    invoke-virtual {v1, v4, v9, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 213
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0xb

    add-int/2addr v9, v6

    invoke-virtual {v1, v9, v4, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 226
    :cond_15
    :goto_13
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 227
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    :goto_14
    if-lez v2, :cond_1d

    if-ne v2, v5, :cond_16

    add-int/lit8 v2, v2, -0x1

    :cond_16
    :goto_15
    if-ltz v3, :cond_1c

    .line 233
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v8

    if-ge v3, v8, :cond_1c

    const/4 v8, 0x2

    const/4 v9, 0x0

    :goto_16
    if-ge v9, v8, :cond_1b

    sub-int v10, v2, v9

    .line 237
    invoke-virtual {v1, v10, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v11

    invoke-static {v11}, Lcom/google/zxing/qrcode/encoder/c;->e(I)Z

    move-result v11

    if-nez v11, :cond_17

    const/4 v13, -0x1

    move-object/from16 v11, p0

    goto :goto_1d

    .line 241
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    if-ge v4, v11, :cond_18

    move-object/from16 v11, p0

    .line 242
    invoke-virtual {v11, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    add-int/lit8 v4, v4, 0x1

    :goto_17
    const/4 v13, -0x1

    goto :goto_18

    :cond_18
    move-object/from16 v11, p0

    const/4 v12, 0x0

    goto :goto_17

    :goto_18
    if-eq v0, v13, :cond_1a

    packed-switch v0, :pswitch_data_0

    .line 182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid mask pattern: "

    .line 0
    invoke-static {v0, v2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    mul-int v14, v3, v10

    .line 179
    rem-int/2addr v14, v7

    add-int v15, v3, v10

    and-int/lit8 v15, v15, 0x1

    :goto_19
    add-int/2addr v14, v15

    :goto_1a
    and-int/lit8 v14, v14, 0x1

    goto :goto_1b

    :pswitch_1
    mul-int v14, v3, v10

    and-int/lit8 v15, v14, 0x1

    .line 175
    rem-int/2addr v14, v7

    goto :goto_19

    :pswitch_2
    mul-int v14, v3, v10

    and-int/lit8 v15, v14, 0x1

    .line 171
    rem-int/2addr v14, v7

    add-int/2addr v14, v15

    goto :goto_1b

    :pswitch_3
    ushr-int/lit8 v14, v3, 0x1

    .line 167
    div-int/lit8 v15, v10, 0x3

    add-int/2addr v15, v14

    and-int/lit8 v14, v15, 0x1

    goto :goto_1b

    :pswitch_4
    add-int v14, v3, v10

    .line 164
    rem-int/2addr v14, v7

    goto :goto_1b

    .line 161
    :pswitch_5
    rem-int/lit8 v14, v10, 0x3

    goto :goto_1b

    :pswitch_6
    and-int/lit8 v14, v3, 0x1

    goto :goto_1b

    :pswitch_7
    add-int v14, v3, v10

    goto :goto_1a

    :goto_1b
    if-nez v14, :cond_19

    const/4 v14, 0x1

    goto :goto_1c

    :cond_19
    const/4 v14, 0x0

    :goto_1c
    if-eqz v14, :cond_1a

    xor-int/lit8 v12, v12, 0x1

    .line 254
    :cond_1a
    invoke-virtual {v1, v10, v3, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    :goto_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_1b
    const/4 v13, -0x1

    move-object/from16 v11, p0

    add-int/2addr v3, v6

    goto/16 :goto_15

    :cond_1c
    const/4 v8, 0x2

    const/4 v13, -0x1

    move-object/from16 v11, p0

    neg-int v6, v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, -0x2

    goto/16 :goto_14

    :cond_1d
    move-object/from16 v11, p0

    .line 263
    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    if-ne v4, v0, :cond_1e

    return-void

    .line 264
    :cond_1e
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not all bits consumed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1f
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_20
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_21
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid mask pattern"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_22
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static b(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    add-int v2, p0, v1

    .line 388
    invoke-virtual {p2, v2, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/c;->e(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    invoke-virtual {p2, v2, p1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static c(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    add-int v4, p0, v3

    add-int v5, p1, v1

    .line 420
    sget-object v6, Lcom/google/zxing/qrcode/encoder/c;->a:[[I

    aget-object v6, v6, v1

    aget v6, v6, v3

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    add-int v2, p1, v1

    .line 399
    invoke-virtual {p2, p0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/c;->e(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {p2, p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static e(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
