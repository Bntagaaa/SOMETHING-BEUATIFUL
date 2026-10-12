.class Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Landroidx/fragment/app/FragmentManager$b;

.field public final synthetic d:Landroidx/core/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager$b;Landroidx/core/os/CancellationSignal;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/v;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/v;->c:Landroidx/fragment/app/FragmentManager$b;

    iput-object p4, p0, Landroidx/fragment/app/v;->d:Landroidx/core/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 176
    new-instance p1, Landroidx/fragment/app/v$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/v$a;-><init>(Landroidx/fragment/app/v;)V

    iget-object v0, p0, Landroidx/fragment/app/v;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
