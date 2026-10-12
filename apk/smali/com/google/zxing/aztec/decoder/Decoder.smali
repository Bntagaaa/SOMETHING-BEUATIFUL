.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$b;
    }
.end annotation


# static fields
.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[Ljava/lang/String;

.field public static final j:[Ljava/lang/String;

.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/String;

.field public static final m:[Ljava/lang/String;


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/google/zxing/aztec/AztecDetectorResult;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    const/16 v0, 0x198

    const/16 v1, 0x260

    const/4 v2, 0x0

    const/16 v3, 0x68

    const/16 v4, 0xf0

    .line 44
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->e:[I

    const/16 v0, 0x21

    .line 48
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->f:[I

    const/16 v1, 0x33

    const/16 v3, 0x4c

    const/16 v4, 0x11

    const/16 v5, 0x28

    .line 53
    filled-new-array {v2, v4, v5, v1, v3}, [I

    move-result-object v1

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->g:[I

    .line 57
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->h:[I

    .line 62
    const-string v31, "CTRL_DL"

    const-string v32, "CTRL_BS"

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "A"

    const-string v4, "B"

    const-string v5, "C"

    const-string v6, "D"

    const-string v7, "E"

    const-string v8, "F"

    const-string v9, "G"

    const-string v10, "H"

    const-string v11, "I"

    const-string v12, "J"

    const-string v13, "K"

    const-string v14, "L"

    const-string v15, "M"

    const-string v16, "N"

    const-string v17, "O"

    const-string v18, "P"

    const-string v19, "Q"

    const-string v20, "R"

    const-string v21, "S"

    const-string v22, "T"

    const-string v23, "U"

    const-string v24, "V"

    const-string v25, "W"

    const-string v26, "X"

    const-string v27, "Y"

    const-string v28, "Z"

    const-string v29, "CTRL_LL"

    const-string v30, "CTRL_ML"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->i:[Ljava/lang/String;

    .line 67
    const-string v31, "CTRL_DL"

    const-string v32, "CTRL_BS"

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "a"

    const-string v4, "b"

    const-string v5, "c"

    const-string v6, "d"

    const-string v7, "e"

    const-string v8, "f"

    const-string v9, "g"

    const-string v10, "h"

    const-string v11, "i"

    const-string v12, "j"

    const-string v13, "k"

    const-string v14, "l"

    const-string v15, "m"

    const-string v16, "n"

    const-string v17, "o"

    const-string v18, "p"

    const-string v19, "q"

    const-string v20, "r"

    const-string v21, "s"

    const-string v22, "t"

    const-string v23, "u"

    const-string v24, "v"

    const-string v25, "w"

    const-string v26, "x"

    const-string v27, "y"

    const-string v28, "z"

    const-string v29, "CTRL_US"

    const-string v30, "CTRL_ML"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->j:[Ljava/lang/String;

    .line 72
    const-string v31, "CTRL_PL"

    const-string v32, "CTRL_BS"

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "\u0001"

    const-string v4, "\u0002"

    const-string v5, "\u0003"

    const-string v6, "\u0004"

    const-string v7, "\u0005"

    const-string v8, "\u0006"

    const-string v9, "\u0007"

    const-string v10, "\u0008"

    const-string v11, "\t"

    const-string v12, "\n"

    const-string v13, "\u000b"

    const-string v14, "\u000c"

    const-string v15, "\r"

    const-string v16, "\u001b"

    const-string v17, "\u001c"

    const-string v18, "\u001d"

    const-string v19, "\u001e"

    const-string v20, "\u001f"

    const-string v21, "@"

    const-string v22, "\\"

    const-string v23, "^"

    const-string v24, "_"

    const-string v25, "`"

    const-string v26, "|"

    const-string v27, "~"

    const-string v28, "\u007f"

    const-string v29, "CTRL_LL"

    const-string v30, "CTRL_UL"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->k:[Ljava/lang/String;

    .line 78
    const-string v31, "}"

    const-string v32, "CTRL_UL"

    const-string v1, ""

    const-string v2, "\r"

    const-string v3, "\r\n"

    const-string v4, ". "

    const-string v5, ", "

    const-string v6, ": "

    const-string v7, "!"

    const-string v8, "\""

    const-string v9, "#"

    const-string v10, "$"

    const-string v11, "%"

    const-string v12, "&"

    const-string v13, "\'"

    const-string v14, "("

    const-string v15, ")"

    const-string v16, "*"

    const-string v17, "+"

    const-string v18, ","

    const-string v19, "-"

    const-string v20, "."

    const-string v21, "/"

    const-string v22, ":"

    const-string v23, ";"

    const-string v24, "<"

    const-string v25, "="

    const-string v26, ">"

    const-string v27, "?"

    const-string v28, "["

    const-string v29, "]"

    const-string v30, "{"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->l:[Ljava/lang/String;

    .line 83
    const-string v15, "CTRL_UL"

    const-string v16, "CTRL_US"

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "0"

    const-string v4, "1"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    const-string v8, "5"

    const-string v9, "6"

    const-string v10, "7"

    const-string v11, "8"

    const-string v12, "9"

    const-string v13, ","

    const-string v14, "."

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->m:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x80
        0x120
        0x1e0
        0x2c0
        0x3c0
        0x4e0
        0x620
        0x780
        0x900
        0xaa0
        0xc60
        0xe40
        0x1040
        0x1260
        0x14a0
        0x1700
        0x1980
        0x1c20
        0x1ee0
        0x21c0
        0x24c0
        0x27e0
        0x2b20
        0x2e80
        0x3200
        0x35a0
        0x3960
        0x3d40
        0x4140
        0x4560
        0x49a0
        0x4e00
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x15
        0x30
        0x3c
        0x58
        0x78
        0x9c
        0xc4
        0xf0
        0xe6
        0x110
        0x13c
        0x16c
        0x1a0
        0x1d6
        0x210
        0x24c
        0x28c
        0x2d0
        0x316
        0x360
        0x3ac
        0x3fc
        0x398
        0x3e0
        0x42a
        0x478
        0x4c8
        0x51a
        0x570
        0x5c8
        0x622
        0x680
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([ZII)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    shl-int/lit8 v0, v0, 0x1

    .line 464
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 93
    iput-object v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 94
    invoke-virtual {v1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 96
    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_5

    .line 97
    iget-object v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 427
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v5

    div-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x10

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    .line 428
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 432
    :goto_0
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 434
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    div-int/2addr v8, v4

    sub-int/2addr v8, v2

    rem-int/lit8 v8, v8, 0x10

    if-nez v8, :cond_0

    goto :goto_3

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 439
    :goto_1
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v10

    if-ge v8, v10, :cond_3

    .line 441
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    div-int/2addr v10, v4

    sub-int/2addr v10, v8

    rem-int/lit8 v10, v10, 0x10

    if-nez v10, :cond_1

    goto :goto_2

    .line 445
    :cond_1
    invoke-virtual {v1, v2, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 446
    invoke-virtual {v6, v7, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move-object v1, v6

    .line 377
    :cond_5
    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder;->h:[I

    sget-object v7, Lcom/google/zxing/aztec/decoder/Decoder;->f:[I

    sget-object v8, Lcom/google/zxing/aztec/decoder/Decoder;->g:[I

    sget-object v9, Lcom/google/zxing/aztec/decoder/Decoder;->e:[I

    const/4 v10, 0x5

    if-eqz v2, :cond_7

    .line 378
    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    if-gt v2, v10, :cond_6

    .line 381
    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v2, v9, v2

    new-array v2, v2, [Z

    .line 382
    iget-object v11, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v11}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v11

    aget v11, v8, v11

    iput v11, v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:I

    goto :goto_4

    .line 379
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 384
    :cond_7
    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    const/16 v11, 0x21

    if-gt v2, v11, :cond_33

    .line 387
    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v2, v7, v2

    new-array v2, v2, [Z

    .line 388
    iget-object v11, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v11}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v11

    aget v11, v6, v11

    iput v11, v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:I

    .line 391
    :goto_4
    iget-object v11, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v11}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v11

    .line 392
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_5
    const/16 p1, 0x4

    const/16 v16, 0x1

    if-eqz v11, :cond_a

    const/4 v3, 0x0

    const/16 v17, 0x0

    :goto_6
    mul-int/lit8 v18, v12, 0x2

    const/16 v19, 0xc

    add-int/lit8 v5, v18, -0x4

    if-ge v3, v5, :cond_8

    add-int v5, v13, v3

    const/16 v20, 0x8

    add-int v15, v14, v17

    .line 400
    div-int/lit8 v21, v3, 0x2

    const/16 v22, 0x2

    add-int v4, v21, v14

    invoke-virtual {v1, v15, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    aput-boolean v15, v2, v5

    add-int v18, v13, v18

    add-int/lit8 v18, v18, -0x4

    add-int v18, v18, v3

    add-int v5, v14, v12

    add-int/lit8 v5, v5, -0x1

    sub-int v5, v5, v17

    .line 401
    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    aput-boolean v4, v2, v18

    add-int/lit8 v17, v17, 0x1

    .line 402
    rem-int/lit8 v17, v17, 0x2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    goto :goto_6

    :cond_8
    const/16 v20, 0x8

    const/16 v22, 0x2

    add-int/lit8 v3, v18, 0x1

    const/4 v4, 0x0

    :goto_7
    if-le v3, v10, :cond_9

    mul-int/lit8 v5, v12, 0x4

    add-int/2addr v5, v13

    add-int/lit8 v5, v5, -0x8

    sub-int v15, v18, v3

    add-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x1

    add-int v17, v14, v12

    add-int/lit8 v17, v17, -0x1

    sub-int v10, v17, v4

    .line 407
    div-int/lit8 v17, v3, 0x2

    add-int v17, v17, v14

    move-object/from16 v23, v2

    add-int/lit8 v2, v17, -0x1

    invoke-virtual {v1, v10, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    aput-boolean v10, v23, v5

    mul-int/lit8 v5, v12, 0x6

    add-int/2addr v5, v13

    add-int/lit8 v5, v5, -0xc

    add-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x1

    add-int v10, v14, v4

    .line 409
    invoke-virtual {v1, v2, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v23, v5

    add-int/lit8 v4, v4, 0x1

    .line 411
    rem-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v2, v23

    const/4 v10, 0x5

    goto :goto_7

    :cond_9
    move-object/from16 v23, v2

    add-int/lit8 v14, v14, 0x2

    mul-int/lit8 v2, v12, 0x8

    add-int/lit8 v2, v2, -0x10

    add-int/2addr v13, v2

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v12, -0x4

    move-object/from16 v2, v23

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x5

    goto/16 :goto_5

    :cond_a
    move-object/from16 v23, v2

    const/16 v19, 0xc

    const/16 v20, 0x8

    const/16 v22, 0x2

    .line 275
    iget-object v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x2

    if-gt v1, v3, :cond_b

    .line 276
    iput v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:I

    .line 277
    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_8

    .line 278
    :cond_b
    iget-object v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    const/16 v3, 0x8

    if-gt v1, v3, :cond_c

    .line 279
    iput v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:I

    .line 280
    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_8

    .line 281
    :cond_c
    iget-object v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    const/16 v3, 0x16

    if-gt v1, v3, :cond_d

    const/16 v1, 0xa

    .line 282
    iput v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:I

    .line 283
    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_8

    :cond_d
    const/16 v1, 0xc

    .line 285
    iput v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:I

    .line 286
    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 289
    :goto_8
    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v3

    .line 293
    iget-object v4, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 294
    iget-object v4, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v4

    aget v4, v9, v4

    iget v5, v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:I

    iget v6, v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:I

    mul-int v5, v5, v6

    sub-int/2addr v4, v5

    .line 295
    iget-object v5, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v5}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v5

    aget v5, v8, v5

    :goto_9
    sub-int/2addr v5, v3

    goto :goto_a

    .line 297
    :cond_e
    iget-object v4, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v4

    aget v4, v7, v4

    iget v5, v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:I

    iget v7, v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:I

    mul-int v5, v5, v7

    sub-int/2addr v4, v5

    .line 298
    iget-object v5, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v5}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v5

    aget v5, v6, v5

    goto :goto_9

    .line 301
    :goto_a
    iget v6, v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:I

    new-array v6, v6, [I

    const/4 v7, 0x0

    .line 302
    :goto_b
    iget v8, v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:I

    if-ge v7, v8, :cond_11

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 304
    :goto_c
    iget v10, v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:I

    if-gt v8, v10, :cond_10

    mul-int v11, v10, v7

    add-int/2addr v11, v10

    sub-int/2addr v11, v8

    add-int/2addr v11, v4

    .line 305
    aget-boolean v10, v23, v11

    if-eqz v10, :cond_f

    .line 306
    aget v10, v6, v7

    add-int/2addr v10, v9

    aput v10, v6, v7

    :cond_f
    shl-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 317
    :cond_11
    :try_start_0
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {v4, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 318
    invoke-virtual {v4, v6, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 324
    iput v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->d:I

    .line 326
    iget v4, v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:I

    mul-int v4, v4, v3

    new-array v5, v4, [Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_d
    if-ge v7, v3, :cond_17

    .line 331
    iget v9, v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:I

    add-int/lit8 v9, v9, -0x1

    shl-int v9, v16, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 333
    :goto_e
    iget v13, v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:I

    if-ge v10, v13, :cond_16

    .line 335
    aget v14, v6, v7

    and-int/2addr v14, v9

    if-ne v14, v9, :cond_12

    const/4 v14, 0x1

    goto :goto_f

    :cond_12
    const/4 v14, 0x0

    :goto_f
    add-int/lit8 v15, v13, -0x1

    if-ne v11, v15, :cond_14

    if-eq v14, v12, :cond_13

    add-int/lit8 v8, v8, 0x1

    .line 347
    iget v11, v0, Lcom/google/zxing/aztec/decoder/Decoder;->d:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lcom/google/zxing/aztec/decoder/Decoder;->d:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_11

    .line 341
    :cond_13
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_14
    if-ne v12, v14, :cond_15

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_15
    move v12, v14

    const/4 v11, 0x1

    :goto_10
    mul-int v13, v13, v7

    add-int/2addr v13, v10

    sub-int/2addr v13, v8

    .line 357
    aput-boolean v14, v5, v13

    :goto_11
    ushr-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 117
    :cond_17
    iget v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:I

    iget-object v6, v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v6}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v6

    mul-int v6, v6, v3

    iget v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->d:I

    sub-int/2addr v6, v3

    if-gt v6, v4, :cond_32

    .line 122
    sget-object v3, Lcom/google/zxing/aztec/decoder/Decoder$b;->a:Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x14

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v9, v3

    move-object v12, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_12
    if-nez v7, :cond_31

    if-eqz v8, :cond_18

    const/4 v13, 0x1

    goto :goto_13

    :cond_18
    move-object v12, v9

    :goto_13
    if-eqz v10, :cond_1e

    sub-int v10, v6, v11

    const/4 v14, 0x5

    if-ge v10, v14, :cond_19

    goto/16 :goto_1d

    .line 147
    :cond_19
    invoke-static {v5, v11, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v10

    add-int/lit8 v14, v11, 0x5

    if-nez v10, :cond_1b

    sub-int v10, v6, v14

    const/16 v15, 0xb

    if-ge v10, v15, :cond_1a

    goto/16 :goto_1d

    .line 154
    :cond_1a
    invoke-static {v5, v14, v15}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v10

    add-int/lit8 v10, v10, 0x1f

    add-int/lit8 v14, v11, 0x10

    :cond_1b
    const/4 v11, 0x0

    :goto_14
    if-ge v11, v10, :cond_1d

    sub-int v15, v6, v14

    const/16 v1, 0x8

    if-ge v15, v1, :cond_1c

    const/4 v7, 0x1

    goto :goto_15

    .line 163
    :cond_1c
    invoke-static {v5, v14, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v15

    int-to-char v1, v15

    .line 164
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x8

    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x0

    goto :goto_14

    :cond_1d
    :goto_15
    move v11, v14

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v10, 0x0

    goto/16 :goto_1b

    .line 169
    :cond_1e
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$b;->f:Lcom/google/zxing/aztec/decoder/Decoder$b;

    if-ne v9, v1, :cond_20

    sub-int v1, v6, v11

    const/16 v14, 0x8

    if-ge v1, v14, :cond_1f

    goto/16 :goto_1d

    .line 173
    :cond_1f
    invoke-static {v5, v11, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v1

    add-int/lit8 v11, v11, 0x8

    int-to-char v1, v1

    .line 176
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    const/4 v1, 0x6

    goto/16 :goto_1b

    :cond_20
    const/16 v14, 0x8

    .line 181
    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder$b;->d:Lcom/google/zxing/aztec/decoder/Decoder$b;

    if-ne v9, v15, :cond_21

    const/4 v14, 0x4

    goto :goto_16

    :cond_21
    const/4 v14, 0x5

    :goto_16
    sub-int v2, v6, v11

    if-ge v2, v14, :cond_22

    goto/16 :goto_1d

    .line 189
    :cond_22
    invoke-static {v5, v11, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->a([ZII)I

    move-result v2

    add-int/2addr v11, v14

    .line 250
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-eqz v14, :cond_27

    const/4 v0, 0x1

    if-eq v14, v0, :cond_26

    const/4 v0, 0x2

    if-eq v14, v0, :cond_25

    const/4 v0, 0x3

    if-eq v14, v0, :cond_24

    const/4 v0, 0x4

    if-eq v14, v0, :cond_23

    .line 262
    const-string v2, ""

    goto :goto_17

    .line 258
    :cond_23
    sget-object v14, Lcom/google/zxing/aztec/decoder/Decoder;->l:[Ljava/lang/String;

    aget-object v2, v14, v2

    goto :goto_17

    :cond_24
    const/4 v0, 0x4

    .line 260
    sget-object v14, Lcom/google/zxing/aztec/decoder/Decoder;->m:[Ljava/lang/String;

    aget-object v2, v14, v2

    goto :goto_17

    :cond_25
    const/4 v0, 0x4

    .line 256
    sget-object v14, Lcom/google/zxing/aztec/decoder/Decoder;->k:[Ljava/lang/String;

    aget-object v2, v14, v2

    goto :goto_17

    :cond_26
    const/4 v0, 0x4

    .line 254
    sget-object v14, Lcom/google/zxing/aztec/decoder/Decoder;->j:[Ljava/lang/String;

    aget-object v2, v14, v2

    goto :goto_17

    :cond_27
    const/4 v0, 0x4

    .line 252
    sget-object v14, Lcom/google/zxing/aztec/decoder/Decoder;->i:[Ljava/lang/String;

    aget-object v2, v14, v2

    .line 193
    :goto_17
    const-string v14, "CTRL_"

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2e

    const/4 v14, 0x5

    .line 195
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v14, 0x42

    if-eq v9, v14, :cond_29

    const/16 v1, 0x44

    if-eq v9, v1, :cond_2c

    const/16 v1, 0x50

    if-eq v9, v1, :cond_2b

    const/16 v1, 0x4c

    if-eq v9, v1, :cond_2a

    const/16 v1, 0x4d

    if-eq v9, v1, :cond_28

    move-object v9, v3

    :goto_18
    const/4 v1, 0x6

    goto :goto_1a

    .line 232
    :cond_28
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$b;->c:Lcom/google/zxing/aztec/decoder/Decoder$b;

    :cond_29
    :goto_19
    move-object v9, v1

    goto :goto_18

    .line 228
    :cond_2a
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$b;->b:Lcom/google/zxing/aztec/decoder/Decoder$b;

    goto :goto_19

    .line 230
    :cond_2b
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$b;->e:Lcom/google/zxing/aztec/decoder/Decoder$b;

    goto :goto_19

    :cond_2c
    move-object v9, v15

    goto :goto_18

    .line 197
    :goto_1a
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v0, 0x53

    if-ne v15, v0, :cond_2d

    const/4 v0, 0x5

    .line 199
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v14, :cond_2f

    const/4 v10, 0x1

    goto :goto_1b

    :cond_2d
    const/4 v0, 0x5

    goto :goto_1b

    :cond_2e
    const/4 v0, 0x5

    const/4 v1, 0x6

    .line 204
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    :goto_1b
    move-object/from16 v0, p0

    if-eqz v13, :cond_30

    move-object v9, v12

    const/16 p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_1c
    const/16 v16, 0x1

    goto/16 :goto_12

    :cond_30
    const/16 p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x6

    goto :goto_1c

    .line 218
    :cond_31
    :goto_1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2, v2}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 119
    :cond_32
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 320
    :catch_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 385
    :cond_33
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
