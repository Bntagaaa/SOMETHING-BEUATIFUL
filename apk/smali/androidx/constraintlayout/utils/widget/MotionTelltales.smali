.class public Landroidx/constraintlayout/utils/widget/MotionTelltales;
.super Landroidx/constraintlayout/utils/widget/MockView;
.source "SourceFile"


# instance fields
.field public final k:Landroid/graphics/Paint;

.field public l:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public final m:[F

.field public final n:Landroid/graphics/Matrix;

.field public o:I

.field public p:I

.field public q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->k:Landroid/graphics/Paint;

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->m:[F

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:I

    const v0, -0xff01

    .line 52
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 53
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:F

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->k:Landroid/graphics/Paint;

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->m:[F

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:I

    const v0, -0xff01

    .line 52
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 53
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:F

    .line 61
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->k:Landroid/graphics/Paint;

    const/4 p3, 0x2

    .line 49
    new-array p3, p3, [F

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->m:[F

    .line 50
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    .line 51
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:I

    const p3, -0xff01

    .line 52
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    const/high16 p3, 0x3e800000    # 0.25f

    .line 53
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:F

    .line 66
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 71
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 75
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_tailColor:I

    if-ne v1, v2, :cond_0

    .line 76
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    goto :goto_1

    .line 77
    :cond_0
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_velocityMode:I

    if-ne v1, v2, :cond_1

    .line 78
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:I

    goto :goto_1

    .line 79
    :cond_1
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_tailScale:I

    if-ne v1, v2, :cond_2

    .line 80
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:F

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_3
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->k:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 85
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 90
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v1, p0

    const/4 v6, 0x5

    const/4 v7, 0x1

    .line 106
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/utils/widget/MockView;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 108
    iget-object v8, v1, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 109
    iget-object v0, v1, Landroidx/constraintlayout/utils/widget/MotionTelltales;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 111
    instance-of v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v2, :cond_2

    .line 112
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v0, v1, Landroidx/constraintlayout/utils/widget/MotionTelltales;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-void

    .line 116
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 117
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 118
    new-array v11, v6, [F

    fill-array-data v11, :array_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v6, :cond_2

    .line 120
    aget v3, v11, v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v6, :cond_1

    .line 122
    aget v2, v11, v14

    .line 123
    iget-object v0, v1, Landroidx/constraintlayout/utils/widget/MotionTelltales;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v1, Landroidx/constraintlayout/utils/widget/MotionTelltales;->m:[F

    iget v5, v1, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:I

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewVelocity(Landroid/view/View;FF[FI)V

    .line 124
    iget-object v0, v1, Landroidx/constraintlayout/utils/widget/MotionTelltales;->m:[F

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    int-to-float v4, v9

    mul-float v16, v4, v2

    int-to-float v2, v10

    mul-float v17, v2, v3

    .line 128
    aget v2, v0, v12

    iget v4, v1, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:F

    mul-float v2, v2, v4

    sub-float v18, v16, v2

    .line 129
    aget v2, v0, v7

    mul-float v2, v2, v4

    sub-float v19, v17, v2

    .line 130
    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 131
    iget-object v0, v1, Landroidx/constraintlayout/utils/widget/MotionTelltales;->k:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v14, v7

    goto :goto_1

    :cond_1
    add-int/2addr v13, v7

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 100
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 94
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
