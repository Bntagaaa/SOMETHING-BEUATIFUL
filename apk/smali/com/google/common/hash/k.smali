.class final Lcom/google/common/hash/k;
.super Lcom/google/common/hash/f;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/google/common/hash/k;

    invoke-direct {v0}, Lcom/google/common/hash/k;-><init>()V

    sput-object v0, Lcom/google/common/hash/k;->a:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/common/hash/f;-><init>()V

    return-void
.end method

.method public static a(JJJ)J
    .locals 3

    xor-long/2addr p0, p2

    mul-long p0, p0, p4

    const/16 v0, 0x2f

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    xor-long/2addr p0, p2

    mul-long p0, p0, p4

    ushr-long p2, p0, v0

    xor-long/2addr p0, p2

    mul-long p0, p0, p4

    return-wide p0
.end method

.method public static b([BIJJ[J)V
    .locals 7

    .line 44
    sget-object v0, Lcom/google/common/hash/m;->a:Ljava/lang/Enum;

    invoke-interface {v0, p0, p1}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v1

    add-int/lit8 v3, p1, 0x8

    .line 44
    invoke-interface {v0, p0, v3}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v3

    add-int/lit8 v5, p1, 0x10

    .line 44
    invoke-interface {v0, p0, v5}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v5

    add-int/lit8 p1, p1, 0x18

    .line 44
    invoke-interface {v0, p0, p1}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide p0

    add-long/2addr p2, v1

    add-long/2addr p4, p2

    add-long/2addr p4, p0

    const/16 v0, 0x15

    .line 108
    invoke-static {p4, p5, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p4

    add-long/2addr v3, p2

    add-long/2addr v3, v5

    const/16 v0, 0x2c

    .line 112
    invoke-static {v3, v4, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v0, p4

    const/4 p4, 0x0

    add-long/2addr v3, p0

    .line 113
    aput-wide v3, p6, p4

    const/4 p0, 0x1

    add-long/2addr v0, p2

    .line 114
    aput-wide v0, p6, p0

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .locals 36

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    add-int v3, v1, v2

    .line 51
    array-length v4, v0

    invoke-static {v1, v3, v4}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    const/4 v4, 0x2

    const/16 v5, 0x20

    const/16 v8, 0x1e

    const/16 v9, 0x2b

    const-wide v10, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    const-wide v12, -0x3c5a37a36834ced9L    # -7.848031385787155E17

    const/16 v14, 0x25

    const-wide v15, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    if-gt v2, v5, :cond_3

    const/16 v5, 0x10

    const/16 v17, 0x2f

    const/16 v7, 0x8

    if-gt v2, v5, :cond_2

    if-lt v2, v7, :cond_0

    mul-int/lit8 v2, v2, 0x2

    int-to-long v4, v2

    add-long v12, v4, v15

    .line 44
    sget-object v2, Lcom/google/common/hash/m;->a:Ljava/lang/Enum;

    invoke-interface {v2, v0, v1}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v4

    add-long/2addr v4, v15

    sub-int/2addr v3, v7

    .line 44
    invoke-interface {v2, v0, v3}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v0

    .line 122
    invoke-static {v0, v1, v14}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v2, v2, v12

    add-long v8, v2, v4

    const/16 v2, 0x19

    .line 123
    invoke-static {v4, v5, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v2, v0

    mul-long v10, v2, v12

    .line 124
    invoke-static/range {v8 .. v13}, Lcom/google/common/hash/k;->a(JJJ)J

    move-result-wide v15

    goto/16 :goto_1

    :cond_0
    const/4 v5, 0x4

    if-lt v2, v5, :cond_1

    mul-int/lit8 v4, v2, 0x2

    int-to-long v6, v4

    add-long v12, v6, v15

    .line 128
    invoke-static {v1, v0}, Lcom/google/common/hash/m;->a(I[B)I

    move-result v1

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    int-to-long v1, v2

    const/4 v4, 0x3

    shl-long/2addr v6, v4

    add-long/2addr v1, v6

    sub-int/2addr v3, v5

    .line 129
    invoke-static {v3, v0}, Lcom/google/common/hash/m;->a(I[B)I

    move-result v0

    int-to-long v3, v0

    and-long v10, v3, v8

    move-wide v8, v1

    invoke-static/range {v8 .. v13}, Lcom/google/common/hash/k;->a(JJJ)J

    move-result-wide v15

    goto/16 :goto_1

    :cond_1
    if-lez v2, :cond_5

    .line 132
    aget-byte v3, v0, v1

    shr-int/lit8 v5, v2, 0x1

    add-int/2addr v5, v1

    .line 133
    aget-byte v5, v0, v5

    add-int/lit8 v6, v2, -0x1

    add-int/2addr v6, v1

    .line 134
    aget-byte v0, v0, v6

    and-int/lit16 v1, v3, 0xff

    and-int/lit16 v3, v5, 0xff

    shl-int/2addr v3, v7

    add-int/2addr v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    add-int/2addr v0, v2

    int-to-long v1, v1

    mul-long v1, v1, v15

    int-to-long v3, v0

    mul-long v3, v3, v12

    xor-long/2addr v1, v3

    ushr-long v3, v1, v17

    xor-long/2addr v1, v3

    mul-long v15, v15, v1

    goto/16 :goto_1

    :cond_2
    mul-int/lit8 v2, v2, 0x2

    int-to-long v12, v2

    add-long v21, v12, v15

    .line 44
    sget-object v2, Lcom/google/common/hash/m;->a:Ljava/lang/Enum;

    invoke-interface {v2, v0, v1}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v12

    mul-long v12, v12, v10

    add-int/2addr v1, v7

    .line 44
    invoke-interface {v2, v0, v1}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v10

    add-int/lit8 v1, v3, -0x8

    .line 44
    invoke-interface {v2, v0, v1}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v17

    const/16 v19, 0x10

    mul-long v5, v17, v21

    add-int/lit8 v3, v3, -0x10

    .line 44
    invoke-interface {v2, v0, v3}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v0

    mul-long v0, v0, v15

    add-long v2, v12, v10

    .line 149
    invoke-static {v2, v3, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    add-long/2addr v8, v2

    add-long v17, v8, v0

    add-long/2addr v10, v15

    const/16 v7, 0x12

    invoke-static {v10, v11, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v0, v12

    add-long v19, v0, v5

    .line 148
    invoke-static/range {v17 .. v22}, Lcom/google/common/hash/k;->a(JJJ)J

    move-result-wide v15

    goto/16 :goto_1

    :cond_3
    const/16 v17, 0x2f

    const/16 v5, 0x40

    if-gt v2, v5, :cond_4

    mul-int/lit8 v2, v2, 0x2

    int-to-long v4, v2

    add-long v21, v4, v15

    .line 44
    sget-object v2, Lcom/google/common/hash/m;->a:Ljava/lang/Enum;

    invoke-interface {v2, v0, v1}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v4

    mul-long v4, v4, v15

    add-int/lit8 v6, v1, 0x8

    .line 44
    invoke-interface {v2, v0, v6}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v10

    add-int/lit8 v6, v3, -0x8

    .line 44
    invoke-interface {v2, v0, v6}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v12

    mul-long v12, v12, v21

    add-int/lit8 v6, v3, -0x10

    .line 44
    invoke-interface {v2, v0, v6}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v17

    mul-long v17, v17, v15

    move-wide/from16 v23, v4

    add-long v4, v23, v10

    .line 158
    invoke-static {v4, v5, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    invoke-static {v12, v13, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v19

    add-long v19, v19, v4

    add-long v17, v19, v17

    add-long/2addr v10, v15

    const/16 v7, 0x12

    .line 159
    invoke-static {v10, v11, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long v4, v4, v23

    add-long v19, v4, v12

    invoke-static/range {v17 .. v22}, Lcom/google/common/hash/k;->a(JJJ)J

    move-result-wide v4

    add-int/lit8 v6, v1, 0x10

    .line 44
    invoke-interface {v2, v0, v6}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v10

    mul-long v10, v10, v21

    add-int/lit8 v1, v1, 0x18

    .line 44
    invoke-interface {v2, v0, v1}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v12

    add-int/lit8 v1, v3, -0x20

    .line 44
    invoke-interface {v2, v0, v1}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v14

    add-long v17, v17, v14

    mul-long v14, v17, v21

    add-int/lit8 v3, v3, -0x18

    .line 44
    invoke-interface {v2, v0, v3}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v0

    add-long/2addr v4, v0

    mul-long v4, v4, v21

    add-long v0, v10, v12

    .line 165
    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    invoke-static {v14, v15, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v2, v0

    add-long v17, v2, v4

    add-long v12, v12, v23

    const/16 v7, 0x12

    invoke-static {v12, v13, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v0, v10

    add-long v19, v0, v14

    .line 164
    invoke-static/range {v17 .. v22}, Lcom/google/common/hash/k;->a(JJJ)J

    move-result-wide v15

    goto/16 :goto_1

    .line 178
    :cond_4
    new-array v6, v4, [J

    .line 179
    new-array v7, v4, [J

    .line 44
    sget-object v3, Lcom/google/common/hash/m;->a:Ljava/lang/Enum;

    invoke-interface {v3, v0, v1}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v3

    const-wide v8, 0x1529cba0ca458ffL

    add-long/2addr v8, v3

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    .line 183
    div-int/lit8 v3, v2, 0x40

    mul-int/lit8 v3, v3, 0x40

    add-int/2addr v3, v1

    and-int/lit8 v2, v2, 0x3f

    add-int v16, v3, v2

    add-int/lit8 v18, v16, -0x3f

    const-wide v4, 0x134a747f856d0526L    # 9.592726139023731E-216

    const-wide v19, 0x226bb95b4e64b6d4L    # 7.104748899679321E-143

    :goto_0
    add-long v8, v8, v19

    const/16 v21, 0x0

    .line 186
    aget-wide v22, v6, v21

    add-long v8, v8, v22

    move-wide/from16 v22, v10

    add-int/lit8 v10, v1, 0x8

    .line 44
    sget-object v11, Lcom/google/common/hash/m;->a:Ljava/lang/Enum;

    invoke-interface {v11, v0, v10}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v24

    add-long v8, v8, v24

    .line 186
    invoke-static {v8, v9, v14}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    mul-long v8, v8, v22

    .line 187
    aget-wide v24, v6, v15

    add-long v19, v19, v24

    add-int/lit8 v10, v1, 0x30

    .line 44
    invoke-interface {v11, v0, v10}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v24

    move-wide/from16 v26, v12

    add-long v12, v19, v24

    const/16 v10, 0x2a

    .line 187
    invoke-static {v12, v13, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    mul-long v12, v12, v22

    .line 188
    aget-wide v19, v7, v15

    xor-long v8, v8, v19

    .line 189
    aget-wide v19, v6, v21

    const/16 v24, 0x1

    add-int/lit8 v15, v1, 0x28

    .line 44
    invoke-interface {v11, v0, v15}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v28

    add-long v19, v19, v28

    add-long v19, v19, v12

    .line 190
    aget-wide v12, v7, v21

    add-long/2addr v4, v12

    const/16 v12, 0x21

    invoke-static {v4, v5, v12}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    mul-long v28, v4, v22

    .line 191
    aget-wide v4, v6, v24

    mul-long v4, v4, v22

    aget-wide v30, v7, v21

    add-long v30, v8, v30

    move v15, v2

    move v13, v3

    move-wide v2, v4

    move-wide/from16 v4, v30

    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/k;->b([BIJJ[J)V

    move/from16 v30, v1

    move-object/from16 v25, v6

    add-int/lit8 v1, v30, 0x20

    .line 192
    aget-wide v2, v7, v24

    add-long v2, v28, v2

    add-int/lit8 v4, v30, 0x10

    .line 44
    invoke-interface {v11, v0, v4}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v4

    add-long v4, v19, v4

    move-object v6, v7

    .line 192
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/k;->b([BIJJ[J)V

    add-int/lit8 v1, v30, 0x40

    if-ne v1, v13, :cond_6

    const-wide/16 v1, 0xff

    and-long/2addr v1, v8

    shl-long v1, v1, v24

    add-long v34, v1, v22

    .line 201
    aget-wide v1, v7, v21

    int-to-long v3, v15

    add-long/2addr v1, v3

    aput-wide v1, v7, v21

    .line 202
    aget-wide v3, v25, v21

    add-long/2addr v3, v1

    aput-wide v3, v25, v21

    .line 203
    aget-wide v1, v7, v21

    add-long/2addr v1, v3

    aput-wide v1, v7, v21

    add-long v28, v28, v19

    .line 204
    aget-wide v1, v25, v21

    add-long v28, v28, v1

    add-int/lit8 v1, v16, -0x37

    .line 44
    invoke-interface {v11, v0, v1}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v1

    add-long v1, v28, v1

    .line 204
    invoke-static {v1, v2, v14}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    mul-long v1, v1, v34

    .line 205
    aget-wide v3, v25, v24

    add-long v19, v19, v3

    add-int/lit8 v3, v16, -0xf

    .line 44
    invoke-interface {v11, v0, v3}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v3

    add-long v3, v19, v3

    .line 205
    invoke-static {v3, v4, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    mul-long v3, v3, v34

    .line 206
    aget-wide v5, v7, v24

    const-wide/16 v13, 0x9

    mul-long v5, v5, v13

    xor-long v19, v1, v5

    .line 207
    aget-wide v1, v25, v21

    mul-long v1, v1, v13

    add-int/lit8 v5, v16, -0x17

    .line 44
    invoke-interface {v11, v0, v5}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v5

    add-long/2addr v1, v5

    add-long v13, v1, v3

    .line 208
    aget-wide v1, v7, v21

    add-long/2addr v8, v1

    invoke-static {v8, v9, v12}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    mul-long v8, v1, v34

    .line 209
    aget-wide v1, v25, v24

    mul-long v2, v1, v34

    aget-wide v4, v7, v21

    add-long v4, v19, v4

    move/from16 v1, v18

    move-object/from16 v6, v25

    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/k;->b([BIJJ[J)V

    add-int/lit8 v1, v16, -0x1f

    .line 210
    aget-wide v2, v7, v24

    add-long/2addr v2, v8

    add-int/lit8 v4, v16, -0x2f

    .line 44
    invoke-interface {v11, v0, v4}, Lcom/google/common/hash/m$c;->getLongLittleEndian([BI)J

    move-result-wide v4

    add-long/2addr v4, v13

    move-object v6, v7

    .line 210
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/k;->b([BIJJ[J)V

    .line 211
    aget-wide v30, v25, v21

    aget-wide v32, v6, v21

    .line 212
    invoke-static/range {v30 .. v35}, Lcom/google/common/hash/k;->a(JJJ)J

    move-result-wide v0

    ushr-long v2, v13, v17

    xor-long/2addr v2, v13

    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    mul-long v2, v2, v26

    add-long/2addr v2, v0

    add-long v2, v2, v19

    aget-wide v30, v25, v24

    aget-wide v32, v6, v24

    .line 213
    invoke-static/range {v30 .. v35}, Lcom/google/common/hash/k;->a(JJJ)J

    move-result-wide v0

    add-long v32, v0, v8

    move-wide/from16 v30, v2

    .line 211
    invoke-static/range {v30 .. v35}, Lcom/google/common/hash/k;->a(JJJ)J

    move-result-wide v15

    .line 52
    :cond_5
    :goto_1
    invoke-static/range {v15 .. v16}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0

    :cond_6
    move-object/from16 v0, p1

    move-wide v4, v8

    move v3, v13

    move v2, v15

    move-wide/from16 v10, v22

    move-object/from16 v6, v25

    move-wide/from16 v12, v26

    move-wide/from16 v8, v28

    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "Hashing.farmHashFingerprint64()"

    return-object v0
.end method
