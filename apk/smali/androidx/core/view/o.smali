.class Landroidx/core/view/o;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/core/view/ViewPropertyAnimatorListener;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/core/view/ViewPropertyAnimatorListener;Landroid/view/View;)V
    .locals 0

    .line 791
    iput-object p1, p0, Landroidx/core/view/o;->a:Landroidx/core/view/ViewPropertyAnimatorListener;

    iput-object p2, p0, Landroidx/core/view/o;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 794
    iget-object p1, p0, Landroidx/core/view/o;->a:Landroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v0, p0, Landroidx/core/view/o;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 799
    iget-object p1, p0, Landroidx/core/view/o;->a:Landroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v0, p0, Landroidx/core/view/o;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 804
    iget-object p1, p0, Landroidx/core/view/o;->a:Landroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v0, p0, Landroidx/core/view/o;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
