.class Lcom/google/android/material/button/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final t:Z

.field public static final u:Z


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PorterDuff$Mode;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Landroid/graphics/drawable/LayerDrawable;

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/material/button/a;->t:Z

    const/16 v2, 0x16

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    sput-boolean v1, Lcom/google/android/material/button/a;->u:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->n:Z

    .line 76
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->o:Z

    .line 77
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->p:Z

    .line 83
    iput-object p1, p0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 84
    iput-object p2, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/google/android/material/button/a;->r:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_1

    .line 335
    sget-boolean v0, Lcom/google/android/material/button/a;->t:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/android/material/button/a;->r:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 337
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 339
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p1

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/a;->r:Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 342
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 4

    .line 408
    iput-object p1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 370
    sget-boolean v0, Lcom/google/android/material/button/a;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/button/a;->o:Z

    if-nez v0, :cond_0

    .line 372
    iget-object p1, p0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 374
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 376
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->d()V

    .line 378
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 382
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_1
    const/4 v0, 0x1

    .line 364
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 387
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->getMaskDrawable()Lcom/google/android/material/shape/Shapeable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->getMaskDrawable()Lcom/google/android/material/shape/Shapeable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/Shapeable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_3
    return-void
.end method

.method public final c(II)V
    .locals 8

    .line 431
    iget-object v0, p0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    .line 432
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 433
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    .line 434
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 435
    iget v5, p0, Lcom/google/android/material/button/a;->e:I

    .line 436
    iget v6, p0, Lcom/google/android/material/button/a;->f:I

    .line 437
    iput p2, p0, Lcom/google/android/material/button/a;->f:I

    .line 438
    iput p1, p0, Lcom/google/android/material/button/a;->e:I

    .line 439
    iget-boolean v7, p0, Lcom/google/android/material/button/a;->o:Z

    if-nez v7, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->d()V

    :cond_0
    add-int/2addr v2, p1

    sub-int/2addr v2, v5

    add-int/2addr v4, p2

    sub-int/2addr v4, v6

    .line 443
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public final d()V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 208
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v4, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 209
    iget-object v4, p0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 210
    invoke-virtual {v3, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 211
    iget-object v5, p0, Lcom/google/android/material/button/a;->j:Landroid/content/res/ColorStateList;

    invoke-static {v3, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 212
    iget-object v5, p0, Lcom/google/android/material/button/a;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v5, :cond_0

    .line 213
    invoke-static {v3, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 215
    :cond_0
    iget v5, p0, Lcom/google/android/material/button/a;->h:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 217
    new-instance v5, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v6, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v5, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 219
    invoke-virtual {v5, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 220
    iget v6, p0, Lcom/google/android/material/button/a;->h:I

    int-to-float v6, v6

    .line 222
    iget-boolean v7, p0, Lcom/google/android/material/button/a;->n:Z

    if-eqz v7, :cond_1

    .line 223
    sget v7, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {v4, v7}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 220
    :goto_0
    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    .line 226
    sget-boolean v6, Lcom/google/android/material/button/a;->t:Z

    if-eqz v6, :cond_2

    .line 227
    new-instance v6, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v7, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v6, p0, Lcom/google/android/material/button/a;->m:Landroid/graphics/drawable/Drawable;

    const/4 v7, -0x1

    .line 228
    invoke-static {v6, v7}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 229
    new-instance v6, Landroid/graphics/drawable/RippleDrawable;

    iget-object v7, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    .line 231
    invoke-static {v7}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v7

    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v1, v2

    aput-object v3, v1, v0

    invoke-direct {v9, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 168
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    iget v10, p0, Lcom/google/android/material/button/a;->c:I

    iget v11, p0, Lcom/google/android/material/button/a;->e:I

    iget v12, p0, Lcom/google/android/material/button/a;->d:I

    iget v13, p0, Lcom/google/android/material/button/a;->f:I

    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 232
    iget-object v0, p0, Lcom/google/android/material/button/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {v6, v7, v8, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/google/android/material/button/a;->r:Landroid/graphics/drawable/LayerDrawable;

    goto :goto_1

    .line 238
    :cond_2
    new-instance v6, Lcom/google/android/material/ripple/RippleDrawableCompat;

    iget-object v7, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v6, v7}, Lcom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v6, p0, Lcom/google/android/material/button/a;->m:Landroid/graphics/drawable/Drawable;

    .line 239
    iget-object v7, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    .line 240
    invoke-static {v7}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 239
    invoke-static {v6, v7}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 241
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    iget-object v6, p0, Lcom/google/android/material/button/a;->m:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v7, v2

    aput-object v3, v7, v0

    aput-object v6, v7, v1

    invoke-direct {v9, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v9, p0, Lcom/google/android/material/button/a;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 168
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    iget v10, p0, Lcom/google/android/material/button/a;->c:I

    iget v11, p0, Lcom/google/android/material/button/a;->e:I

    iget v12, p0, Lcom/google/android/material/button/a;->d:I

    iget v13, p0, Lcom/google/android/material/button/a;->f:I

    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v6, v8

    .line 142
    :goto_1
    invoke-virtual {v4, v6}, Lcom/google/android/material/button/MaterialButton;->d(Landroid/graphics/drawable/Drawable;)V

    .line 351
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 145
    iget v1, p0, Lcom/google/android/material/button/a;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 5

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    const/4 v2, 0x1

    .line 364
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 306
    iget v3, p0, Lcom/google/android/material/button/a;->h:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    if-eqz v2, :cond_1

    .line 308
    iget v1, p0, Lcom/google/android/material/button/a;->h:I

    int-to-float v1, v1

    .line 310
    iget-boolean v3, p0, Lcom/google/android/material/button/a;->n:Z

    if-eqz v3, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    sget v3, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {v0, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v0

    .line 308
    :cond_0
    invoke-virtual {v2, v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    :cond_1
    return-void
.end method

.method public getInsetBottom()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/google/android/material/button/a;->f:I

    return v0
.end method

.method public getInsetTop()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/google/android/material/button/a;->e:I

    return v0
.end method

.method public getMaskDrawable()Lcom/google/android/material/shape/Shapeable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/google/android/material/button/a;->r:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 396
    iget-object v0, p0, Lcom/google/android/material/button/a;->r:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 398
    iget-object v0, p0, Lcom/google/android/material/button/a;->r:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    return-object v0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/a;->r:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setInsetBottom(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 418
    iget v0, p0, Lcom/google/android/material/button/a;->e:I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/button/a;->c(II)V

    return-void
.end method

.method public setInsetTop(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 426
    iget v0, p0, Lcom/google/android/material/button/a;->f:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/a;->c(II)V

    return-void
.end method
