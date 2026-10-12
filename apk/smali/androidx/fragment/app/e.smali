.class Landroidx/fragment/app/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/fragment/app/b1$c;

.field public final synthetic e:Landroidx/fragment/app/c$b;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/b1$c;Landroidx/fragment/app/c$b;)V
    .locals 0

    .line 181
    iput-object p1, p0, Landroidx/fragment/app/e;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/e;->b:Landroid/view/View;

    iput-boolean p3, p0, Landroidx/fragment/app/e;->c:Z

    iput-object p4, p0, Landroidx/fragment/app/e;->d:Landroidx/fragment/app/b1$c;

    iput-object p5, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/c$b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 184
    iget-object p1, p0, Landroidx/fragment/app/e;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/e;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 185
    iget-boolean p1, p0, Landroidx/fragment/app/e;->c:Z

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Landroidx/fragment/app/e;->d:Landroidx/fragment/app/b1$c;

    invoke-virtual {p1}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/b1$c$b;->a(Landroid/view/View;)V

    .line 190
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/c$b;

    invoke-virtual {p1}, Landroidx/fragment/app/c$c;->a()V

    return-void
.end method
