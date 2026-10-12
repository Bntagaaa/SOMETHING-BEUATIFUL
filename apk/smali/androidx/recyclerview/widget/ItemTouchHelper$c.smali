.class Landroidx/recyclerview/widget/ItemTouchHelper$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 2329
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$c;->b:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x1

    .line 2327
    iput-boolean p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$c;->a:Z

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    .line 2347
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$c;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2350
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$c;->b:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->e(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2352
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2354
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1604
    invoke-virtual {v2, v3, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v4

    .line 1605
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v2

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 2357
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2361
    iget v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    if-ne v2, v3, :cond_1

    .line 2362
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 2363
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2364
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 2365
    iput v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->d:F

    .line 2366
    iput p1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->e:F

    const/4 p1, 0x0

    .line 2367
    iput p1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    iput p1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 2372
    iget-object p1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 2373
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method
