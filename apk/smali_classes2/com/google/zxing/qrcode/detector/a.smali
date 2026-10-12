.class final Lcom/google/zxing/qrcode/detector/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/BitMatrix;

.field public final b:Ljava/util/ArrayList;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:F

.field public final h:[I

.field public final i:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/a;->a:Lcom/google/zxing/common/BitMatrix;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/a;->b:Ljava/util/ArrayList;

    .line 71
    iput p2, p0, Lcom/google/zxing/qrcode/detector/a;->c:I

    .line 72
    iput p3, p0, Lcom/google/zxing/qrcode/detector/a;->d:I

    .line 73
    iput p4, p0, Lcom/google/zxing/qrcode/detector/a;->e:I

    .line 74
    iput p5, p0, Lcom/google/zxing/qrcode/detector/a;->f:I

    .line 75
    iput p6, p0, Lcom/google/zxing/qrcode/detector/a;->g:F

    const/4 p1, 0x3

    .line 76
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/a;->h:[I

    .line 77
    iput-object p7, p0, Lcom/google/zxing/qrcode/detector/a;->i:Lcom/google/zxing/ResultPointCallback;

    return-void
.end method


# virtual methods
.method public final a([I)Z
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    .line 171
    iget v1, p0, Lcom/google/zxing/qrcode/detector/a;->g:F

    div-float v0, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 173
    aget v4, p1, v3

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(II[I)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 14

    const/4 v0, 0x0

    .line 256
    aget v1, p3, v0

    const/4 v2, 0x1

    aget v3, p3, v2

    add-int/2addr v1, v3

    const/4 v4, 0x2

    aget v5, p3, v4

    add-int/2addr v1, v5

    sub-int v5, p2, v5

    int-to-float v5, v5

    int-to-float v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v6, v5

    mul-int/lit8 v3, v3, 0x2

    .line 195
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/a;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    .line 197
    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/a;->h:[I

    aput v0, v10, v0

    .line 198
    aput v0, v10, v2

    .line 199
    aput v0, v10, v4

    move v11, p1

    :goto_0
    if-ltz v11, :cond_0

    .line 203
    invoke-virtual {v8, v6, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_0

    aget v12, v10, v2

    if-gt v12, v3, :cond_0

    add-int/lit8 v12, v12, 0x1

    .line 204
    aput v12, v10, v2

    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_0
    const/high16 v12, 0x7fc00000    # Float.NaN

    if-ltz v11, :cond_9

    .line 208
    aget v13, v10, v2

    if-le v13, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    :goto_1
    if-ltz v11, :cond_2

    .line 211
    invoke-virtual {v8, v6, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-nez v13, :cond_2

    aget v13, v10, v0

    if-gt v13, v3, :cond_2

    add-int/lit8 v13, v13, 0x1

    .line 212
    aput v13, v10, v0

    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 215
    :cond_2
    aget v11, v10, v0

    if-le v11, v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/2addr p1, v2

    :goto_2
    if-ge p1, v9, :cond_4

    .line 221
    invoke-virtual {v8, v6, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_4

    aget v11, v10, v2

    if-gt v11, v3, :cond_4

    add-int/lit8 v11, v11, 0x1

    .line 222
    aput v11, v10, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    if-eq p1, v9, :cond_9

    .line 225
    aget v11, v10, v2

    if-le v11, v3, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    if-ge p1, v9, :cond_6

    .line 228
    invoke-virtual {v8, v6, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_6

    aget v11, v10, v4

    if-gt v11, v3, :cond_6

    add-int/lit8 v11, v11, 0x1

    .line 229
    aput v11, v10, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 232
    :cond_6
    aget v6, v10, v4

    if-le v6, v3, :cond_7

    goto :goto_4

    .line 236
    :cond_7
    aget v3, v10, v0

    aget v8, v10, v2

    add-int/2addr v3, v8

    add-int/2addr v3, v6

    sub-int/2addr v3, v1

    .line 237
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    mul-int/lit8 v1, v1, 0x2

    if-lt v3, v1, :cond_8

    goto :goto_4

    .line 241
    :cond_8
    invoke-virtual {p0, v10}, Lcom/google/zxing/qrcode/detector/a;->a([I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 161
    aget v1, v10, v4

    sub-int/2addr p1, v1

    int-to-float p1, p1

    aget v1, v10, v2

    int-to-float v1, v1

    div-float/2addr v1, v7

    sub-float v12, p1, v1

    .line 259
    :cond_9
    :goto_4
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_d

    .line 260
    aget p1, p3, v0

    aget v0, p3, v2

    add-int/2addr p1, v0

    aget v0, p3, v4

    add-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    .line 261
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    .line 41
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    sub-float v3, v12, v3

    .line 41
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_a

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float v3, v5, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_a

    .line 42
    iget v3, v2, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->c:F

    sub-float v4, p1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v6

    if-lez v6, :cond_b

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_a

    .line 53
    :cond_b
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    add-float/2addr v0, v5

    div-float/2addr v0, v7

    .line 54
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    add-float/2addr v1, v12

    div-float/2addr v1, v7

    add-float/2addr v3, p1

    div-float/2addr v3, v7

    .line 56
    new-instance p1, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    invoke-direct {p1, v0, v1, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    return-object p1

    .line 268
    :cond_c
    new-instance v1, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    invoke-direct {v1, v5, v12, p1}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    .line 269
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object p1, p0, Lcom/google/zxing/qrcode/detector/a;->i:Lcom/google/zxing/ResultPointCallback;

    if-eqz p1, :cond_d

    .line 271
    invoke-interface {p1, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method
