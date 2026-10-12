.class public Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRAW_PATH_AS_CONFIGURED:I = 0x4

.field public static final DRAW_PATH_BASIC:I = 0x1

.field public static final DRAW_PATH_CARTESIAN:I = 0x3

.field public static final DRAW_PATH_NONE:I = 0x0

.field public static final DRAW_PATH_RECTANGLE:I = 0x5

.field public static final DRAW_PATH_RELATIVE:I = 0x2

.field public static final DRAW_PATH_SCREEN:I = 0x6

.field public static final HORIZONTAL_PATH_X:I = 0x2

.field public static final HORIZONTAL_PATH_Y:I = 0x3

.field public static final PATH_PERCENT:I = 0x0

.field public static final PATH_PERPENDICULAR:I = 0x1

.field public static final VERTICAL_PATH_X:I = 0x4

.field public static final VERTICAL_PATH_Y:I = 0x5


# instance fields
.field public a:Landroid/view/View;

.field public b:I

.field public c:I

.field public final d:Landroidx/constraintlayout/motion/widget/c;

.field public final e:Landroidx/constraintlayout/motion/widget/c;

.field public final f:Landroidx/constraintlayout/motion/widget/b;

.field public final g:Landroidx/constraintlayout/motion/widget/b;

.field public h:[Landroidx/constraintlayout/motion/utils/CurveFit;

.field public i:Landroidx/constraintlayout/motion/utils/CurveFit;

.field public j:F

.field public k:F

.field public l:F

.field public m:[I

.field public n:[D

.field public o:[D

.field public p:[Ljava/lang/String;

.field public q:[I

.field public final r:[F

.field public final s:Ljava/util/ArrayList;

.field public final t:[F

.field public final u:Ljava/util/ArrayList;

.field public v:Ljava/util/HashMap;

.field public w:Ljava/util/HashMap;

.field public x:Ljava/util/HashMap;

.field public y:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->c:I

    .line 72
    new-instance v0, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/c;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    .line 73
    new-instance v0, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/c;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    .line 75
    new-instance v0, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/b;

    .line 76
    new-instance v0, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->g:Landroidx/constraintlayout/motion/widget/b;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 80
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->j:F

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->k:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->l:F

    const/4 v0, 0x4

    .line 90
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->r:[F

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->s:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 92
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->t:[F

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->u:Ljava/util/ArrayList;

    .line 99
    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->z:I

    .line 106
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a([F[I)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 338
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v1

    if-eqz p2, :cond_0

    .line 340
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/c;

    add-int/lit8 v5, v3, 0x1

    .line 341
    iget v4, v4, Landroidx/constraintlayout/motion/widget/c;->l:I

    aput v4, p2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 346
    :goto_1
    array-length v3, v1

    if-ge p2, v3, :cond_1

    .line 347
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v3, v3, v0

    aget-wide v4, v1, p2

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 348
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v5, v3, v4, p1, v2}, Landroidx/constraintlayout/motion/widget/c;->b([I[D[FI)V

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 351
    :cond_1
    div-int/lit8 v2, v2, 0x2

    return v2

    :cond_2
    return v0
.end method

.method public final b([FI)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 136
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/HashMap;

    const-string v6, "translationX"

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 137
    :goto_0
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/HashMap;

    const-string v9, "translationY"

    if-nez v8, :cond_1

    move-object v8, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 138
    :goto_1
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    if-nez v10, :cond_2

    move-object v6, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 139
    :goto_2
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_3
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v2, :cond_11

    int-to-float v11, v10

    mul-float v11, v11, v3

    .line 143
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->l:F

    const/4 v13, 0x0

    cmpl-float v14, v12, v4

    if-eqz v14, :cond_5

    .line 144
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->k:F

    cmpg-float v15, v11, v14

    if-gez v15, :cond_4

    const/4 v11, 0x0

    :cond_4
    cmpl-float v15, v11, v14

    if-lez v15, :cond_5

    move/from16 v16, v10

    const/4 v15, 0x0

    float-to-double v9, v11

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v19, v9, v17

    if-gez v19, :cond_6

    sub-float/2addr v11, v14

    mul-float v11, v11, v12

    goto :goto_5

    :cond_5
    move/from16 v16, v10

    const/4 v15, 0x0

    :cond_6
    :goto_5
    float-to-double v9, v11

    .line 154
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    iget-object v14, v12, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/utils/Easing;

    .line 157
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->s:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/high16 v18, 0x7fc00000    # Float.NaN

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v15, v19

    check-cast v15, Landroidx/constraintlayout/motion/widget/c;

    .line 158
    iget-object v2, v15, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v2, :cond_8

    move-object/from16 v19, v2

    .line 159
    iget v2, v15, Landroidx/constraintlayout/motion/widget/c;->c:F

    cmpg-float v21, v2, v11

    if-gez v21, :cond_7

    move v13, v2

    move-object/from16 v14, v19

    goto :goto_7

    .line 163
    :cond_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 164
    iget v2, v15, Landroidx/constraintlayout/motion/widget/c;->c:F

    move/from16 v18, v2

    :cond_8
    :goto_7
    move/from16 v2, p2

    const/4 v15, 0x0

    goto :goto_6

    :cond_9
    const/16 v20, 0x0

    if-eqz v14, :cond_b

    .line 171
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v18, 0x3f800000    # 1.0f

    :cond_a
    sub-float v2, v11, v13

    sub-float v18, v18, v13

    div-float v2, v2, v18

    float-to-double v9, v2

    .line 175
    invoke-virtual {v14, v9, v10}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v9

    double-to-float v2, v9

    mul-float v2, v2, v18

    add-float/2addr v2, v13

    float-to-double v9, v2

    .line 180
    :cond_b
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v2, v2, v20

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    invoke-virtual {v2, v9, v10, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 181
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->i:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v2, :cond_c

    .line 182
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    array-length v13, v4

    if-lez v13, :cond_c

    .line 183
    invoke-virtual {v2, v9, v10, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 186
    :cond_c
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    mul-int/lit8 v10, v16, 0x2

    invoke-virtual {v12, v2, v4, v1, v10}, Landroidx/constraintlayout/motion/widget/c;->b([I[D[FI)V

    if-eqz v6, :cond_d

    .line 189
    aget v2, v1, v10

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->get(F)F

    move-result v4

    add-float/2addr v4, v2

    aput v4, v1, v10

    goto :goto_8

    :cond_d
    if-eqz v5, :cond_e

    .line 191
    aget v2, v1, v10

    invoke-virtual {v5, v11}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v4

    add-float/2addr v4, v2

    aput v4, v1, v10

    :cond_e
    :goto_8
    if-eqz v7, :cond_f

    add-int/lit8 v10, v10, 0x1

    .line 194
    aget v2, v1, v10

    invoke-virtual {v7, v11}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->get(F)F

    move-result v4

    add-float/2addr v4, v2

    aput v4, v1, v10

    goto :goto_9

    :cond_f
    if-eqz v8, :cond_10

    add-int/lit8 v10, v10, 0x1

    .line 196
    aget v2, v1, v10

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v4

    add-float/2addr v4, v2

    aput v4, v1, v10

    :cond_10
    :goto_9
    add-int/lit8 v10, v16, 0x1

    move/from16 v2, p2

    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_11
    return-void
.end method

.method public final c(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 877
    aput v1, p2, v2

    goto :goto_0

    .line 878
    :cond_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->l:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_2

    .line 879
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->k:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    const/4 p1, 0x0

    :cond_1
    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    float-to-double v8, p1

    cmpg-double v5, v8, v6

    if-gez v5, :cond_2

    sub-float/2addr p1, v4

    mul-float p1, p1, v3

    .line 890
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/utils/Easing;

    .line 893
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->s:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/high16 v5, 0x7fc00000    # Float.NaN

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/c;

    .line 894
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v7, :cond_3

    .line 895
    iget v8, v6, Landroidx/constraintlayout/motion/widget/c;->c:F

    cmpg-float v9, v8, p1

    if-gez v9, :cond_4

    move-object v3, v7

    move v0, v8

    goto :goto_1

    .line 899
    :cond_4
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 900
    iget v5, v6, Landroidx/constraintlayout/motion/widget/c;->c:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 907
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v1, v5

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    float-to-double v4, p1

    .line 911
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    if-eqz p2, :cond_7

    .line 914
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/motion/utils/Easing;->getDiff(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, v2

    :cond_7
    return p1
.end method

.method public final d(FFF[F)V
    .locals 11

    .line 1054
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->t:[F

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->c(F[F)F

    move-result p1

    .line 1056
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1057
    aget-object v1, v1, v2

    float-to-double v3, p1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[D

    invoke-virtual {v1, v3, v4, p1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1058
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object p1, p1, v2

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    invoke-virtual {p1, v3, v4, v1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1059
    aget p1, v0, v2

    .line 1060
    :goto_0
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[D

    array-length v0, v9

    if-ge v2, v0, :cond_0

    .line 1061
    aget-wide v0, v9, v2

    float-to-double v5, p1

    mul-double v0, v0, v5

    aput-wide v0, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1064
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->i:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz p1, :cond_2

    .line 1065
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    array-length v1, v0

    if-lez v1, :cond_1

    .line 1066
    invoke-virtual {p1, v3, v4, v0}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1067
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->i:Landroidx/constraintlayout/motion/utils/CurveFit;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[D

    invoke-virtual {p1, v3, v4, v0}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1068
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[D

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/c;->d(FF[F[I[D[D)V

    :cond_1
    return-void

    :cond_2
    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 1072
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/c;->d(FF[F[I[D[D)V

    return-void

    :cond_3
    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 1076
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    iget p2, p1, Landroidx/constraintlayout/motion/widget/c;->e:F

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    iget p4, p3, Landroidx/constraintlayout/motion/widget/c;->e:F

    sub-float/2addr p2, p4

    .line 1077
    iget p4, p1, Landroidx/constraintlayout/motion/widget/c;->f:F

    iget v0, p3, Landroidx/constraintlayout/motion/widget/c;->f:F

    sub-float/2addr p4, v0

    .line 1078
    iget v0, p1, Landroidx/constraintlayout/motion/widget/c;->g:F

    iget v1, p3, Landroidx/constraintlayout/motion/widget/c;->g:F

    sub-float/2addr v0, v1

    .line 1079
    iget p1, p1, Landroidx/constraintlayout/motion/widget/c;->h:F

    iget p3, p3, Landroidx/constraintlayout/motion/widget/c;->h:F

    sub-float/2addr p1, p3

    add-float/2addr v0, p2

    add-float/2addr p1, p4

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float v1, p3, v5

    mul-float v1, v1, p2

    mul-float v0, v0, v5

    add-float/2addr v0, v1

    .line 1082
    aput v0, v7, v2

    sub-float/2addr p3, v6

    mul-float p3, p3, p4

    mul-float p1, p1, v6

    add-float/2addr p1, p3

    const/4 p2, 0x1

    .line 1083
    aput p1, v7, p2

    return-void
.end method

.method public final e(FFI)F
    .locals 10

    .line 409
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/c;->e:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    iget v3, v2, Landroidx/constraintlayout/motion/widget/c;->e:F

    sub-float/2addr v1, v3

    .line 410
    iget v0, v0, Landroidx/constraintlayout/motion/widget/c;->f:F

    iget v4, v2, Landroidx/constraintlayout/motion/widget/c;->f:F

    sub-float/2addr v0, v4

    .line 411
    iget v5, v2, Landroidx/constraintlayout/motion/widget/c;->g:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v3

    .line 412
    iget v2, v2, Landroidx/constraintlayout/motion/widget/c;->h:F

    div-float/2addr v2, v6

    add-float/2addr v2, v4

    float-to-double v3, v1

    float-to-double v6, v0

    .line 413
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v6, v3

    const-wide v8, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v4, v6, v8

    if-gez v4, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_0
    sub-float/2addr p1, v5

    sub-float/2addr p2, v2

    float-to-double v4, p1

    float-to-double v6, p2

    .line 420
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v2, v4

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    return v4

    :cond_1
    mul-float v2, p1, v1

    mul-float v5, p2, v0

    add-float/2addr v5, v2

    if-eqz p3, :cond_7

    const/4 v2, 0x1

    if-eq p3, v2, :cond_6

    const/4 v2, 0x2

    if-eq p3, v2, :cond_5

    const/4 v2, 0x3

    if-eq p3, v2, :cond_4

    const/4 v1, 0x4

    if-eq p3, v1, :cond_3

    const/4 p1, 0x5

    if-eq p3, p1, :cond_2

    return v4

    :cond_2
    div-float/2addr p2, v0

    return p2

    :cond_3
    div-float/2addr p1, v0

    return p1

    :cond_4
    div-float/2addr p2, v1

    return p2

    :cond_5
    div-float/2addr p1, v1

    return p1

    :cond_6
    mul-float v3, v3, v3

    mul-float v5, v5, v5

    sub-float/2addr v3, v5

    float-to-double p1, v3

    .line 430
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    :cond_7
    div-float/2addr v5, v3

    return v5
.end method

.method public final f(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const/4 v1, 0x0

    move/from16 v3, p2

    .line 932
    invoke-virtual {v0, v3, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->c(F[F)F

    move-result v3

    .line 935
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 936
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 937
    invoke-virtual {v5, v2, v3}, Landroidx/constraintlayout/motion/widget/SplineSet;->setProperty(Landroid/view/View;F)V

    goto :goto_0

    .line 941
    :cond_0
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->v:Ljava/util/HashMap;

    const/4 v11, 0x0

    if-eqz v4, :cond_3

    .line 942
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v1

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    .line 943
    instance-of v4, v1, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$d;

    if-eqz v4, :cond_1

    .line 944
    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$d;

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    .line 947
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z

    move-result v1

    or-int/2addr v9, v1

    goto :goto_1

    :cond_2
    move v12, v9

    goto :goto_2

    :cond_3
    move-object v8, v1

    const/4 v12, 0x0

    .line 953
    :goto_2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    if-eqz v1, :cond_1c

    .line 954
    aget-object v1, v1, v11

    float-to-double v9, v3

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    invoke-virtual {v1, v9, v10, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 955
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v11

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[D

    invoke-virtual {v1, v9, v10, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 956
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->i:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v1, :cond_4

    .line 957
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    array-length v7, v6

    if-lez v7, :cond_4

    .line 958
    invoke-virtual {v1, v9, v10, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 959
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->i:Landroidx/constraintlayout/motion/utils/CurveFit;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[D

    invoke-virtual {v1, v9, v10, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 962
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[D

    .line 313
    iget v15, v13, Landroidx/constraintlayout/motion/widget/c;->e:F

    const/high16 p2, 0x3f000000    # 0.5f

    .line 314
    iget v5, v13, Landroidx/constraintlayout/motion/widget/c;->f:F

    const/16 v16, 0x0

    .line 315
    iget v11, v13, Landroidx/constraintlayout/motion/widget/c;->g:F

    .line 316
    iget v4, v13, Landroidx/constraintlayout/motion/widget/c;->h:F

    const/16 v17, 0x1

    .line 329
    array-length v14, v1

    if-eqz v14, :cond_5

    iget-object v14, v13, Landroidx/constraintlayout/motion/widget/c;->m:[D

    array-length v14, v14

    move/from16 v18, v3

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v3, v1, v3

    if-gt v14, v3, :cond_6

    .line 330
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 331
    new-array v14, v3, [D

    iput-object v14, v13, Landroidx/constraintlayout/motion/widget/c;->m:[D

    .line 332
    new-array v3, v3, [D

    iput-object v3, v13, Landroidx/constraintlayout/motion/widget/c;->n:[D

    goto :goto_3

    :cond_5
    move/from16 v18, v3

    .line 334
    :cond_6
    :goto_3
    iget-object v3, v13, Landroidx/constraintlayout/motion/widget/c;->m:[D

    move/from16 v19, v4

    move v14, v5

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    const/4 v3, 0x0

    .line 335
    :goto_4
    array-length v4, v1

    if-ge v3, v4, :cond_7

    .line 336
    iget-object v4, v13, Landroidx/constraintlayout/motion/widget/c;->m:[D

    aget v5, v1, v3

    aget-wide v20, v6, v3

    aput-wide v20, v4, v5

    .line 337
    iget-object v4, v13, Landroidx/constraintlayout/motion/widget/c;->n:[D

    aget-wide v20, v7, v3

    aput-wide v20, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    const/16 v20, 0x0

    move v5, v14

    move/from16 v4, v19

    const/4 v3, 0x0

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x7fc00000    # Float.NaN

    .line 340
    :goto_5
    iget-object v1, v13, Landroidx/constraintlayout/motion/widget/c;->m:[D

    move/from16 v23, v4

    array-length v4, v1

    if-ge v3, v4, :cond_f

    .line 341
    aget-wide v24, v1, v3

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    goto :goto_8

    .line 345
    :cond_8
    iget-object v1, v13, Landroidx/constraintlayout/motion/widget/c;->m:[D

    aget-wide v24, v1, v3

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-wide/16 v24, 0x0

    if-eqz v1, :cond_9

    :goto_6
    move v1, v5

    move-wide/from16 v4, v24

    goto :goto_7

    :cond_9
    iget-object v1, v13, Landroidx/constraintlayout/motion/widget/c;->m:[D

    aget-wide v26, v1, v3

    add-double v24, v26, v24

    goto :goto_6

    :goto_7
    double-to-float v4, v4

    .line 346
    iget-object v5, v13, Landroidx/constraintlayout/motion/widget/c;->n:[D

    move/from16 v24, v4

    aget-wide v4, v5, v3

    double-to-float v4, v4

    const/4 v5, 0x1

    if-eq v3, v5, :cond_e

    const/4 v5, 0x2

    if-eq v3, v5, :cond_d

    const/4 v5, 0x3

    if-eq v3, v5, :cond_c

    const/4 v5, 0x4

    if-eq v3, v5, :cond_b

    const/4 v4, 0x5

    if-eq v3, v4, :cond_a

    :goto_8
    move v5, v1

    move/from16 v4, v23

    goto :goto_9

    :cond_a
    move v5, v1

    move/from16 v4, v23

    move/from16 v6, v24

    goto :goto_9

    :cond_b
    move v5, v1

    move/from16 v21, v4

    move/from16 v4, v24

    goto :goto_9

    :cond_c
    move v5, v1

    move v14, v4

    move/from16 v4, v23

    move/from16 v11, v24

    goto :goto_9

    :cond_d
    move/from16 v19, v4

    move/from16 v4, v23

    move/from16 v5, v24

    goto :goto_9

    :cond_e
    move v5, v1

    move v7, v4

    move/from16 v4, v23

    move/from16 v15, v24

    :goto_9
    add-int/lit8 v3, v3, 0x1

    const/16 v17, 0x1

    goto :goto_5

    :cond_f
    move v1, v5

    .line 377
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 378
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_10

    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 379
    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    :cond_10
    move-object/from16 v19, v8

    goto :goto_a

    :cond_11
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 382
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v3, 0x0

    :cond_12
    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v14, v4

    add-float/2addr v14, v7

    div-float v21, v21, v4

    add-float v4, v21, v19

    move-object/from16 v19, v8

    float-to-double v7, v3

    float-to-double v5, v6

    float-to-double v3, v4

    move-wide/from16 v21, v5

    float-to-double v5, v14

    .line 391
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    add-double v3, v3, v21

    add-double/2addr v3, v7

    double-to-float v3, v3

    .line 392
    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    :goto_a
    add-float v15, v15, p2

    float-to-int v3, v15

    add-float v5, v1, p2

    float-to-int v1, v5

    add-float/2addr v15, v11

    float-to-int v4, v15

    add-float v5, v5, v23

    float-to-int v5, v5

    sub-int v6, v4, v3

    sub-int v7, v5, v1

    .line 414
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-ne v6, v8, :cond_13

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-eq v7, v8, :cond_14

    :cond_13
    const/high16 v8, 0x40000000    # 2.0f

    .line 417
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 418
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 420
    invoke-virtual {v2, v6, v7}, Landroid/view/View;->measure(II)V

    .line 423
    :cond_14
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 963
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/HashMap;

    if-eqz v1, :cond_16

    .line 964
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 965
    instance-of v3, v1, Landroidx/constraintlayout/motion/widget/SplineSet$d;

    if-eqz v3, :cond_15

    .line 966
    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet$d;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[D

    aget-wide v4, v3, v16

    const/16 v17, 0x1

    aget-wide v6, v3, v17

    move/from16 v3, v18

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/SplineSet$d;->setPathRotate(Landroid/view/View;FDD)V

    goto :goto_c

    :cond_15
    move/from16 v3, v18

    const/16 v17, 0x1

    :goto_c
    move-object/from16 v2, p1

    move/from16 v18, v3

    goto :goto_b

    :cond_16
    move/from16 v3, v18

    const/16 v17, 0x1

    if-eqz v19, :cond_17

    .line 972
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[D

    aget-wide v7, v1, v16

    aget-wide v4, v1, v17

    move-object/from16 v2, p1

    move-wide v14, v9

    move-object/from16 v1, v19

    move-wide v9, v4

    move-wide/from16 v5, p3

    move v4, v3

    move-object/from16 v3, p5

    invoke-virtual/range {v1 .. v10}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$d;->setPathRotate(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;FJDD)Z

    move-result v1

    move v3, v4

    or-int/2addr v12, v1

    goto :goto_d

    :cond_17
    move-object/from16 v2, p1

    move-wide v14, v9

    :goto_d
    const/4 v5, 0x1

    .line 976
    :goto_e
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    array-length v4, v1

    if-ge v5, v4, :cond_18

    .line 977
    aget-object v1, v1, v5

    .line 978
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->r:[F

    invoke-virtual {v1, v14, v15, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    .line 979
    iget-object v1, v13, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/util/LinkedHashMap;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->p:[Ljava/lang/String;

    add-int/lit8 v7, v5, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v1, v2, v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 982
    :cond_18
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/b;

    iget v4, v1, Landroidx/constraintlayout/motion/widget/b;->b:I

    if-nez v4, :cond_1b

    cmpg-float v4, v3, v20

    if-gtz v4, :cond_19

    .line 984
    iget v1, v1, Landroidx/constraintlayout/motion/widget/b;->c:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_19
    const/high16 v4, 0x3f800000    # 1.0f

    .line 985
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->g:Landroidx/constraintlayout/motion/widget/b;

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1a

    .line 986
    iget v1, v5, Landroidx/constraintlayout/motion/widget/b;->c:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    .line 987
    :cond_1a
    iget v4, v5, Landroidx/constraintlayout/motion/widget/b;->c:I

    iget v1, v1, Landroidx/constraintlayout/motion/widget/b;->c:I

    if-eq v4, v1, :cond_1b

    const/4 v1, 0x0

    .line 988
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 992
    :cond_1b
    :goto_f
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->y:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    .line 993
    :goto_10
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->y:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    array-length v5, v4

    if-ge v1, v5, :cond_1f

    .line 994
    aget-object v4, v4, v1

    invoke-virtual {v4, v3, v2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    const/high16 p2, 0x3f000000    # 0.5f

    .line 1000
    iget v1, v13, Landroidx/constraintlayout/motion/widget/c;->e:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    iget v5, v4, Landroidx/constraintlayout/motion/widget/c;->e:F

    invoke-static {v5, v1, v3, v1}, L_COROUTINE/a;->a(FFFF)F

    move-result v1

    .line 1001
    iget v5, v13, Landroidx/constraintlayout/motion/widget/c;->f:F

    iget v6, v4, Landroidx/constraintlayout/motion/widget/c;->f:F

    invoke-static {v6, v5, v3, v5}, L_COROUTINE/a;->a(FFFF)F

    move-result v5

    .line 1002
    iget v6, v13, Landroidx/constraintlayout/motion/widget/c;->g:F

    iget v7, v4, Landroidx/constraintlayout/motion/widget/c;->g:F

    invoke-static {v7, v6, v3, v6}, L_COROUTINE/a;->a(FFFF)F

    move-result v8

    .line 1003
    iget v9, v13, Landroidx/constraintlayout/motion/widget/c;->h:F

    iget v4, v4, Landroidx/constraintlayout/motion/widget/c;->h:F

    invoke-static {v4, v9, v3, v9}, L_COROUTINE/a;->a(FFFF)F

    move-result v10

    add-float v1, v1, p2

    float-to-int v11, v1

    add-float v5, v5, p2

    float-to-int v13, v5

    add-float/2addr v1, v8

    float-to-int v1, v1

    add-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v8, v1, v11

    sub-int v10, v5, v13

    cmpl-float v6, v7, v6

    if-nez v6, :cond_1d

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_1e

    :cond_1d
    const/high16 v4, 0x40000000    # 2.0f

    .line 1021
    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1022
    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1023
    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    .line 1025
    :cond_1e
    invoke-virtual {v2, v11, v13, v1, v5}, Landroid/view/View;->layout(IIII)V

    .line 1028
    :cond_1f
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    if-eqz v1, :cond_21

    .line 1029
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 1030
    instance-of v4, v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$h;

    if-eqz v4, :cond_20

    .line 1031
    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$h;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[D

    const/16 v16, 0x0

    aget-wide v5, v4, v16

    const/16 v17, 0x1

    aget-wide v9, v4, v17

    move-wide v4, v5

    move-wide v6, v9

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$h;->setPathRotate(Landroid/view/View;FDD)V

    goto :goto_11

    :cond_20
    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 1034
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setProperty(Landroid/view/View;F)V

    goto :goto_11

    :cond_21
    return v12
.end method

.method public final g(Landroidx/constraintlayout/motion/widget/c;)V
    .locals 4

    .line 826
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 668
    iput v0, p1, Landroidx/constraintlayout/motion/widget/c;->e:F

    .line 669
    iput v1, p1, Landroidx/constraintlayout/motion/widget/c;->f:F

    .line 670
    iput v2, p1, Landroidx/constraintlayout/motion/widget/c;->g:F

    .line 671
    iput v3, p1, Landroidx/constraintlayout/motion/widget/c;->h:F

    return-void
.end method

.method public getDrawPath()I
    .locals 3

    .line 1167
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/c;->b:I

    .line 1168
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/c;

    .line 1169
    iget v2, v2, Landroidx/constraintlayout/motion/widget/c;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1171
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/c;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getKeyFrameInfo(I[I)I
    .locals 10

    const/4 v0, 0x2

    .line 1237
    new-array v0, v0, [F

    .line 1239
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/Key;

    .line 1240
    iget v6, v5, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    if-eq v6, p1, :cond_0

    const/4 v7, -0x1

    if-ne p1, v7, :cond_0

    goto :goto_0

    .line 1244
    :cond_0
    aput v2, p2, v4

    add-int/lit8 v7, v4, 0x1

    .line 1246
    aput v6, p2, v7

    add-int/lit8 v6, v4, 0x2

    .line 1247
    iget v7, v5, Landroidx/constraintlayout/motion/widget/Key;->a:I

    aput v7, p2, v6

    int-to-float v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    .line 1250
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v7, v7, v2

    float-to-double v8, v6

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    invoke-virtual {v7, v8, v9, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1251
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v8, v6, v7, v0, v2}, Landroidx/constraintlayout/motion/widget/c;->b([I[D[FI)V

    add-int/lit8 v6, v4, 0x3

    .line 1252
    aget v7, v0, v2

    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    aput v7, p2, v6

    add-int/lit8 v6, v4, 0x4

    const/4 v7, 0x1

    .line 1253
    aget v8, v0, v7

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    aput v8, p2, v6

    .line 1254
    instance-of v8, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v8, :cond_1

    .line 1255
    check-cast v5, Landroidx/constraintlayout/motion/widget/KeyPosition;

    add-int/lit8 v6, v4, 0x5

    .line 1256
    iget v8, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->o:I

    aput v8, p2, v6

    add-int/lit8 v6, v4, 0x6

    .line 1258
    iget v8, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    aput v8, p2, v6

    add-int/lit8 v6, v4, 0x7

    .line 1259
    iget v5, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    aput v5, p2, v6

    :cond_1
    add-int/2addr v6, v7

    sub-int v5, v6, v4

    .line 1262
    aput v5, p2, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_2
    return v3
.end method

.method public getkeyFramePositions([I[F)I
    .locals 8

    .line 1208
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/Key;

    add-int/lit8 v5, v2, 0x1

    .line 1209
    iget v6, v4, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v4, v4, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v6

    aput v4, p1, v2

    int-to-float v2, v6

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    .line 1211
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v4, v4, v1

    float-to-double v6, v2

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    invoke-virtual {v4, v6, v7, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1212
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v6, v2, v4, p2, v3}, Landroidx/constraintlayout/motion/widget/c;->b([I[D[FI)V

    add-int/lit8 v3, v3, 0x2

    move v2, v5

    goto :goto_0

    :cond_0
    return v2
.end method

.method public setDrawPath(I)V
    .locals 1

    .line 1176
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/c;->b:I

    return-void
.end method

.method public setPathMotionArc(I)V
    .locals 0

    .line 468
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->z:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 830
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->a:Landroid/view/View;

    .line 831
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->b:I

    .line 832
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 833
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 834
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintTag()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setup(IIFJ)V
    .locals 47

    move-object/from16 v0, p0

    .line 475
    const-string v5, "translationZ"

    const-string v6, "translationY"

    const-string v7, "translationX"

    const-string v8, "scaleY"

    const-string v9, "scaleX"

    const-string v10, "rotationY"

    const-string v11, "rotationX"

    const-string v12, "progress"

    const-string v13, "transitionPathRotate"

    const-string v14, "rotation"

    const-string v15, "elevation"

    const-string v1, "alpha"

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x5

    const/16 v20, 0x2

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    const/16 v21, 0x1

    .line 476
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 477
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 478
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v24, v2

    .line 479
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v25, v2

    .line 491
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->z:I

    move-object/from16 v26, v3

    sget v3, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    move-object/from16 v27, v5

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    if-eq v2, v3, :cond_0

    .line 492
    iput v2, v5, Landroidx/constraintlayout/motion/widget/c;->j:I

    .line 90
    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/b;

    iget v3, v2, Landroidx/constraintlayout/motion/widget/b;->a:F

    move-object/from16 v28, v5

    .line 90
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->g:Landroidx/constraintlayout/motion/widget/b;

    iget v0, v5, Landroidx/constraintlayout/motion/widget/b;->a:F

    invoke-static {v3, v0}, Landroidx/constraintlayout/motion/widget/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->d:F

    iget v3, v5, Landroidx/constraintlayout/motion/widget/b;->d:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v4, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_2
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->c:I

    iget v3, v5, Landroidx/constraintlayout/motion/widget/b;->c:I

    if-eq v0, v3, :cond_4

    move/from16 v29, v0

    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->b:I

    if-nez v0, :cond_4

    if-eqz v29, :cond_3

    if-nez v3, :cond_4

    .line 100
    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_4
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->e:F

    iget v3, v5, Landroidx/constraintlayout/motion/widget/b;->e:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {v4, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_5
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->o:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v5, Landroidx/constraintlayout/motion/widget/b;->o:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    .line 106
    :cond_6
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_7
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v5, Landroidx/constraintlayout/motion/widget/b;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    .line 109
    :cond_8
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_9
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->f:F

    iget v3, v5, Landroidx/constraintlayout/motion/widget/b;->f:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 112
    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_a
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->g:F

    iget v3, v5, Landroidx/constraintlayout/motion/widget/b;->g:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 115
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_b
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->j:F

    iget v3, v5, Landroidx/constraintlayout/motion/widget/b;->j:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 118
    const-string v0, "transformPivotX"

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_c
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->k:F

    iget v3, v5, Landroidx/constraintlayout/motion/widget/b;->k:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 121
    const-string v0, "transformPivotY"

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_d
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->h:F

    iget v3, v5, Landroidx/constraintlayout/motion/widget/b;->h:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 124
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_e
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->i:F

    iget v3, v5, Landroidx/constraintlayout/motion/widget/b;->i:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 127
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_f
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->l:F

    iget v3, v5, Landroidx/constraintlayout/motion/widget/b;->l:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 130
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_10
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->m:F

    iget v3, v5, Landroidx/constraintlayout/motion/widget/b;->m:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 133
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_11
    iget v0, v2, Landroidx/constraintlayout/motion/widget/b;->n:F

    iget v3, v5, Landroidx/constraintlayout/motion/widget/b;->n:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object/from16 v0, v27

    .line 136
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object/from16 v3, p0

    move-object/from16 v27, v5

    goto :goto_1

    :cond_12
    move-object/from16 v0, v27

    goto :goto_0

    .line 501
    :goto_1
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->u:Ljava/util/ArrayList;

    move-object/from16 v29, v5

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->s:Ljava/util/ArrayList;

    const/16 v30, 0x0

    if-eqz v29, :cond_1b

    .line 502
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    move-object/from16 v32, v30

    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1a

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v34, v2

    move-object/from16 v2, v33

    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v33, v11

    .line 503
    instance-of v11, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v11, :cond_15

    .line 504
    move-object/from16 v38, v2

    check-cast v38, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 505
    new-instance v35, Landroidx/constraintlayout/motion/widget/c;

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    move/from16 v36, p1

    move/from16 v37, p2

    move-object/from16 v39, v2

    move-object/from16 v40, v11

    invoke-direct/range {v35 .. v40}, Landroidx/constraintlayout/motion/widget/c;-><init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/c;Landroidx/constraintlayout/motion/widget/c;)V

    move-object/from16 v11, v35

    move-object/from16 v2, v38

    move-object/from16 v35, v10

    .line 444
    invoke-static {v5, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v10

    if-nez v10, :cond_13

    move-object/from16 v36, v7

    .line 446
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v37, v6

    const-string v6, " KeyPath positon \""

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v11, Landroidx/constraintlayout/motion/widget/c;->d:F

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "\" outside of range"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MotionController"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_13
    move-object/from16 v37, v6

    move-object/from16 v36, v7

    :goto_3
    neg-int v6, v10

    add-int/lit8 v6, v6, -0x1

    .line 448
    invoke-virtual {v5, v6, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 506
    iget v2, v2, Landroidx/constraintlayout/motion/widget/a;->e:I

    sget v6, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v2, v6, :cond_14

    .line 507
    iput v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->c:I

    :cond_14
    move-object/from16 v7, v24

    move-object/from16 v10, v25

    move-object/from16 v6, v26

    goto :goto_5

    :cond_15
    move-object/from16 v37, v6

    move-object/from16 v36, v7

    move-object/from16 v35, v10

    .line 509
    instance-of v6, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v6, :cond_16

    move-object/from16 v6, v26

    .line 510
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    move-object/from16 v7, v24

    goto :goto_4

    :cond_16
    move-object/from16 v6, v26

    .line 511
    instance-of v7, v2, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v7, :cond_17

    move-object/from16 v7, v24

    .line 512
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_4

    :cond_17
    move-object/from16 v7, v24

    .line 513
    instance-of v10, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v10, :cond_19

    if-nez v32, :cond_18

    .line 515
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    :cond_18
    move-object/from16 v10, v32

    .line 517
    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v32, v10

    :goto_4
    move-object/from16 v10, v25

    goto :goto_5

    :cond_19
    move-object/from16 v10, v25

    .line 519
    invoke-virtual {v2, v10}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    .line 520
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    :goto_5
    move-object/from16 v26, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v10

    move-object/from16 v11, v33

    move-object/from16 v2, v34

    move-object/from16 v10, v35

    move-object/from16 v7, v36

    move-object/from16 v6, v37

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v34, v2

    move-object/from16 v2, v32

    :goto_6
    move-object/from16 v37, v6

    move-object/from16 v36, v7

    move-object/from16 v35, v10

    move-object/from16 v33, v11

    move-object/from16 v7, v24

    move-object/from16 v10, v25

    move-object/from16 v6, v26

    goto :goto_7

    :cond_1b
    move-object/from16 v34, v2

    move-object/from16 v2, v30

    goto :goto_6

    :goto_7
    move-object/from16 v24, v5

    if-eqz v2, :cond_1c

    const/4 v11, 0x0

    .line 528
    new-array v5, v11, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->y:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 556
    :cond_1c
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    const-string v11, ","

    const-string v5, "CUSTOM,"

    if-nez v2, :cond_36

    .line 557
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/HashMap;

    .line 558
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 p2, v2

    move-object/from16 v2, v25

    check-cast v2, Ljava/lang/String;

    .line 560
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_20

    move-object/from16 v26, v6

    .line 561
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 562
    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v31, v7

    aget-object v7, v25, v21

    .line 563
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1f

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v38, v4

    move-object/from16 v4, v32

    check-cast v4, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v32, v11

    .line 564
    iget-object v11, v4, Landroidx/constraintlayout/motion/widget/Key;->d:Ljava/util/HashMap;

    if-nez v11, :cond_1e

    :cond_1d
    :goto_a
    move-object/from16 v11, v32

    move-object/from16 v4, v38

    goto :goto_9

    .line 567
    :cond_1e
    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v11, :cond_1d

    .line 569
    iget v4, v4, Landroidx/constraintlayout/motion/widget/Key;->a:I

    invoke-virtual {v6, v4, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_a

    :cond_1f
    move-object/from16 v38, v4

    move-object/from16 v32, v11

    .line 75
    new-instance v4, Landroidx/constraintlayout/motion/widget/SplineSet$b;

    invoke-direct {v4, v2, v6}, Landroidx/constraintlayout/motion/widget/SplineSet$b;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object v11, v4

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    goto/16 :goto_f

    :cond_20
    move-object/from16 v38, v4

    move-object/from16 v26, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v11

    .line 79
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_b
    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    :goto_c
    const/16 v25, -0x1

    goto/16 :goto_d

    :sswitch_0
    const-string v4, "waveOffset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_b

    :cond_21
    const/16 v4, 0xf

    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    const/16 v25, 0xf

    goto/16 :goto_d

    :sswitch_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto :goto_b

    :cond_22
    const/16 v4, 0xe

    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    const/16 v25, 0xe

    goto/16 :goto_d

    :sswitch_2
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_b

    :cond_23
    const/16 v4, 0xd

    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    const/16 v25, 0xd

    goto/16 :goto_d

    :sswitch_3
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_b

    :cond_24
    const/16 v4, 0xc

    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    const/16 v25, 0xc

    goto/16 :goto_d

    :sswitch_4
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_b

    :cond_25
    const/16 v4, 0xb

    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    const/16 v25, 0xb

    goto/16 :goto_d

    :sswitch_5
    const-string v4, "transformPivotY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_b

    :cond_26
    const/16 v4, 0xa

    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    const/16 v25, 0xa

    goto/16 :goto_d

    :sswitch_6
    const-string v4, "transformPivotX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto/16 :goto_b

    :cond_27
    const/16 v4, 0x9

    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    const/16 v25, 0x9

    goto/16 :goto_d

    :sswitch_7
    const-string v4, "waveVariesBy"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto/16 :goto_b

    :cond_28
    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    const/16 v25, 0x8

    goto/16 :goto_d

    :sswitch_8
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    goto/16 :goto_b

    :cond_29
    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    const/16 v25, 0x7

    goto/16 :goto_d

    :sswitch_9
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto/16 :goto_b

    :cond_2a
    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    const/16 v25, 0x6

    goto/16 :goto_d

    :sswitch_a
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    goto/16 :goto_b

    :cond_2b
    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    const/16 v25, 0x5

    goto/16 :goto_d

    :sswitch_b
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto/16 :goto_b

    :cond_2c
    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    const/16 v25, 0x4

    goto :goto_d

    :sswitch_c
    move-object/from16 v4, v37

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v11, v33

    move-object/from16 v7, v35

    if-nez v6, :cond_2d

    move-object/from16 v6, v36

    goto/16 :goto_c

    :cond_2d
    move-object/from16 v6, v36

    const/16 v25, 0x3

    goto :goto_d

    :sswitch_d
    move-object/from16 v6, v36

    move-object/from16 v4, v37

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v11, v33

    if-nez v7, :cond_2e

    move-object/from16 v7, v35

    goto/16 :goto_c

    :cond_2e
    move-object/from16 v7, v35

    const/16 v25, 0x2

    goto :goto_d

    :sswitch_e
    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2f

    move-object/from16 v11, v33

    goto/16 :goto_c

    :cond_2f
    move-object/from16 v11, v33

    const/16 v25, 0x1

    goto :goto_d

    :sswitch_f
    move-object/from16 v11, v33

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_30

    goto/16 :goto_c

    :cond_30
    const/16 v25, 0x0

    :goto_d
    packed-switch v25, :pswitch_data_0

    move-object/from16 v25, v30

    goto/16 :goto_e

    .line 101
    :pswitch_0
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$a;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$a;-><init>()V

    goto :goto_e

    .line 81
    :pswitch_1
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$a;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$a;-><init>()V

    goto :goto_e

    .line 95
    :pswitch_2
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$d;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$d;-><init>()V

    goto :goto_e

    .line 83
    :pswitch_3
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$c;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$c;-><init>()V

    goto :goto_e

    .line 85
    :pswitch_4
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$h;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$h;-><init>()V

    goto :goto_e

    .line 93
    :pswitch_5
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$f;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$f;-><init>()V

    goto :goto_e

    .line 91
    :pswitch_6
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$e;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$e;-><init>()V

    goto :goto_e

    .line 103
    :pswitch_7
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$a;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$a;-><init>()V

    goto :goto_e

    .line 99
    :pswitch_8
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$l;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$l;-><init>()V

    goto :goto_e

    .line 97
    :pswitch_9
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$k;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$k;-><init>()V

    goto :goto_e

    .line 111
    :pswitch_a
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$g;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$g;-><init>()V

    goto :goto_e

    .line 109
    :pswitch_b
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$p;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$p;-><init>()V

    goto :goto_e

    .line 107
    :pswitch_c
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$o;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$o;-><init>()V

    goto :goto_e

    .line 105
    :pswitch_d
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$n;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$n;-><init>()V

    goto :goto_e

    .line 89
    :pswitch_e
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$j;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$j;-><init>()V

    goto :goto_e

    .line 87
    :pswitch_f
    new-instance v25, Landroidx/constraintlayout/motion/widget/SplineSet$i;

    invoke-direct/range {v25 .. v25}, Landroidx/constraintlayout/motion/widget/SplineSet$i;-><init>()V

    :goto_e
    move-object/from16 v33, v11

    move-object/from16 v11, v25

    :goto_f
    if-nez v11, :cond_31

    move-object/from16 v2, p2

    move-object/from16 v37, v4

    move-object/from16 v36, v6

    move-object/from16 v35, v7

    :goto_10
    move-object/from16 v6, v26

    move-object/from16 v7, v31

    move-object/from16 v11, v32

    move-object/from16 v4, v38

    goto/16 :goto_8

    .line 579
    :cond_31
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/motion/widget/SplineSet;->setType(Ljava/lang/String;)V

    move-object/from16 v35, v7

    .line 580
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p2

    move-object/from16 v37, v4

    move-object/from16 v36, v6

    goto :goto_10

    :cond_32
    move-object/from16 v38, v4

    move-object/from16 v26, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v11

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    if-eqz v29, :cond_34

    .line 583
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    .line 584
    instance-of v11, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    if-eqz v11, :cond_33

    .line 585
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/HashMap;

    invoke-virtual {v7, v11}, Landroidx/constraintlayout/motion/widget/Key;->addValues(Ljava/util/HashMap;)V

    goto :goto_11

    .line 589
    :cond_34
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/HashMap;

    move-object/from16 v7, v34

    const/4 v11, 0x0

    invoke-virtual {v7, v2, v11}, Landroidx/constraintlayout/motion/widget/b;->addValues(Ljava/util/HashMap;I)V

    .line 590
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/HashMap;

    move-object/from16 v7, v27

    const/16 v11, 0x64

    invoke-virtual {v7, v2, v11}, Landroidx/constraintlayout/motion/widget/b;->addValues(Ljava/util/HashMap;I)V

    .line 592
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 594
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 595
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_13
    move-object/from16 p2, v2

    goto :goto_14

    :cond_35
    const/4 v11, 0x0

    goto :goto_13

    .line 597
    :goto_14
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/SplineSet;

    invoke-virtual {v2, v11}, Landroidx/constraintlayout/motion/widget/SplineSet;->setup(I)V

    move-object/from16 v2, p2

    goto :goto_12

    :cond_36
    move-object/from16 v38, v4

    move-object/from16 v26, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v11

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    .line 602
    :cond_37
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 603
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->v:Ljava/util/HashMap;

    if-nez v2, :cond_38

    .line 604
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->v:Ljava/util/HashMap;

    .line 606
    :cond_38
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 607
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionController;->v:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_39

    goto :goto_15

    .line 612
    :cond_39
    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 613
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 p2, v2

    move-object/from16 v2, v32

    .line 614
    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    aget-object v2, v25, v21

    .line 615
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_16
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3c

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v31, v5

    move-object/from16 v5, v27

    check-cast v5, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v27, v10

    .line 616
    iget-object v10, v5, Landroidx/constraintlayout/motion/widget/Key;->d:Ljava/util/HashMap;

    if-nez v10, :cond_3b

    :cond_3a
    :goto_17
    move-object/from16 v10, v27

    move-object/from16 v5, v31

    goto :goto_16

    .line 619
    :cond_3b
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v10, :cond_3a

    .line 621
    iget v5, v5, Landroidx/constraintlayout/motion/widget/Key;->a:I

    invoke-virtual {v11, v5, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_17

    :cond_3c
    move-object/from16 v31, v5

    move-object/from16 v27, v10

    .line 125
    new-instance v2, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;

    invoke-direct {v2, v7, v11}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$b;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-wide/from16 v10, p4

    move-object v5, v2

    move-object/from16 v2, v35

    goto/16 :goto_1d

    :cond_3d
    move-object/from16 p2, v2

    move-object/from16 v31, v5

    move-object/from16 v27, v10

    .line 130
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_18
    move-object/from16 v11, v33

    move-object/from16 v2, v35

    :goto_19
    const/4 v5, -0x1

    goto/16 :goto_1a

    :sswitch_10
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_18

    :cond_3e
    const/16 v2, 0xb

    move-object/from16 v11, v33

    move-object/from16 v2, v35

    const/16 v5, 0xb

    goto/16 :goto_1a

    :sswitch_11
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_18

    :cond_3f
    const/16 v2, 0xa

    move-object/from16 v11, v33

    move-object/from16 v2, v35

    const/16 v5, 0xa

    goto/16 :goto_1a

    :sswitch_12
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_18

    :cond_40
    const/16 v2, 0x9

    move-object/from16 v11, v33

    move-object/from16 v2, v35

    const/16 v5, 0x9

    goto/16 :goto_1a

    :sswitch_13
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_18

    :cond_41
    move-object/from16 v11, v33

    move-object/from16 v2, v35

    const/16 v5, 0x8

    goto/16 :goto_1a

    :sswitch_14
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_18

    :cond_42
    move-object/from16 v11, v33

    move-object/from16 v2, v35

    const/4 v5, 0x7

    goto/16 :goto_1a

    :sswitch_15
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_18

    :cond_43
    move-object/from16 v11, v33

    move-object/from16 v2, v35

    const/4 v5, 0x6

    goto :goto_1a

    :sswitch_16
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_18

    :cond_44
    move-object/from16 v11, v33

    move-object/from16 v2, v35

    const/4 v5, 0x5

    goto :goto_1a

    :sswitch_17
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_18

    :cond_45
    move-object/from16 v11, v33

    move-object/from16 v2, v35

    const/4 v5, 0x4

    goto :goto_1a

    :sswitch_18
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    goto/16 :goto_18

    :cond_46
    move-object/from16 v11, v33

    move-object/from16 v2, v35

    const/4 v5, 0x3

    goto :goto_1a

    :sswitch_19
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    goto/16 :goto_18

    :cond_47
    move-object/from16 v11, v33

    move-object/from16 v2, v35

    const/4 v5, 0x2

    goto :goto_1a

    :sswitch_1a
    move-object/from16 v2, v35

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v11, v33

    if-nez v5, :cond_48

    goto/16 :goto_19

    :cond_48
    const/4 v5, 0x1

    goto :goto_1a

    :sswitch_1b
    move-object/from16 v11, v33

    move-object/from16 v2, v35

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    goto/16 :goto_19

    :cond_49
    const/4 v5, 0x0

    :goto_1a
    packed-switch v5, :pswitch_data_1

    move-object/from16 v33, v11

    move-object/from16 v5, v30

    move-wide/from16 v10, p4

    goto :goto_1d

    .line 132
    :pswitch_10
    new-instance v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$a;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$a;-><init>()V

    :goto_1b
    move-object/from16 v33, v11

    move-wide/from16 v10, p4

    goto :goto_1c

    .line 147
    :pswitch_11
    new-instance v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$d;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$d;-><init>()V

    goto :goto_1b

    .line 135
    :pswitch_12
    new-instance v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$c;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$c;-><init>()V

    goto :goto_1b

    .line 138
    :pswitch_13
    new-instance v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$f;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$f;-><init>()V

    goto :goto_1b

    .line 153
    :pswitch_14
    new-instance v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$j;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$j;-><init>()V

    goto :goto_1b

    .line 150
    :pswitch_15
    new-instance v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$i;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$i;-><init>()V

    goto :goto_1b

    .line 165
    :pswitch_16
    new-instance v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$e;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$e;-><init>()V

    goto :goto_1b

    .line 162
    :pswitch_17
    new-instance v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$n;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$n;-><init>()V

    goto :goto_1b

    .line 159
    :pswitch_18
    new-instance v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$m;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$m;-><init>()V

    goto :goto_1b

    .line 156
    :pswitch_19
    new-instance v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$l;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$l;-><init>()V

    goto :goto_1b

    .line 144
    :pswitch_1a
    new-instance v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$h;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$h;-><init>()V

    goto :goto_1b

    .line 141
    :pswitch_1b
    new-instance v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$g;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$g;-><init>()V

    goto :goto_1b

    .line 170
    :goto_1c
    invoke-virtual {v5, v10, v11}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setStartTime(J)V

    :goto_1d
    if-nez v5, :cond_4a

    :goto_1e
    move-object/from16 v35, v2

    move-object/from16 v10, v27

    move-object/from16 v5, v31

    move-object/from16 v2, p2

    goto/16 :goto_15

    .line 632
    :cond_4a
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setType(Ljava/lang/String;)V

    .line 633
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->v:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_4b
    move-object/from16 v31, v5

    move-object/from16 v27, v10

    move-object/from16 v2, v35

    if-eqz v29, :cond_4d

    .line 637
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4c
    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    .line 638
    instance-of v10, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v10, :cond_4c

    .line 639
    check-cast v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->v:Ljava/util/HashMap;

    invoke-virtual {v7, v10}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    goto :goto_1f

    .line 644
    :cond_4d
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->v:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v10, v27

    .line 646
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4e

    .line 647
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_21
    move-object/from16 p2, v5

    goto :goto_22

    :cond_4e
    const/4 v11, 0x0

    goto :goto_21

    .line 649
    :goto_22
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->v:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    invoke-virtual {v5, v11}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setup(I)V

    move-object/from16 v5, p2

    move-object/from16 v27, v10

    goto :goto_20

    :cond_4f
    move-object/from16 v31, v5

    move-object/from16 v2, v35

    .line 655
    :cond_50
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v7, v5, 0x2

    new-array v10, v7, [Landroidx/constraintlayout/motion/widget/c;

    const/4 v11, 0x0

    .line 657
    aput-object v28, v10, v11

    add-int/lit8 v5, v5, 0x1

    .line 658
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    aput-object v11, v10, v5

    .line 659
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_51

    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->c:I

    move-object/from16 v25, v10

    const/4 v10, -0x1

    if-ne v5, v10, :cond_52

    const/4 v5, 0x0

    .line 660
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->c:I

    goto :goto_23

    :cond_51
    move-object/from16 v25, v10

    const/4 v10, -0x1

    .line 662
    :cond_52
    :goto_23
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v22, 0x1

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroidx/constraintlayout/motion/widget/c;

    add-int/lit8 v32, v22, 0x1

    .line 663
    aput-object v27, v25, v22

    move/from16 v22, v32

    goto :goto_24

    .line 668
    :cond_53
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 669
    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_25
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_56

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v10, v22

    check-cast v10, Ljava/lang/String;

    move-object/from16 v35, v2

    move-object/from16 p2, v11

    move-object/from16 v11, v28

    .line 670
    iget-object v2, v11, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v10}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v28, v11

    move-object/from16 v11, v31

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, v38

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 672
    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_54
    move-object/from16 v28, v11

    move-object/from16 v11, v38

    :cond_55
    :goto_26
    move-object/from16 v38, v11

    move-object/from16 v2, v35

    const/4 v10, -0x1

    move-object/from16 v11, p2

    goto :goto_25

    :cond_56
    move-object/from16 v35, v2

    const/4 v2, 0x0

    .line 676
    new-array v10, v2, [Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->p:[Ljava/lang/String;

    .line 680
    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->q:[I

    const/4 v2, 0x0

    .line 681
    :goto_27
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->p:[Ljava/lang/String;

    array-length v10, v5

    if-ge v2, v10, :cond_59

    .line 682
    aget-object v5, v5, v2

    .line 683
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->q:[I

    const/16 v23, 0x0

    aput v23, v10, v2

    const/4 v10, 0x0

    :goto_28
    if-ge v10, v7, :cond_58

    .line 685
    aget-object v11, v25, v10

    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_57

    .line 686
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionController;->q:[I

    aget v22, v11, v2

    aget-object v10, v25, v10

    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v5

    add-int v5, v5, v22

    aput v5, v11, v2

    goto :goto_29

    :cond_57
    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    :cond_58
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_59
    const/16 v23, 0x0

    .line 691
    aget-object v2, v25, v23

    iget v2, v2, Landroidx/constraintlayout/motion/widget/c;->j:I

    sget v10, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v2, v10, :cond_5a

    const/4 v2, 0x1

    goto :goto_2a

    :cond_5a
    const/4 v2, 0x0

    .line 692
    :goto_2a
    array-length v5, v5

    const/16 v10, 0x12

    add-int/2addr v10, v5

    new-array v5, v10, [Z

    const/4 v11, 0x1

    :goto_2b
    if-ge v11, v7, :cond_5b

    move/from16 p2, v2

    .line 694
    aget-object v2, v25, v11

    add-int/lit8 v22, v11, -0x1

    move-object/from16 v31, v5

    aget-object v5, v25, v22

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v23, 0x0

    .line 244
    aget-boolean v22, v31, v23

    move/from16 v32, v11

    iget v11, v2, Landroidx/constraintlayout/motion/widget/c;->d:F

    move-object/from16 v36, v6

    iget v6, v5, Landroidx/constraintlayout/motion/widget/c;->d:F

    invoke-static {v11, v6}, Landroidx/constraintlayout/motion/widget/c;->a(FF)Z

    move-result v6

    or-int v6, v22, v6

    aput-boolean v6, v31, v23

    .line 245
    aget-boolean v6, v31, v21

    iget v11, v2, Landroidx/constraintlayout/motion/widget/c;->e:F

    move/from16 p4, v6

    iget v6, v5, Landroidx/constraintlayout/motion/widget/c;->e:F

    invoke-static {v11, v6}, Landroidx/constraintlayout/motion/widget/c;->a(FF)Z

    move-result v6

    or-int v6, v6, p2

    or-int v6, p4, v6

    aput-boolean v6, v31, v21

    .line 246
    aget-boolean v6, v31, v20

    iget v11, v2, Landroidx/constraintlayout/motion/widget/c;->f:F

    move/from16 p4, v6

    iget v6, v5, Landroidx/constraintlayout/motion/widget/c;->f:F

    invoke-static {v11, v6}, Landroidx/constraintlayout/motion/widget/c;->a(FF)Z

    move-result v6

    or-int v6, v6, p2

    or-int v6, p4, v6

    aput-boolean v6, v31, v20

    .line 247
    aget-boolean v6, v31, v17

    iget v11, v2, Landroidx/constraintlayout/motion/widget/c;->g:F

    move/from16 p4, v6

    iget v6, v5, Landroidx/constraintlayout/motion/widget/c;->g:F

    invoke-static {v11, v6}, Landroidx/constraintlayout/motion/widget/c;->a(FF)Z

    move-result v6

    or-int v6, p4, v6

    aput-boolean v6, v31, v17

    .line 248
    aget-boolean v6, v31, v16

    iget v2, v2, Landroidx/constraintlayout/motion/widget/c;->h:F

    iget v5, v5, Landroidx/constraintlayout/motion/widget/c;->h:F

    invoke-static {v2, v5}, Landroidx/constraintlayout/motion/widget/c;->a(FF)Z

    move-result v2

    or-int/2addr v2, v6

    aput-boolean v2, v31, v16

    add-int/lit8 v11, v32, 0x1

    move/from16 v2, p2

    move-object/from16 v5, v31

    move-object/from16 v6, v36

    goto :goto_2b

    :cond_5b
    move-object/from16 v31, v5

    move-object/from16 v36, v6

    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_2c
    if-ge v2, v10, :cond_5d

    .line 699
    aget-boolean v6, v31, v2

    if-eqz v6, :cond_5c

    add-int/lit8 v5, v5, 0x1

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 704
    :cond_5d
    new-array v2, v5, [I

    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    .line 705
    new-array v2, v5, [D

    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    .line 706
    new-array v2, v5, [D

    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->o:[D

    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_2d
    if-ge v2, v10, :cond_5f

    .line 710
    aget-boolean v6, v31, v2

    if-eqz v6, :cond_5e

    .line 711
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    add-int/lit8 v11, v5, 0x1

    aput v2, v6, v5

    move v5, v11

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 714
    :cond_5f
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    array-length v2, v2

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v2, v6, v21

    const/16 v23, 0x0

    aput v7, v6, v23

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 715
    new-array v6, v7, [D

    const/4 v10, 0x0

    :goto_2e
    if-ge v10, v7, :cond_62

    .line 718
    aget-object v11, v25, v10

    aget-object v22, v5, v10

    move/from16 v31, v10

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    move-object/from16 v37, v4

    .line 634
    iget v4, v11, Landroidx/constraintlayout/motion/widget/c;->d:F

    move/from16 v32, v4

    .line 634
    iget v4, v11, Landroidx/constraintlayout/motion/widget/c;->e:F

    move/from16 v34, v4

    iget v4, v11, Landroidx/constraintlayout/motion/widget/c;->f:F

    move/from16 v38, v4

    iget v4, v11, Landroidx/constraintlayout/motion/widget/c;->g:F

    move/from16 v39, v4

    iget v4, v11, Landroidx/constraintlayout/motion/widget/c;->h:F

    iget v11, v11, Landroidx/constraintlayout/motion/widget/c;->i:F

    move/from16 v40, v4

    move/from16 v19, v11

    const/4 v4, 0x6

    new-array v11, v4, [F

    const/16 v23, 0x0

    aput v32, v11, v23

    aput v34, v11, v21

    const/16 v20, 0x2

    aput v38, v11, v20

    aput v39, v11, v17

    aput v40, v11, v16

    aput v19, v11, v18

    move-object/from16 v34, v11

    const/4 v4, 0x0

    const/16 v32, 0x0

    .line 636
    :goto_2f
    array-length v11, v10

    if-ge v4, v11, :cond_61

    .line 637
    aget v11, v10, v4

    move/from16 v38, v4

    const/4 v4, 0x6

    if-ge v11, v4, :cond_60

    add-int/lit8 v4, v32, 0x1

    .line 638
    aget v11, v34, v11

    move-object/from16 v39, v10

    float-to-double v10, v11

    aput-wide v10, v22, v32

    move/from16 v32, v4

    goto :goto_30

    :cond_60
    move-object/from16 v39, v10

    :goto_30
    add-int/lit8 v4, v38, 0x1

    move-object/from16 v10, v39

    goto :goto_2f

    .line 719
    :cond_61
    aget-object v4, v25, v31

    iget v4, v4, Landroidx/constraintlayout/motion/widget/c;->c:F

    float-to-double v10, v4

    aput-wide v10, v6, v31

    add-int/lit8 v10, v31, 0x1

    move-object/from16 v4, v37

    goto :goto_2e

    :cond_62
    move-object/from16 v37, v4

    const/4 v4, 0x0

    .line 722
    :goto_31
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    array-length v11, v10

    if-ge v4, v11, :cond_65

    .line 723
    aget v10, v10, v4

    const/4 v11, 0x6

    if-ge v10, v11, :cond_63

    .line 725
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Landroidx/constraintlayout/motion/widget/c;->o:[Ljava/lang/String;

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    aget v11, v11, v4

    aget-object v11, v19, v11

    move/from16 v19, v4

    const-string v4, " ["

    .line 0
    invoke-static {v10, v11, v4}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    :goto_32
    if-ge v10, v7, :cond_64

    .line 0
    invoke-static {v4}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 727
    aget-object v11, v5, v10

    move/from16 v31, v10

    aget-wide v10, v11, v19

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v10, v31, 0x1

    goto :goto_32

    :cond_63
    move/from16 v19, v4

    :cond_64
    add-int/lit8 v4, v19, 0x1

    goto :goto_31

    .line 731
    :cond_65
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->p:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Landroidx/constraintlayout/motion/utils/CurveFit;

    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v4, 0x0

    .line 733
    :goto_33
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->p:[Ljava/lang/String;

    array-length v11, v10

    if-ge v4, v11, :cond_6b

    .line 737
    aget-object v10, v10, v4

    move-object/from16 v31, v0

    move/from16 v19, v4

    move-object/from16 v32, v12

    move-object/from16 v0, v30

    move-object v12, v0

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_34
    if-ge v11, v7, :cond_6a

    move/from16 v34, v11

    .line 740
    aget-object v11, v25, v34

    .line 644
    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/util/LinkedHashMap;

    .line 644
    invoke-virtual {v11, v10}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_69

    if-nez v12, :cond_66

    .line 742
    new-array v0, v7, [D

    .line 743
    aget-object v11, v25, v34

    .line 648
    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/util/LinkedHashMap;

    .line 648
    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v11}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v11

    move-object/from16 v38, v0

    const/4 v12, 0x2

    .line 743
    new-array v0, v12, [I

    aput v11, v0, v21

    const/16 v23, 0x0

    aput v7, v0, v23

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [[D

    move-object/from16 v0, v38

    .line 745
    :cond_66
    aget-object v11, v25, v34

    move-object/from16 p2, v0

    iget v0, v11, Landroidx/constraintlayout/motion/widget/c;->c:F

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    float-to-double v8, v0

    aput-wide v8, p2, v4

    .line 746
    aget-object v0, v12, v4

    .line 652
    iget-object v8, v11, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/util/LinkedHashMap;

    .line 652
    invoke-virtual {v8, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 653
    invoke-virtual {v8}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_67

    .line 654
    invoke-virtual {v8}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v8

    float-to-double v8, v8

    const/16 v23, 0x0

    aput-wide v8, v0, v23

    const/16 v21, 0x1

    goto :goto_36

    .line 657
    :cond_67
    invoke-virtual {v8}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v9

    const/16 v21, 0x1

    .line 658
    new-array v11, v9, [F

    .line 659
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 v8, 0x0

    const/16 v40, 0x0

    :goto_35
    if-ge v8, v9, :cond_68

    add-int/lit8 v41, v40, 0x1

    move-object/from16 p4, v0

    .line 661
    aget v0, v11, v8

    move/from16 v42, v8

    move/from16 p5, v9

    float-to-double v8, v0

    aput-wide v8, p4, v40

    add-int/lit8 v8, v42, 0x1

    move-object/from16 v0, p4

    move/from16 v9, p5

    move/from16 v40, v41

    goto :goto_35

    :cond_68
    :goto_36
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    goto :goto_37

    :cond_69
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    :goto_37
    add-int/lit8 v11, v34, 0x1

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    goto/16 :goto_34

    :cond_6a
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .line 750
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    .line 751
    invoke-static {v12, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 752
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    add-int/lit8 v9, v19, 0x1

    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionController;->c:I

    invoke-static {v10, v0, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v0

    aput-object v0, v8, v9

    move v4, v9

    move-object/from16 v0, v31

    move-object/from16 v12, v32

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    const/16 v21, 0x1

    goto/16 :goto_33

    :cond_6b
    move-object/from16 v31, v0

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v32, v12

    .line 755
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->c:I

    invoke-static {v4, v6, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v4

    const/16 v23, 0x0

    aput-object v4, v0, v23

    .line 757
    aget-object v0, v25, v23

    iget v0, v0, Landroidx/constraintlayout/motion/widget/c;->j:I

    sget v4, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v0, v4, :cond_6d

    .line 759
    new-array v0, v7, [I

    .line 760
    new-array v4, v7, [D

    const/4 v12, 0x2

    .line 761
    new-array v5, v12, [I

    const/16 v21, 0x1

    aput v12, v5, v21

    aput v7, v5, v23

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v11, 0x0

    :goto_38
    if-ge v11, v7, :cond_6c

    .line 763
    aget-object v5, v25, v11

    iget v6, v5, Landroidx/constraintlayout/motion/widget/c;->j:I

    aput v6, v0, v11

    .line 764
    iget v6, v5, Landroidx/constraintlayout/motion/widget/c;->c:F

    float-to-double v8, v6

    aput-wide v8, v4, v11

    .line 765
    aget-object v6, v2, v11

    iget v8, v5, Landroidx/constraintlayout/motion/widget/c;->e:F

    float-to-double v8, v8

    const/16 v23, 0x0

    aput-wide v8, v6, v23

    .line 766
    iget v5, v5, Landroidx/constraintlayout/motion/widget/c;->f:F

    float-to-double v8, v5

    const/16 v21, 0x1

    aput-wide v8, v6, v21

    add-int/lit8 v11, v11, 0x1

    goto :goto_38

    .line 769
    :cond_6c
    invoke-static {v0, v4, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v0

    iput-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionController;->i:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 774
    :cond_6d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    if-eqz v29, :cond_89

    .line 776
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v4, 0x7fc00000    # Float.NaN

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 97
    const-string v6, "CUSTOM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 98
    new-instance v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$c;

    invoke-direct {v6}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$c;-><init>()V

    move-object/from16 p4, v0

    move-object v0, v6

    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    goto/16 :goto_41

    .line 100
    :cond_6e
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2

    :goto_3a
    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v6, v38

    :goto_3b
    move-object/from16 v7, v39

    :goto_3c
    const/16 v19, -0x1

    goto/16 :goto_3f

    :sswitch_1c
    const-string v6, "waveOffset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6f

    goto :goto_3a

    :cond_6f
    const/16 v6, 0xd

    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    const/16 v19, 0xd

    goto/16 :goto_3f

    :sswitch_1d
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_70

    goto :goto_3a

    :cond_70
    const/16 v6, 0xc

    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    const/16 v19, 0xc

    goto/16 :goto_3f

    :sswitch_1e
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_71

    goto :goto_3a

    :cond_71
    const/16 v6, 0xb

    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    const/16 v19, 0xb

    goto/16 :goto_3f

    :sswitch_1f
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_72

    goto :goto_3a

    :cond_72
    const/16 v6, 0xa

    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    const/16 v19, 0xa

    goto/16 :goto_3f

    :sswitch_20
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    goto/16 :goto_3a

    :cond_73
    const/16 v6, 0x9

    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    const/16 v19, 0x9

    goto/16 :goto_3f

    :sswitch_21
    const-string v6, "waveVariesBy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_74

    goto/16 :goto_3a

    :cond_74
    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    const/16 v19, 0x8

    goto/16 :goto_3f

    :sswitch_22
    move-object/from16 v6, v38

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    if-nez v7, :cond_75

    goto/16 :goto_3b

    :cond_75
    move-object/from16 v7, v39

    const/16 v19, 0x7

    goto/16 :goto_3f

    :sswitch_23
    move-object/from16 v6, v38

    move-object/from16 v7, v39

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v9, v31

    if-nez v8, :cond_76

    move-object/from16 v8, v32

    goto :goto_3d

    :cond_76
    move-object/from16 v8, v32

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    const/16 v19, 0x6

    goto/16 :goto_3f

    :sswitch_24
    move-object/from16 v8, v32

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_77

    move-object/from16 v9, v31

    :goto_3d
    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    goto :goto_3e

    :cond_77
    move-object/from16 v9, v31

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    const/16 v19, 0x5

    goto/16 :goto_3f

    :sswitch_25
    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    if-nez v10, :cond_78

    :goto_3e
    move-object/from16 v10, v37

    goto/16 :goto_3c

    :cond_78
    move-object/from16 v10, v37

    const/16 v19, 0x4

    goto/16 :goto_3f

    :sswitch_26
    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v10, v37

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    if-nez v11, :cond_79

    move-object/from16 v11, v36

    goto/16 :goto_3c

    :cond_79
    move-object/from16 v11, v36

    const/16 v19, 0x3

    goto :goto_3f

    :sswitch_27
    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v2, v33

    if-nez v12, :cond_7a

    move-object/from16 v12, v35

    goto/16 :goto_3c

    :cond_7a
    move-object/from16 v12, v35

    const/16 v19, 0x2

    goto :goto_3f

    :sswitch_28
    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v2, v33

    if-nez v19, :cond_7b

    goto/16 :goto_3c

    :cond_7b
    const/16 v19, 0x1

    goto :goto_3f

    :sswitch_29
    move-object/from16 v9, v31

    move-object/from16 v8, v32

    move-object/from16 v2, v33

    move-object/from16 v12, v35

    move-object/from16 v11, v36

    move-object/from16 v10, v37

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7c

    goto/16 :goto_3c

    :cond_7c
    const/16 v19, 0x0

    :goto_3f
    packed-switch v19, :pswitch_data_2

    move-object/from16 p4, v0

    move-object/from16 v0, v30

    goto :goto_41

    .line 118
    :pswitch_1c
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$b;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$b;-><init>()V

    :goto_40
    move-object/from16 p4, v0

    move-object/from16 v0, v19

    goto :goto_41

    .line 102
    :pswitch_1d
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$b;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$b;-><init>()V

    goto :goto_40

    .line 112
    :pswitch_1e
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$h;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$h;-><init>()V

    goto :goto_40

    .line 104
    :pswitch_1f
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$e;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$e;-><init>()V

    goto :goto_40

    .line 106
    :pswitch_20
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$j;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$j;-><init>()V

    goto :goto_40

    .line 120
    :pswitch_21
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$b;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$b;-><init>()V

    goto :goto_40

    .line 116
    :pswitch_22
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$n;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$n;-><init>()V

    goto :goto_40

    .line 114
    :pswitch_23
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$m;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$m;-><init>()V

    goto :goto_40

    .line 128
    :pswitch_24
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$i;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$i;-><init>()V

    goto :goto_40

    .line 126
    :pswitch_25
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$q;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$q;-><init>()V

    goto :goto_40

    .line 124
    :pswitch_26
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$p;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$p;-><init>()V

    goto :goto_40

    .line 122
    :pswitch_27
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$o;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$o;-><init>()V

    goto :goto_40

    .line 110
    :pswitch_28
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$l;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$l;-><init>()V

    goto :goto_40

    .line 108
    :pswitch_29
    new-instance v19, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$k;

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$k;-><init>()V

    goto :goto_40

    :goto_41
    if-nez v0, :cond_7d

    move-object/from16 v0, p4

    move-object/from16 v33, v2

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v32, v8

    move-object/from16 v31, v9

    move-object/from16 v37, v10

    :goto_42
    move-object/from16 v36, v11

    move-object/from16 v35, v12

    goto/16 :goto_39

    .line 782
    :cond_7d
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->variesByPath()Z

    move-result v19

    if-eqz v19, :cond_85

    .line 783
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-eqz v19, :cond_85

    move-object/from16 v19, v1

    const/4 v1, 0x2

    .line 268
    new-array v4, v1, [F

    const/16 v1, 0x63

    int-to-float v1, v1

    const/high16 v25, 0x3f800000    # 1.0f

    div-float v1, v25, v1

    const/16 v26, 0x0

    const-wide/16 v31, 0x0

    move/from16 p5, v1

    move-object/from16 v35, v2

    move-object/from16 v38, v6

    move-wide/from16 v33, v31

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_43
    const/16 v2, 0x64

    if-ge v1, v2, :cond_84

    int-to-float v2, v1

    mul-float v2, v2, p5

    move-object/from16 v39, v7

    move-object/from16 v36, v8

    float-to-double v7, v2

    move/from16 v37, v1

    move-object/from16 v1, v28

    move/from16 v28, v2

    .line 277
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/utils/Easing;

    .line 280
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    const/high16 v41, 0x7fc00000    # Float.NaN

    const/16 v42, 0x0

    :goto_44
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_80

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    move-wide/from16 v44, v7

    move-object/from16 v7, v43

    check-cast v7, Landroidx/constraintlayout/motion/widget/c;

    .line 281
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v8, :cond_7f

    move-object/from16 v43, v8

    .line 282
    iget v8, v7, Landroidx/constraintlayout/motion/widget/c;->c:F

    cmpg-float v46, v8, v28

    if-gez v46, :cond_7e

    move/from16 v42, v8

    move-object/from16 v2, v43

    goto :goto_45

    .line 286
    :cond_7e
    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 287
    iget v7, v7, Landroidx/constraintlayout/motion/widget/c;->c:F

    move/from16 v41, v7

    :cond_7f
    :goto_45
    move-wide/from16 v7, v44

    goto :goto_44

    :cond_80
    move-wide/from16 v44, v7

    if-eqz v2, :cond_82

    .line 294
    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_81

    const/high16 v41, 0x3f800000    # 1.0f

    :cond_81
    sub-float v7, v28, v42

    sub-float v41, v41, v42

    div-float v7, v7, v41

    float-to-double v7, v7

    .line 298
    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float v2, v2, v41

    add-float v2, v2, v42

    float-to-double v7, v2

    goto :goto_46

    :cond_82
    move-wide/from16 v7, v44

    .line 303
    :goto_46
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    move-object/from16 v28, v2

    const/16 v23, 0x0

    aget-object v2, v28, v23

    move-object/from16 v28, v9

    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    invoke-virtual {v2, v7, v8, v9}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 304
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v7, v4, v8}, Landroidx/constraintlayout/motion/widget/c;->b([I[D[FI)V

    if-lez v37, :cond_83

    float-to-double v6, v6

    const/16 v21, 0x1

    .line 306
    aget v2, v4, v21

    const/16 v23, 0x0

    float-to-double v8, v2

    sub-double v8, v33, v8

    aget v2, v4, v23

    move-object/from16 v33, v1

    float-to-double v1, v2

    sub-double v1, v31, v1

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    add-double/2addr v1, v6

    double-to-float v6, v1

    goto :goto_47

    :cond_83
    move-object/from16 v33, v1

    const/16 v23, 0x0

    .line 308
    :goto_47
    aget v1, v4, v23

    float-to-double v1, v1

    const/16 v21, 0x1

    .line 309
    aget v7, v4, v21

    float-to-double v7, v7

    add-int/lit8 v9, v37, 0x1

    move-wide/from16 v31, v1

    move v1, v9

    move-object/from16 v9, v28

    move-object/from16 v28, v33

    move-wide/from16 v33, v7

    move-object/from16 v8, v36

    move-object/from16 v7, v39

    goto/16 :goto_43

    :cond_84
    move-object/from16 v39, v7

    move-object/from16 v36, v8

    move-object/from16 v33, v28

    const/16 v21, 0x1

    const/16 v23, 0x0

    move-object/from16 v28, v9

    move v4, v6

    goto :goto_48

    :cond_85
    move-object/from16 v19, v1

    move-object/from16 v35, v2

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v36, v8

    move-object/from16 v33, v28

    const/16 v21, 0x1

    const/16 v23, 0x0

    move-object/from16 v28, v9

    .line 787
    :goto_48
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setType(Ljava/lang/String;)V

    .line 788
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p4

    move-object/from16 v37, v10

    move-object/from16 v1, v19

    move-object/from16 v31, v28

    move-object/from16 v28, v33

    move-object/from16 v33, v35

    move-object/from16 v32, v36

    goto/16 :goto_42

    .line 790
    :cond_86
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_87
    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/Key;

    .line 791
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v2, :cond_87

    .line 792
    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycle;

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    goto :goto_49

    .line 795
    :cond_88
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 796
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setup(F)V

    goto :goto_4a

    :cond_89
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2f893320 -> :sswitch_7
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a771f66 -> :sswitch_1b
        -0x4a771f65 -> :sswitch_1a
        -0x490b9c39 -> :sswitch_19
        -0x490b9c38 -> :sswitch_18
        -0x490b9c37 -> :sswitch_17
        -0x3bab3dd3 -> :sswitch_16
        -0x3621dfb2 -> :sswitch_15
        -0x3621dfb1 -> :sswitch_14
        -0x266f082 -> :sswitch_13
        -0x42d1a3 -> :sswitch_12
        0x2382115 -> :sswitch_11
        0x589b15e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x4a771f66 -> :sswitch_29
        -0x4a771f65 -> :sswitch_28
        -0x490b9c39 -> :sswitch_27
        -0x490b9c38 -> :sswitch_26
        -0x490b9c37 -> :sswitch_25
        -0x3bab3dd3 -> :sswitch_24
        -0x3621dfb2 -> :sswitch_23
        -0x3621dfb1 -> :sswitch_22
        -0x2f893320 -> :sswitch_21
        -0x266f082 -> :sswitch_20
        -0x42d1a3 -> :sswitch_1f
        0x2382115 -> :sswitch_1e
        0x589b15e -> :sswitch_1d
        0x94e04ec -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " start: x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/c;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/c;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " end: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->e:Landroidx/constraintlayout/motion/widget/c;

    iget v3, v1, Landroidx/constraintlayout/motion/widget/c;->e:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/c;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
