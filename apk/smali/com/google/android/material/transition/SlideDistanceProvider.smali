.class public final Lcom/google/android/material/transition/SlideDistanceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/VisibilityAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/SlideDistanceProvider$GravityFlag;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->b:I

    .line 62
    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->a:I

    return-void
.end method

.method public static a(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 192
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 195
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, p1, v2

    .line 193
    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 196
    new-instance p2, Lcom/google/android/material/transition/p;

    invoke-direct {p2, p0, p3}, Lcom/google/android/material/transition/p;-><init>(Landroid/view/View;F)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public static b(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 211
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 214
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, p1, v2

    .line 212
    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 215
    new-instance p2, Lcom/google/android/material/transition/q;

    invoke-direct {p2, p0, p3}, Lcom/google/android/material/transition/q;-><init>(Landroid/view/View;F)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 106
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->a:I

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 118
    iget v2, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->b:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_transition_shared_axis_slide_distance:I

    .line 124
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 129
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8

    const/4 v4, 0x5

    if-eq v0, v4, :cond_7

    const/16 v4, 0x30

    if-eq v0, v4, :cond_6

    const/16 v4, 0x50

    if-eq v0, v4, :cond_5

    const v3, 0x800003

    const/4 v4, 0x1

    if-eq v0, v3, :cond_3

    const v3, 0x800005

    if-ne v0, v3, :cond_2

    .line 226
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v4, :cond_1

    int-to-float p1, v2

    sub-float p1, v1, p1

    goto :goto_1

    :cond_1
    int-to-float p1, v2

    add-float/2addr p1, v1

    .line 147
    :goto_1
    invoke-static {p2, p1, v1, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->a(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    .line 153
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid slide direction: "

    .line 0
    invoke-static {v0, p2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 153
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v4, :cond_4

    int-to-float p1, v2

    add-float/2addr p1, v1

    goto :goto_2

    :cond_4
    int-to-float p1, v2

    sub-float p1, v1, p1

    .line 141
    :goto_2
    invoke-static {p2, p1, v1, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->a(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :cond_5
    int-to-float p1, v2

    add-float/2addr p1, v3

    .line 139
    invoke-static {p2, p1, v3, v3}, Lcom/google/android/material/transition/SlideDistanceProvider;->b(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :cond_6
    int-to-float p1, v2

    sub-float p1, v3, p1

    .line 135
    invoke-static {p2, p1, v3, v3}, Lcom/google/android/material/transition/SlideDistanceProvider;->b(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :cond_7
    int-to-float p1, v2

    sub-float p1, v1, p1

    .line 137
    invoke-static {p2, p1, v1, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->a(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :cond_8
    int-to-float p1, v2

    add-float/2addr p1, v1

    .line 133
    invoke-static {p2, p1, v1, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->a(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 113
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->a:I

    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 118
    iget v2, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->b:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_transition_shared_axis_slide_distance:I

    .line 124
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 159
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8

    const/4 v4, 0x5

    if-eq v0, v4, :cond_7

    const/16 v4, 0x30

    if-eq v0, v4, :cond_6

    const/16 v4, 0x50

    if-eq v0, v4, :cond_5

    const v3, 0x800003

    const/4 v4, 0x1

    if-eq v0, v3, :cond_3

    const v3, 0x800005

    if-ne v0, v3, :cond_2

    .line 226
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v4, :cond_1

    int-to-float p1, v2

    add-float/2addr p1, v1

    goto :goto_1

    :cond_1
    int-to-float p1, v2

    sub-float p1, v1, p1

    .line 177
    :goto_1
    invoke-static {p2, v1, p1, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->a(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    .line 183
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid slide direction: "

    .line 0
    invoke-static {v0, p2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 183
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v4, :cond_4

    int-to-float p1, v2

    sub-float p1, v1, p1

    goto :goto_2

    :cond_4
    int-to-float p1, v2

    add-float/2addr p1, v1

    .line 171
    :goto_2
    invoke-static {p2, v1, p1, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->a(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :cond_5
    int-to-float p1, v2

    sub-float p1, v3, p1

    .line 169
    invoke-static {p2, v3, p1, v3}, Lcom/google/android/material/transition/SlideDistanceProvider;->b(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :cond_6
    int-to-float p1, v2

    add-float/2addr p1, v3

    .line 165
    invoke-static {p2, v3, p1, v3}, Lcom/google/android/material/transition/SlideDistanceProvider;->b(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :cond_7
    int-to-float p1, v2

    add-float/2addr p1, v1

    .line 167
    invoke-static {p2, v1, p1, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->a(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :cond_8
    int-to-float p1, v2

    sub-float p1, v1, p1

    .line 163
    invoke-static {p2, v1, p1, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->a(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public getSlideDistance()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 82
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->b:I

    return v0
.end method

.method public getSlideEdge()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->a:I

    return v0
.end method

.method public setSlideDistance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    if-ltz p1, :cond_0

    .line 100
    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->b:I

    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSlideEdge(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->a:I

    return-void
.end method
