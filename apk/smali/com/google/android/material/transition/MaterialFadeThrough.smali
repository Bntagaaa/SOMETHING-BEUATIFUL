.class public final Lcom/google/android/material/transition/MaterialFadeThrough;
.super Lcom/google/android/material/transition/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/n<",
        "Lcom/google/android/material/transition/FadeThroughProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final N:I

.field public static final O:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    sput v0, Lcom/google/android/material/transition/MaterialFadeThrough;->N:I

    .line 36
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sput v0, Lcom/google/android/material/transition/MaterialFadeThrough;->O:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/google/android/material/transition/FadeThroughProvider;

    invoke-direct {v0}, Lcom/google/android/material/transition/FadeThroughProvider;-><init>()V

    .line 47
    new-instance v1, Lcom/google/android/material/transition/ScaleProvider;

    invoke-direct {v1}, Lcom/google/android/material/transition/ScaleProvider;-><init>()V

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Lcom/google/android/material/transition/ScaleProvider;->setScaleOnDisappear(Z)V

    const v2, 0x3f6b851f    # 0.92f

    .line 49
    invoke-virtual {v1, v2}, Lcom/google/android/material/transition/ScaleProvider;->setIncomingStartScale(F)V

    .line 39
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/n;-><init>(Lcom/google/android/material/transition/VisibilityAnimatorProvider;Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-super {p0, p1}, Lcom/google/android/material/transition/n;->addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/google/android/material/transition/n;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 31
    invoke-super {p0}, Lcom/google/android/material/transition/n;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31
    invoke-super {p0}, Lcom/google/android/material/transition/n;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/n;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/n;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final r(Z)I
    .locals 0

    .line 56
    sget p1, Lcom/google/android/material/transition/MaterialFadeThrough;->N:I

    return p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-super {p0, p1}, Lcom/google/android/material/transition/n;->removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z

    move-result p1

    return p1
.end method

.method public final s()I
    .locals 1

    .line 62
    sget v0, Lcom/google/android/material/transition/MaterialFadeThrough;->O:I

    return v0
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-super {p0, p1}, Lcom/google/android/material/transition/n;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method
