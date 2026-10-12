.class public abstract Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public b:I

.field public c:I

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/BitmapShader;

.field public final f:Landroid/graphics/Matrix;

.field public g:F

.field public final h:Landroid/graphics/Rect;

.field public final i:Landroid/graphics/RectF;

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 382
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xa0

    .line 50
    iput v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->b:I

    const/16 v0, 0x77

    .line 51
    iput v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->c:I

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->f:Landroid/graphics/Matrix;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->h:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->i:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->j:Z

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->b:I

    .line 387
    :cond_0
    iput-object p2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->a:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    .line 84
    iget p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->b:I

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result p1

    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->l:I

    .line 85
    iget p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->b:I

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result p1

    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->m:I

    .line 390
    new-instance p1, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->e:Landroid/graphics/BitmapShader;

    return-void

    :cond_1
    const/4 p1, -0x1

    .line 392
    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->m:I

    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->l:I

    const/4 p1, 0x0

    .line 393
    iput-object p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->e:Landroid/graphics/BitmapShader;

    return-void
.end method


# virtual methods
.method public a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 223
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b()V
    .locals 8

    .line 227
    iget-boolean v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->j:Z

    if-eqz v1, :cond_2

    .line 228
    iget-boolean v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->k:Z

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->h:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 229
    iget v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->l:I

    iget v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->m:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 230
    iget v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->c:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->h:Landroid/graphics/Rect;

    move v3, v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 234
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 235
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 236
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 237
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    const/high16 v2, 0x3f000000    # 0.5f

    int-to-float v1, v1

    mul-float v1, v1, v2

    .line 238
    iput v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->g:F

    goto :goto_0

    .line 240
    :cond_0
    iget v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->c:I

    iget v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->l:I

    iget v3, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->m:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->h:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 242
    :goto_0
    iget-object v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 244
    iget-object v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->e:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_1

    .line 246
    iget-object v3, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->f:Landroid/graphics/Matrix;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 248
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 249
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    .line 247
    invoke-virtual {v3, v4, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 250
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 251
    iget-object v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 254
    :cond_1
    iput-boolean v6, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->j:Z

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 261
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->b()V

    .line 266
    iget-object v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-nez v2, :cond_1

    .line 267
    iget-object v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->h:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->i:Landroid/graphics/RectF;

    iget v2, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->g:F

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 284
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 80
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 295
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 356
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->g:F

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 140
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->c:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 366
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->m:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 361
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->l:I

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .line 371
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->c:I

    const/16 v1, 0x77

    const/4 v2, -0x3

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 376
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    .line 377
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->g:F

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 72
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method public hasAntiAlias()Z
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v0

    return v0
.end method

.method public hasMipMap()Z
    .locals 1

    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isCircular()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->k:Z

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 345
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 346
    iget-boolean p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->k:Z

    if-eqz p1, :cond_0

    .line 315
    iget p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->m:I

    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->l:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 316
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->g:F

    :cond_0
    const/4 p1, 0x1

    .line 349
    iput-boolean p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->j:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    .line 275
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 277
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 278
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCircular(Z)V
    .locals 1

    .line 303
    iput-boolean p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->k:Z

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->j:Z

    if-eqz p1, :cond_0

    .line 315
    iget p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->m:I

    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->l:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 316
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->g:F

    .line 307
    iget-object p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->e:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 308
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 310
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 289
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 290
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    .line 330
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->k:Z

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 333
    :cond_1
    iget-object v1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->e:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 336
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 339
    :goto_0
    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->g:F

    .line 340
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 217
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 218
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 212
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 151
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->c:I

    if-eq v0, p1, :cond_0

    .line 152
    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->c:I

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->j:Z

    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setMipMap(Z)V
    .locals 0

    .line 170
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setTargetDensity(I)V
    .locals 1

    .line 123
    iget v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->b:I

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_0

    const/16 p1, 0xa0

    .line 124
    :cond_0
    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->b:I

    .line 125
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result p1

    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->l:I

    .line 85
    iget p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->b:I

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result p1

    iput p1, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->m:I

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    return-void
.end method
