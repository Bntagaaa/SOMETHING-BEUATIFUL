.class public final Lcom/google/android/material/transition/MaterialSharedAxis;
.super Lcom/google/android/material/transition/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/MaterialSharedAxis$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/n<",
        "Lcom/google/android/material/transition/VisibilityAnimatorProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final P:I

.field public static final Q:I

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2


# instance fields
.field public final N:I

.field public final O:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    sput v0, Lcom/google/android/material/transition/MaterialSharedAxis;->P:I

    .line 87
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sput v0, Lcom/google/android/material/transition/MaterialSharedAxis;->Q:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 112
    new-instance v0, Lcom/google/android/material/transition/ScaleProvider;

    invoke-direct {v0, p2}, Lcom/google/android/material/transition/ScaleProvider;-><init>(Z)V

    goto :goto_2

    .line 114
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid axis: "

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 110
    :cond_1
    new-instance v0, Lcom/google/android/material/transition/SlideDistanceProvider;

    if-eqz p2, :cond_2

    const/16 v1, 0x50

    goto :goto_0

    :cond_2
    const/16 v1, 0x30

    :goto_0
    invoke-direct {v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;-><init>(I)V

    goto :goto_2

    .line 108
    :cond_3
    new-instance v0, Lcom/google/android/material/transition/SlideDistanceProvider;

    if-eqz p2, :cond_4

    const v1, 0x800005

    goto :goto_1

    :cond_4
    const v1, 0x800003

    :goto_1
    invoke-direct {v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;-><init>(I)V

    .line 119
    :goto_2
    new-instance v1, Lcom/google/android/material/transition/FadeThroughProvider;

    invoke-direct {v1}, Lcom/google/android/material/transition/FadeThroughProvider;-><init>()V

    .line 90
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/n;-><init>(Lcom/google/android/material/transition/VisibilityAnimatorProvider;Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    .line 91
    iput p1, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->N:I

    .line 92
    iput-boolean p2, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->O:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/transition/n;->addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/google/android/material/transition/n;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public getAxis()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->N:I

    return v0
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 51
    invoke-super {p0}, Lcom/google/android/material/transition/n;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51
    invoke-super {p0}, Lcom/google/android/material/transition/n;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public isForward()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->O:Z

    return v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/n;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/n;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final r(Z)I
    .locals 0

    .line 125
    sget p1, Lcom/google/android/material/transition/MaterialSharedAxis;->P:I

    return p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/transition/n;->removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z

    move-result p1

    return p1
.end method

.method public final s()I
    .locals 1

    .line 131
    sget v0, Lcom/google/android/material/transition/MaterialSharedAxis;->Q:I

    return v0
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/transition/n;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method
