.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final f:Landroid/util/SparseArray;

.field public final g:Landroid/util/SparseArray;

.field public h:[F

.field public i:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    .line 318
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->g:Landroid/util/SparseArray;

    .line 323
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    .line 324
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->f:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .locals 0

    .line 350
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V
    .locals 2

    .line 354
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 355
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->g:Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p5, v0, p3

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 356
    iget p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    return-void
.end method

.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .locals 10

    .line 361
    iget-object p5, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v0, p2

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->h:[F

    invoke-virtual {p5, v0, v1, p2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    .line 362
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->h:[F

    array-length p5, p2

    add-int/lit8 p5, p5, -0x2

    aget p5, p2, p5

    .line 363
    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget p2, p2, v0

    .line 364
    iget-wide v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->d:J

    sub-long v2, p3, v2

    .line 365
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->e:F

    float-to-double v4, v0

    long-to-double v2, v2

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v2, v2, v6

    float-to-double v6, p5

    mul-double v2, v2, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->e:F

    .line 366
    iput-wide p3, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->d:J

    .line 367
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->calcWave(F)F

    move-result p3

    const/4 p4, 0x0

    .line 368
    iput-boolean p4, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    const/4 v0, 0x0

    .line 369
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->i:[F

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 370
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->h:[F

    aget v4, v4, v0

    float-to-double v5, v4

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v3, v5

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    mul-float v4, v4, p3

    add-float/2addr v4, p2

    .line 371
    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_1
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->i:[F

    invoke-virtual {p2, p1, p3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    const/4 p1, 0x0

    cmpl-float p1, p5, p1

    if-eqz p1, :cond_2

    .line 375
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    .line 377
    :cond_2
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    return p1
.end method

.method public setup(I)V
    .locals 16

    move-object/from16 v0, p0

    .line 328
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    .line 329
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v4

    .line 330
    new-array v5, v2, [D

    add-int/lit8 v6, v4, 0x2

    .line 331
    new-array v7, v6, [F

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->h:[F

    .line 332
    new-array v7, v4, [F

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->i:[F

    const/4 v7, 0x2

    .line 333
    new-array v7, v7, [I

    const/4 v8, 0x1

    aput v6, v7, v8

    aput v2, v7, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_1

    .line 335
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 336
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 337
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->g:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    int-to-double v12, v9

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    mul-double v12, v12, v14

    .line 338
    aput-wide v12, v5, v7

    .line 339
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->h:[F

    invoke-virtual {v10, v9}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 v9, 0x0

    .line 340
    :goto_1
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;->h:[F

    array-length v12, v10

    if-ge v9, v12, :cond_0

    .line 341
    aget-object v12, v6, v7

    aget v10, v10, v9

    float-to-double v13, v10

    aput-wide v13, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 343
    :cond_0
    aget-object v9, v6, v7

    aget v10, v11, v3

    float-to-double v12, v10

    aput-wide v12, v9, v4

    add-int/lit8 v10, v4, 0x1

    .line 344
    aget v11, v11, v8

    float-to-double v11, v11

    aput-wide v11, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move/from16 v7, p1

    .line 346
    invoke-static {v7, v5, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-void
.end method
