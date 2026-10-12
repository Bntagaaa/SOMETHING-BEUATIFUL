.class Landroidx/recyclerview/widget/ItemTouchHelper$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final f:I

.field public final g:Landroid/animation/ValueAnimator;

.field public h:Z

.field public i:F

.field public j:F

.field public k:Z

.field public l:Z

.field public m:F


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IFFFF)V
    .locals 1

    .line 2416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2409
    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->k:Z

    .line 2411
    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->l:Z

    .line 2417
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->f:I

    .line 2419
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2420
    iput p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->a:F

    .line 2421
    iput p4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->b:F

    .line 2422
    iput p5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->c:F

    .line 2423
    iput p6, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->d:F

    const/4 p2, 0x0

    const/4 p3, 0x2

    .line 2424
    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->g:Landroid/animation/ValueAnimator;

    .line 2425
    new-instance p4, Landroidx/recyclerview/widget/n;

    move-object p5, p0

    check-cast p5, Landroidx/recyclerview/widget/k;

    invoke-direct {p4, p5}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/k;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2432
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2433
    invoke-virtual {p3, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2434
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$d;->setFraction(F)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 2447
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2486
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$d;->setFraction(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2478
    iget-boolean p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->l:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2479
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2481
    :cond_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->l:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .line 2438
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setFraction(F)V
    .locals 0

    .line 2451
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->m:F

    return-void
.end method

.method public start()V
    .locals 2

    .line 2442
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2443
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public update()V
    .locals 4

    .line 2459
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->a:F

    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->c:F

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    .line 2460
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->i:F

    goto :goto_0

    .line 2462
    :cond_0
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->m:F

    invoke-static {v2, v1, v3, v1}, L_COROUTINE/a;->a(FFFF)F

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->i:F

    .line 2464
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->b:F

    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->d:F

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    .line 2465
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->j:F

    return-void

    .line 2467
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->m:F

    invoke-static {v2, v1, v0, v1}, L_COROUTINE/a;->a(FFFF)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->j:F

    return-void
.end method
