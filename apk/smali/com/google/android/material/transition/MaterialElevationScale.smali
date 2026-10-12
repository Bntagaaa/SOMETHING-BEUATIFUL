.class public final Lcom/google/android/material/transition/MaterialElevationScale;
.super Lcom/google/android/material/transition/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/n<",
        "Lcom/google/android/material/transition/ScaleProvider;",
        ">;"
    }
.end annotation


# instance fields
.field public final N:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 42
    new-instance v0, Lcom/google/android/material/transition/ScaleProvider;

    invoke-direct {v0, p1}, Lcom/google/android/material/transition/ScaleProvider;-><init>(Z)V

    const v1, 0x3f59999a    # 0.85f

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->setOutgoingEndScale(F)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/ScaleProvider;->setIncomingStartScale(F)V

    .line 49
    new-instance v1, Lcom/google/android/material/transition/FadeProvider;

    invoke-direct {v1}, Lcom/google/android/material/transition/FadeProvider;-><init>()V

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/n;-><init>(Lcom/google/android/material/transition/VisibilityAnimatorProvider;Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    .line 34
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialElevationScale;->N:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-super {p0, p1}, Lcom/google/android/material/transition/n;->addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .locals 0

    .line 26
    invoke-super {p0}, Lcom/google/android/material/transition/n;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/google/android/material/transition/n;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/google/android/material/transition/n;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public isGrowing()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialElevationScale;->N:Z

    return v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/n;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/n;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-super {p0, p1}, Lcom/google/android/material/transition/n;->removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-super {p0, p1}, Lcom/google/android/material/transition/n;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method
