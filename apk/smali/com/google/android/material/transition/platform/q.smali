.class abstract Lcom/google/android/material/transition/platform/q;
.super Landroid/transition/Visibility;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
        ">",
        "Landroid/transition/Visibility;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

.field public b:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 1
    .param p2    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/platform/q;->c:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/google/android/material/transition/platform/q;->a:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 50
    iput-object p2, p0, Lcom/google/android/material/transition/platform/q;->b:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 157
    invoke-interface {p1, p2, p3}, Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;->createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {p1, p2, p3}, Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;->createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 1
    .param p1    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    iget-object v0, p0, Lcom/google/android/material/transition/platform/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/AnimatorSet;
    .locals 6

    .line 129
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/google/android/material/transition/platform/q;->a:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    invoke-static {v1, v2, p1, p2, p3}, Lcom/google/android/material/transition/platform/q;->a(Ljava/util/ArrayList;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 134
    iget-object v2, p0, Lcom/google/android/material/transition/platform/q;->b:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    invoke-static {v1, v2, p1, p2, p3}, Lcom/google/android/material/transition/platform/q;->a(Ljava/util/ArrayList;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 136
    iget-object v2, p0, Lcom/google/android/material/transition/platform/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 137
    invoke-static {v1, v3, p1, p2, p3}, Lcom/google/android/material/transition/platform/q;->a(Ljava/util/ArrayList;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 165
    invoke-virtual {p0, p3}, Lcom/google/android/material/transition/platform/q;->d(Z)I

    move-result p2

    sget-object p3, Lcom/google/android/material/transition/platform/x;->a:Landroid/graphics/RectF;

    if-eqz p2, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p3, v2, v4

    if-nez p3, :cond_1

    const/4 p3, -0x1

    .line 82
    invoke-static {p1, p2, p3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p2

    if-eq p2, p3, :cond_1

    int-to-long p2, p2

    .line 84
    invoke-virtual {p0, p2, p3}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/transition/platform/q;->e()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/transition/platform/q;->c()Landroid/animation/TimeInterpolator;

    move-result-object p3

    if-eqz p2, :cond_2

    .line 70
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    if-nez v2, :cond_2

    .line 72
    invoke-static {p1, p2, p3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 142
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object v0
.end method

.method public c()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 182
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public clearAdditionalAnimatorProvider()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/android/material/transition/platform/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public d(Z)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()I
    .locals 1

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/android/material/transition/platform/q;->a:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    return-object v0
.end method

.method public getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/android/material/transition/platform/q;->b:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p3, 0x1

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/transition/platform/q;->b(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p3, 0x0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/transition/platform/q;->b(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z
    .locals 1
    .param p1    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    iget-object v0, p0, Lcom/google/android/material/transition/platform/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    iput-object p1, p0, Lcom/google/android/material/transition/platform/q;->b:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    return-void
.end method
