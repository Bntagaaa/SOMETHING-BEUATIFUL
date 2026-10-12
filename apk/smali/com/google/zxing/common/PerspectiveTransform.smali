.class public final Lcom/google/zxing/common/PerspectiveTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:F


# direct methods
.method public constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/google/zxing/common/PerspectiveTransform;->a:F

    .line 42
    iput p4, p0, Lcom/google/zxing/common/PerspectiveTransform;->b:F

    .line 43
    iput p7, p0, Lcom/google/zxing/common/PerspectiveTransform;->c:F

    .line 44
    iput p2, p0, Lcom/google/zxing/common/PerspectiveTransform;->d:F

    .line 45
    iput p5, p0, Lcom/google/zxing/common/PerspectiveTransform;->e:F

    .line 46
    iput p8, p0, Lcom/google/zxing/common/PerspectiveTransform;->f:F

    .line 47
    iput p3, p0, Lcom/google/zxing/common/PerspectiveTransform;->g:F

    .line 48
    iput p6, p0, Lcom/google/zxing/common/PerspectiveTransform;->h:F

    .line 49
    iput p9, p0, Lcom/google/zxing/common/PerspectiveTransform;->i:F

    return-void
.end method

.method public static quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 19

    .line 61
    invoke-static/range {p0 .. p7}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToSquare(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    .line 62
    invoke-static/range {p8 .. p15}, Lcom/google/zxing/common/PerspectiveTransform;->squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    new-instance v2, Lcom/google/zxing/common/PerspectiveTransform;

    iget v3, v0, Lcom/google/zxing/common/PerspectiveTransform;->a:F

    iget v4, v1, Lcom/google/zxing/common/PerspectiveTransform;->a:F

    mul-float v5, v4, v3

    iget v6, v1, Lcom/google/zxing/common/PerspectiveTransform;->d:F

    iget v7, v0, Lcom/google/zxing/common/PerspectiveTransform;->b:F

    mul-float v8, v6, v7

    add-float/2addr v8, v5

    iget v5, v1, Lcom/google/zxing/common/PerspectiveTransform;->g:F

    iget v9, v0, Lcom/google/zxing/common/PerspectiveTransform;->c:F

    mul-float v10, v5, v9

    add-float/2addr v10, v8

    iget v8, v0, Lcom/google/zxing/common/PerspectiveTransform;->d:F

    mul-float v11, v4, v8

    iget v12, v0, Lcom/google/zxing/common/PerspectiveTransform;->e:F

    mul-float v13, v6, v12

    add-float/2addr v13, v11

    iget v11, v0, Lcom/google/zxing/common/PerspectiveTransform;->f:F

    mul-float v14, v5, v11

    add-float/2addr v14, v13

    iget v13, v0, Lcom/google/zxing/common/PerspectiveTransform;->g:F

    mul-float v4, v4, v13

    iget v15, v0, Lcom/google/zxing/common/PerspectiveTransform;->h:F

    mul-float v6, v6, v15

    add-float/2addr v6, v4

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->i:F

    mul-float v5, v5, v0

    add-float/2addr v5, v6

    iget v4, v1, Lcom/google/zxing/common/PerspectiveTransform;->b:F

    mul-float v6, v4, v3

    move/from16 p0, v0

    iget v0, v1, Lcom/google/zxing/common/PerspectiveTransform;->e:F

    mul-float v16, v0, v7

    add-float v16, v16, v6

    iget v6, v1, Lcom/google/zxing/common/PerspectiveTransform;->h:F

    mul-float v17, v6, v9

    add-float v17, v17, v16

    mul-float v16, v4, v8

    mul-float v18, v0, v12

    add-float v18, v18, v16

    mul-float v16, v6, v11

    add-float v16, v16, v18

    mul-float v4, v4, v13

    mul-float v0, v0, v15

    add-float/2addr v0, v4

    mul-float v6, v6, p0

    add-float/2addr v6, v0

    iget v0, v1, Lcom/google/zxing/common/PerspectiveTransform;->c:F

    mul-float v3, v3, v0

    iget v4, v1, Lcom/google/zxing/common/PerspectiveTransform;->f:F

    mul-float v7, v7, v4

    add-float/2addr v7, v3

    iget v1, v1, Lcom/google/zxing/common/PerspectiveTransform;->i:F

    mul-float v9, v9, v1

    add-float/2addr v9, v7

    mul-float v8, v8, v0

    mul-float v12, v12, v4

    add-float/2addr v12, v8

    mul-float v11, v11, v1

    add-float/2addr v11, v12

    mul-float v0, v0, v13

    mul-float v4, v4, v15

    add-float/2addr v4, v0

    mul-float v1, v1, p0

    add-float/2addr v1, v4

    move/from16 p9, v1

    move-object/from16 p0, v2

    move/from16 p3, v5

    move/from16 p6, v6

    move/from16 p7, v9

    move/from16 p1, v10

    move/from16 p8, v11

    move/from16 p2, v14

    move/from16 p5, v16

    move/from16 p4, v17

    invoke-direct/range {p0 .. p9}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    move-object/from16 v0, p0

    return-object v0
.end method

.method public static quadrilateralToSquare(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 14

    .line 128
    invoke-static/range {p0 .. p7}, Lcom/google/zxing/common/PerspectiveTransform;->squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object p0

    .line 133
    new-instance v0, Lcom/google/zxing/common/PerspectiveTransform;

    .line 133
    iget v1, p0, Lcom/google/zxing/common/PerspectiveTransform;->e:F

    .line 133
    iget v2, p0, Lcom/google/zxing/common/PerspectiveTransform;->i:F

    mul-float v3, v1, v2

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->f:F

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->h:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->g:F

    mul-float v7, v4, v6

    iget v8, p0, Lcom/google/zxing/common/PerspectiveTransform;->d:F

    mul-float v9, v8, v2

    sub-float/2addr v7, v9

    mul-float v9, v8, v5

    mul-float v10, v1, v6

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/google/zxing/common/PerspectiveTransform;->c:F

    mul-float v11, v10, v5

    iget v12, p0, Lcom/google/zxing/common/PerspectiveTransform;->b:F

    mul-float v13, v12, v2

    sub-float/2addr v11, v13

    iget p0, p0, Lcom/google/zxing/common/PerspectiveTransform;->a:F

    mul-float v2, v2, p0

    mul-float v13, v10, v6

    sub-float/2addr v2, v13

    mul-float v6, v6, v12

    mul-float v5, v5, p0

    sub-float/2addr v6, v5

    mul-float v5, v12, v4

    mul-float v13, v10, v1

    sub-float/2addr v5, v13

    mul-float v10, v10, v8

    mul-float v4, v4, p0

    sub-float/2addr v10, v4

    mul-float p0, p0, v1

    mul-float v12, v12, v8

    sub-float/2addr p0, v12

    move v1, v5

    move v5, v2

    move v2, v7

    move v7, v1

    move v1, v3

    move v3, v9

    move v8, v10

    move v4, v11

    move v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v0
.end method

.method public static squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 14

    sub-float v0, p0, p2

    add-float v0, v0, p4

    sub-float v0, v0, p6

    sub-float v1, p1, p3

    add-float v1, v1, p5

    sub-float v1, v1, p7

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 106
    new-instance v3, Lcom/google/zxing/common/PerspectiveTransform;

    sub-float v4, p2, p0

    sub-float v5, p4, p2

    sub-float v7, p3, p1

    sub-float v8, p5, p3

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move v6, p0

    move v9, p1

    invoke-direct/range {v3 .. v12}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v3

    :cond_0
    sub-float v2, p2, p4

    sub-float v3, p6, p4

    sub-float v4, p3, p5

    sub-float v5, p7, p5

    mul-float v6, v2, v5

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    mul-float v5, v5, v0

    mul-float v3, v3, v1

    sub-float/2addr v5, v3

    div-float v11, v5, v6

    mul-float v2, v2, v1

    mul-float v0, v0, v4

    sub-float/2addr v2, v0

    div-float v12, v2, v6

    .line 117
    new-instance v4, Lcom/google/zxing/common/PerspectiveTransform;

    sub-float v0, p2, p0

    mul-float v1, v11, p2

    add-float v5, v1, v0

    sub-float v0, p6, p0

    mul-float v1, v12, p6

    add-float v6, v1, v0

    sub-float v0, p3, p1

    mul-float v1, v11, p3

    add-float v8, v1, v0

    sub-float v0, p7, p1

    mul-float v1, v12, p7

    add-float v9, v1, v0

    const/high16 v13, 0x3f800000    # 1.0f

    move v7, p0

    move v10, p1

    invoke-direct/range {v4 .. v13}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v4
.end method


# virtual methods
.method public transformPoints([F)V
    .locals 8

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 78
    aget v2, p1, v1

    add-int/lit8 v3, v1, 0x1

    .line 79
    aget v4, p1, v3

    .line 80
    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->c:F

    mul-float v5, v5, v2

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->f:F

    mul-float v6, v6, v4

    add-float/2addr v6, v5

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->i:F

    add-float/2addr v6, v5

    .line 81
    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a:F

    mul-float v5, v5, v2

    iget v7, p0, Lcom/google/zxing/common/PerspectiveTransform;->d:F

    mul-float v7, v7, v4

    add-float/2addr v7, v5

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->g:F

    add-float/2addr v7, v5

    div-float/2addr v7, v6

    aput v7, p1, v1

    .line 82
    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->b:F

    mul-float v5, v5, v2

    iget v2, p0, Lcom/google/zxing/common/PerspectiveTransform;->e:F

    mul-float v2, v2, v4

    add-float/2addr v2, v5

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->h:F

    add-float/2addr v2, v4

    div-float/2addr v2, v6

    aput v2, p1, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transformPoints([F[F)V
    .locals 7

    .line 88
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 90
    aget v2, p1, v1

    .line 91
    aget v3, p2, v1

    .line 92
    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->c:F

    mul-float v4, v4, v2

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->f:F

    mul-float v5, v5, v3

    add-float/2addr v5, v4

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->i:F

    add-float/2addr v5, v4

    .line 93
    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->a:F

    mul-float v4, v4, v2

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->d:F

    mul-float v6, v6, v3

    add-float/2addr v6, v4

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->g:F

    add-float/2addr v6, v4

    div-float/2addr v6, v5

    aput v6, p1, v1

    .line 94
    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->b:F

    mul-float v4, v4, v2

    iget v2, p0, Lcom/google/zxing/common/PerspectiveTransform;->e:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    iget v3, p0, Lcom/google/zxing/common/PerspectiveTransform;->h:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
