.class public final Lcom/google/android/material/transition/platform/MaterialSharedAxis;
.super Lcom/google/android/material/transition/platform/q;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialSharedAxis$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/platform/q<",
        "Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2

.field public static final f:I

.field public static final g:I


# instance fields
.field public final d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    sput v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->f:I

    .line 92
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sput v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->g:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 117
    new-instance v0, Lcom/google/android/material/transition/platform/ScaleProvider;

    invoke-direct {v0, p2}, Lcom/google/android/material/transition/platform/ScaleProvider;-><init>(Z)V

    goto :goto_2

    .line 119
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid axis: "

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 115
    :cond_1
    new-instance v0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;

    if-eqz p2, :cond_2

    const/16 v1, 0x50

    goto :goto_0

    :cond_2
    const/16 v1, 0x30

    :goto_0
    invoke-direct {v0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;-><init>(I)V

    goto :goto_2

    .line 113
    :cond_3
    new-instance v0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;

    if-eqz p2, :cond_4

    const v1, 0x800005

    goto :goto_1

    :cond_4
    const v1, 0x800003

    :goto_1
    invoke-direct {v0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;-><init>(I)V

    .line 124
    :goto_2
    new-instance v1, Lcom/google/android/material/transition/platform/FadeThroughProvider;

    invoke-direct {v1}, Lcom/google/android/material/transition/platform/FadeThroughProvider;-><init>()V

    .line 95
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/platform/q;-><init>(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    .line 96
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->d:I

    .line 97
    iput-boolean p2, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->e:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/q;->addAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/google/android/material/transition/platform/q;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public final d(Z)I
    .locals 0

    .line 130
    sget p1, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->f:I

    return p1
.end method

.method public final e()I
    .locals 1

    .line 136
    sget v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->g:I

    return v0
.end method

.method public getAxis()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->d:I

    return v0
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 55
    invoke-super {p0}, Lcom/google/android/material/transition/platform/q;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 55
    invoke-super {p0}, Lcom/google/android/material/transition/platform/q;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public isForward()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->e:Z

    return v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/q;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 55
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

    .line 55
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

    .line 55
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/q;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method
