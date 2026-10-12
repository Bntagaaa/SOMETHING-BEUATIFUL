.class Landroidx/fragment/app/w;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:Landroidx/fragment/app/FragmentManager$b;

.field public final synthetic e:Landroidx/core/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager$b;Landroidx/core/os/CancellationSignal;)V
    .locals 0

    .line 195
    iput-object p1, p0, Landroidx/fragment/app/w;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/w;->b:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Landroidx/fragment/app/w;->d:Landroidx/fragment/app/FragmentManager$b;

    iput-object p5, p0, Landroidx/fragment/app/w;->e:Landroidx/core/os/CancellationSignal;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 198
    iget-object p1, p0, Landroidx/fragment/app/w;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/w;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 3389
    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 3392
    :cond_0
    iget-object v2, v2, Landroidx/fragment/app/Fragment$e;->b:Landroid/animation/Animator;

    .line 3385
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v4

    iput-object v3, v4, Landroidx/fragment/app/Fragment$e;->b:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_1

    .line 204
    iget-object p1, p0, Landroidx/fragment/app/w;->d:Landroidx/fragment/app/FragmentManager$b;

    iget-object v0, p0, Landroidx/fragment/app/w;->e:Landroidx/core/os/CancellationSignal;

    invoke-interface {p1, v1, v0}, Landroidx/fragment/app/s0$a;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    :cond_1
    return-void
.end method
