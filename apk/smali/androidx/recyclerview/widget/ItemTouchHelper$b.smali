.class Landroidx/recyclerview/widget/ItemTouchHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$b;->a:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 320
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$b;->a:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->x:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 324
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 326
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 327
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->d:F

    .line 328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->e:F

    .line 947
    iget-object v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 950
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 330
    iget-object v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_8

    .line 1166
    iget-object v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    .line 1166
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1169
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->e(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v4

    .line 1170
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_3

    .line 1171
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/ItemTouchHelper$d;

    .line 1172
    iget-object v7, v6, Landroidx/recyclerview/widget/ItemTouchHelper$d;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v7, v4, :cond_2

    move-object v1, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_8

    .line 333
    iget v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->d:F

    iget v4, v1, Landroidx/recyclerview/widget/ItemTouchHelper$d;->i:F

    sub-float/2addr v0, v4

    iput v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->d:F

    .line 334
    iget v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->e:F

    iget v4, v1, Landroidx/recyclerview/widget/ItemTouchHelper$d;->j:F

    sub-float/2addr v0, v4

    iput v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->e:F

    .line 335
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper$d;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 336
    iget-object v4, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->a:Ljava/util/ArrayList;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 337
    iget-object v4, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v5, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v5, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 339
    :cond_4
    iget v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$d;->f:I

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 340
    iget v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->o:I

    invoke-virtual {p1, p2, v0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->k(Landroid/view/MotionEvent;II)V

    goto :goto_3

    :cond_5
    const/4 v4, 0x3

    const/4 v5, -0x1

    if-eq v0, v4, :cond_7

    if-ne v0, v2, :cond_6

    goto :goto_2

    .line 346
    :cond_6
    iget v1, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    if-eq v1, v5, :cond_8

    .line 349
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_8

    .line 354
    invoke-virtual {p1, p2, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->b(Landroid/view/MotionEvent;II)V

    goto :goto_3

    .line 344
    :cond_7
    :goto_2
    iput v5, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 345
    invoke-virtual {p1, v1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 357
    :cond_8
    :goto_3
    iget-object v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 358
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 360
    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_a

    return v2

    :cond_a
    return v3
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 426
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$b;->a:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 365
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$b;->a:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->x:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 370
    iget-object v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 373
    :cond_0
    iget v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 377
    iget v2, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 379
    invoke-virtual {p1, p2, v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->b(Landroid/view/MotionEvent;II)V

    .line 381
    :cond_2
    iget-object v3, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_9

    const/4 v6, 0x2

    if-eq v0, v6, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 407
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 408
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 409
    iget v2, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    if-ne v1, v2, :cond_8

    if-nez v0, :cond_5

    const/4 v4, 0x1

    .line 413
    :cond_5
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 414
    iget v1, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->o:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->k(Landroid/view/MotionEvent;II)V

    return-void

    .line 398
    :cond_6
    iget-object p2, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_9

    .line 399
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    :cond_7
    if-ltz v2, :cond_8

    .line 389
    iget v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->o:I

    invoke-virtual {p1, p2, v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->k(Landroid/view/MotionEvent;II)V

    .line 390
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 391
    iget-object p2, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->s:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 392
    iget-object p2, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->s:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 393
    iget-object p1, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_0
    return-void

    :cond_9
    :goto_1
    const/4 p2, 0x0

    .line 403
    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 404
    iput v1, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    return-void
.end method
