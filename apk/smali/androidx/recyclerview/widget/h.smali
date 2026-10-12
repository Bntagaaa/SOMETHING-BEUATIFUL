.class Landroidx/recyclerview/widget/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/DefaultItemAnimator$d;

.field public final synthetic b:Landroid/view/ViewPropertyAnimator;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroidx/recyclerview/widget/DefaultItemAnimator;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$d;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 386
    iput-object p1, p0, Landroidx/recyclerview/widget/h;->d:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/DefaultItemAnimator$d;

    iput-object p3, p0, Landroidx/recyclerview/widget/h;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroidx/recyclerview/widget/h;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 393
    iget-object p1, p0, Landroidx/recyclerview/widget/h;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 394
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 395
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 396
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 397
    iget-object p1, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/DefaultItemAnimator$d;

    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$d;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/h;->d:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 398
    iget-object v0, v2, Landroidx/recyclerview/widget/DefaultItemAnimator;->r:Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$d;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 389
    iget-object p1, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/DefaultItemAnimator$d;

    iget-object p1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$d;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/h;->d:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
