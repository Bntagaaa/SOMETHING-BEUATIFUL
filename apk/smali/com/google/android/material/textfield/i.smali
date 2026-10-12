.class Lcom/google/android/material/textfield/i;
.super Lcom/google/android/material/textfield/o;
.source "SourceFile"


# instance fields
.field public final e:Landroid/text/TextWatcher;

.field public final f:Landroid/view/View$OnFocusChangeListener;

.field public final g:Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

.field public final h:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field public final i:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

.field public final j:Landroid/view/View$OnAttachStateChangeListener;

.field public final k:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

.field public l:Z

.field public m:Z

.field public n:J

.field public o:Landroid/graphics/drawable/StateListDrawable;

.field public p:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public q:Landroid/view/accessibility/AccessibilityManager;

.field public r:Landroid/animation/ValueAnimator;

.field public s:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 0

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/o;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 77
    new-instance p2, Lcom/google/android/material/textfield/i$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/textfield/i$a;-><init>(Lcom/google/android/material/textfield/i;)V

    iput-object p2, p0, Lcom/google/android/material/textfield/i;->e:Landroid/text/TextWatcher;

    .line 101
    new-instance p2, Lcom/google/android/material/textfield/i$b;

    invoke-direct {p2, p0}, Lcom/google/android/material/textfield/i$b;-><init>(Lcom/google/android/material/textfield/i;)V

    iput-object p2, p0, Lcom/google/android/material/textfield/i;->f:Landroid/view/View$OnFocusChangeListener;

    .line 112
    new-instance p2, Lcom/google/android/material/textfield/i$c;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/textfield/i$c;-><init>(Lcom/google/android/material/textfield/i;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object p2, p0, Lcom/google/android/material/textfield/i;->g:Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    .line 145
    new-instance p1, Lcom/google/android/material/textfield/i$d;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/i$d;-><init>(Lcom/google/android/material/textfield/i;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/i;->h:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 170
    new-instance p1, Lcom/google/android/material/textfield/i$e;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/i$e;-><init>(Lcom/google/android/material/textfield/i;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/i;->i:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 202
    new-instance p1, Lcom/google/android/material/textfield/i$f;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/i$f;-><init>(Lcom/google/android/material/textfield/i;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/i;->j:Landroid/view/View$OnAttachStateChangeListener;

    .line 214
    new-instance p1, Lcom/google/android/material/textfield/i$g;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/i$g;-><init>(Lcom/google/android/material/textfield/i;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/i;->k:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    const/4 p1, 0x0

    .line 230
    iput-boolean p1, p0, Lcom/google/android/material/textfield/i;->l:Z

    .line 231
    iput-boolean p1, p0, Lcom/google/android/material/textfield/i;->m:Z

    const-wide p1, 0x7fffffffffffffffL

    .line 232
    iput-wide p1, p0, Lcom/google/android/material/textfield/i;->n:J

    return-void
.end method

.method public static d(Lcom/google/android/material/textfield/i;Landroid/widget/AutoCompleteTextView;)V
    .locals 7

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/textfield/i;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    const-wide/16 v2, 0x12c

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 321
    iput-boolean v5, p0, Lcom/google/android/material/textfield/i;->l:Z

    .line 323
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/textfield/i;->l:Z

    if-nez v0, :cond_5

    .line 325
    iget-boolean v0, p0, Lcom/google/android/material/textfield/i;->m:Z

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/i;->h(Z)V

    .line 330
    iget-boolean p0, p0, Lcom/google/android/material/textfield/i;->m:Z

    if-eqz p0, :cond_4

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 332
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void

    .line 334
    :cond_4
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void

    .line 337
    :cond_5
    iput-boolean v5, p0, Lcom/google/android/material/textfield/i;->l:Z

    return-void
.end method

.method public static g(Landroid/widget/EditText;)Z
    .locals 0

    .line 516
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    const/4 v0, 0x2

    .line 248
    iget-object v1, p0, Lcom/google/android/material/textfield/o;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->mtrl_shape_corner_size_small_component:I

    .line 249
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    .line 252
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_elevation:I

    .line 253
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    .line 256
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    .line 257
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 261
    invoke-virtual {p0, v3, v3, v4, v5}, Lcom/google/android/material/textfield/i;->f(FFFI)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v6

    const/4 v7, 0x0

    .line 268
    invoke-virtual {p0, v7, v3, v4, v5}, Lcom/google/android/material/textfield/i;->f(FFFI)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v3

    .line 274
    iput-object v6, p0, Lcom/google/android/material/textfield/i;->p:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 275
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/textfield/i;->o:Landroid/graphics/drawable/StateListDrawable;

    const v5, 0x10100aa

    .line 276
    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v4, p0, Lcom/google/android/material/textfield/i;->o:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual {v4, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 283
    iget v3, p0, Lcom/google/android/material/textfield/o;->d:I

    if-nez v3, :cond_0

    .line 284
    sget v3, Lcom/google/android/material/R$drawable;->mtrl_dropdown_arrow:I

    .line 286
    :cond_0
    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    .line 288
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$string;->exposed_dropdown_menu_content_description:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 287
    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 289
    new-instance v3, Lcom/google/android/material/textfield/m;

    invoke-direct {v3, p0}, Lcom/google/android/material/textfield/m;-><init>(Lcom/google/android/material/textfield/i;)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v3, p0, Lcom/google/android/material/textfield/i;->h:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V

    .line 298
    iget-object v3, p0, Lcom/google/android/material/textfield/i;->i:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V

    .line 528
    new-array v3, v0, [F

    fill-array-data v3, :array_0

    .line 541
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 542
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v5, 0x43

    int-to-long v5, v5

    .line 543
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 544
    new-instance v5, Lcom/google/android/material/textfield/l;

    invoke-direct {v5, p0}, Lcom/google/android/material/textfield/l;-><init>(Lcom/google/android/material/textfield/i;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 528
    iput-object v3, p0, Lcom/google/android/material/textfield/i;->s:Landroid/animation/ValueAnimator;

    .line 529
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 541
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 542
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v3, 0x32

    int-to-long v3, v3

    .line 543
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 544
    new-instance v3, Lcom/google/android/material/textfield/l;

    invoke-direct {v3, p0}, Lcom/google/android/material/textfield/l;-><init>(Lcom/google/android/material/textfield/i;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 529
    iput-object v0, p0, Lcom/google/android/material/textfield/i;->r:Landroid/animation/ValueAnimator;

    .line 530
    new-instance v3, Lcom/google/android/material/textfield/k;

    invoke-direct {v3, p0}, Lcom/google/android/material/textfield/k;-><init>(Lcom/google/android/material/textfield/i;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 300
    const-string v0, "accessibility"

    .line 301
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/textfield/i;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 302
    iget-object v0, p0, Lcom/google/android/material/textfield/i;->j:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 557
    iget-object v0, p0, Lcom/google/android/material/textfield/i;->q:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    .line 559
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/google/android/material/textfield/i;->q:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/google/android/material/textfield/i;->k:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-static {v0, v1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final b(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e(Landroid/widget/AutoCompleteTextView;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 368
    invoke-static {p1}, Lcom/google/android/material/textfield/i;->g(Landroid/widget/EditText;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 372
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/textfield/o;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v4

    .line 845
    iget v5, v3, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    if-eq v5, v1, :cond_2

    if-ne v5, v2, :cond_1

    goto :goto_0

    .line 848
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 846
    :cond_2
    :goto_0
    iget-object v5, v3, Lcom/google/android/material/textfield/TextInputLayout;->F:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 374
    sget v6, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    invoke-static {p1, v6}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v6

    .line 375
    new-array v7, v0, [I

    new-array v8, v2, [[I

    const v9, 0x10100a7

    filled-new-array {v9}, [I

    move-result-object v9

    aput-object v9, v8, v0

    aput-object v7, v8, v1

    const v7, 0x3dcccccd    # 0.1f

    if-ne v4, v2, :cond_3

    .line 393
    sget v3, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p1, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v3

    .line 394
    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 395
    invoke-virtual {v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 396
    invoke-static {v6, v3, v7}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v6

    .line 397
    filled-new-array {v6, v0}, [I

    move-result-object v7

    .line 398
    new-instance v9, Landroid/content/res/ColorStateList;

    invoke-direct {v9, v8, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v9}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 401
    invoke-virtual {v4, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 402
    filled-new-array {v6, v3}, [I

    move-result-object v3

    .line 403
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v8, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 404
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 405
    invoke-virtual {v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    const/4 v7, -0x1

    .line 406
    invoke-virtual {v3, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 407
    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v7, v6, v4, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 408
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v2, v0

    aput-object v5, v2, v1

    .line 409
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 415
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    if-ne v4, v1, :cond_4

    .line 423
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v0

    .line 424
    invoke-static {v6, v0, v7}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v1

    .line 425
    filled-new-array {v1, v0}, [I

    move-result-object v0

    .line 428
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v8, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 429
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 431
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final f(FFFI)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    .line 481
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 482
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 483
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    .line 484
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    .line 485
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    .line 486
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    .line 487
    iget-object p2, p0, Lcom/google/android/material/textfield/o;->b:Landroid/content/Context;

    .line 488
    invoke-static {p2, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p2

    .line 489
    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    const/4 p1, 0x0

    .line 490
    invoke-virtual {p2, p1, p4, p1, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setPadding(IIII)V

    return-object p2
.end method

.method public final h(Z)V
    .locals 1

    .line 520
    iget-boolean v0, p0, Lcom/google/android/material/textfield/i;->m:Z

    if-eq v0, p1, :cond_0

    .line 521
    iput-boolean p1, p0, Lcom/google/android/material/textfield/i;->m:Z

    .line 522
    iget-object p1, p0, Lcom/google/android/material/textfield/i;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 523
    iget-object p1, p0, Lcom/google/android/material/textfield/i;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
