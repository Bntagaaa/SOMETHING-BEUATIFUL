.class Landroidx/transition/Visibility$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;
.implements Landroidx/transition/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:Landroid/view/ViewGroup;

.field public final d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 1

    .line 533
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 531
    iput-boolean v0, p0, Landroidx/transition/Visibility$b;->f:Z

    .line 534
    iput-object p2, p0, Landroidx/transition/Visibility$b;->a:Landroid/view/View;

    .line 535
    iput p1, p0, Landroidx/transition/Visibility$b;->b:I

    .line 536
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/transition/Visibility$b;->c:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    .line 537
    iput-boolean p1, p0, Landroidx/transition/Visibility$b;->d:Z

    .line 539
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility$b;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 616
    iget-boolean v0, p0, Landroidx/transition/Visibility$b;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/transition/Visibility$b;->e:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/transition/Visibility$b;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 617
    iput-boolean p1, p0, Landroidx/transition/Visibility$b;->e:Z

    .line 618
    invoke-static {v0, p1}, Landroidx/transition/z;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 562
    iput-boolean p1, p0, Landroidx/transition/Visibility$b;->f:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 604
    iget-boolean p1, p0, Landroidx/transition/Visibility$b;->f:Z

    if-nez p1, :cond_0

    .line 606
    iget-object p1, p0, Landroidx/transition/Visibility$b;->a:Landroid/view/View;

    iget v0, p0, Landroidx/transition/Visibility$b;->b:I

    invoke-static {p1, v0}, Landroidx/transition/f0;->c(Landroid/view/View;I)V

    .line 607
    iget-object p1, p0, Landroidx/transition/Visibility$b;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 608
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 p1, 0x0

    .line 612
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility$b;->a(Z)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 546
    iget-boolean p1, p0, Landroidx/transition/Visibility$b;->f:Z

    if-nez p1, :cond_0

    .line 547
    iget-object p1, p0, Landroidx/transition/Visibility$b;->a:Landroid/view/View;

    iget v0, p0, Landroidx/transition/Visibility$b;->b:I

    invoke-static {p1, v0}, Landroidx/transition/f0;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 555
    iget-boolean p1, p0, Landroidx/transition/Visibility$b;->f:Z

    if-nez p1, :cond_0

    .line 556
    iget-object p1, p0, Landroidx/transition/Visibility$b;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/transition/f0;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

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

    .line 604
    iget-boolean v0, p0, Landroidx/transition/Visibility$b;->f:Z

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Landroidx/transition/Visibility$b;->a:Landroid/view/View;

    iget v1, p0, Landroidx/transition/Visibility$b;->b:I

    invoke-static {v0, v1}, Landroidx/transition/f0;->c(Landroid/view/View;I)V

    .line 607
    iget-object v0, p0, Landroidx/transition/Visibility$b;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    .line 612
    invoke-virtual {p0, v0}, Landroidx/transition/Visibility$b;->a(Z)V

    .line 586
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 595
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility$b;->a(Z)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 600
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility$b;->a(Z)V

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
