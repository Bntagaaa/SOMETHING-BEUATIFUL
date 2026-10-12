.class Landroidx/transition/Visibility$a;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroidx/transition/Visibility;


# direct methods
.method public constructor <init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 438
    iput-object p1, p0, Landroidx/transition/Visibility$a;->d:Landroidx/transition/Visibility;

    iput-object p2, p0, Landroidx/transition/Visibility$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/transition/Visibility$a;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/transition/Visibility$a;->c:Landroid/view/View;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 3
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 456
    sget v0, Landroidx/transition/R$id;->save_overlay_view:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/transition/Visibility$a;->c:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 47
    new-instance v0, Landroidx/transition/x;

    iget-object v1, p0, Landroidx/transition/Visibility$a;->a:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Landroidx/transition/x;-><init>(Landroid/view/ViewGroup;)V

    .line 457
    iget-object v1, p0, Landroidx/transition/Visibility$a;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/transition/y;->remove(Landroid/view/View;)V

    .line 458
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    new-instance p1, Landroidx/transition/x;

    iget-object v0, p0, Landroidx/transition/Visibility$a;->a:Landroid/view/ViewGroup;

    invoke-direct {p1, v0}, Landroidx/transition/x;-><init>(Landroid/view/ViewGroup;)V

    .line 442
    iget-object v0, p0, Landroidx/transition/Visibility$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/transition/y;->remove(Landroid/view/View;)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 447
    iget-object p1, p0, Landroidx/transition/Visibility$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroidx/transition/x;

    iget-object v1, p0, Landroidx/transition/Visibility$a;->a:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Landroidx/transition/x;-><init>(Landroid/view/ViewGroup;)V

    .line 448
    invoke-interface {v0, p1}, Landroidx/transition/y;->add(Landroid/view/View;)V

    return-void

    .line 450
    :cond_0
    iget-object p1, p0, Landroidx/transition/Visibility$a;->d:Landroidx/transition/Visibility;

    invoke-virtual {p1}, Landroidx/transition/Transition;->cancel()V

    return-void
.end method
