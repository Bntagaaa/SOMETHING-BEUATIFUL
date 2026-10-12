.class public final Lcom/google/android/material/transition/platform/FadeThroughProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field public a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3eb33333    # 0.35f

    .line 45
    iput v0, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->a:F

    return-void
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
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

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    move v4, v0

    .line 71
    :goto_0
    iget v5, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->a:F

    const/4 p1, 0x2

    .line 100
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 101
    new-instance v1, Lcom/google/android/material/transition/platform/f;

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/platform/f;-><init>(Landroid/view/View;FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    new-instance p2, Lcom/google/android/material/transition/platform/g;

    invoke-direct {p2, v2, v4}, Lcom/google/android/material/transition/platform/g;-><init>(Landroid/view/View;F)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
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

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    move v3, v0

    .line 84
    :goto_0
    iget v6, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->a:F

    const/4 p1, 0x2

    .line 100
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 101
    new-instance v1, Lcom/google/android/material/transition/platform/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/platform/f;-><init>(Landroid/view/View;FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    new-instance p2, Lcom/google/android/material/transition/platform/g;

    invoke-direct {p2, v2, v3}, Lcom/google/android/material/transition/platform/g;-><init>(Landroid/view/View;F)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getProgressThreshold()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->a:F

    return v0
.end method

.method public setProgressThreshold(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 64
    iput p1, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->a:F

    return-void
.end method
