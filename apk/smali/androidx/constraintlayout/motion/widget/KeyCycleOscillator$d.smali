.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/motion/utils/Oscillator;

.field public b:[F

.field public c:[D

.field public d:[F

.field public e:[F

.field public f:Landroidx/constraintlayout/motion/utils/CurveFit;

.field public g:[D

.field public h:[D


# virtual methods
.method public getSlope(F)D
    .locals 9

    .line 449
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->f:Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    float-to-double v3, p1

    .line 450
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->h:[D

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 451
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->f:Landroidx/constraintlayout/motion/utils/CurveFit;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->g:[D

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->h:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v1

    .line 454
    aput-wide v3, v0, v2

    :goto_0
    float-to-double v3, p1

    .line 456
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->a:Landroidx/constraintlayout/motion/utils/Oscillator;

    invoke-virtual {p1, v3, v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->getValue(D)D

    move-result-wide v5

    .line 457
    invoke-virtual {p1, v3, v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->getSlope(D)D

    move-result-wide v3

    .line 458
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->h:[D

    aget-wide v0, p1, v1

    aget-wide v7, p1, v2

    mul-double v5, v5, v7

    add-double/2addr v5, v0

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->g:[D

    aget-wide v0, p1, v2

    mul-double v3, v3, v0

    add-double/2addr v3, v5

    return-wide v3
.end method

.method public getValues(F)D
    .locals 6

    .line 437
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->f:Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    float-to-double v3, p1

    .line 438
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->g:[D

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->g:[D

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->e:[F

    aget v3, v3, v2

    float-to-double v3, v3

    aput-wide v3, v0, v2

    .line 441
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->b:[F

    aget v3, v3, v2

    float-to-double v3, v3

    aput-wide v3, v0, v1

    .line 443
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->g:[D

    aget-wide v2, v0, v2

    .line 444
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->a:Landroidx/constraintlayout/motion/utils/Oscillator;

    float-to-double v4, p1

    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/motion/utils/Oscillator;->getValue(D)D

    move-result-wide v4

    .line 445
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->g:[D

    aget-wide v0, p1, v1

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    return-wide v4
.end method

.method public setPoint(IIFFF)V
    .locals 4

    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 486
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->c:[D

    aput-wide v0, p2, p1

    .line 487
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->d:[F

    aput p3, p2, p1

    .line 488
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->e:[F

    aput p4, p2, p1

    .line 489
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->b:[F

    aput p5, p2, p1

    return-void
.end method

.method public setup(F)V
    .locals 12

    .line 494
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->c:[D

    array-length v0, p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 495
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->b:[F

    array-length v4, v2

    add-int/2addr v4, v3

    new-array v4, v4, [D

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->g:[D

    .line 496
    array-length v4, v2

    add-int/2addr v4, v3

    new-array v4, v4, [D

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->h:[D

    .line 497
    aget-wide v4, p1, v1

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->d:[F

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->a:Landroidx/constraintlayout/motion/utils/Oscillator;

    const-wide/16 v8, 0x0

    cmpl-double v10, v4, v8

    if-lez v10, :cond_0

    .line 498
    aget v4, v6, v1

    invoke-virtual {v7, v8, v9, v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    .line 500
    :cond_0
    array-length v4, p1

    sub-int/2addr v4, v3

    .line 501
    aget-wide v8, p1, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v8, v10

    if-gez v5, :cond_1

    .line 502
    aget v4, v6, v4

    invoke-virtual {v7, v10, v11, v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    :cond_1
    const/4 v4, 0x0

    .line 504
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 505
    aget-object v5, v0, v4

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->e:[F

    aget v8, v8, v4

    float-to-double v8, v8

    aput-wide v8, v5, v1

    const/4 v5, 0x0

    .line 506
    :goto_1
    array-length v8, v2

    if-ge v5, v8, :cond_2

    .line 507
    aget-object v8, v0, v5

    aget v9, v2, v5

    float-to-double v9, v9

    aput-wide v9, v8, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 509
    :cond_2
    aget-wide v8, p1, v4

    aget v5, v6, v4

    invoke-virtual {v7, v8, v9, v5}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 512
    :cond_3
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/utils/Oscillator;->normalize()V

    .line 513
    array-length v2, p1

    if-le v2, v3, :cond_4

    .line 514
    invoke-static {v1, p1, v0}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->f:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 516
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$d;->f:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-void
.end method
