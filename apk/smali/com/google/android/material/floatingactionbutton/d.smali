.class Lcom/google/android/material/floatingactionbutton/d;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/d$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/RectF;

.field public final f:Landroid/graphics/RectF;

.field public final g:Lcom/google/android/material/floatingactionbutton/d$b;

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public p:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 61
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->a:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 64
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->c:Landroid/graphics/Path;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->d:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->e:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->f:Landroid/graphics/RectF;

    .line 68
    new-instance v0, Lcom/google/android/material/floatingactionbutton/d$b;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/d$b;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->g:Lcom/google/android/material/floatingactionbutton/d$b;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    .line 83
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->o:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 84
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->b:Landroid/graphics/Paint;

    .line 85
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 125
    iget-boolean v4, v0, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    iget-object v5, v0, Lcom/google/android/material/floatingactionbutton/d;->b:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/google/android/material/floatingactionbutton/d;->d:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    .line 225
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 227
    iget v4, v0, Lcom/google/android/material/floatingactionbutton/d;->h:F

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 230
    iget v7, v0, Lcom/google/android/material/floatingactionbutton/d;->i:I

    iget v8, v0, Lcom/google/android/material/floatingactionbutton/d;->m:I

    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v9

    .line 231
    iget v7, v0, Lcom/google/android/material/floatingactionbutton/d;->j:I

    iget v8, v0, Lcom/google/android/material/floatingactionbutton/d;->m:I

    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v10

    .line 232
    iget v7, v0, Lcom/google/android/material/floatingactionbutton/d;->j:I

    .line 234
    invoke-static {v7, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    iget v8, v0, Lcom/google/android/material/floatingactionbutton/d;->m:I

    .line 233
    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v11

    .line 235
    iget v7, v0, Lcom/google/android/material/floatingactionbutton/d;->l:I

    .line 237
    invoke-static {v7, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    iget v8, v0, Lcom/google/android/material/floatingactionbutton/d;->m:I

    .line 236
    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v12

    .line 238
    iget v7, v0, Lcom/google/android/material/floatingactionbutton/d;->l:I

    iget v8, v0, Lcom/google/android/material/floatingactionbutton/d;->m:I

    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v13

    .line 239
    iget v7, v0, Lcom/google/android/material/floatingactionbutton/d;->k:I

    iget v8, v0, Lcom/google/android/material/floatingactionbutton/d;->m:I

    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v14

    filled-new-array/range {v9 .. v14}, [I

    move-result-object v20

    sub-float v7, v2, v4

    const/4 v8, 0x6

    .line 247
    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v9, v8, v3

    const/4 v9, 0x1

    aput v4, v8, v9

    const/4 v4, 0x2

    aput v1, v8, v4

    const/4 v4, 0x3

    aput v1, v8, v4

    const/4 v1, 0x4

    aput v7, v8, v1

    const/4 v1, 0x5

    aput v2, v8, v1

    .line 249
    new-instance v15, Landroid/graphics/LinearGradient;

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, v1

    move/from16 v19, v2

    move-object/from16 v21, v8

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 126
    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    iput-boolean v3, v0, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    .line 130
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 131
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 132
    iget-object v3, v0, Lcom/google/android/material/floatingactionbutton/d;->e:Landroid/graphics/RectF;

    invoke-virtual {v3, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 136
    iget-object v4, v0, Lcom/google/android/material/floatingactionbutton/d;->o:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 137
    invoke-virtual {v4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/d;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v4

    .line 138
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 139
    iget-object v4, v0, Lcom/google/android/material/floatingactionbutton/d;->o:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/d;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    invoke-virtual {v3, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    move-object/from16 v1, p1

    .line 141
    invoke-virtual {v1, v3, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->g:Lcom/google/android/material/floatingactionbutton/d$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .line 194
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 5
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->o:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->o:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    .line 150
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 155
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->e:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->o:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/d;->c:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/d;->a:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 157
    invoke-virtual {v2}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1, v2}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_1
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 164
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->o:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->h:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 166
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isStateful()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    return-void
.end method

.method public onStateChange([I)Z
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 210
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->m:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 211
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->m:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    .line 213
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->m:I

    .line 216
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    if-eqz p1, :cond_1

    .line 217
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 219
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    return p1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 188
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 89
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 90
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->h:F

    .line 91
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->b:Landroid/graphics/Paint;

    const v1, 0x3faaa993    # 1.3333f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 108
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 109
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->o:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 183
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
