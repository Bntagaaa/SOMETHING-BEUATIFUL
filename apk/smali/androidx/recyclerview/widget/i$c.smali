.class Landroidx/recyclerview/widget/i$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/recyclerview/widget/i;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/i;)V
    .locals 0

    .line 551
    iput-object p1, p0, Landroidx/recyclerview/widget/i$c;->b:Landroidx/recyclerview/widget/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 549
    iput-boolean p1, p0, Landroidx/recyclerview/widget/i$c;->a:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 572
    iput-boolean p1, p0, Landroidx/recyclerview/widget/i$c;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 557
    iget-boolean p1, p0, Landroidx/recyclerview/widget/i$c;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 558
    iput-boolean v0, p0, Landroidx/recyclerview/widget/i$c;->a:Z

    return-void

    .line 561
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/i$c;->b:Landroidx/recyclerview/widget/i;

    iget-object v1, p1, Landroidx/recyclerview/widget/i;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 562
    iput v0, p1, Landroidx/recyclerview/widget/i;->A:I

    .line 563
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/i;->d(I)V

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 565
    iput v0, p1, Landroidx/recyclerview/widget/i;->A:I

    .line 191
    iget-object p1, p1, Landroidx/recyclerview/widget/i;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
