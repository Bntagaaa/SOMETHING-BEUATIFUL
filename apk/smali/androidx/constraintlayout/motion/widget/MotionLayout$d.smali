.class Landroidx/constraintlayout/motion/widget/MotionLayout$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:[F

.field public final b:[I

.field public final c:[F

.field public d:Landroid/graphics/Path;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;

.field public final j:[F

.field public k:I

.field public final l:Landroid/graphics/Rect;

.field public final m:I

.field public final synthetic n:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 5

    .line 2545
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->n:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2541
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->l:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 2543
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->m:I

    .line 2546
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:Landroid/graphics/Paint;

    .line 2547
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v2, -0x55cd

    .line 2548
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 2549
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2550
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2552
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->f:Landroid/graphics/Paint;

    .line 2553
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v4, -0x1f8a66

    .line 2554
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2555
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2556
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2558
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->g:Landroid/graphics/Paint;

    .line 2559
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v4, -0xcc5600

    .line 2560
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2561
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2562
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2564
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->h:Landroid/graphics/Paint;

    .line 2565
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2566
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2567
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41400000    # 12.0f

    mul-float p1, p1, v3

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 p1, 0x8

    .line 2568
    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->j:[F

    .line 2569
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->i:Landroid/graphics/Paint;

    .line 2570
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2571
    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 2572
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/16 p1, 0x64

    .line 2573
    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c:[F

    const/16 p1, 0x32

    .line 2574
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->b:[I

    return-void

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x41000000    # 8.0f
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2772
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    .line 2773
    aget v4, v1, v3

    .line 2774
    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    aget v5, v1, v5

    .line 2775
    array-length v6, v1

    sub-int/2addr v6, v3

    aget v1, v1, v6

    .line 2777
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 2778
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->g:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    .line 2777
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v16, v11

    .line 2779
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 2780
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v15

    move-object/from16 v11, p1

    .line 2779
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;FF)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2784
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    const/4 v7, 0x0

    aget v3, v2, v7

    const/4 v4, 0x1

    .line 2785
    aget v8, v2, v4

    .line 2786
    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    aget v5, v2, v5

    .line 2787
    array-length v6, v2

    sub-int/2addr v6, v4

    aget v9, v2, v6

    .line 2788
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2789
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 2790
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v4, p2, v4

    .line 2791
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float v11, v6, p3

    .line 2793
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float v14, v4, v13

    sub-float v15, v5, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    div-float/2addr v14, v15

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v14, v14

    int-to-float v14, v14

    div-float/2addr v14, v13

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2794
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->h:Landroid/graphics/Paint;

    .line 2768
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    const/high16 v18, 0x42c80000    # 100.0f

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->l:Landroid/graphics/Rect;

    invoke-virtual {v14, v6, v7, v15, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v4, v13

    .line 2795
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->l:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    div-int/lit8 v13, v19, 0x2

    int-to-float v13, v13

    sub-float/2addr v4, v13

    add-float/2addr v4, v2

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float v2, p3, v2

    .line 2796
    invoke-virtual {v1, v6, v4, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2798
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->g:Landroid/graphics/Paint;

    move/from16 v5, p3

    move/from16 v2, p2

    move/from16 v3, p3

    .line 2797
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-float v13, v11, v18

    sub-float v3, v9, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v13, v3

    float-to-double v3, v13

    add-double v3, v3, v16

    double-to-int v3, v3

    int-to-float v3, v3

    div-float v3, v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2768
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->l:Landroid/graphics/Rect;

    invoke-virtual {v14, v2, v7, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    div-float v11, v11, v20

    .line 2803
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v11, v3

    const/high16 v3, 0x40a00000    # 5.0f

    add-float v3, p2, v3

    sub-float/2addr v10, v11

    .line 2804
    invoke-virtual {v1, v2, v3, v10, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2806
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move/from16 v4, p2

    move/from16 v2, p2

    move/from16 v3, p3

    .line 2805
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;FF)V
    .locals 14

    move/from16 v1, p2

    move/from16 v2, p3

    .line 2747
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    .line 2748
    aget v6, v0, v5

    .line 2749
    array-length v7, v0

    add-int/lit8 v7, v7, -0x2

    aget v7, v0, v7

    .line 2750
    array-length v8, v0

    sub-int/2addr v8, v5

    aget v0, v0, v8

    sub-float v5, v4, v7

    float-to-double v8, v5

    sub-float v5, v6, v0

    float-to-double v10, v5

    .line 2751
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v5, v8

    sub-float v8, v1, v4

    sub-float/2addr v7, v4

    mul-float v8, v8, v7

    sub-float v9, v2, v6

    sub-float/2addr v0, v6

    mul-float v9, v9, v0

    add-float/2addr v9, v8

    mul-float v8, v5, v5

    div-float/2addr v9, v8

    mul-float v7, v7, v9

    add-float/2addr v7, v4

    mul-float v9, v9, v0

    add-float v4, v9, v6

    .line 2756
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 2757
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2758
    invoke-virtual {v10, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v0, v7, v1

    float-to-double v8, v0

    sub-float v0, v4, v2

    float-to-double v11, v0

    .line 2759
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v0, v8

    .line 2760
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v9, v0, v8

    div-float/2addr v9, v5

    float-to-int v5, v9

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2761
    iget-object v13, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->h:Landroid/graphics/Paint;

    .line 2768
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->l:Landroid/graphics/Rect;

    invoke-virtual {v13, v9, v3, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 2762
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->l:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v11, v0, v3

    const/high16 v12, -0x3e600000    # -20.0f

    move-object v8, p1

    .line 2763
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 2764
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->g:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;FFII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2819
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v3, p4, 0x2

    int-to-float v3, v3

    sub-float v3, p2, v3

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v3, v3, v8

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->n:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v4, v4, p4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v10

    double-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2820
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->h:Landroid/graphics/Paint;

    .line 2768
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->l:Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-virtual {v12, v2, v13, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 v14, 0x40000000    # 2.0f

    div-float v3, p2, v14

    .line 2821
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->l:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const/high16 v5, 0x41a00000    # 20.0f

    sub-float v5, p3, v5

    .line 2822
    invoke-virtual {v1, v2, v3, v5, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 2824
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->g:Landroid/graphics/Paint;

    move/from16 v5, p3

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v17, v10

    const/4 v8, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v16, 0x42c80000    # 100.0f

    .line 2823
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v3, p5, 0x2

    int-to-float v3, v3

    sub-float v3, p3, v3

    mul-float v3, v3, v16

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v4, v4, p5

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    add-double v3, v3, v17

    double-to-int v3, v3

    int-to-float v3, v3

    div-float v3, v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2768
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->l:Landroid/graphics/Rect;

    invoke-virtual {v12, v2, v13, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    div-float v3, p3, v14

    .line 2829
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    add-float v4, p2, v4

    sub-float v3, v8, v3

    .line 2830
    invoke-virtual {v1, v2, v4, v3, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2832
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move/from16 v4, p2

    move/from16 v2, p2

    move/from16 v3, p3

    .line 2831
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
            ">;II)V"
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 2587
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2590
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2591
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->n:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:Landroid/graphics/Paint;

    const/4 v3, 0x2

    if-nez v1, :cond_1

    and-int/lit8 v1, p4, 0x1

    if-ne v1, v3, :cond_1

    .line 2592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 859
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 2592
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2593
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->h:Landroid/graphics/Paint;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v6, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2594
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1d

    int-to-float v0, v0

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {p1, v1, v4, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2596
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 2597
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getDrawPath()I

    move-result v1

    const/4 v4, 0x1

    if-lez p4, :cond_3

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    .line 2605
    :cond_4
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c:[F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->b:[I

    invoke-virtual {v0, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionController;->a([F[I)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->k:I

    if-lt v1, v4, :cond_2

    .line 2609
    div-int/lit8 v5, p3, 0x10

    .line 2610
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    if-eqz v6, :cond_5

    array-length v6, v6

    mul-int/lit8 v7, v5, 0x2

    if-eq v6, v7, :cond_6

    :cond_5
    mul-int/lit8 v6, v5, 0x2

    .line 2611
    new-array v6, v6, [F

    iput-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    .line 2612
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    .line 2615
    :cond_6
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->m:I

    int-to-float v7, v6

    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v7, 0x77000000

    .line 2617
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2618
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->i:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2619
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->f:Landroid/graphics/Paint;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2620
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->g:Landroid/graphics/Paint;

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2621
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    invoke-virtual {v0, v7, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->b([FI)V

    .line 2622
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->k:I

    invoke-virtual {p0, p1, v1, v5, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    const/16 v5, -0x55cd

    .line 2623
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    const v5, -0x1f8a66

    .line 2624
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2625
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    const v5, -0xcc5600

    .line 2626
    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    neg-int v5, v6

    int-to-float v5, v5

    .line 2628
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2629
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->k:I

    invoke-virtual {p0, p1, v1, v5, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    const/4 v5, 0x5

    if-ne v1, v5, :cond_2

    .line 2836
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x32

    if-gt v6, v7, :cond_7

    int-to-float v8, v6

    int-to-float v7, v7

    div-float/2addr v8, v7

    const/4 v7, 0x0

    .line 392
    invoke-virtual {v0, v8, v7}, Landroidx/constraintlayout/motion/widget/MotionController;->c(F[F)F

    move-result v7

    .line 393
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->h:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v8, v8, v1

    float-to-double v9, v7

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    invoke-virtual {v8, v9, v10, v7}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 394
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->m:[I

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->n:[D

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Landroidx/constraintlayout/motion/widget/c;

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->j:[F

    invoke-virtual {v9, v7, v8, v10, v1}, Landroidx/constraintlayout/motion/widget/c;->c([I[D[FI)V

    .line 2841
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    aget v8, v10, v1

    aget v9, v10, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2842
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    aget v8, v10, v3

    const/4 v9, 0x3

    aget v9, v10, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2843
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    const/4 v8, 0x4

    aget v8, v10, v8

    aget v9, v10, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2844
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    const/4 v8, 0x6

    aget v8, v10, v8

    const/4 v9, 0x7

    aget v9, v10, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2845
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    const/high16 v0, 0x44000000    # 512.0f

    .line 2847
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 2848
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2849
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v0, -0x40000000    # -2.0f

    .line 2851
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x10000

    .line 2852
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2853
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 2636
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    :goto_2
    return-void
.end method

.method public drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v7, p2

    move-object/from16 v8, p4

    .line 2640
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->b:[I

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x4

    if-ne v7, v13, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x0

    .line 2730
    :goto_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->k:I

    if-ge v1, v3, :cond_2

    .line 2731
    aget v3, v9, v1

    if-ne v3, v12, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-ne v3, v11, :cond_1

    const/4 v14, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 2723
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    aget v2, v1, v10

    aget v3, v1, v12

    array-length v4, v1

    sub-int/2addr v4, v11

    aget v4, v1, v4

    array-length v5, v1

    sub-int/2addr v5, v12

    aget v5, v1, v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    if-eqz v14, :cond_4

    .line 2742
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a(Landroid/graphics/Canvas;)V

    :cond_4
    if-ne v7, v11, :cond_5

    .line 2723
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    aget v2, v1, v10

    aget v3, v1, v12

    array-length v4, v1

    sub-int/2addr v4, v11

    aget v4, v1, v4

    array-length v5, v1

    sub-int/2addr v5, v12

    aget v5, v1, v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    move-object/from16 v1, p1

    :goto_1
    const/4 v6, 0x3

    if-ne v7, v6, :cond_6

    .line 2647
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a(Landroid/graphics/Canvas;)V

    .line 2654
    :cond_6
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 2660
    iget-object v2, v8, Landroidx/constraintlayout/motion/widget/MotionController;->a:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 2661
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 2662
    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/MotionController;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move v4, v2

    move v5, v3

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v14, 0x1

    :goto_3
    add-int/lit8 v2, p3, -0x1

    if-ge v14, v2, :cond_10

    if-ne v7, v13, :cond_8

    add-int/lit8 v2, v14, -0x1

    .line 2665
    aget v2, v9, v2

    if-nez v2, :cond_8

    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_8
    mul-int/lit8 v2, v14, 0x2

    .line 2670
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c:[F

    aget v15, v3, v2

    add-int/2addr v2, v12

    .line 2671
    aget v2, v3, v2

    .line 2672
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 2673
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    const/high16 v16, 0x41200000    # 10.0f

    const/16 v17, 0x0

    add-float v10, v2, v16

    invoke-virtual {v3, v15, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2674
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    add-float v10, v15, v16

    invoke-virtual {v3, v10, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2675
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    sub-float v10, v2, v16

    invoke-virtual {v3, v15, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2676
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    sub-float v10, v15, v16

    invoke-virtual {v3, v10, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2677
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    add-int/lit8 v3, v14, -0x1

    .line 102
    iget-object v10, v8, Landroidx/constraintlayout/motion/widget/MotionController;->s:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/widget/c;

    .line 2682
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->i:Landroid/graphics/Paint;

    const/16 v16, 0x0

    if-ne v7, v13, :cond_c

    .line 2684
    aget v3, v9, v3

    if-ne v3, v12, :cond_a

    sub-float v3, v15, v16

    sub-float v13, v2, v16

    .line 2685
    invoke-virtual {v0, v1, v3, v13}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c(Landroid/graphics/Canvas;FF)V

    :cond_9
    :goto_4
    move v13, v2

    goto :goto_5

    :cond_a
    if-ne v3, v11, :cond_b

    sub-float v3, v15, v16

    sub-float v13, v2, v16

    .line 2687
    invoke-virtual {v0, v1, v3, v13}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_4

    :cond_b
    if-ne v3, v6, :cond_9

    move v3, v2

    sub-float v2, v15, v16

    move v13, v3

    sub-float v3, v13, v16

    .line 2689
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d(Landroid/graphics/Canvas;FFII)V

    .line 2692
    :goto_5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_c
    move v13, v2

    :goto_6
    if-ne v7, v11, :cond_d

    sub-float v2, v15, v16

    sub-float v3, v13, v16

    .line 2695
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c(Landroid/graphics/Canvas;FF)V

    :cond_d
    if-ne v7, v6, :cond_e

    sub-float v2, v15, v16

    sub-float v3, v13, v16

    .line 2698
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->b(Landroid/graphics/Canvas;FF)V

    :cond_e
    const/4 v2, 0x6

    if-ne v7, v2, :cond_f

    sub-float v2, v15, v16

    sub-float v3, v13, v16

    .line 2701
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d(Landroid/graphics/Canvas;FFII)V

    .line 2706
    :cond_f
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_7
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x4

    goto/16 :goto_3

    :cond_10
    const/16 v17, 0x0

    .line 2709
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    array-length v3, v2

    if-le v3, v12, :cond_11

    .line 2711
    aget v3, v2, v17

    aget v2, v2, v12

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->f:Landroid/graphics/Paint;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v1, v3, v2, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2712
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    array-length v3, v2

    sub-int/2addr v3, v11

    aget v3, v2, v3

    array-length v6, v2

    sub-int/2addr v6, v12

    aget v2, v2, v6

    invoke-virtual {v1, v3, v2, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_11
    return-void
.end method
