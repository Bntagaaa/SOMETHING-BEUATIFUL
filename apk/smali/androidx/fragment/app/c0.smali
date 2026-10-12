.class Landroidx/fragment/app/c0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1550
    iput-object p1, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/c0;->b:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/c0;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1553
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/c0;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1554
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1555
    iget-object p1, p0, Landroidx/fragment/app/c0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 1556
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
