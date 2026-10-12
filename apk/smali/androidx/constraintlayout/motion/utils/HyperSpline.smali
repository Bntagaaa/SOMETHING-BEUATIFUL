.class public Landroidx/constraintlayout/motion/utils/HyperSpline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;
    }
.end annotation


# instance fields
.field public a:I

.field public b:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

.field public c:I

.field public d:[D

.field public e:D

.field public f:[[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/HyperSpline;->setup([[D)V

    return-void
.end method


# virtual methods
.method public approxLength([Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;)D
    .locals 14

    .line 123
    array-length v0, p1

    .line 124
    array-length v0, p1

    new-array v0, v0, [D

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    :goto_0
    const/4 v7, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v3, v8

    if-gez v10, :cond_2

    move-wide v8, v1

    .line 127
    :goto_1
    array-length v10, p1

    if-ge v7, v10, :cond_0

    .line 128
    aget-wide v10, v0, v7

    .line 129
    aget-object v12, p1, v7

    invoke-virtual {v12, v3, v4}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v12

    aput-wide v12, v0, v7

    sub-double/2addr v10, v12

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    cmpl-double v7, v3, v1

    if-lez v7, :cond_1

    .line 133
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    :cond_1
    const-wide v7, 0x3fb999999999999aL    # 0.1

    add-double/2addr v3, v7

    goto :goto_0

    .line 138
    :cond_2
    :goto_2
    array-length v3, p1

    if-ge v7, v3, :cond_3

    .line 139
    aget-wide v3, v0, v7

    .line 140
    aget-object v10, p1, v7

    invoke-virtual {v10, v8, v9}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v10

    aput-wide v10, v0, v7

    sub-double/2addr v3, v10

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 143
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v5

    return-wide v0
.end method

.method public getPos(DI)D
    .locals 5

    .line 111
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->e:D

    mul-double p1, p1, v0

    const/4 v0, 0x0

    .line 114
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->d:[D

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    aget-wide v2, v1, v0

    cmpg-double v4, v2, p1

    if-gez v4, :cond_0

    sub-double/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->b:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-object p3, v2, p3

    aget-object p3, p3, v0

    aget-wide v0, v1, v0

    div-double/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getPos(D[D)V
    .locals 6

    .line 87
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->e:D

    mul-double p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->d:[D

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    aget-wide v3, v2, v1

    cmpg-double v2, v3, p1

    if-gez v2, :cond_0

    sub-double/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 94
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->b:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->d:[D

    aget-wide v4, v3, v1

    div-double v3, p1, v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v2

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getPos(D[F)V
    .locals 6

    .line 99
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->e:D

    mul-double p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->d:[D

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    aget-wide v3, v2, v1

    cmpg-double v2, v3, p1

    if-gez v2, :cond_0

    sub-double/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 106
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->b:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->d:[D

    aget-wide v4, v3, v1

    div-double v3, p1, v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getVelocity(D[D)V
    .locals 6

    .line 75
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->e:D

    mul-double p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->d:[D

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    aget-wide v3, v2, v1

    cmpg-double v2, v3, p1

    if-gez v2, :cond_0

    sub-double/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 82
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->b:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->d:[D

    aget-wide v4, v3, v1

    div-double v3, p1, v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->vel(D)D

    move-result-wide v2

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setup([[D)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 47
    aget-object v3, v1, v2

    array-length v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->c:I

    .line 48
    array-length v4, v1

    iput v4, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->a:I

    const/4 v5, 0x2

    .line 49
    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v3, v5, v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->f:[[D

    .line 50
    iget v3, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->c:I

    new-array v3, v3, [[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    iput-object v3, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->b:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    const/4 v3, 0x0

    .line 51
    :goto_0
    iget v4, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->c:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 52
    :goto_1
    iget v5, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->a:I

    if-ge v4, v5, :cond_0

    .line 53
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->f:[[D

    aget-object v5, v5, v3

    aget-object v7, v1, v4

    aget-wide v8, v7, v3

    aput-wide v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 57
    :goto_2
    iget v3, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->c:I

    if-ge v1, v3, :cond_6

    .line 58
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->b:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->f:[[D

    aget-object v4, v4, v1

    array-length v5, v4

    .line 148
    new-array v7, v5, [D

    .line 149
    new-array v8, v5, [D

    .line 150
    new-array v9, v5, [D

    add-int/lit8 v10, v5, -0x1

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 153
    aput-wide v11, v7, v2

    const/4 v11, 0x1

    :goto_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-ge v11, v10, :cond_2

    add-int/lit8 v14, v11, -0x1

    .line 155
    aget-wide v14, v7, v14

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    sub-double v16, v16, v14

    div-double v12, v12, v16

    aput-wide v12, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, -0x2

    .line 157
    aget-wide v14, v7, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    sub-double v14, v16, v14

    div-double/2addr v12, v14

    aput-wide v12, v7, v10

    .line 159
    aget-wide v11, v4, v6

    aget-wide v13, v4, v2

    sub-double/2addr v11, v13

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    mul-double v11, v11, v13

    aget-wide v18, v7, v2

    mul-double v11, v11, v18

    aput-wide v11, v8, v2

    const/4 v11, 0x1

    :goto_4
    if-ge v11, v10, :cond_3

    add-int/lit8 v12, v11, 0x1

    .line 161
    aget-wide v18, v4, v12

    add-int/lit8 v15, v11, -0x1

    aget-wide v20, v4, v15

    sub-double v18, v18, v20

    mul-double v18, v18, v13

    aget-wide v20, v8, v15

    sub-double v18, v18, v20

    aget-wide v20, v7, v11

    mul-double v18, v18, v20

    aput-wide v18, v8, v11

    move v11, v12

    goto :goto_4

    .line 163
    :cond_3
    aget-wide v11, v4, v10

    aget-wide v18, v4, v5

    sub-double v11, v11, v18

    mul-double v11, v11, v13

    aget-wide v18, v8, v5

    sub-double v11, v11, v18

    aget-wide v18, v7, v10

    mul-double v11, v11, v18

    aput-wide v11, v8, v10

    .line 165
    aput-wide v11, v9, v10

    :goto_5
    if-ltz v5, :cond_4

    .line 167
    aget-wide v11, v8, v5

    aget-wide v18, v7, v5

    add-int/lit8 v15, v5, 0x1

    aget-wide v20, v9, v15

    mul-double v18, v18, v20

    sub-double v11, v11, v18

    aput-wide v11, v9, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 170
    :cond_4
    new-array v5, v10, [Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v10, :cond_5

    .line 172
    new-instance v18, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-wide v11, v4, v7

    double-to-float v8, v11

    move-object/from16 p1, v3

    float-to-double v2, v8

    aget-wide v21, v9, v7

    add-int/lit8 v8, v7, 0x1

    aget-wide v19, v4, v8

    sub-double v23, v19, v11

    mul-double v23, v23, v13

    mul-double v25, v21, v16

    sub-double v23, v23, v25

    aget-wide v25, v9, v8

    sub-double v23, v23, v25

    sub-double v11, v11, v19

    mul-double v11, v11, v16

    add-double v11, v11, v21

    add-double v25, v11, v25

    move-wide/from16 v19, v2

    invoke-direct/range {v18 .. v26}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;-><init>(DDDD)V

    aput-object v18, v5, v7

    move-object/from16 v3, p1

    move v7, v8

    const/4 v2, 0x0

    goto :goto_6

    :cond_5
    move-object/from16 p1, v3

    .line 58
    aput-object v5, p1, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 61
    :cond_6
    iget v1, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->a:I

    sub-int/2addr v1, v6

    new-array v1, v1, [D

    iput-object v1, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->d:[D

    const-wide/16 v1, 0x0

    .line 62
    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->e:D

    .line 63
    new-array v1, v3, [Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    const/4 v2, 0x0

    .line 64
    :goto_7
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->d:[D

    array-length v3, v3

    if-ge v2, v3, :cond_8

    const/4 v3, 0x0

    .line 65
    :goto_8
    iget v4, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->c:I

    if-ge v3, v4, :cond_7

    .line 67
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->b:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-object v4, v4, v3

    aget-object v4, v4, v2

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 70
    :cond_7
    iget-wide v3, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->e:D

    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->d:[D

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/utils/HyperSpline;->approxLength([Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;)D

    move-result-wide v6

    aput-wide v6, v5, v2

    add-double/2addr v3, v6

    iput-wide v3, v0, Landroidx/constraintlayout/motion/utils/HyperSpline;->e:D

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    return-void
.end method
