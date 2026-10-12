.class Landroidx/transition/v$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/view/View;

.field public final c:I

.field public final d:I

.field public e:[I

.field public f:F

.field public g:F

.field public final h:F

.field public final i:F


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 1

    .line 99
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 100
    iput-object p1, p0, Landroidx/transition/v$a;->b:Landroid/view/View;

    .line 101
    iput-object p2, p0, Landroidx/transition/v$a;->a:Landroid/view/View;

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p0, Landroidx/transition/v$a;->c:I

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Landroidx/transition/v$a;->d:I

    .line 104
    iput p5, p0, Landroidx/transition/v$a;->h:F

    .line 105
    iput p6, p0, Landroidx/transition/v$a;->i:F

    .line 106
    sget p1, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Landroidx/transition/v$a;->e:[I

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 108
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 114
    iget-object p1, p0, Landroidx/transition/v$a;->e:[I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 115
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/transition/v$a;->e:[I

    .line 117
    :cond_0
    iget-object p1, p0, Landroidx/transition/v$a;->e:[I

    iget v0, p0, Landroidx/transition/v$a;->c:I

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/transition/v$a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v2, 0x0

    aput v0, p1, v2

    .line 118
    iget-object p1, p0, Landroidx/transition/v$a;->e:[I

    iget v0, p0, Landroidx/transition/v$a;->d:I

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 119
    sget p1, Landroidx/transition/R$id;->transition_position:I

    iget-object v0, p0, Landroidx/transition/v$a;->e:[I

    iget-object v1, p0, Landroidx/transition/v$a;->a:Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 124
    iget-object p1, p0, Landroidx/transition/v$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/transition/v$a;->f:F

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/transition/v$a;->g:F

    .line 126
    iget v0, p0, Landroidx/transition/v$a;->h:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 127
    iget v0, p0, Landroidx/transition/v$a;->i:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 132
    iget p1, p0, Landroidx/transition/v$a;->f:F

    iget-object v0, p0, Landroidx/transition/v$a;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 133
    iget p1, p0, Landroidx/transition/v$a;->g:F

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    iget v0, p0, Landroidx/transition/v$a;->h:F

    iget-object v1, p0, Landroidx/transition/v$a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 143
    iget v0, p0, Landroidx/transition/v$a;->i:F

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 144
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
