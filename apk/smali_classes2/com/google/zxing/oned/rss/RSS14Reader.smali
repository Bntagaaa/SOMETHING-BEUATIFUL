.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "SourceFile"


# static fields
.field public static final i:[I

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:[[I


# instance fields
.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x46

    const/16 v1, 0x7e

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/16 v4, 0x22

    .line 37
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->i:[I

    const/16 v0, 0x30

    const/16 v1, 0x51

    const/4 v3, 0x4

    const/16 v4, 0x14

    .line 38
    filled-new-array {v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->j:[I

    const/16 v0, 0x7df

    const/16 v1, 0xa9b

    const/4 v4, 0x0

    const/16 v5, 0xa1

    const/16 v6, 0x3c1

    .line 39
    filled-new-array {v4, v5, v6, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->k:[I

    const/16 v0, 0x40c

    const/16 v1, 0x5ec

    const/16 v5, 0x150

    .line 40
    filled-new-array {v4, v5, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->l:[I

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v5, 0x3

    .line 41
    filled-new-array {v0, v1, v3, v5, v2}, [I

    move-result-object v6

    sput-object v6, Lcom/google/zxing/oned/rss/RSS14Reader;->m:[I

    const/4 v6, 0x2

    .line 42
    filled-new-array {v6, v3, v1, v0}, [I

    move-result-object v7

    sput-object v7, Lcom/google/zxing/oned/rss/RSS14Reader;->n:[I

    const/16 v7, 0x9

    .line 44
    new-array v8, v7, [[I

    filled-new-array {v5, v0, v6, v2}, [I

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x5

    filled-new-array {v5, v4, v4, v2}, [I

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x7

    filled-new-array {v5, v5, v9, v2}, [I

    move-result-object v10

    aput-object v10, v8, v6

    filled-new-array {v5, v2, v7, v2}, [I

    move-result-object v10

    aput-object v10, v8, v5

    filled-new-array {v6, v9, v3, v2}, [I

    move-result-object v10

    aput-object v10, v8, v3

    filled-new-array {v6, v4, v1, v2}, [I

    move-result-object v3

    aput-object v3, v8, v4

    filled-new-array {v6, v5, v0, v2}, [I

    move-result-object v3

    aput-object v3, v8, v1

    filled-new-array {v2, v4, v9, v2}, [I

    move-result-object v1

    aput-object v1, v8, v9

    filled-new-array {v2, v5, v7, v2}, [I

    move-result-object v1

    aput-object v1, v8, v0

    sput-object v8, Lcom/google/zxing/oned/rss/RSS14Reader;->o:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->g:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public static b(Ljava/util/ArrayList;Lcom/google/zxing/oned/rss/a;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/a;

    .line 94
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 38
    iget p0, v1, Lcom/google/zxing/oned/rss/a;->d:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/google/zxing/oned/rss/a;->d:I

    return-void

    .line 101
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDataCharacterCounters()[I

    move-result-object v2

    const/4 v3, 0x0

    .line 190
    aput v3, v2, v3

    const/4 v4, 0x1

    .line 191
    aput v3, v2, v4

    const/4 v5, 0x2

    .line 192
    aput v3, v2, v5

    const/4 v6, 0x3

    .line 193
    aput v3, v2, v6

    const/4 v7, 0x4

    .line 194
    aput v3, v2, v7

    const/4 v8, 0x5

    .line 195
    aput v3, v2, v8

    const/4 v9, 0x6

    .line 196
    aput v3, v2, v9

    const/4 v9, 0x7

    .line 197
    aput v3, v2, v9

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v9

    aget v9, v9, v3

    invoke-static {v0, v9, v2}, Lcom/google/zxing/oned/OneDReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    goto :goto_1

    .line 202
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v9

    aget v9, v9, v4

    add-int/2addr v9, v4

    invoke-static {v0, v9, v2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 204
    array-length v0, v2

    sub-int/2addr v0, v4

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v0, :cond_1

    .line 205
    aget v10, v2, v9

    .line 206
    aget v11, v2, v0

    aput v11, v2, v9

    .line 207
    aput v10, v2, v0

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/16 v0, 0x10

    goto :goto_2

    :cond_2
    const/16 v0, 0xf

    .line 212
    :goto_2
    invoke-static {v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->count([I)I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v10

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v11

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v12

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object v13

    const/4 v14, 0x0

    .line 219
    :goto_3
    array-length v15, v2

    if-ge v14, v15, :cond_6

    .line 220
    aget v15, v2, v14

    int-to-float v15, v15

    div-float/2addr v15, v9

    const/high16 v16, 0x3f000000    # 0.5f

    const/16 v17, 0x2

    add-float v5, v15, v16

    float-to-int v5, v5

    if-ge v5, v4, :cond_3

    const/4 v5, 0x1

    const/16 v16, 0x3

    goto :goto_4

    :cond_3
    const/16 v16, 0x3

    const/16 v6, 0x8

    if-le v5, v6, :cond_4

    const/16 v5, 0x8

    :cond_4
    :goto_4
    shr-int/lit8 v6, v14, 0x1

    and-int/lit8 v18, v14, 0x1

    if-nez v18, :cond_5

    .line 229
    aput v5, v10, v6

    int-to-float v5, v5

    sub-float/2addr v15, v5

    .line 230
    aput v15, v12, v6

    goto :goto_5

    .line 232
    :cond_5
    aput v5, v11, v6

    int-to-float v5, v5

    sub-float/2addr v15, v5

    .line 233
    aput v15, v13, v6

    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    goto :goto_3

    :cond_6
    const/16 v16, 0x3

    const/16 v17, 0x2

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->count([I)I

    move-result v2

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->count([I)I

    move-result v5

    add-int v6, v2, v5

    sub-int/2addr v6, v0

    and-int/lit8 v0, v2, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    and-int/lit8 v9, v5, 0x1

    if-ne v9, v4, :cond_8

    const/4 v9, 0x1

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    const/16 v12, 0xa

    const/16 v13, 0xc

    if-eqz v1, :cond_d

    if-le v2, v13, :cond_9

    const/4 v8, 0x0

    const/4 v14, 0x1

    goto :goto_9

    :cond_9
    if-ge v2, v7, :cond_a

    const/4 v8, 0x1

    :goto_8
    const/4 v14, 0x0

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    goto :goto_8

    :goto_9
    if-le v5, v13, :cond_b

    :goto_a
    const/4 v15, 0x0

    const/16 v18, 0x1

    goto :goto_f

    :cond_b
    if-ge v5, v7, :cond_c

    :goto_b
    const/4 v15, 0x1

    :goto_c
    const/16 v18, 0x0

    goto :goto_f

    :cond_c
    const/4 v15, 0x0

    goto :goto_c

    :cond_d
    const/16 v14, 0xb

    if-le v2, v14, :cond_e

    const/4 v8, 0x0

    const/4 v14, 0x1

    goto :goto_e

    :cond_e
    if-ge v2, v8, :cond_f

    const/4 v8, 0x1

    :goto_d
    const/4 v14, 0x0

    goto :goto_e

    :cond_f
    const/4 v8, 0x0

    goto :goto_d

    :goto_e
    if-le v5, v12, :cond_10

    goto :goto_a

    :cond_10
    if-ge v5, v7, :cond_c

    goto :goto_b

    :goto_f
    if-ne v6, v4, :cond_14

    if-eqz v0, :cond_12

    if-nez v9, :cond_11

    const/4 v14, 0x1

    goto :goto_12

    .line 408
    :cond_11
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_12
    if-eqz v9, :cond_13

    :goto_10
    const/16 v18, 0x1

    goto :goto_12

    .line 413
    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_14
    const/4 v12, -0x1

    if-ne v6, v12, :cond_18

    if-eqz v0, :cond_16

    if-nez v9, :cond_15

    const/4 v8, 0x1

    goto :goto_12

    .line 420
    :cond_15
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_16
    if-eqz v9, :cond_17

    :goto_11
    const/4 v15, 0x1

    goto :goto_12

    .line 425
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    if-nez v6, :cond_28

    if-eqz v0, :cond_1b

    if-eqz v9, :cond_1a

    if-ge v2, v5, :cond_19

    const/4 v8, 0x1

    goto :goto_10

    :cond_19
    const/4 v14, 0x1

    goto :goto_11

    .line 432
    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1b
    if-nez v9, :cond_27

    :goto_12
    if-eqz v8, :cond_1d

    if-nez v14, :cond_1c

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_13

    .line 454
    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1d
    :goto_13
    if-eqz v14, :cond_1e

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([I[F)V

    :cond_1e
    if-eqz v15, :cond_20

    if-nez v18, :cond_1f

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_14

    .line 463
    :cond_1f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_20
    :goto_14
    if-eqz v18, :cond_21

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([I[F)V

    .line 241
    :cond_21
    array-length v0, v10

    sub-int/2addr v0, v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_15
    if-ltz v0, :cond_22

    mul-int/lit8 v2, v2, 0x9

    .line 243
    aget v6, v10, v0

    add-int/2addr v2, v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 248
    :cond_22
    array-length v0, v11

    sub-int/2addr v0, v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_16
    if-ltz v0, :cond_23

    mul-int/lit8 v6, v6, 0x9

    .line 250
    aget v9, v11, v0

    add-int/2addr v6, v9

    add-int/2addr v8, v9

    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_23
    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v2

    if-eqz v1, :cond_25

    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_24

    if-gt v5, v13, :cond_24

    if-lt v5, v7, :cond_24

    sub-int/2addr v13, v5

    .line 259
    div-int/lit8 v13, v13, 0x2

    .line 260
    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->m:[I

    aget v0, v0, v13

    rsub-int/lit8 v1, v0, 0x9

    .line 262
    invoke-static {v10, v0, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v0

    .line 263
    invoke-static {v11, v1, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 264
    sget-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->i:[I

    aget v2, v2, v13

    .line 265
    sget-object v3, Lcom/google/zxing/oned/rss/RSS14Reader;->k:[I

    aget v3, v3, v13

    .line 266
    new-instance v4, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    invoke-direct {v4, v0, v6}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v4

    .line 257
    :cond_24
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_25
    and-int/lit8 v0, v8, 0x1

    if-nez v0, :cond_26

    const/16 v0, 0xa

    if-gt v8, v0, :cond_26

    if-lt v8, v7, :cond_26

    rsub-int/lit8 v12, v8, 0xa

    .line 271
    div-int/lit8 v12, v12, 0x2

    .line 272
    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->n:[I

    aget v0, v0, v12

    rsub-int/lit8 v1, v0, 0x9

    .line 274
    invoke-static {v10, v0, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v0

    .line 275
    invoke-static {v11, v1, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 276
    sget-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->j:[I

    aget v2, v2, v12

    .line 277
    sget-object v3, Lcom/google/zxing/oned/rss/RSS14Reader;->l:[I

    aget v3, v3, v12

    .line 278
    new-instance v4, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    add-int/2addr v1, v3

    invoke-direct {v4, v1, v6}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v4

    .line 269
    :cond_26
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 444
    :cond_27
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 449
    :cond_28
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public final d(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/a;
    .locals 6

    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->e(Lcom/google/zxing/common/BitArray;Z)[I

    move-result-object v1

    .line 162
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->f(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    if-nez p4, :cond_0

    move-object p4, v0

    goto :goto_0

    .line 164
    :cond_0
    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/zxing/ResultPointCallback;

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p4, :cond_2

    .line 168
    aget v5, v1, v3

    aget v1, v1, v4

    add-int/2addr v5, v1

    int-to-float v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    if-eqz p2, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result p2

    sub-int/2addr p2, v4

    int-to-float p2, p2

    sub-float v1, p2, v1

    .line 173
    :cond_1
    new-instance p2, Lcom/google/zxing/ResultPoint;

    int-to-float p3, p3

    invoke-direct {p2, v1, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {p4, p2}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 176
    :cond_2
    invoke-virtual {p0, p1, v2, v4}, Lcom/google/zxing/oned/rss/RSS14Reader;->c(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object p2

    .line 177
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->c(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object p1

    .line 178
    new-instance p3, Lcom/google/zxing/oned/rss/a;

    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result p4

    mul-int/lit16 p4, p4, 0x63d

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v1

    add-int/2addr p4, v1

    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    invoke-direct {p3, p4, p1, v2}, Lcom/google/zxing/oned/rss/a;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    return-object v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 11
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

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, p2, v1, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->d(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/a;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->g:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->b(Ljava/util/ArrayList;Lcom/google/zxing/oned/rss/a;)V

    .line 70
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    const/4 v2, 0x1

    .line 71
    invoke-virtual {p0, p2, v2, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->d(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/a;

    move-result-object p1

    .line 72
    iget-object p3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->h:Ljava/util/ArrayList;

    invoke-static {p3, p1}, Lcom/google/zxing/oned/rss/RSS14Reader;->b(Ljava/util/ArrayList;Lcom/google/zxing/oned/rss/a;)V

    .line 73
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 74
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/zxing/oned/rss/a;

    .line 34
    iget v3, p2, Lcom/google/zxing/oned/rss/a;->d:I

    if-le v3, v2, :cond_0

    .line 76
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/a;

    .line 34
    iget v5, v4, Lcom/google/zxing/oned/rss/a;->d:I

    if-le v5, v2, :cond_1

    .line 142
    iget-object v5, p2, Lcom/google/zxing/oned/rss/a;->c:Lcom/google/zxing/oned/rss/FinderPattern;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v6

    .line 143
    iget-object v7, v4, Lcom/google/zxing/oned/rss/a;->c:Lcom/google/zxing/oned/rss/FinderPattern;

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v8

    const/16 v9, 0x8

    .line 147
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v6

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    add-int/2addr v8, v6

    rem-int/lit8 v8, v8, 0x4f

    .line 148
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v6

    mul-int/lit8 v6, v6, 0x9

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v10

    add-int/2addr v10, v6

    const/16 v6, 0x48

    if-le v10, v6, :cond_2

    add-int/lit8 v10, v10, -0x1

    :cond_2
    if-le v10, v9, :cond_3

    add-int/lit8 v10, v10, -0x1

    :cond_3
    if-ne v8, v10, :cond_1

    .line 112
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result p1

    int-to-long p1, p1

    const-wide/32 v8, 0x453af5

    mul-long p1, p1, v8

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result p3

    int-to-long v3, p3

    add-long/2addr p1, v3

    .line 113
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0xe

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v3, 0xd

    rsub-int/lit8 p3, p3, 0xd

    :goto_0
    const/16 v4, 0x30

    if-lez p3, :cond_4

    .line 117
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_1
    if-ge p1, v3, :cond_6

    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v4

    and-int/lit8 v8, p1, 0x1

    if-nez v8, :cond_5

    mul-int/lit8 v6, v6, 0x3

    :cond_5
    add-int/2addr p3, v6

    add-int/2addr p1, v2

    goto :goto_1

    :cond_6
    const/16 p1, 0xa

    .line 126
    rem-int/2addr p3, p1

    rsub-int/lit8 p3, p3, 0xa

    if-ne p3, p1, :cond_7

    const/4 p3, 0x0

    .line 130
    :cond_7
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p1

    .line 133
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p3

    .line 134
    new-instance v3, Lcom/google/zxing/Result;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aget-object v4, p1, v1

    aget-object p1, p1, v2

    aget-object v5, p3, v1

    aget-object p3, p3, v2

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    aput-object v4, v6, v1

    aput-object p1, v6, v2

    const/4 p1, 0x2

    aput-object v5, v6, p1

    aput-object p3, v6, v0

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    const/4 p3, 0x0

    invoke-direct {v3, p2, p3, v6, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v3

    .line 85
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public final e(Lcom/google/zxing/common/BitArray;Z)[I
    .locals 11

    .line 286
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 287
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 288
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 289
    aput v1, v0, v3

    const/4 v4, 0x3

    .line 290
    aput v1, v0, v4

    .line 292
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    .line 295
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v2

    if-ne p2, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move p2, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    .line 306
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v7

    if-eqz v9, :cond_2

    .line 307
    aget v9, v0, v8

    add-int/2addr v9, v2

    aput v9, v0, v8

    goto :goto_4

    :cond_2
    if-ne v8, v4, :cond_4

    .line 310
    invoke-static {v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->isFinderPattern([I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 311
    filled-new-array {p2, v6}, [I

    move-result-object p1

    return-object p1

    .line 313
    :cond_3
    aget v9, v0, v1

    aget v10, v0, v2

    add-int/2addr v9, v10

    add-int/2addr p2, v9

    .line 314
    aget v9, v0, v3

    aput v9, v0, v1

    .line 315
    aget v9, v0, v4

    aput v9, v0, v2

    .line 316
    aput v1, v0, v3

    .line 317
    aput v1, v0, v4

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 322
    :goto_3
    aput v2, v0, v8

    xor-int/lit8 v7, v7, 0x1

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 326
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public final f(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 11

    const/4 v0, 0x0

    .line 333
    aget v1, p4, v0

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    .line 334
    aget v2, p4, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_0

    .line 336
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    add-int/2addr v2, v3

    .line 340
    aget v1, p4, v0

    sub-int/2addr v1, v2

    .line 342
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object v4

    .line 343
    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-static {v4, v0, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    aput v1, v4, v0

    .line 345
    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->o:[[I

    invoke-static {v4, v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->parseFinderValue([I[[I)I

    move-result v6

    .line 347
    aget v0, p4, v3

    if-eqz p3, :cond_1

    .line 350
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result p3

    sub-int/2addr p3, v3

    sub-int/2addr p3, v2

    .line 351
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result p1

    sub-int/2addr p1, v3

    sub-int v0, p1, v0

    move v8, p3

    :goto_1
    move v9, v0

    goto :goto_2

    :cond_1
    move v8, v2

    goto :goto_1

    .line 353
    :goto_2
    new-instance v5, Lcom/google/zxing/oned/rss/FinderPattern;

    aget p1, p4, v3

    filled-new-array {v2, p1}, [I

    move-result-object v7

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v5
.end method

.method public reset()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
