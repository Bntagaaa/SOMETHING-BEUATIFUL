.class Lcom/google/android/material/card/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final u:D

.field public static final v:Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field public final a:Lcom/google/android/material/card/MaterialCardView;

.field public final b:Landroid/graphics/Rect;

.field public final c:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public final d:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public n:Landroid/content/res/ColorStateList;

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Landroid/graphics/drawable/LayerDrawable;

.field public q:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public r:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public s:Z

.field public t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/card/b;->u:D

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/android/material/card/b;->v:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1    # Lcom/google/android/material/card/MaterialCardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/card/b;->b:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/google/android/material/card/b;->s:Z

    .line 130
    iput-object p1, p0, Lcom/google/android/material/card/b;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 131
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/google/android/material/card/b;->c:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    const p4, -0xbbbbbc

    .line 133
    invoke-virtual {v0, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor(I)V

    .line 135
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p4

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/R$styleable;->CardView:[I

    sget v1, Lcom/google/android/material/R$style;->CardView:I

    .line 139
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 140
    sget p2, Lcom/google/android/material/R$styleable;->CardView_cardCornerRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 143
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 142
    invoke-virtual {p4, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 146
    :cond_0
    new-instance p2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/card/b;->d:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 147
    invoke-virtual {p4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/card/b;->g(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 149
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static b(Lcom/google/android/material/shape/CornerTreatment;F)F
    .locals 4

    .line 625
    instance-of v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 626
    sget-wide v2, Lcom/google/android/material/card/b;->u:D

    sub-double/2addr v0, v2

    float-to-double p0, p1

    mul-double v0, v0, p0

    double-to-float p0, v0

    return p0

    .line 627
    :cond_0
    instance-of p0, p0, Lcom/google/android/material/shape/CutCornerTreatment;

    if-eqz p0, :cond_1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()F
    .locals 4

    .line 608
    iget-object v0, p0, Lcom/google/android/material/card/b;->m:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 611
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/card/b;->c:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    move-result v2

    .line 610
    invoke-static {v0, v2}, Lcom/google/android/material/card/b;->b(Lcom/google/android/material/shape/CornerTreatment;F)F

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/card/b;->m:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 613
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v2

    .line 614
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopRightCornerResolvedSize()F

    move-result v3

    .line 612
    invoke-static {v2, v3}, Lcom/google/android/material/card/b;->b(Lcom/google/android/material/shape/CornerTreatment;F)F

    move-result v2

    .line 609
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/card/b;->m:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 617
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v2

    .line 618
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBottomRightCornerResolvedSize()F

    move-result v3

    .line 616
    invoke-static {v2, v3}, Lcom/google/android/material/card/b;->b(Lcom/google/android/material/shape/CornerTreatment;F)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/card/b;->m:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 620
    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v3

    .line 621
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBottomLeftCornerResolvedSize()F

    move-result v1

    .line 619
    invoke-static {v3, v1}, Lcom/google/android/material/card/b;->b(Lcom/google/android/material/shape/CornerTreatment;F)F

    move-result v1

    .line 615
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 608
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final c()Landroid/graphics/drawable/LayerDrawable;
    .locals 7

    const/4 v0, 0x2

    .line 635
    iget-object v1, p0, Lcom/google/android/material/card/b;->o:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 651
    sget-boolean v1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v1, :cond_0

    .line 680
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v2, p0, Lcom/google/android/material/card/b;->m:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 652
    iput-object v1, p0, Lcom/google/android/material/card/b;->r:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 654
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Lcom/google/android/material/card/b;->k:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/card/b;->r:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 662
    :cond_0
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 680
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v3, p0, Lcom/google/android/material/card/b;->m:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 663
    iput-object v2, p0, Lcom/google/android/material/card/b;->q:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 664
    iget-object v3, p0, Lcom/google/android/material/card/b;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    const v2, 0x10100a7

    .line 665
    filled-new-array {v2}, [I

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/card/b;->q:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 636
    :goto_0
    iput-object v1, p0, Lcom/google/android/material/card/b;->o:Landroid/graphics/drawable/Drawable;

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/card/b;->p:Landroid/graphics/drawable/LayerDrawable;

    if-nez v1, :cond_2

    .line 640
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v2, p0, Lcom/google/android/material/card/b;->o:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/card/b;->d:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v4, p0, Lcom/google/android/material/card/b;->j:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    aput-object v4, v5, v0

    invoke-direct {v1, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/google/android/material/card/b;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 643
    sget v2, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/card/b;->p:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 529
    iget-object v0, p0, Lcom/google/android/material/card/b;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 563
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v1, v1, v2

    .line 564
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/card/b;->a()F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 531
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 573
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v0

    .line 574
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/card/b;->a()F

    move-result v3

    :cond_1
    add-float/2addr v0, v3

    float-to-double v2, v0

    .line 532
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move v4, v0

    move v5, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 534
    :goto_1
    new-instance v2, Lcom/google/android/material/card/a;

    move v6, v4

    move v7, v5

    move-object v3, p1

    .line 535
    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v2
.end method

.method public final e(II)V
    .locals 14

    .line 428
    iget-object v0, p0, Lcom/google/android/material/card/b;->p:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_8

    .line 432
    iget-object v0, p0, Lcom/google/android/material/card/b;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 563
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v1, v1, v2

    .line 564
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/card/b;->a()F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    float-to-double v4, v1

    .line 433
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 573
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v4

    .line 574
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->h()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/card/b;->a()F

    move-result v3

    :cond_1
    add-float/2addr v4, v3

    mul-float v4, v4, v2

    float-to-double v2, v4

    .line 434
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 701
    :goto_1
    iget v3, p0, Lcom/google/android/material/card/b;->g:I

    const v4, 0x800005

    and-int v5, v3, v4

    if-ne v5, v4, :cond_3

    .line 439
    iget v5, p0, Lcom/google/android/material/card/b;->e:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/google/android/material/card/b;->f:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    goto :goto_2

    .line 440
    :cond_3
    iget v5, p0, Lcom/google/android/material/card/b;->e:I

    :goto_2
    and-int/lit8 v6, v3, 0x50

    const/16 v7, 0x50

    if-ne v6, v7, :cond_4

    .line 443
    iget v6, p0, Lcom/google/android/material/card/b;->e:I

    :goto_3
    move v13, v6

    goto :goto_4

    .line 444
    :cond_4
    iget v6, p0, Lcom/google/android/material/card/b;->e:I

    sub-int v6, p2, v6

    iget v8, p0, Lcom/google/android/material/card/b;->f:I

    sub-int/2addr v6, v8

    sub-int/2addr v6, v1

    goto :goto_3

    :goto_4
    and-int v6, v3, v4

    if-ne v6, v4, :cond_5

    .line 448
    iget p1, p0, Lcom/google/android/material/card/b;->e:I

    goto :goto_5

    .line 449
    :cond_5
    iget v4, p0, Lcom/google/android/material/card/b;->e:I

    sub-int/2addr p1, v4

    iget v4, p0, Lcom/google/android/material/card/b;->f:I

    sub-int/2addr p1, v4

    sub-int/2addr p1, v2

    :goto_5
    and-int/lit8 v2, v3, 0x50

    if-ne v2, v7, :cond_6

    .line 452
    iget v2, p0, Lcom/google/android/material/card/b;->e:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/google/android/material/card/b;->f:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    :goto_6
    move v11, v2

    goto :goto_7

    .line 453
    :cond_6
    iget v2, p0, Lcom/google/android/material/card/b;->e:I

    goto :goto_6

    .line 455
    :goto_7
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    move v10, p1

    move v12, v5

    goto :goto_8

    :cond_7
    move v12, p1

    move v10, v5

    .line 462
    :goto_8
    iget-object v8, p0, Lcom/google/android/material/card/b;->p:Landroid/graphics/drawable/LayerDrawable;

    const/4 v9, 0x2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_8
    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 396
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/card/b;->j:Landroid/graphics/drawable/Drawable;

    .line 397
    iget-object v0, p0, Lcom/google/android/material/card/b;->l:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 398
    iget-object p1, p0, Lcom/google/android/material/card/b;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/b;->setChecked(Z)V

    goto :goto_0

    .line 400
    :cond_0
    sget-object p1, Lcom/google/android/material/card/b;->v:Landroid/graphics/drawable/ColorDrawable;

    iput-object p1, p0, Lcom/google/android/material/card/b;->j:Landroid/graphics/drawable/Drawable;

    .line 403
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/card/b;->p:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_1

    .line 404
    sget v0, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    iget-object v1, p0, Lcom/google/android/material/card/b;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_1
    return-void
.end method

.method public final g(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2

    .line 480
    iput-object p1, p0, Lcom/google/android/material/card/b;->m:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 481
    iget-object v0, p0, Lcom/google/android/material/card/b;->c:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 482
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowBitmapDrawingEnable(Z)V

    .line 483
    iget-object v0, p0, Lcom/google/android/material/card/b;->d:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/b;->r:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/card/b;->q:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_2

    .line 492
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_2
    return-void
.end method

.method public final h()Z
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/google/android/material/card/b;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/google/android/material/card/b;->c:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 6

    .line 590
    iget-object v0, p0, Lcom/google/android/material/card/b;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/google/android/material/card/b;->c:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 349
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->a()F

    move-result v1

    .line 582
    :goto_2
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 583
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 584
    sget-wide v4, Lcom/google/android/material/card/b;->u:D

    sub-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getCardViewRadius()F

    move-result v4

    float-to-double v4, v4

    mul-double v2, v2, v4

    double-to-float v2, v2

    :cond_3
    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 352
    iget-object v2, p0, Lcom/google/android/material/card/b;->b:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/google/android/material/card/MaterialCardView;->setAncestorContentPadding(IIII)V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 205
    iget-boolean v0, p0, Lcom/google/android/material/card/b;->s:Z

    .line 324
    iget-object v1, p0, Lcom/google/android/material/card/b;->a:Lcom/google/android/material/card/MaterialCardView;

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/google/android/material/card/b;->c:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/card/b;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/b;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/card/b;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/google/android/material/card/b;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 685
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method
