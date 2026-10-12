.class public Landroidx/constraintlayout/motion/utils/Oscillator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOUNCE:I = 0x6

.field public static final COS_WAVE:I = 0x5

.field public static final REVERSE_SAW_WAVE:I = 0x4

.field public static final SAW_WAVE:I = 0x3

.field public static final SIN_WAVE:I = 0x0

.field public static final SQUARE_WAVE:I = 0x1

.field public static TAG:Ljava/lang/String; = "Oscillator"

.field public static final TRIANGLE_WAVE:I = 0x2


# instance fields
.field public a:[F

.field public b:[D

.field public c:[D

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->a:[F

    .line 28
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 8

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide p1, 0x3ee4f8b588e368f1L    # 1.0E-5

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_1

    const-wide p1, 0x3feffffde7210be9L    # 0.999999

    .line 143
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    if-lez v2, :cond_2

    return-wide v0

    :cond_2
    if-eqz v2, :cond_3

    neg-int v0, v2

    add-int/lit8 v1, v0, -0x1

    .line 151
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->a:[F

    aget v3, v2, v1

    add-int/lit8 v0, v0, -0x2

    aget v2, v2, v0

    sub-float/2addr v3, v2

    float-to-double v3, v3

    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    aget-wide v6, v5, v1

    aget-wide v0, v5, v0

    sub-double/2addr v6, v0

    div-double/2addr v3, v6

    mul-double p1, p1, v3

    float-to-double v5, v2

    mul-double v3, v3, v0

    sub-double/2addr v5, v3

    add-double/2addr v5, p1

    return-wide v5

    :cond_3
    return-wide v0
.end method

.method public addPoint(DF)V
    .locals 4

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->a:[F

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 55
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v1

    if-gez v1, :cond_0

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 59
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    .line 60
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->a:[F

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->a:[F

    .line 61
    new-array v2, v0, [D

    iput-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->c:[D

    .line 62
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    add-int/lit8 v3, v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    aput-wide p1, v0, v1

    .line 64
    iget-object p1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->a:[F

    aput p3, p1, v1

    return-void
.end method

.method public final b(D)D
    .locals 12

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_0
    cmpl-double v4, p1, v0

    if-lez v4, :cond_1

    move-wide p1, v0

    .line 101
    :cond_1
    :goto_0
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    invoke-static {v4, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v4

    if-lez v4, :cond_2

    return-wide v0

    :cond_2
    if-eqz v4, :cond_3

    neg-int v0, v4

    add-int/lit8 v1, v0, -0x1

    .line 108
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->a:[F

    aget v3, v2, v1

    add-int/lit8 v0, v0, -0x2

    aget v2, v2, v0

    sub-float/2addr v3, v2

    float-to-double v3, v3

    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    aget-wide v6, v5, v1

    aget-wide v8, v5, v0

    sub-double/2addr v6, v8

    div-double/2addr v3, v6

    .line 109
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->c:[D

    aget-wide v0, v1, v0

    float-to-double v5, v2

    mul-double v10, v3, v8

    sub-double/2addr v5, v10

    sub-double v10, p1, v8

    mul-double v10, v10, v5

    add-double/2addr v10, v0

    mul-double p1, p1, p1

    mul-double v8, v8, v8

    sub-double/2addr p1, v8

    mul-double p1, p1, v3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v0

    add-double/2addr p1, v10

    return-wide p1

    :cond_3
    return-wide v2
.end method

.method public getSlope(D)D
    .locals 9

    .line 158
    iget v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->d:I

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    packed-switch v0, :pswitch_data_0

    .line 161
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->a(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->b(D)D

    move-result-wide p1

    mul-double p1, p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double p1, p1, v3

    return-wide p1

    .line 173
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->a(D)D

    move-result-wide v0

    mul-double v0, v0, v5

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->b(D)D

    move-result-wide p1

    mul-double p1, p1, v5

    add-double/2addr p1, v3

    rem-double/2addr p1, v5

    sub-double/2addr p1, v3

    mul-double p1, p1, v0

    return-wide p1

    :pswitch_1
    const-wide v3, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    .line 171
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->a(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->b(D)D

    move-result-wide p1

    mul-double p1, p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double p1, p1, v5

    return-wide p1

    .line 169
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->a(D)D

    move-result-wide p1

    neg-double p1, p1

    mul-double p1, p1, v3

    return-wide p1

    .line 167
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->a(D)D

    move-result-wide p1

    mul-double p1, p1, v3

    return-wide p1

    .line 165
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->a(D)D

    move-result-wide v0

    mul-double v0, v0, v5

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->b(D)D

    move-result-wide p1

    mul-double p1, p1, v5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    add-double/2addr p1, v7

    rem-double/2addr p1, v5

    sub-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->signum(D)D

    move-result-wide p1

    mul-double p1, p1, v0

    return-wide p1

    :pswitch_5
    const-wide/16 p1, 0x0

    return-wide p1

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

.method public getValue(D)D
    .locals 9

    .line 117
    iget v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->d:I

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    packed-switch v0, :pswitch_data_0

    .line 120
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->b(D)D

    move-result-wide p1

    mul-double p1, p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    return-wide p1

    .line 132
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->b(D)D

    move-result-wide p1

    mul-double p1, p1, v3

    rem-double/2addr p1, v3

    sub-double/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    sub-double p1, v7, p1

    mul-double p1, p1, p1

    :goto_0
    sub-double/2addr v7, p1

    return-wide v7

    .line 130
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->b(D)D

    move-result-wide p1

    mul-double p1, p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    return-wide p1

    .line 128
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->b(D)D

    move-result-wide p1

    mul-double p1, p1, v5

    add-double/2addr p1, v7

    rem-double/2addr p1, v5

    goto :goto_0

    .line 126
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->b(D)D

    move-result-wide p1

    mul-double p1, p1, v5

    add-double/2addr p1, v7

    rem-double/2addr p1, v5

    sub-double/2addr p1, v7

    return-wide p1

    .line 124
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->b(D)D

    move-result-wide p1

    mul-double p1, p1, v3

    add-double/2addr p1, v7

    rem-double/2addr p1, v3

    sub-double/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    goto :goto_0

    .line 122
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->b(D)D

    move-result-wide p1

    rem-double/2addr p1, v7

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide p1

    return-wide p1

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

.method public normalize()V
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 74
    :goto_0
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->a:[F

    array-length v8, v7

    if-ge v4, v8, :cond_0

    .line 75
    aget v7, v7, v4

    float-to-double v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move-wide v8, v1

    const/4 v7, 0x1

    .line 77
    :goto_1
    iget-object v10, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->a:[F

    array-length v11, v10

    const/high16 v12, 0x40000000    # 2.0f

    if-ge v7, v11, :cond_1

    add-int/lit8 v11, v7, -0x1

    .line 78
    aget v13, v10, v11

    aget v10, v10, v7

    add-float/2addr v13, v10

    div-float/2addr v13, v12

    .line 79
    iget-object v10, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    aget-wide v14, v10, v7

    aget-wide v11, v10, v11

    sub-double/2addr v14, v11

    float-to-double v10, v13

    mul-double v14, v14, v10

    add-double/2addr v8, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 83
    :goto_2
    iget-object v10, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->a:[F

    array-length v11, v10

    if-ge v7, v11, :cond_2

    .line 84
    aget v11, v10, v7

    float-to-double v13, v11

    div-double v15, v5, v8

    mul-double v13, v13, v15

    double-to-float v11, v13

    aput v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 86
    :cond_2
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->c:[D

    aput-wide v1, v5, v3

    .line 87
    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->a:[F

    array-length v2, v1

    if-ge v4, v2, :cond_3

    add-int/lit8 v2, v4, -0x1

    .line 88
    aget v3, v1, v2

    aget v1, v1, v4

    add-float/2addr v3, v1

    div-float/2addr v3, v12

    .line 89
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    aget-wide v5, v1, v4

    aget-wide v7, v1, v2

    sub-double/2addr v5, v7

    .line 90
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->c:[D

    aget-wide v7, v1, v2

    float-to-double v2, v3

    mul-double v5, v5, v2

    add-double/2addr v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 50
    iput p1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pos ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->b:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->a:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
