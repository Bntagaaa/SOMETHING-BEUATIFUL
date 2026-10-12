.class Lcom/google/android/material/floatingactionbutton/n;
.super Lcom/google/android/material/floatingactionbutton/m;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/n$a;
    }
.end annotation


# virtual methods
.method public final e(Landroid/graphics/Rect;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->w:Lcom/google/android/material/shadow/ShadowViewDelegate;

    invoke-interface {v0}, Lcom/google/android/material/shadow/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/m;->e(Landroid/graphics/Rect;)V

    return-void

    .line 351
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/m;->f:Z

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:I

    .line 795
    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(I)I

    move-result v1

    .line 351
    iget v2, p0, Lcom/google/android/material/floatingactionbutton/m;->k:I

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 795
    :cond_1
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:I

    .line 795
    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(I)I

    move-result v0

    sub-int/2addr v2, v0

    .line 240
    div-int/lit8 v2, v2, 0x2

    .line 241
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 243
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final f(FFF)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-ne v2, v3, :cond_0

    .line 106
    invoke-virtual {v4}, Landroid/view/View;->refreshDrawableState()V

    goto/16 :goto_0

    .line 108
    :cond_0
    new-instance v3, Landroid/animation/StateListAnimator;

    invoke-direct {v3}, Landroid/animation/StateListAnimator;-><init>()V

    .line 112
    invoke-virtual {p0, p1, p3}, Lcom/google/android/material/floatingactionbutton/n;->m(FF)Landroid/animation/AnimatorSet;

    move-result-object p3

    .line 111
    sget-object v5, Lcom/google/android/material/floatingactionbutton/m;->D:[I

    invoke-virtual {v3, v5, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/n;->m(FF)Landroid/animation/AnimatorSet;

    move-result-object p3

    .line 113
    sget-object v5, Lcom/google/android/material/floatingactionbutton/m;->E:[I

    invoke-virtual {v3, v5, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/n;->m(FF)Landroid/animation/AnimatorSet;

    move-result-object p3

    .line 116
    sget-object v5, Lcom/google/android/material/floatingactionbutton/m;->F:[I

    invoke-virtual {v3, v5, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/n;->m(FF)Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 119
    sget-object p3, Lcom/google/android/material/floatingactionbutton/m;->G:[I

    invoke-virtual {v3, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 124
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 125
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    const-string v5, "elevation"

    new-array v6, v0, [F

    aput p1, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x16

    const-wide/16 v5, 0x64

    if-lt v2, p1, :cond_1

    const/16 p1, 0x18

    if-gt v2, p1, :cond_1

    .line 132
    sget-object p1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 133
    invoke-virtual {v4}, Landroid/view/View;->getTranslationZ()F

    move-result v2

    new-array v7, v0, [F

    aput v2, v7, v1

    invoke-static {v4, p1, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 134
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 132
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    sget-object p1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v2, 0x0

    new-array v0, v0, [F

    aput v2, v0, v1

    .line 137
    invoke-static {v4, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 138
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 136
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-array p1, v1, [Landroid/animation/Animator;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 140
    sget-object p1, Lcom/google/android/material/floatingactionbutton/m;->C:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    sget-object p1, Lcom/google/android/material/floatingactionbutton/m;->H:[I

    invoke-virtual {v3, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 144
    invoke-virtual {p0, v2, v2}, Lcom/google/android/material/floatingactionbutton/n;->m(FF)Landroid/animation/AnimatorSet;

    move-result-object p1

    sget-object p2, Lcom/google/android/material/floatingactionbutton/m;->I:[I

    invoke-virtual {v3, p2, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 146
    invoke-virtual {v4, v3}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/n;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/m;->l()V

    :cond_2
    return-void
.end method

.method public getElevation()F
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->c:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 91
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/m;->h(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final j()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->w:Lcom/google/android/material/shadow/ShadowViewDelegate;

    invoke-interface {v0}, Lcom/google/android/material/shadow/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/m;->f:Z

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:I

    .line 795
    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(I)I

    move-result v0

    .line 351
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/m;->k:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final m(FF)Landroid/animation/AnimatorSet;
    .locals 6

    .line 156
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    .line 157
    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v4, "elevation"

    invoke-static {p1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v1, v1, [F

    aput p2, v1, v3

    .line 159
    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v3, 0x64

    .line 160
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 158
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 161
    sget-object p1, Lcom/google/android/material/floatingactionbutton/m;->C:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method
