.class public Lcom/google/android/material/circularreveal/CircularRevealHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Strategy;,
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;
    }
.end annotation


# static fields
.field public static final BITMAP_SHADER:I = 0x0

.field public static final CLIP_PATH:I = 0x1

.field public static final REVEAL_ANIMATOR:I = 0x2

.field public static final STRATEGY:I


# instance fields
.field public final a:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

.field public final b:Landroid/view/View;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Z

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 128
    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->a:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 138
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->b:Landroid/view/View;

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 141
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->c:Landroid/graphics/Path;

    .line 142
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->d:Landroid/graphics/Paint;

    .line 143
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->e:Landroid/graphics/Paint;

    .line 144
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 321
    :goto_1
    sget v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    .line 322
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->i:Z

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    xor-int/2addr v0, v2

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public buildCircularRevealCache()V
    .locals 6

    .line 153
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->h:Z

    const/4 v1, 0x0

    .line 155
    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->i:Z

    .line 157
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 160
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 162
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    invoke-virtual {v2, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 167
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->d:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v3, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 170
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->h:Z

    .line 171
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->i:Z

    :cond_2
    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 3

    .line 176
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->i:Z

    .line 178
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 179
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->d:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 264
    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->a()Z

    move-result v0

    iget-object v6, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->a:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->b:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 265
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 267
    invoke-interface {v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 268
    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 291
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported strategy "

    .line 0
    invoke-static {v0, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 274
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 276
    invoke-interface {v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 277
    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 281
    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 285
    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-virtual {p1, v1, v2, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 294
    :cond_5
    invoke-interface {v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 295
    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 333
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->h:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v0, :cond_6

    .line 305
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 306
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 307
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    sub-float/2addr v2, p1

    .line 309
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p1, v0

    neg-float v0, v2

    .line 311
    invoke-virtual {v1, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_6
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    new-instance v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v1, v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 215
    invoke-virtual {v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget v2, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v3, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 255
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v6, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v7, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 254
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v0

    .line 216
    iput v0, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    :cond_1
    return-object v1
.end method

.method public isOpaque()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->a:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualIsOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 237
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->g:Landroid/graphics/drawable/Drawable;

    .line 238
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 222
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 8
    .param p1    # Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 189
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->b:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    goto :goto_1

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v1, :cond_1

    .line 193
    new-instance v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    iput-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->set(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 199
    :goto_0
    iget v1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 254
    iget v2, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v3, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float v6, p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v7, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 254
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result p1

    const v2, 0x38d1b717    # 1.0E-4f

    .line 199
    invoke-static {v1, p1, v2}, Lcom/google/android/material/math/MathUtils;->geq(FFF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 201
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 242
    :cond_2
    :goto_1
    sget p1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 243
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->c:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 244
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->f:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v1, :cond_3

    .line 245
    iget v2, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v3, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 250
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
