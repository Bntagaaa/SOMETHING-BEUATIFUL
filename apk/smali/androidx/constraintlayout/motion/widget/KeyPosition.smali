.class public Landroidx/constraintlayout/motion/widget/KeyPosition;
.super Landroidx/constraintlayout/motion/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyPosition$a;
    }
.end annotation


# static fields
.field public static final TYPE_CARTESIAN:I = 0x0

.field public static final TYPE_PATH:I = 0x1

.field public static final TYPE_SCREEN:I = 0x2


# instance fields
.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public final m:F

.field public final n:F

.field public o:I

.field public p:F

.field public q:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/a;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->f:Ljava/lang/String;

    .line 44
    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->g:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->h:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 46
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    .line 47
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    .line 48
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    .line 49
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->m:F

    .line 51
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->n:F

    .line 55
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->o:I

    .line 57
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->p:F

    .line 58
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->q:F

    const/4 v0, 0x2

    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/SplineSet;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z
    .locals 8

    .line 237
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    .line 77
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    sub-float/2addr v1, v0

    sub-float/2addr p4, p3

    .line 114
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    .line 115
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->n:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    .line 116
    :cond_1
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    .line 117
    :goto_1
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->m:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move p2, v6

    :goto_2
    mul-float p1, p1, v1

    add-float/2addr p1, v0

    mul-float p2, p2, p4

    add-float/2addr p2, p1

    float-to-int p1, p2

    int-to-float p1, p1

    .line 118
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->p:F

    mul-float v1, v1, v2

    add-float/2addr v1, p3

    mul-float p4, p4, v5

    add-float/2addr p4, v1

    float-to-int p1, p4

    int-to-float p1, p1

    .line 119
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->q:F

    goto :goto_3

    :cond_4
    int-to-float p1, p1

    .line 96
    iget p3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    mul-float p1, p1, p3

    int-to-float p4, v3

    add-float/2addr p1, p4

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->p:F

    int-to-float p1, p2

    mul-float p1, p1, p3

    add-float/2addr p1, p4

    .line 97
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->q:F

    goto :goto_3

    :cond_5
    sub-float/2addr v1, v0

    sub-float/2addr p4, p3

    neg-float p1, p4

    .line 106
    iget p2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    mul-float v2, v1, p2

    add-float/2addr v2, v0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    mul-float p1, p1, v0

    add-float/2addr p1, v2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->p:F

    mul-float p4, p4, p2

    add-float/2addr p4, p3

    mul-float v1, v1, v0

    add-float/2addr v1, p4

    .line 107
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->q:F

    .line 238
    :goto_3
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->p:F

    sub-float/2addr p5, p1

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41a00000    # 20.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->q:F

    sub-float/2addr p6, p1

    .line 239
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    return v4

    :cond_6
    return v3
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 67
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    sget-object p2, Landroidx/constraintlayout/motion/widget/KeyPosition$a;->a:Landroid/util/SparseIntArray;

    .line 277
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    .line 278
    const-string v3, "KeyPosition"

    if-ge v1, p2, :cond_4

    .line 279
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 280
    sget-object v5, Landroidx/constraintlayout/motion/widget/KeyPosition$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const/4 v7, 0x3

    packed-switch v6, :pswitch_data_0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "unused attribute 0x"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "   "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 327
    :pswitch_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    goto/16 :goto_1

    .line 324
    :pswitch_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    goto/16 :goto_1

    .line 306
    :pswitch_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->g:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->g:I

    goto/16 :goto_1

    .line 330
    :pswitch_3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->o:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->o:I

    goto/16 :goto_1

    .line 321
    :pswitch_4
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    goto/16 :goto_1

    .line 318
    :pswitch_5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    goto/16 :goto_1

    .line 315
    :pswitch_6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    goto :goto_1

    .line 312
    :pswitch_7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->h:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->h:I

    goto :goto_1

    .line 309
    :pswitch_8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/a;->e:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/a;->e:I

    goto :goto_1

    .line 299
    :pswitch_9
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v7, :cond_0

    .line 300
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->f:Ljava/lang/String;

    goto :goto_1

    .line 302
    :cond_0
    sget-object v2, Landroidx/constraintlayout/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->f:Ljava/lang/String;

    goto :goto_1

    .line 296
    :pswitch_a
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->a:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->a:I

    goto :goto_1

    .line 282
    :pswitch_b
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    if-eqz v3, :cond_1

    .line 283
    iget v3, p0, Landroidx/constraintlayout/motion/widget/Key;->b:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/Key;->b:I

    if-ne v3, v2, :cond_3

    .line 285
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/Key;->c:Ljava/lang/String;

    goto :goto_1

    .line 288
    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v7, :cond_2

    .line 289
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/Key;->c:Ljava/lang/String;

    goto :goto_1

    .line 291
    :cond_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->b:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->b:I

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 338
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/motion/widget/Key;->a:I

    if-ne p1, v2, :cond_5

    .line 339
    const-string p1, "no frame position"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
