.class public Landroidx/constraintlayout/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/motion/utils/CurveFit;
.source "SourceFile"


# instance fields
.field public final a:[D

.field public final b:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .locals 9

    .line 30
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/CurveFit;-><init>()V

    .line 31
    array-length v0, p1

    const/4 v0, 0x0

    .line 32
    aget-object v1, p2, v0

    array-length v1, v1

    .line 33
    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->a:[D

    .line 34
    iput-object p2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->b:[[D

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    move-wide v3, v1

    .line 38
    array-length v6, p1

    if-ge v5, v6, :cond_1

    .line 39
    aget-object v6, p2, v5

    aget-wide v7, v6, v0

    if-lez v5, :cond_0

    sub-double v1, v7, v1

    sub-double v3, v7, v3

    .line 42
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    :cond_0
    add-int/lit8 v5, v5, 0x1

    move-wide v1, v7

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getPos(DI)D
    .locals 10

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->a:[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 174
    aget-wide v3, v0, v2

    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->b:[[D

    cmpg-double v6, p1, v3

    if-gtz v6, :cond_0

    .line 175
    aget-object p1, v5, v2

    aget-wide p2, p1, p3

    return-wide p2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 177
    aget-wide v3, v0, v1

    cmpl-double v6, p1, v3

    if-ltz v6, :cond_1

    .line 178
    aget-object p1, v5, v1

    aget-wide p2, p1, p3

    return-wide p2

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_4

    .line 182
    aget-wide v3, v0, v2

    cmpl-double v6, p1, v3

    if-nez v6, :cond_2

    .line 183
    aget-object p1, v5, v2

    aget-wide p2, p1, p3

    return-wide p2

    :cond_2
    add-int/lit8 v6, v2, 0x1

    .line 185
    aget-wide v7, v0, v6

    cmpg-double v9, p1, v7

    if-gez v9, :cond_3

    sub-double/2addr v7, v3

    sub-double/2addr p1, v3

    div-double/2addr p1, v7

    .line 188
    aget-object v0, v5, v2

    aget-wide v1, v0, p3

    .line 189
    aget-object v0, v5, v6

    aget-wide v3, v0, p3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, p1

    mul-double v5, v5, v1

    mul-double v3, v3, p1

    add-double/2addr v3, v5

    return-wide v3

    :cond_3
    move v2, v6

    goto :goto_0

    :cond_4
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getPos(D[D)V
    .locals 11

    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->a:[D

    array-length v1, v0

    .line 102
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->b:[[D

    const/4 v3, 0x0

    aget-object v4, v2, v3

    array-length v4, v4

    .line 103
    aget-wide v5, v0, v3

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v4, :cond_4

    .line 105
    aget-object p2, v2, v3

    aget-wide v0, p2, p1

    aput-wide v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 109
    aget-wide v5, v0, v1

    cmpl-double v7, p1, v5

    if-ltz v7, :cond_1

    :goto_1
    if-ge v3, v4, :cond_4

    .line 111
    aget-object p1, v2, v1

    aget-wide v5, p1, v3

    aput-wide v5, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_4

    .line 117
    aget-wide v6, v0, v5

    cmpl-double v8, p1, v6

    if-nez v8, :cond_2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_2

    .line 119
    aget-object v7, v2, v5

    aget-wide v8, v7, v6

    aput-wide v8, p3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v5, 0x1

    .line 122
    aget-wide v7, v0, v6

    cmpg-double v9, p1, v7

    if-gez v9, :cond_3

    .line 123
    aget-wide v9, v0, v5

    sub-double/2addr v7, v9

    sub-double/2addr p1, v9

    div-double/2addr p1, v7

    :goto_4
    if-ge v3, v4, :cond_4

    .line 126
    aget-object v0, v2, v5

    aget-wide v7, v0, v3

    .line 127
    aget-object v0, v2, v6

    aget-wide v9, v0, v3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    mul-double v0, v0, v7

    mul-double v9, v9, p1

    add-double/2addr v9, v0

    .line 129
    aput-wide v9, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    return-void
.end method

.method public getPos(D[F)V
    .locals 11

    .line 137
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->a:[D

    array-length v1, v0

    .line 138
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->b:[[D

    const/4 v3, 0x0

    aget-object v4, v2, v3

    array-length v4, v4

    .line 139
    aget-wide v5, v0, v3

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v4, :cond_4

    .line 141
    aget-object p2, v2, v3

    aget-wide v0, p2, p1

    double-to-float p2, v0

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 145
    aget-wide v5, v0, v1

    cmpl-double v7, p1, v5

    if-ltz v7, :cond_1

    :goto_1
    if-ge v3, v4, :cond_4

    .line 147
    aget-object p1, v2, v1

    aget-wide v5, p1, v3

    double-to-float p1, v5

    aput p1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_4

    .line 153
    aget-wide v6, v0, v5

    cmpl-double v8, p1, v6

    if-nez v8, :cond_2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_2

    .line 155
    aget-object v7, v2, v5

    aget-wide v8, v7, v6

    double-to-float v7, v8

    aput v7, p3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v5, 0x1

    .line 158
    aget-wide v7, v0, v6

    cmpg-double v9, p1, v7

    if-gez v9, :cond_3

    .line 159
    aget-wide v9, v0, v5

    sub-double/2addr v7, v9

    sub-double/2addr p1, v9

    div-double/2addr p1, v7

    :goto_4
    if-ge v3, v4, :cond_4

    .line 162
    aget-object v0, v2, v5

    aget-wide v7, v0, v3

    .line 163
    aget-object v0, v2, v6

    aget-wide v9, v0, v3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    mul-double v0, v0, v7

    mul-double v9, v9, p1

    add-double/2addr v9, v0

    double-to-float v0, v9

    .line 165
    aput v0, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    return-void
.end method

.method public getSlope(DI)D
    .locals 7

    .line 223
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->a:[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 225
    aget-wide v3, v0, v2

    cmpg-double v5, p1, v3

    if-gez v5, :cond_0

    :goto_0
    move-wide p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 227
    aget-wide v3, v0, v3

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 231
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_2

    .line 232
    aget-wide p1, v0, v2

    sub-double/2addr v4, p1

    .line 234
    iget-object p1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->b:[[D

    aget-object p2, p1, v2

    aget-wide v0, p2, p3

    .line 235
    aget-object p1, p1, v3

    aget-wide p2, p1, p3

    sub-double/2addr p2, v0

    div-double/2addr p2, v4

    return-wide p2

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getSlope(D[D)V
    .locals 11

    .line 198
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->a:[D

    array-length v1, v0

    .line 199
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->b:[[D

    const/4 v3, 0x0

    aget-object v4, v2, v3

    array-length v4, v4

    .line 200
    aget-wide v5, v0, v3

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_0

    :goto_0
    move-wide p1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    .line 202
    aget-wide v5, v0, v5

    cmpl-double v7, p1, v5

    if-ltz v7, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_3

    add-int/lit8 v6, v5, 0x1

    .line 207
    aget-wide v7, v0, v6

    cmpg-double v9, p1, v7

    if-gtz v9, :cond_2

    .line 208
    aget-wide p1, v0, v5

    sub-double/2addr v7, p1

    :goto_3
    if-ge v3, v4, :cond_3

    .line 211
    aget-object p1, v2, v5

    aget-wide v0, p1, v3

    .line 212
    aget-object p1, v2, v6

    aget-wide v9, p1, v3

    sub-double/2addr v9, v0

    div-double/2addr v9, v7

    .line 214
    aput-wide v9, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    return-void
.end method

.method public getTimePoints()[D
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->a:[D

    return-object v0
.end method
