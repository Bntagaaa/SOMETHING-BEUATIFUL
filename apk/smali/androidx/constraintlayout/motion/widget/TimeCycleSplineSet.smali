.class public abstract Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$k;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$e;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$n;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$m;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$l;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$j;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$i;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$d;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$h;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$g;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$f;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$a;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$c;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public final c:[F

.field public d:J

.field public e:F

.field protected mContinue:Z

.field protected mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field protected mValues:[[F

.field protected mWaveShape:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    const/16 v1, 0xa

    .line 40
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    const/4 v2, 0x2

    .line 41
    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    aput v1, v2, v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    .line 44
    new-array v1, v4, [F

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->c:[F

    .line 49
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 51
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->e:F

    return-void
.end method


# virtual methods
.method public calcWave(F)F
    .locals 4

    .line 100
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    const v1, 0x40c90fdb

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    mul-float p1, p1, v1

    float-to-double v0, p1

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_0
    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    rem-float/2addr p1, v0

    sub-float/2addr p1, v2

    .line 115
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v3, p1

    mul-float p1, p1, p1

    :goto_0
    sub-float/2addr v3, p1

    return v3

    :pswitch_1
    mul-float p1, p1, v1

    float-to-double v0, p1

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_2
    mul-float p1, p1, v2

    add-float/2addr p1, v3

    rem-float/2addr p1, v2

    goto :goto_0

    :pswitch_3
    mul-float p1, p1, v2

    add-float/2addr p1, v3

    rem-float/2addr p1, v2

    sub-float/2addr p1, v3

    return p1

    .line 107
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_0

    :pswitch_5
    mul-float p1, p1, v1

    .line 105
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 70
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    move/from16 v6, p1

    float-to-double v6, v6

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->c:[F

    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    const/4 v5, 0x1

    .line 71
    aget v6, v8, v5

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    cmpl-float v11, v6, v10

    if-nez v11, :cond_0

    .line 73
    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    .line 74
    aget v1, v8, v7

    return v1

    .line 76
    :cond_0
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->e:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 77
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->b:Ljava/lang/String;

    .line 56
    iget-object v13, v4, Landroidx/constraintlayout/motion/widget/KeyCache;->a:Ljava/util/HashMap;

    .line 56
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    const/high16 v15, 0x7fc00000    # Float.NaN

    if-nez v14, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 60
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    .line 64
    array-length v13, v12

    if-lez v13, :cond_3

    .line 65
    aget v15, v12, v9

    .line 77
    :cond_3
    :goto_0
    iput v15, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->e:F

    .line 78
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 79
    iput v10, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->e:F

    .line 82
    :cond_4
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->d:J

    sub-long v12, v1, v12

    .line 83
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->e:F

    float-to-double v14, v14

    long-to-double v12, v12

    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v12, v12, v16

    move-object/from16 v16, v8

    const/16 p1, 0x2

    float-to-double v7, v6

    mul-double v12, v12, v7

    add-double/2addr v12, v14

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v12, v6

    double-to-float v6, v12

    iput v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->e:F

    .line 84
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->b:Ljava/lang/String;

    .line 31
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/KeyCache;->a:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 32
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 33
    new-array v12, v5, [F

    .line 34
    aput v6, v12, v9

    .line 35
    invoke-virtual {v8, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 38
    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 39
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 40
    new-array v12, v5, [F

    .line 41
    aput v6, v12, v9

    .line 42
    invoke-virtual {v8, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 45
    :cond_6
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 46
    array-length v4, v3

    if-gtz v4, :cond_7

    .line 47
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 49
    :cond_7
    aput v6, v3, v9

    .line 50
    invoke-virtual {v8, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :goto_1
    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->d:J

    .line 86
    aget v1, v16, v9

    .line 87
    iget v2, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->e:F

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->calcWave(F)F

    move-result v2

    .line 88
    aget v3, v16, p1

    mul-float v2, v2, v1

    add-float/2addr v2, v3

    cmpl-float v1, v1, v10

    if-nez v1, :cond_9

    if-eqz v11, :cond_8

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    .line 90
    :cond_9
    :goto_2
    iput-boolean v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    return v2
.end method

.method public getCurveFit()Landroidx/constraintlayout/motion/utils/CurveFit;
    .locals 1

    .line 121
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-object v0
.end method

.method public setPoint(IFFIF)V
    .locals 2

    .line 179
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->a:I

    aput p1, v0, v1

    .line 180
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    aget-object p1, p1, v1

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    .line 181
    aput p3, p1, p2

    const/4 p3, 0x2

    .line 182
    aput p5, p1, p3

    .line 183
    iget p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    .line 184
    iget p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->a:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->a:I

    return-void
.end method

.method public abstract setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
.end method

.method public setStartTime(J)V
    .locals 0

    .line 175
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->d:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->b:Ljava/lang/String;

    return-void
.end method

.method public setup(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 188
    iget v1, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->a:I

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error no points added to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplineSet"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    .line 414
    array-length v5, v2

    add-int/lit8 v5, v5, 0xa

    new-array v5, v5, [I

    const/4 v6, 0x0

    .line 416
    aput v1, v5, v6

    .line 417
    aput v6, v5, v4

    const/4 v1, 0x2

    const/4 v7, 0x2

    :goto_0
    if-lez v7, :cond_4

    add-int/lit8 v8, v7, -0x1

    .line 419
    aget v9, v5, v8

    add-int/lit8 v10, v7, -0x2

    .line 420
    aget v11, v5, v10

    if-ge v9, v11, :cond_3

    .line 432
    aget v12, v2, v11

    move v13, v9

    move v14, v13

    :goto_1
    if-ge v13, v11, :cond_2

    .line 435
    aget v15, v2, v13

    if-gt v15, v12, :cond_1

    .line 445
    aget v16, v2, v14

    .line 446
    aput v15, v2, v14

    .line 447
    aput v16, v2, v13

    .line 448
    aget-object v15, v3, v14

    .line 449
    aget-object v16, v3, v13

    aput-object v16, v3, v14

    .line 450
    aput-object v15, v3, v13

    add-int/lit8 v14, v14, 0x1

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 445
    :cond_2
    aget v12, v2, v14

    .line 446
    aget v13, v2, v11

    aput v13, v2, v14

    .line 447
    aput v12, v2, v11

    .line 448
    aget-object v12, v3, v14

    .line 449
    aget-object v13, v3, v11

    aput-object v13, v3, v14

    .line 450
    aput-object v12, v3, v11

    add-int/lit8 v12, v14, -0x1

    .line 423
    aput v12, v5, v10

    .line 424
    aput v9, v5, v8

    add-int/lit8 v8, v7, 0x1

    .line 425
    aput v11, v5, v7

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v14, v14, 0x1

    .line 426
    aput v14, v5, v8

    goto :goto_0

    :cond_3
    move v7, v10

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    :goto_2
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    array-length v7, v5

    if-ge v2, v7, :cond_6

    .line 195
    aget v7, v5, v2

    add-int/lit8 v8, v2, -0x1

    aget v5, v5, v8

    if-eq v7, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    if-nez v3, :cond_7

    const/4 v3, 0x1

    .line 202
    :cond_7
    new-array v2, v3, [D

    .line 203
    new-array v5, v1, [I

    const/4 v7, 0x3

    aput v7, v5, v4

    aput v3, v5, v6

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 206
    :goto_3
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->a:I

    if-ge v5, v8, :cond_9

    if-lez v5, :cond_8

    .line 207
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    aget v9, v8, v5

    add-int/lit8 v10, v5, -0x1

    aget v8, v8, v10

    if-ne v9, v8, :cond_8

    goto :goto_4

    .line 210
    :cond_8
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    aget v8, v8, v5

    int-to-double v8, v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double v8, v8, v10

    aput-wide v8, v2, v7

    .line 211
    aget-object v8, v3, v7

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    aget-object v9, v9, v5

    aget v10, v9, v6

    float-to-double v10, v10

    aput-wide v10, v8, v6

    .line 212
    aget v10, v9, v4

    float-to-double v10, v10

    aput-wide v10, v8, v4

    .line 213
    aget v9, v9, v1

    float-to-double v9, v9

    aput-wide v9, v8, v1

    add-int/lit8 v7, v7, 0x1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    move/from16 v5, p1

    .line 216
    invoke-static {v5, v2, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 55
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->b:Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 57
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->a:I

    if-ge v2, v3, :cond_0

    .line 58
    const-string v3, "["

    .line 0
    invoke-static {v0, v3}, L_COROUTINE/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