.end method

.method public positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 13

    .line 137
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->o:I

    const-string v1, "percentY"

    const-string v2, "percentX"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    .line 213
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    .line 214
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float/2addr v5, p1

    sub-float/2addr v6, v0

    .line 219
    aget-object v7, p6, v3

    if-eqz v7, :cond_1

    .line 220
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sub-float p1, p4, p1

    div-float/2addr p1, v5

    .line 221
    aput p1, p7, v3

    sub-float p1, p5, v0

    div-float/2addr p1, v6

    .line 222
    aput p1, p7, v4

    goto :goto_0

    :cond_0
    sub-float p1, p4, p1

    div-float/2addr p1, v5

    .line 224
    aput p1, p7, v4

    sub-float p1, p5, v0

    div-float/2addr p1, v6

    .line 225
    aput p1, p7, v3

    goto :goto_0

    .line 228
    :cond_1
    aput-object v2, p6, v3

    sub-float p1, p4, p1

    div-float/2addr p1, v5

    .line 229
    aput p1, p7, v3

    .line 230
    aput-object v1, p6, v4

    sub-float p1, p5, v0

    div-float/2addr p1, v6

    .line 231
    aput p1, p7, v4

    :goto_0
    return-void

    .line 186
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    .line 187
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 196
    aget-object v5, p6, v3

    if-eqz v5, :cond_4

    .line 197
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    int-to-float v0, v0

    div-float v0, p4, v0

    .line 198
    aput v0, p7, v3

    int-to-float p1, p1

    div-float p1, p5, p1

    .line 199
    aput p1, p7, v4

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    div-float v0, p4, v0

    .line 201
    aput v0, p7, v4

    int-to-float p1, p1

    div-float p1, p5, p1

    .line 202
    aput p1, p7, v3

    goto :goto_1

    .line 205
    :cond_4
    aput-object v2, p6, v3

    int-to-float v0, v0

    div-float v0, p4, v0

    .line 206
    aput v0, p7, v3

    .line 207
    aput-object v1, p6, v4

    int-to-float p1, p1

    div-float p1, p5, p1

    .line 208
    aput p1, p7, v4

    :goto_1
    return-void

    .line 154
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    .line 155
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float/2addr v5, p1

    sub-float/2addr v6, v0

    float-to-double v7, v5

    float-to-double v9, v6

    .line 160
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-double v8, v7

    const-wide v10, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v12, v8, v10

    if-gez v12, :cond_6

    .line 162
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "distance ~ 0"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 163
    aput p1, p7, v3

    .line 164
    aput p1, p7, v4

    return-void

    :cond_6
    div-float/2addr v5, v7

    div-float/2addr v6, v7

    sub-float v0, p5, v0

    mul-float v8, v5, v0

    sub-float p1, p4, p1

    mul-float v9, p1, v6

    sub-float/2addr v8, v9

    div-float/2addr v8, v7

    mul-float v5, v5, p1

    mul-float v6, v6, v0

    add-float/2addr v6, v5

    div-float/2addr v6, v7

    .line 172
    aget-object p1, p6, v3

    if-eqz p1, :cond_8

    .line 173
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 174
    aput v6, p7, v3

    .line 175
    aput v8, p7, v4

    :cond_7
    return-void

    .line 178
    :cond_8
    aput-object v2, p6, v3

    .line 179
    aput-object v1, p6, v4

    .line 180
    aput v6, p7, v3

    .line 181
    aput v8, p7, v4

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 346
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "percentY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "percentX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "sizePercent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "drawPath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "percentHeight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "percentWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "transitionEasing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    .line 366
    :pswitch_0
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/Key;->a(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    return-void

    .line 363
    :pswitch_1
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/Key;->a(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    return-void

    .line 360
    :pswitch_2
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/Key;->a(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    return-void

    .line 351
    :pswitch_3
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/Key;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->h:I

    return-void

    .line 357
    :pswitch_4
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/Key;->a(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    return-void

    .line 354
    :pswitch_5
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/Key;->a(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    return-void

    .line 348
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->f:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_6
        -0x4330437f -> :sswitch_5
        -0x3ca72634 -> :sswitch_4
        -0x314b3c77 -> :sswitch_3
        -0xbefb6fc -> :sswitch_2
        0x198424b3 -> :sswitch_1
        0x198424b4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
