.class public final Lcom/google/android/material/transition/platform/MaterialFade;
.super Lcom/google/android/material/transition/platform/q;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/platform/q<",
        "Lcom/google/android/material/transition/platform/FadeProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:I

.field public static final e:I

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget v0, Lcom/google/android/material/R$attr;->motionDurationShort2:I

    sput v0, Lcom/google/android/material/transition/platform/MaterialFade;->d:I

    .line 48
    sget v0, Lcom/google/android/material/R$attr;->motionDurationShort1:I

    sput v0, Lcom/google/android/material/transition/platform/MaterialFade;->e:I

    .line 50
    sget v0, Lcom/google/android/material/R$attr;->motionEasingLinear:I

    sput v0, Lcom/google/android/material/transition/platform/MaterialFade;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 57
    new-instance v0, Lcom/google/android/material/transition/platform/FadeProvider;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeProvider;-><init>()V

    const v1, 0x3e99999a    # 0.3f

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/platform/FadeProvider;->setIncomingEndThreshold(F)V

    .line 63
    new-instance v1, Lcom/google/android/material/transition/platform/ScaleProvider;

    invoke-direct {v1}, Lcom/google/android/material/transition/platform/ScaleProvider;-><init>()V

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v1, v2}, Lcom/google/android/material/transition/platform/ScaleProvider;->setScaleOnDisappear(Z)V

    const v2, 0x3f4ccccd    # 0.8f

    .line 65
    invoke-virtual {v1, v2}, Lcom/google/android/material/transition/platform/ScaleProvider;->setIncomingStartScale(F)V

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/platform/q;-><init>(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/q;->addAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public final c()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 86
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/google/android/material/transition/platform/q;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public final d(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 73
    sget p1, Lcom/google/android/material/transition/platform/MaterialFade;->d:I

    return p1

    .line 74
    :cond_0
    sget p1, Lcom/google/android/material/transition/platform/MaterialFade;->e:I

    return p1
.end method

.method public final e()I
    .locals 1

    .line 80
    sget v0, Lcom/google/android/material/transition/platform/MaterialFade;->f:I

    return v0
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 38
    invoke-super {p0}, Lcom/google/android/material/transition/platform/q;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 38
    invoke-super {p0}, Lcom/google/android/material/transition/platform/q;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/q;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/q;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/q;->removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/q;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method
