.class final Lcom/google/android/material/textfield/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/material/textfield/TextInputLayout;

.field public c:Landroid/widget/LinearLayout;

.field public d:I

.field public e:Landroid/widget/FrameLayout;

.field public f:Landroid/animation/AnimatorSet;

.field public final g:F

.field public h:I

.field public i:I

.field public j:Ljava/lang/CharSequence;

.field public k:Z

.field public l:Landroidx/appcompat/widget/AppCompatTextView;

.field public m:Ljava/lang/CharSequence;

.field public n:I

.field public o:Landroid/content/res/ColorStateList;

.field public p:Ljava/lang/CharSequence;

.field public q:Z

.field public r:Landroidx/appcompat/widget/AppCompatTextView;

.field public s:I

.field public t:Landroid/content/res/ColorStateList;

.field public u:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/s;->a:Landroid/content/Context;

    .line 126
    iput-object p1, p0, Lcom/google/android/material/textfield/s;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 128
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->design_textinput_caption_translate_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/textfield/s;->g:F

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/widget/AppCompatTextView;I)V
    .locals 6

    .line 394
    iget-object v0, p0, Lcom/google/android/material/textfield/s;->c:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/s;->e:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/s;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/s;->c:Landroid/widget/LinearLayout;

    .line 396
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 397
    iget-object v0, p0, Lcom/google/android/material/textfield/s;->c:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/android/material/textfield/s;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 399
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/s;->e:Landroid/widget/FrameLayout;

    .line 400
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 402
    iget-object v3, p0, Lcom/google/android/material/textfield/s;->c:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/google/android/material/textfield/s;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/google/android/material/textfield/s;->b()V

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 413
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 415
    iget-object v1, p0, Lcom/google/android/material/textfield/s;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 410
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/textfield/s;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object p2, p0, Lcom/google/android/material/textfield/s;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 417
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/textfield/s;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget p1, p0, Lcom/google/android/material/textfield/s;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/textfield/s;->d:I

    return-void
.end method

.method public final b()V
    .locals 9

    .line 383
    iget-object v0, p0, Lcom/google/android/material/textfield/s;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/s;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 360
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/google/android/material/textfield/s;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    move-result v2

    .line 362
    iget-object v3, p0, Lcom/google/android/material/textfield/s;->c:Landroid/widget/LinearLayout;

    sget v4, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_horizontal:I

    .line 367
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v5

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 364
    :cond_0
    sget v6, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_top:I

    .line 372
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$dimen;->material_helper_text_default_padding_top:I

    .line 373
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-eqz v2, :cond_1

    .line 389
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 377
    :cond_1
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    if-eqz v2, :cond_2

    .line 389
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_2
    const/4 v1, 0x0

    .line 362
    invoke-static {v3, v5, v7, v0, v1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/google/android/material/textfield/s;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/util/ArrayList;ZLandroidx/appcompat/widget/AppCompatTextView;III)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_3

    :cond_1
    const/4 p2, 0x0

    if-ne p6, p4, :cond_2

    const/high16 p5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    .line 321
    :goto_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v1, [F

    aput p5, v3, v0

    invoke-static {p3, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    const-wide/16 v2, 0xa7

    .line 322
    invoke-virtual {p5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 323
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p5, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 311
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_3

    .line 328
    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget p5, p0, Lcom/google/android/material/textfield/s;->g:F

    neg-float p5, p5

    const/4 p6, 0x2

    new-array p6, p6, [F

    aput p5, p6, v0

    aput p2, p6, v1

    .line 329
    invoke-static {p3, p4, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 p3, 0xd9

    .line 330
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 331
    sget-object p3, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 314
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 541
    iget v0, p0, Lcom/google/android/material/textfield/s;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/s;->j:Ljava/lang/CharSequence;

    .line 547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(I)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p1

    .line 349
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p1
.end method

.method public final g()V
    .locals 4

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/google/android/material/textfield/s;->j:Ljava/lang/CharSequence;

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/textfield/s;->c()V

    .line 172
    iget v0, p0, Lcom/google/android/material/textfield/s;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 174
    iget-boolean v0, p0, Lcom/google/android/material/textfield/s;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/s;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 175
    iput v0, p0, Lcom/google/android/material/textfield/s;->i:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/google/android/material/textfield/s;->i:I

    .line 181
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/textfield/s;->h:I

    iget v1, p0, Lcom/google/android/material/textfield/s;->i:I

    iget-object v2, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, ""

    .line 182
    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/textfield/s;->i(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 181
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/textfield/s;->j(IIZ)V

    return-void
.end method

.method public final h(Landroidx/appcompat/widget/AppCompatTextView;I)V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/google/android/material/textfield/s;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v1, :cond_2

    .line 426
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/textfield/s;->e:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_2

    .line 427
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 431
    :goto_0
    iget p1, p0, Lcom/google/android/material/textfield/s;->d:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/textfield/s;->d:I

    .line 432
    iget-object p2, p0, Lcom/google/android/material/textfield/s;->c:Landroid/widget/LinearLayout;

    if-nez p1, :cond_3

    const/16 p1, 0x8

    .line 437
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final i(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/google/android/material/textfield/s;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/s;->i:I

    iget v1, p0, Lcom/google/android/material/textfield/s;->h:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final j(IIZ)V
    .locals 9

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    if-eqz p3, :cond_1

    .line 212
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 213
    iput-object v8, p0, Lcom/google/android/material/textfield/s;->f:Landroid/animation/AnimatorSet;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-boolean v2, p0, Lcom/google/android/material/textfield/s;->q:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x2

    move-object v0, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/textfield/s;->d(Ljava/util/ArrayList;ZLandroidx/appcompat/widget/AppCompatTextView;III)V

    .line 224
    iget-boolean v2, p0, Lcom/google/android/material/textfield/s;->k:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/textfield/s;->d(Ljava/util/ArrayList;ZLandroidx/appcompat/widget/AppCompatTextView;III)V

    .line 232
    invoke-static {v8, v1}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 233
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/material/textfield/s;->f(I)Landroid/widget/TextView;

    move-result-object v3

    .line 234
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/s;->f(I)Landroid/widget/TextView;

    move-result-object v5

    .line 236
    new-instance v0, Lcom/google/android/material/textfield/q;

    move-object v1, p0

    move v4, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/q;-><init>(Lcom/google/android/material/textfield/s;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    move-object v1, v0

    invoke-virtual {v8, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 262
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 278
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/s;->f(I)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 280
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 281
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    if-eqz p1, :cond_4

    .line 286
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/material/textfield/s;->f(I)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 288
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    const/4 v2, 0x0

    .line 291
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :cond_4
    iput p2, p0, Lcom/google/android/material/textfield/s;->h:I

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/s;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 1523
    invoke-virtual {v1, p3, v7}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 268
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    return-void
.end method
