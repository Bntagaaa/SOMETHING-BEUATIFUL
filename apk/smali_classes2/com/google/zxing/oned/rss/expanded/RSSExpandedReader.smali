.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "SourceFile"


# static fields
.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[[I

.field public static final n:[[I

.field public static final o:[[I

.field public static final p:I


# instance fields
.field public final g:Ljava/util/ArrayList;

.field public final h:[I

.field public final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 44

    const/4 v0, 0x7

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->j:[I

    const/16 v5, 0x68

    const/16 v6, 0xcc

    const/16 v7, 0x14

    const/16 v8, 0x34

    .line 52
    filled-new-array {v2, v7, v8, v5, v6}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->k:[I

    const/16 v5, 0xb84

    const/16 v6, 0xf94

    const/4 v8, 0x0

    const/16 v9, 0x15c

    const/16 v10, 0x56c

    .line 53
    filled-new-array {v8, v9, v10, v5, v6}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->l:[I

    const/4 v5, 0x6

    .line 55
    new-array v6, v5, [[I

    const/16 v9, 0x8

    filled-new-array {v4, v9, v2, v4}, [I

    move-result-object v10

    aput-object v10, v6, v8

    filled-new-array {v3, v5, v2, v4}, [I

    move-result-object v10

    aput-object v10, v6, v4

    filled-new-array {v3, v2, v5, v4}, [I

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v6, v11

    filled-new-array {v3, v11, v9, v4}, [I

    move-result-object v10

    aput-object v10, v6, v3

    filled-new-array {v11, v5, v1, v4}, [I

    move-result-object v10

    aput-object v10, v6, v2

    const/16 v10, 0x9

    filled-new-array {v11, v11, v10, v4}, [I

    move-result-object v12

    aput-object v12, v6, v1

    sput-object v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->m:[[I

    .line 64
    new-array v6, v9, [I

    fill-array-data v6, :array_0

    new-array v13, v9, [I

    fill-array-data v13, :array_1

    new-array v15, v9, [I

    fill-array-data v15, :array_2

    const/16 v16, 0x13

    const/16 v17, 0x5

    new-array v1, v9, [I

    fill-array-data v1, :array_3

    const/16 v18, 0x14

    new-array v7, v9, [I

    fill-array-data v7, :array_4

    const/16 v19, 0xc

    const/16 v20, 0x15

    new-array v12, v9, [I

    fill-array-data v12, :array_5

    const/16 v21, 0xd

    new-array v14, v9, [I

    fill-array-data v14, :array_6

    const/16 v22, 0x4

    new-array v2, v9, [I

    fill-array-data v2, :array_7

    const/16 v23, 0x3

    new-array v3, v9, [I

    fill-array-data v3, :array_8

    const/16 v24, 0x11

    const/16 v25, 0x2

    new-array v11, v9, [I

    fill-array-data v11, :array_9

    const/16 v26, 0x1

    new-array v4, v9, [I

    fill-array-data v4, :array_a

    const/16 v27, 0x10

    const/16 v28, 0x0

    const/16 v29, 0xa

    new-array v8, v9, [I

    fill-array-data v8, :array_b

    const/16 v30, 0x9

    new-array v10, v9, [I

    fill-array-data v10, :array_c

    const/16 v31, 0x7

    new-array v0, v9, [I

    fill-array-data v0, :array_d

    const/16 v32, 0x6

    new-array v5, v9, [I

    fill-array-data v5, :array_e

    const/16 v33, 0x16

    move-object/from16 v34, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_f

    const/16 v35, 0x12

    move-object/from16 v36, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_10

    move-object/from16 v37, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_11

    move-object/from16 v38, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_12

    move-object/from16 v39, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_13

    move-object/from16 v40, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_14

    move-object/from16 v41, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_15

    move-object/from16 v42, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_16

    const/16 v43, 0x8

    const/16 v9, 0x17

    new-array v9, v9, [[I

    aput-object v6, v9, v28

    aput-object v13, v9, v26

    aput-object v15, v9, v25

    aput-object v1, v9, v23

    aput-object v7, v9, v22

    aput-object v12, v9, v17

    aput-object v14, v9, v32

    aput-object v2, v9, v31

    aput-object v3, v9, v43

    aput-object v11, v9, v30

    aput-object v4, v9, v29

    const/16 v1, 0xb

    aput-object v8, v9, v1

    aput-object v10, v9, v19

    aput-object v34, v9, v21

    const/16 v1, 0xe

    aput-object v5, v9, v1

    const/16 v1, 0xf

    aput-object v36, v9, v1

    aput-object v37, v9, v27

    aput-object v38, v9, v24

    aput-object v39, v9, v35

    aput-object v40, v9, v16

    aput-object v41, v9, v18

    aput-object v42, v9, v20

    aput-object v0, v9, v33

    sput-object v9, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->n:[[I

    const/4 v0, 0x6

    .line 97
    new-array v1, v0, [I

    fill-array-data v1, :array_17

    const/4 v0, 0x7

    new-array v2, v0, [I

    fill-array-data v2, :array_18

    const/16 v0, 0x8

    new-array v3, v0, [I

    fill-array-data v3, :array_19

    const/16 v0, 0x9

    new-array v4, v0, [I

    fill-array-data v4, :array_1a

    const/16 v0, 0xa

    new-array v5, v0, [I

    fill-array-data v5, :array_1b

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_1c

    new-array v0, v0, [[I

    const/4 v7, 0x0

    filled-new-array {v7, v7}, [I

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v8, 0x1

    filled-new-array {v7, v8, v8}, [I

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    filled-new-array {v7, v10, v8, v9}, [I

    move-result-object v11

    aput-object v11, v0, v10

    const/4 v11, 0x4

    filled-new-array {v7, v11, v8, v9, v10}, [I

    move-result-object v7

    aput-object v7, v0, v9

    aput-object v1, v0, v11

    aput-object v2, v0, v17

    const/16 v32, 0x6

    aput-object v3, v0, v32

    const/16 v31, 0x7

    aput-object v4, v0, v31

    const/16 v43, 0x8

    aput-object v5, v0, v43

    const/16 v30, 0x9

    aput-object v6, v0, v30

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:[[I

    .line 110
    array-length v1, v0

    sub-int/2addr v1, v8

    aget-object v0, v0, v1

    array-length v0, v0

    sput v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_1
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_2
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_3
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_4
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_5
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_6
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_7
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_8
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_9
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_a
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_b
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_c
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_d
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_e
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_f
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_11
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_12
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_13
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_14
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_15
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_16
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_1b
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 115
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:[I

    .line 116
    sget v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->p:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->i:[I

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 17

    move-object/from16 v0, p1

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDataCharacterCounters()[I

    move-result-object v1

    const/4 v2, 0x0

    .line 395
    aput v2, v1, v2

    const/4 v3, 0x1

    .line 396
    aput v2, v1, v3

    const/4 v4, 0x2

    .line 397
    aput v2, v1, v4

    const/4 v5, 0x3

    .line 398
    aput v2, v1, v5

    const/4 v5, 0x4

    .line 399
    aput v2, v1, v5

    const/4 v6, 0x5

    .line 400
    aput v2, v1, v6

    const/4 v6, 0x6

    .line 401
    aput v2, v1, v6

    const/4 v6, 0x7

    .line 402
    aput v2, v1, v6

    if-eqz p4, :cond_0

    .line 405
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v6

    aget v6, v6, v2

    invoke-static {v0, v6, v1}, Lcom/google/zxing/oned/OneDReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    goto :goto_1

    .line 407
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v6

    aget v6, v6, v3

    add-int/2addr v6, v3

    invoke-static {v0, v6, v1}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 409
    array-length v0, v1

    sub-int/2addr v0, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_1

    .line 410
    aget v7, v1, v6

    .line 411
    aget v8, v1, v0

    aput v8, v1, v6

    .line 412
    aput v7, v1, v0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 417
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->count([I)I

    move-result v0

    int-to-float v0, v0

    const/16 v6, 0x11

    int-to-float v7, v6

    div-float/2addr v0, v7

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v7

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v8

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v9

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object v10

    const/4 v11, 0x0

    .line 424
    :goto_2
    array-length v12, v1

    if-ge v11, v12, :cond_5

    .line 425
    aget v12, v1, v11

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float v12, v12, v13

    div-float/2addr v12, v0

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v12

    float-to-int v13, v13

    if-ge v13, v3, :cond_2

    const/4 v13, 0x1

    goto :goto_3

    :cond_2
    const/16 v14, 0x8

    if-le v13, v14, :cond_3

    const/16 v13, 0x8

    :cond_3
    :goto_3
    shr-int/lit8 v14, v11, 0x1

    and-int/lit8 v15, v11, 0x1

    if-nez v15, :cond_4

    .line 434
    aput v13, v7, v14

    int-to-float v13, v13

    sub-float/2addr v12, v13

    .line 435
    aput v12, v9, v14

    goto :goto_4

    .line 437
    :cond_4
    aput v13, v8, v14

    int-to-float v13, v13

    sub-float/2addr v12, v13

    .line 438
    aput v12, v10, v14

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 489
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->count([I)I

    move-result v0

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->count([I)I

    move-result v1

    add-int v9, v0, v1

    sub-int/2addr v9, v6

    and-int/lit8 v6, v0, 0x1

    if-ne v6, v3, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    and-int/lit8 v10, v1, 0x1

    if-nez v10, :cond_7

    const/4 v10, 0x1

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    :goto_6
    const/16 v11, 0xd

    if-le v0, v11, :cond_8

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_8

    :cond_8
    if-ge v0, v5, :cond_9

    const/4 v12, 0x1

    :goto_7
    const/4 v13, 0x0

    goto :goto_8

    :cond_9
    const/4 v12, 0x0

    goto :goto_7

    :goto_8
    if-le v1, v11, :cond_a

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_a

    :cond_a
    if-ge v1, v5, :cond_b

    const/4 v14, 0x1

    :goto_9
    const/4 v15, 0x0

    goto :goto_a

    :cond_b
    const/4 v14, 0x0

    goto :goto_9

    :goto_a
    if-ne v9, v3, :cond_f

    if-eqz v6, :cond_d

    if-nez v10, :cond_c

    const/4 v13, 0x1

    :goto_b
    const/16 v16, 0x2

    goto :goto_d

    .line 514
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_d
    if-eqz v10, :cond_e

    const/4 v15, 0x1

    goto :goto_b

    .line 519
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_f
    const/16 v16, 0x2

    const/4 v4, -0x1

    if-ne v9, v4, :cond_13

    if-eqz v6, :cond_11

    if-nez v10, :cond_10

    const/4 v12, 0x1

    goto :goto_d

    .line 526
    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_11
    if-eqz v10, :cond_12

    :goto_c
    const/4 v14, 0x1

    goto :goto_d

    .line 531
    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_13
    if-nez v9, :cond_26

    if-eqz v6, :cond_16

    if-eqz v10, :cond_15

    if-ge v0, v1, :cond_14

    const/4 v12, 0x1

    const/4 v15, 0x1

    goto :goto_d

    :cond_14
    const/4 v13, 0x1

    goto :goto_c

    .line 538
    :cond_15
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_16
    if-nez v10, :cond_25

    :goto_d
    if-eqz v12, :cond_18

    if-nez v13, :cond_17

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_e

    .line 560
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    :goto_e
    if-eqz v13, :cond_19

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([I[F)V

    :cond_19
    if-eqz v14, :cond_1b

    if-nez v15, :cond_1a

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_f

    .line 569
    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1b
    :goto_f
    if-eqz v15, :cond_1c

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([I[F)V

    .line 444
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    if-eqz p3, :cond_1d

    const/4 v1, 0x0

    goto :goto_10

    :cond_1d
    const/4 v1, 0x2

    :goto_10
    add-int/2addr v0, v1

    xor-int/lit8 v1, p4, 0x1

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    .line 448
    array-length v1, v7

    sub-int/2addr v1, v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_11
    sget-object v9, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->n:[[I

    if-ltz v1, :cond_20

    .line 484
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v10

    if-nez v10, :cond_1e

    if-eqz p3, :cond_1e

    if-nez p4, :cond_1f

    .line 450
    :cond_1e
    aget-object v9, v9, v0

    mul-int/lit8 v10, v1, 0x2

    aget v9, v9, v10

    .line 451
    aget v10, v7, v1

    mul-int v10, v10, v9

    add-int/2addr v4, v10

    .line 453
    :cond_1f
    aget v9, v7, v1

    add-int/2addr v6, v9

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 457
    :cond_20
    array-length v1, v8

    sub-int/2addr v1, v3

    const/4 v10, 0x0

    :goto_12
    if-ltz v1, :cond_23

    .line 484
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v12

    if-nez v12, :cond_21

    if-eqz p3, :cond_21

    if-nez p4, :cond_22

    .line 459
    :cond_21
    aget-object v12, v9, v0

    mul-int/lit8 v13, v1, 0x2

    add-int/2addr v13, v3

    aget v12, v12, v13

    .line 460
    aget v13, v8, v1

    mul-int v13, v13, v12

    add-int/2addr v10, v13

    .line 462
    :cond_22
    aget v12, v8, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_23
    add-int/2addr v4, v10

    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_24

    if-gt v6, v11, :cond_24

    if-lt v6, v5, :cond_24

    sub-int/2addr v11, v6

    .line 470
    div-int/lit8 v11, v11, 0x2

    .line 471
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->j:[I

    aget v0, v0, v11

    rsub-int/lit8 v1, v0, 0x9

    .line 473
    invoke-static {v7, v0, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v0

    .line 474
    invoke-static {v8, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 475
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->k:[I

    aget v2, v2, v11

    .line 476
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->l:[I

    aget v3, v3, v11

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 479
    new-instance v1, Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-direct {v1, v0, v4}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v1

    .line 467
    :cond_24
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 550
    :cond_25
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 555
    :cond_26
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 122
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reset()V

    .line 135
    :goto_0
    iget-object v9, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v6

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 273
    :goto_2
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object v12

    .line 274
    aput v5, v12, v5

    .line 275
    aput v5, v12, v8

    .line 276
    aput v5, v12, v6

    .line 277
    aput v5, v12, v4

    .line 279
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v13

    if-ltz v10, :cond_1

    move v14, v10

    goto :goto_3

    .line 284
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    goto :goto_3

    .line 287
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v8

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/oned/rss/expanded/b;

    .line 65
    iget-object v14, v14, Lcom/google/zxing/oned/rss/expanded/b;->c:Lcom/google/zxing/oned/rss/FinderPattern;

    .line 288
    invoke-virtual {v14}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v14

    aget v14, v14, v8

    .line 290
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    rem-int/2addr v15, v6

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    :goto_4
    const/16 v16, 0x0

    :goto_5
    if-ge v14, v13, :cond_5

    .line 294
    invoke-virtual {v2, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v16

    xor-int/lit8 v17, v16, 0x1

    if-eqz v16, :cond_4

    move/from16 v16, v17

    goto :goto_6

    :cond_4
    add-int/2addr v14, v8

    move/from16 v16, v17

    goto :goto_5

    :cond_5
    :goto_6
    move/from16 v17, v16

    const/16 p3, 0x2

    const/4 v6, 0x0

    move/from16 v16, v14

    :goto_7
    if-ge v14, v13, :cond_26

    .line 304
    invoke-virtual {v2, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v18

    xor-int v18, v18, v17

    if-eqz v18, :cond_6

    .line 305
    aget v18, v12, v6

    add-int/lit8 v18, v18, 0x1

    aput v18, v12, v6

    const/16 v18, 0x3

    const/16 v19, -0x1

    const/16 v20, 0x4

    goto/16 :goto_1e

    :cond_6
    if-ne v6, v4, :cond_25

    const/16 v18, 0x3

    if-eqz v15, :cond_7

    .line 339
    array-length v4, v12

    const/4 v7, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x4

    .line 340
    :goto_8
    div-int/lit8 v3, v4, 0x2

    if-ge v7, v3, :cond_8

    .line 341
    aget v3, v12, v7

    sub-int v21, v4, v7

    add-int/lit8 v21, v21, -0x1

    .line 342
    aget v22, v12, v21

    aput v22, v12, v7

    .line 343
    aput v3, v12, v21

    add-int/2addr v7, v8

    goto :goto_8

    :cond_7
    const/16 v19, -0x1

    const/16 v20, 0x4

    .line 312
    :cond_8
    invoke-static {v12}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->isFinderPattern([I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 313
    iget-object v3, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->h:[I

    aput v16, v3, v5

    .line 314
    aput v14, v3, v8

    if-eqz v0, :cond_a

    add-int/lit8 v16, v16, -0x1

    move/from16 v4, v16

    :goto_9
    if-ltz v4, :cond_9

    .line 358
    invoke-virtual {v2, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_9

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v16, v4, 0x1

    .line 363
    aget v4, v3, v5

    sub-int v4, v4, v16

    .line 365
    aget v6, v3, v8

    :goto_a
    move/from16 v15, v16

    goto :goto_b

    :cond_a
    add-int/2addr v14, v8

    .line 372
    invoke-virtual {v2, v14}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v6

    .line 373
    aget v4, v3, v8

    sub-int v4, v6, v4

    goto :goto_a

    .line 377
    :goto_b
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object v7

    .line 378
    array-length v12, v7

    sub-int/2addr v12, v8

    invoke-static {v7, v5, v7, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    aput v4, v7, v5

    const/4 v4, 0x0

    .line 383
    :try_start_0
    sget-object v12, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->m:[[I

    invoke-static {v7, v12}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->parseFinderValue([I[[I)I

    move-result v13
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    new-instance v12, Lcom/google/zxing/oned/rss/FinderPattern;

    filled-new-array {v15, v6}, [I

    move-result-object v14

    move/from16 v17, p1

    move/from16 v16, v6

    invoke-direct/range {v12 .. v17}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    goto :goto_c

    :catch_0
    nop

    move-object v12, v4

    :goto_c
    if-nez v12, :cond_c

    .line 217
    aget v3, v3, v5

    .line 194
    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 195
    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v3

    .line 196
    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v3

    :goto_d
    move v10, v3

    goto :goto_e

    .line 198
    :cond_b
    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v3

    .line 199
    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v3

    goto :goto_d

    :cond_c
    const/4 v11, 0x0

    :goto_e
    if-nez v11, :cond_22

    .line 241
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    .line 242
    iget-object v7, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->i:[I

    array-length v10, v7

    if-gt v6, v10, :cond_21

    const/4 v10, 0x0

    .line 246
    :goto_f
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_d

    .line 247
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/oned/rss/expanded/b;

    .line 65
    iget-object v11, v11, Lcom/google/zxing/oned/rss/expanded/b;->c:Lcom/google/zxing/oned/rss/FinderPattern;

    .line 247
    invoke-virtual {v11}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v11

    aput v11, v7, v10

    add-int/2addr v10, v8

    goto :goto_f

    .line 250
    :cond_d
    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v10

    aput v10, v7, v3

    .line 252
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->o:[[I

    const/4 v10, 0x0

    :goto_10
    const/16 v11, 0xa

    if-ge v10, v11, :cond_20

    aget-object v11, v3, v10

    .line 253
    array-length v13, v11

    if-lt v13, v6, :cond_e

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v6, :cond_10

    .line 256
    aget v14, v7, v13

    aget v15, v11, v13

    if-eq v14, v15, :cond_f

    :cond_e
    const/4 v13, 0x4

    goto/16 :goto_1b

    :cond_f
    add-int/2addr v13, v8

    goto :goto_11

    .line 263
    :cond_10
    array-length v3, v11

    if-ne v6, v3, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    .line 225
    :goto_12
    invoke-virtual {v1, v2, v12, v0, v8}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->b(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v6

    .line 228
    :try_start_1
    invoke-virtual {v1, v2, v12, v0, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->b(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_13

    :catch_1
    move-exception v0

    if-eqz v3, :cond_1f

    move-object v0, v4

    .line 236
    :goto_13
    new-instance v7, Lcom/google/zxing/oned/rss/expanded/b;

    invoke-direct {v7, v6, v0, v12, v3}, Lcom/google/zxing/oned/rss/expanded/b;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    .line 136
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1e

    .line 167
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/b;

    .line 57
    iget-object v3, v0, Lcom/google/zxing/oned/rss/expanded/b;->a:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 171
    iget-object v0, v0, Lcom/google/zxing/oned/rss/expanded/b;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    const/4 v6, 0x1

    const/4 v10, 0x2

    .line 174
    :goto_14
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_13

    .line 175
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/oned/rss/expanded/b;

    .line 57
    iget-object v12, v11, Lcom/google/zxing/oned/rss/expanded/b;->a:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 176
    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v12

    add-int/2addr v12, v0

    add-int/lit8 v0, v10, 0x1

    .line 179
    iget-object v11, v11, Lcom/google/zxing/oned/rss/expanded/b;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    if-eqz v11, :cond_12

    .line 180
    invoke-virtual {v11}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    add-int/2addr v0, v12

    add-int/lit8 v10, v10, 0x2

    goto :goto_15

    :cond_12
    move v10, v0

    move v0, v12

    :goto_15
    add-int/2addr v6, v8

    goto :goto_14

    .line 185
    :cond_13
    rem-int/lit16 v0, v0, 0xd3

    add-int/lit8 v10, v10, -0x4

    mul-int/lit16 v10, v10, 0xd3

    add-int/2addr v10, v0

    .line 189
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v0

    if-ne v10, v0, :cond_1c

    .line 43
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    shl-int/2addr v0, v8

    add-int/lit8 v2, v0, -0x1

    .line 44
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/b;

    .line 61
    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/b;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    if-nez v3, :cond_14

    add-int/lit8 v2, v0, -0x2

    :cond_14
    mul-int/lit8 v2, v2, 0xc

    .line 50
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 53
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/b;

    .line 61
    iget-object v2, v2, Lcom/google/zxing/oned/rss/expanded/b;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 54
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v2

    const/16 v3, 0xb

    const/16 v6, 0xb

    const/4 v7, 0x0

    :goto_16
    if-ltz v6, :cond_16

    shl-int v10, v8, v6

    and-int/2addr v10, v2

    if-eqz v10, :cond_15

    .line 57
    invoke-virtual {v0, v7}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_15
    add-int/2addr v7, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_16

    :cond_16
    const/4 v2, 0x1

    .line 62
    :goto_17
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1b

    .line 63
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/b;

    .line 57
    iget-object v10, v6, Lcom/google/zxing/oned/rss/expanded/b;->a:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 65
    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v10

    const/16 v11, 0xb

    :goto_18
    if-ltz v11, :cond_18

    shl-int v12, v8, v11

    and-int/2addr v12, v10

    if-eqz v12, :cond_17

    .line 68
    invoke-virtual {v0, v7}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_17
    add-int/2addr v7, v8

    add-int/lit8 v11, v11, -0x1

    goto :goto_18

    .line 73
    :cond_18
    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/b;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    if-eqz v6, :cond_1a

    .line 74
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v6

    const/16 v10, 0xb

    :goto_19
    if-ltz v10, :cond_1a

    shl-int v11, v8, v10

    and-int/2addr v11, v6

    if-eqz v11, :cond_19

    .line 77
    invoke-virtual {v0, v7}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_19
    add-int/2addr v7, v8

    add-int/lit8 v10, v10, -0x1

    goto :goto_19

    :cond_1a
    add-int/2addr v2, v8

    goto :goto_17

    .line 152
    :cond_1b
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/b;

    .line 65
    iget-object v2, v2, Lcom/google/zxing/oned/rss/expanded/b;->c:Lcom/google/zxing/oned/rss/FinderPattern;

    .line 155
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 156
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/b;

    .line 65
    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/b;->c:Lcom/google/zxing/oned/rss/FinderPattern;

    .line 156
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 158
    new-instance v6, Lcom/google/zxing/Result;

    aget-object v7, v2, v5

    aget-object v2, v2, v8

    aget-object v9, v3, v5

    aget-object v3, v3, v8

    const/4 v13, 0x4

    new-array v10, v13, [Lcom/google/zxing/ResultPoint;

    aput-object v7, v10, v5

    aput-object v2, v10, v8

    aput-object v9, v10, p3

    aput-object v3, v10, v18

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v0, v4, v10, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v6

    :cond_1c
    const/4 v13, 0x4

    .line 142
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/b;->mustBeLast()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1a

    .line 143
    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1e
    const/4 v13, 0x4

    :goto_1a
    const/4 v4, 0x3

    const/4 v6, 0x2

    goto/16 :goto_0

    .line 233
    :cond_1f
    throw v0

    :goto_1b
    add-int/2addr v10, v8

    const/16 v20, 0x4

    goto/16 :goto_10

    .line 268
    :cond_20
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 243
    :cond_21
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_22
    const/4 v4, 0x3

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_23
    if-eqz v15, :cond_24

    .line 339
    array-length v3, v12

    const/4 v4, 0x0

    .line 340
    :goto_1c
    div-int/lit8 v7, v3, 0x2

    if-ge v4, v7, :cond_24

    .line 341
    aget v7, v12, v4

    sub-int v21, v3, v4

    add-int/lit8 v21, v21, -0x1

    .line 342
    aget v22, v12, v21

    aput v22, v12, v4

    .line 343
    aput v7, v12, v21

    add-int/2addr v4, v8

    goto :goto_1c

    .line 322
    :cond_24
    aget v3, v12, v5

    aget v4, v12, v8

    add-int/2addr v3, v4

    add-int v16, v3, v16

    .line 323
    aget v3, v12, p3

    aput v3, v12, v5

    .line 324
    aget v3, v12, v18

    aput v3, v12, v8

    .line 325
    aput v5, v12, p3

    .line 326
    aput v5, v12, v18

    add-int/lit8 v6, v6, -0x1

    goto :goto_1d

    :cond_25
    const/16 v18, 0x3

    const/16 v19, -0x1

    const/16 v20, 0x4

    add-int/2addr v6, v8

    .line 331
    :goto_1d
    aput v8, v12, v6

    xor-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    :goto_1e
    add-int/2addr v14, v8

    const/4 v4, 0x3

    goto/16 :goto_7

    .line 335
    :cond_26
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
