.class public Landroidx/recyclerview/widget/ItemTouchHelper;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ItemTouchHelper$d;,
        Landroidx/recyclerview/widget/ItemTouchHelper$c;,
        Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;,
        Landroidx/recyclerview/widget/ItemTouchHelper$Callback;,
        Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field public static final UP:I = 0x1


# instance fields
.field public A:Landroid/graphics/Rect;

.field public B:J

.field public final a:Ljava/util/ArrayList;

.field public final b:[F

.field public c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public final m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

.field public n:I

.field public o:I

.field public final p:Ljava/util/ArrayList;

.field public q:I

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public final s:Ljava/lang/Runnable;

.field public t:Landroid/view/VelocityTracker;

.field public u:Ljava/util/ArrayList;

.field public v:Ljava/util/ArrayList;

.field public w:Landroid/view/View;

.field public x:Landroidx/core/view/GestureDetectorCompat;

.field public y:Landroidx/recyclerview/widget/ItemTouchHelper$c;

.field public final z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 449
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->a:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 174
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->b:[F

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, -0x1

    .line 219
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    const/4 v1, 0x0

    .line 231
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    .line 259
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper$a;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$a;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->s:Ljava/lang/Runnable;

    .line 294
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->w:Landroid/view/View;

    .line 316
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$b;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$b;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 450
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    return-void
.end method

.method public static g(Landroid/view/View;FFFF)Z
    .locals 1

    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_0

    cmpl-float p1, p2, p4

    if-ltz p1, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p4, p0

    cmpg-float p0, p2, p4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 8

    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_3

    .line 1249
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 1250
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    if-eqz v4, :cond_2

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 1251
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->g:F

    .line 1252
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v6

    const/16 v7, 0x3e8

    .line 1251
    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1253
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1254
    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    iget v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1

    const/16 v1, 0x8

    .line 1256
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    and-int v3, v1, p2

    if-eqz v3, :cond_2

    if-ne v0, v1, :cond_2

    .line 1257
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->f:F

    .line 1258
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 1259
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    return v1

    .line 1264
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1265
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result p1

    mul-float p1, p1, v1

    and-int/2addr p2, v0

    if-eqz p2, :cond_3

    .line 1267
    iget p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 470
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    goto/16 :goto_1

    .line 473
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-eqz v0, :cond_4

    .line 497
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 498
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 499
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 501
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_1

    .line 503
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/ItemTouchHelper$d;

    .line 504
    invoke-virtual {v3}, Landroidx/recyclerview/widget/ItemTouchHelper$d;->cancel()V

    .line 505
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$d;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v5, v4, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->w:Landroid/view/View;

    .line 954
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 955
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 956
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    .line 521
    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->y:Landroidx/recyclerview/widget/ItemTouchHelper$c;

    if-eqz v2, :cond_3

    .line 2337
    iput-boolean v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$c;->a:Z

    .line 523
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->y:Landroidx/recyclerview/widget/ItemTouchHelper$c;

    .line 525
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->x:Landroidx/core/view/GestureDetectorCompat;

    if-eqz v2, :cond_4

    .line 526
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->x:Landroidx/core/view/GestureDetectorCompat;

    .line 476
    :cond_4
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_5

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 479
    sget v0, Landroidx/recyclerview/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    .line 480
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->f:F

    .line 481
    sget v0, Landroidx/recyclerview/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 482
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->g:F

    .line 488
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 489
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->q:I

    .line 490
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 491
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 492
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 515
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper$c;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$c;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->y:Landroidx/recyclerview/widget/ItemTouchHelper$c;

    .line 516
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->y:Landroidx/recyclerview/widget/ItemTouchHelper$c;

    invoke-direct {p1, v0, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->x:Landroidx/core/view/GestureDetectorCompat;

    :cond_5
    :goto_1
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;II)V
    .locals 8

    .line 991
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_e

    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    iget p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    if-eq p2, v0, :cond_e

    .line 992
    iget-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 995
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto/16 :goto_1

    .line 961
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 962
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 965
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 966
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->d:F

    sub-float/2addr v4, v6

    .line 967
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->e:F

    sub-float/2addr v3, v6

    .line 968
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 969
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 971
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->q:I

    int-to-float v6, v6

    cmpg-float v7, v4, v6

    if-gez v7, :cond_3

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    goto :goto_0

    :cond_3
    cmpl-float v6, v4, v3

    if-lez v6, :cond_4

    .line 974
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 976
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 979
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->e(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 983
    :cond_6
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_7

    goto/16 :goto_1

    .line 1002
    :cond_7
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1604
    invoke-virtual {p2, v1, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v3

    .line 1605
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v3, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result p2

    const v1, 0xff00

    and-int/2addr p2, v1

    shr-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_8

    goto :goto_1

    .line 1013
    :cond_8
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1014
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p3

    .line 1017
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->d:F

    sub-float/2addr v1, v3

    .line 1018
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->e:F

    sub-float/2addr p3, v3

    .line 1021
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1022
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1024
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->q:I

    int-to-float v6, v6

    cmpg-float v7, v3, v6

    if-gez v7, :cond_9

    cmpg-float v6, v4, v6

    if-gez v6, :cond_9

    goto :goto_1

    :cond_9
    const/4 v6, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b

    cmpg-float p3, v1, v6

    if-gez p3, :cond_a

    and-int/lit8 p3, p2, 0x4

    if-nez p3, :cond_a

    goto :goto_1

    :cond_a
    cmpl-float p3, v1, v6

    if-lez p3, :cond_d

    and-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_d

    goto :goto_1

    :cond_b
    cmpg-float v1, p3, v6

    if-gez v1, :cond_c

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_c

    goto :goto_1

    :cond_c
    cmpl-float p3, p3, v6

    if-lez p3, :cond_d

    and-int/2addr p2, v0

    if-nez p2, :cond_d

    goto :goto_1

    .line 1042
    :cond_d
    iput v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    iput v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    const/4 p2, 0x0

    .line 1043
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    .line 1044
    invoke-virtual {p0, v5, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_e
    :goto_1
    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 8

    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_3

    .line 1276
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1277
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    if-eqz v4, :cond_2

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 1278
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->g:F

    .line 1279
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v6

    const/16 v7, 0x3e8

    .line 1278
    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1280
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1281
    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    iget v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->l:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    cmpl-float v3, v6, v3

    if-lez v3, :cond_1

    const/4 v1, 0x2

    .line 1283
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    and-int v3, v1, p2

    if-eqz v3, :cond_2

    if-ne v1, v0, :cond_2

    .line 1284
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->f:F

    .line 1285
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 1286
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    return v1

    .line 1291
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1292
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result p1

    mul-float p1, p1, v1

    and-int/2addr p2, v0

    if-eqz p2, :cond_3

    .line 1293
    iget p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 4

    .line 924
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 926
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$d;

    .line 927
    iget-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$d;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_1

    .line 928
    iget-boolean p1, v2, Landroidx/recyclerview/widget/ItemTouchHelper$d;->k:Z

    or-int/2addr p1, p2

    iput-boolean p1, v2, Landroidx/recyclerview/widget/ItemTouchHelper$d;->k:Z

    .line 929
    iget-boolean p1, v2, Landroidx/recyclerview/widget/ItemTouchHelper$d;->l:Z

    if-nez p1, :cond_0

    .line 930
    invoke-virtual {v2}, Landroidx/recyclerview/widget/ItemTouchHelper$d;->cancel()V

    .line 932
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final e(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    .line 1050
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1051
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1052
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_0

    .line 1053
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1054
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->j:F

    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    add-float/2addr v2, v3

    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->k:F

    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    add-float/2addr v3, v4

    invoke-static {v1, v0, p1, v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->g(Landroid/view/View;FFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 1058
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 1059
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/ItemTouchHelper$d;

    .line 1060
    iget-object v4, v3, Landroidx/recyclerview/widget/ItemTouchHelper$d;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1061
    iget v5, v3, Landroidx/recyclerview/widget/ItemTouchHelper$d;->i:F

    iget v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$d;->j:F

    invoke-static {v4, v0, p1, v5, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->g(Landroid/view/View;FFFF)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1065
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final f([F)V
    .locals 3

    .line 531
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->o:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 532
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->j:F

    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    add-float/2addr v0, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_0

    .line 534
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    .line 536
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->o:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 537
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->k:F

    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    add-float/2addr v0, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v1

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 942
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 863
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 866
    :cond_0
    iget v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto/16 :goto_5

    .line 870
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v4

    .line 871
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->j:F

    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    add-float/2addr v5, v6

    float-to-int v7, v5

    .line 872
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->k:F

    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    add-float/2addr v5, v6

    float-to-int v8, v5

    .line 873
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v8, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 874
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v7, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 875
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    cmpg-float v4, v5, v6

    if-gez v4, :cond_2

    goto/16 :goto_5

    .line 810
    :cond_2
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->u:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 811
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->u:Ljava/util/ArrayList;

    .line 812
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->v:Ljava/util/ArrayList;

    goto :goto_0

    .line 814
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 815
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->v:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 817
    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v4

    .line 818
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->j:F

    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v5, v4

    .line 819
    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->k:F

    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    add-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v6, v4

    .line 820
    iget-object v9, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v9, v4

    .line 821
    iget-object v10, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v6

    add-int/2addr v10, v4

    add-int v4, v5, v9

    .line 822
    div-int/2addr v4, v2

    add-int v11, v6, v10

    .line 823
    div-int/2addr v11, v2

    .line 824
    iget-object v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v12

    .line 825
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_9

    const/16 v16, 0x2

    .line 827
    invoke-virtual {v12, v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 828
    iget-object v14, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v2, v14, :cond_6

    :cond_4
    :goto_2
    move/from16 v18, v4

    :cond_5
    move/from16 v17, v5

    move/from16 v19, v6

    goto/16 :goto_4

    .line 831
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v14

    if-lt v14, v6, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v14

    if-gt v14, v10, :cond_4

    .line 832
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v14

    if-lt v14, v5, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v14

    if-le v14, v9, :cond_7

    goto :goto_2

    .line 835
    :cond_7
    iget-object v14, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v14, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    move-object/from16 v17, v2

    .line 836
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    move/from16 v18, v4

    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1, v2, v4, v14}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 838
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v18, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 839
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v17

    add-int v17, v17, v4

    div-int/lit8 v17, v17, 0x2

    sub-int v4, v11, v17

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int v2, v2, v2

    mul-int v4, v4, v4

    add-int/2addr v4, v2

    .line 843
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v17, v5

    move/from16 v19, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v5, v2, :cond_8

    move/from16 v20, v2

    .line 845
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v4, v2, :cond_8

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v20

    goto :goto_3

    .line 851
    :cond_8
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v6, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 852
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->v:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v6, v19

    const/4 v2, 0x2

    goto/16 :goto_1

    .line 855
    :cond_9
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->u:Ljava/util/ArrayList;

    .line 879
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_a

    goto :goto_5

    .line 883
    :cond_a
    invoke-virtual {v1, v3, v2, v7, v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-nez v5, :cond_b

    .line 885
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 886
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 889
    :cond_b
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v6

    .line 890
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v4

    .line 891
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v3, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 893
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    :cond_c
    :goto_5
    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 1

    .line 1328
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->w:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1329
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->w:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 583
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v10, v0, :cond_0

    iget v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    if-ne v11, v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    .line 586
    iput-wide v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->B:J

    .line 587
    iget v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    const/4 v12, 0x1

    .line 589
    invoke-virtual {v1, v10, v12}, Landroidx/recyclerview/widget/ItemTouchHelper;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 590
    iput v11, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_2

    if-eqz v10, :cond_1

    .line 599
    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->w:Landroid/view/View;

    goto :goto_0

    .line 593
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must pass a ViewHolder when dragging"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    mul-int/lit8 v0, v11, 0x8

    const/16 v14, 0x8

    add-int/2addr v0, v14

    shl-int v0, v12, v0

    add-int/lit8 v15, v0, -0x1

    .line 606
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    if-eqz v2, :cond_11

    .line 608
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_10

    if-ne v3, v13, :cond_4

    :cond_3
    :goto_1
    const/4 v8, 0x0

    goto :goto_2

    .line 1202
    :cond_4
    iget v5, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    if-ne v5, v13, :cond_5

    goto :goto_1

    .line 1205
    :cond_5
    iget-object v5, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v5

    .line 1206
    iget-object v7, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1208
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 1206
    invoke-virtual {v0, v5, v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v7

    const v8, 0xff00

    and-int/2addr v7, v8

    shr-int/2addr v7, v14

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    and-int/2addr v5, v8

    shr-int/2addr v5, v14

    .line 1217
    iget v8, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_8

    .line 1218
    invoke-virtual {v1, v2, v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v8

    if-lez v8, :cond_7

    and-int/2addr v5, v8

    if-nez v5, :cond_a

    .line 1222
    iget-object v5, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1223
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 1222
    invoke-static {v8, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v8

    goto :goto_2

    .line 1227
    :cond_7
    invoke-virtual {v1, v2, v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v8

    if-lez v8, :cond_3

    goto :goto_2

    .line 1231
    :cond_8
    invoke-virtual {v1, v2, v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v8

    if-lez v8, :cond_9

    goto :goto_2

    .line 1234
    :cond_9
    invoke-virtual {v1, v2, v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v8

    if-lez v8, :cond_3

    and-int/2addr v5, v8

    if-nez v5, :cond_a

    .line 1238
    iget-object v5, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1239
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 1238
    invoke-static {v8, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v8

    .line 954
    :cond_a
    :goto_2
    iget-object v5, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_b

    .line 955
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 956
    iput-object v6, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    :cond_b
    const/4 v5, 0x4

    const/4 v7, 0x0

    if-eq v8, v12, :cond_d

    if-eq v8, v13, :cond_d

    if-eq v8, v5, :cond_c

    if-eq v8, v14, :cond_c

    const/16 v9, 0x10

    if-eq v8, v9, :cond_c

    const/16 v9, 0x20

    if-eq v8, v9, :cond_c

    const/4 v4, 0x0

    const/16 v16, 0x0

    goto :goto_3

    .line 621
    :cond_c
    iget v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    const/16 v16, 0x0

    iget-object v4, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v9, v9, v4

    move v7, v9

    const/4 v4, 0x0

    goto :goto_3

    :cond_d
    const/16 v16, 0x0

    .line 626
    iget v4, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v4, v4, v9

    :goto_3
    if-ne v3, v13, :cond_e

    const/16 v5, 0x8

    goto :goto_4

    :cond_e
    if-lez v8, :cond_f

    const/4 v5, 0x2

    .line 639
    :cond_f
    :goto_4
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->b:[F

    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/ItemTouchHelper;->f([F)V

    move-object/from16 v17, v6

    move v6, v7

    move v7, v4

    .line 640
    aget v4, v9, v16

    .line 641
    aget v9, v9, v12

    move-object/from16 v18, v0

    .line 642
    new-instance v0, Landroidx/recyclerview/widget/k;

    move/from16 v19, v5

    move v5, v9

    move-object v9, v2

    move-object/from16 v12, v17

    move-object/from16 v14, v18

    move/from16 v13, v19

    const/16 v16, 0x8

    invoke-direct/range {v0 .. v9}, Landroidx/recyclerview/widget/k;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IFFFFILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 671
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    sub-float v3, v6, v4

    sub-float v4, v7, v5

    invoke-virtual {v14, v2, v13, v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J

    move-result-wide v2

    .line 673
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$d;->setDuration(J)V

    .line 674
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ItemTouchHelper$d;->start()V

    const/4 v4, 0x1

    goto :goto_5

    :cond_10
    move-object v14, v0

    move-object v12, v6

    const/16 v16, 0x8

    .line 678
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroid/view/View;)V

    .line 679
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v14, v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v4, 0x0

    .line 681
    :goto_5
    iput-object v12, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_6

    :cond_11
    move-object v14, v0

    const/16 v16, 0x8

    const/4 v4, 0x0

    :goto_6
    if-eqz v10, :cond_12

    .line 684
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1604
    invoke-virtual {v14, v0, v10}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 1605
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v14, v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v0

    and-int/2addr v0, v15

    .line 685
    iget v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    mul-int/lit8 v2, v2, 0x8

    shr-int/2addr v0, v2

    iput v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->o:I

    .line 687
    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->j:F

    .line 688
    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->k:F

    .line 689
    iput-object v10, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x2

    if-ne v11, v0, :cond_12

    .line 692
    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_7

    :cond_12
    const/4 v2, 0x0

    .line 695
    :goto_7
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 697
    iget-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_13

    const/4 v12, 0x1

    goto :goto_8

    :cond_13
    const/4 v12, 0x0

    :goto_8
    invoke-interface {v0, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_14
    if-nez v4, :cond_15

    .line 700
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 702
    :cond_15
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    invoke-virtual {v14, v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 703
    iget-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final k(Landroid/view/MotionEvent;II)V
    .locals 1

    .line 1181
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1182
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1185
    iget p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->d:F

    sub-float/2addr v0, p3

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 1186
    iget p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->e:F

    sub-float/2addr p1, p3

    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    and-int/lit8 p1, p2, 0x4

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 1188
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    :cond_0
    and-int/lit8 p1, p2, 0x8

    if-nez p1, :cond_1

    .line 1191
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    :cond_1
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_2

    .line 1194
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    :cond_2
    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_3

    .line 1197
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    :cond_3
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 904
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroid/view/View;)V

    .line 905
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 909
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 910
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void

    .line 912
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 913
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 565
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->b:[F

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->f([F)V

    .line 567
    aget v3, v1, v2

    const/4 v4, 0x1

    .line 568
    aget v1, v1, v4

    move v9, v1

    move v10, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 570
    :goto_0
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    iget v13, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1990
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_1

    .line 1992
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$d;

    .line 1993
    invoke-virtual {v2}, Landroidx/recyclerview/widget/ItemTouchHelper$d;->update()V

    .line 1994
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1995
    iget v5, v2, Landroidx/recyclerview/widget/ItemTouchHelper$d;->i:F

    iget v6, v2, Landroidx/recyclerview/widget/ItemTouchHelper$d;->j:F

    iget-object v4, v2, Landroidx/recyclerview/widget/ItemTouchHelper$d;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v7, v2, Landroidx/recyclerview/widget/ItemTouchHelper$d;->f:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move v0, v3

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1997
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_1
    move-object/from16 v2, p1

    if-eqz v11, :cond_2

    .line 2000
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v8, 0x1

    move-object/from16 v3, p2

    move v6, v9

    move v5, v10

    move-object v4, v11

    move v7, v13

    .line 2001
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 2002
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 18
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    .line 550
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->b:[F

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->f([F)V

    .line 552
    aget v2, v1, v9

    .line 553
    aget v1, v1, v10

    move v11, v1

    move v12, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 555
    :goto_0
    iget-object v13, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v14, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->p:Ljava/util/ArrayList;

    iget v15, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->n:I

    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2009
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 2011
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/ItemTouchHelper$d;

    .line 2012
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 2013
    iget-object v6, v4, Landroidx/recyclerview/widget/ItemTouchHelper$d;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move v7, v5

    iget v5, v4, Landroidx/recyclerview/widget/ItemTouchHelper$d;->i:F

    move-object v8, v6

    iget v6, v4, Landroidx/recyclerview/widget/ItemTouchHelper$d;->j:F

    iget v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper$d;->f:I

    move/from16 v16, v7

    move v7, v4

    move-object v4, v8

    const/4 v8, 0x0

    move/from16 v17, v3

    move/from16 v9, v16

    move-object/from16 v3, p2

    move/from16 v16, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 2015
    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v3, v17, 0x1

    move/from16 v2, v16

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    move/from16 v16, v2

    move-object/from16 v2, p1

    if-eqz v13, :cond_2

    .line 2018
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v9

    const/4 v8, 0x1

    move-object/from16 v3, p2

    move v6, v11

    move v5, v12

    move-object v4, v13

    move v7, v15

    .line 2019
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 2020
    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    add-int/lit8 v2, v16, -0x1

    const/4 v9, 0x0

    :goto_2
    if-ltz v2, :cond_5

    .line 2024
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/ItemTouchHelper$d;

    .line 2025
    iget-boolean v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper$d;->l:Z

    if-eqz v3, :cond_3

    iget-boolean v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$d;->h:Z

    if-nez v1, :cond_3

    .line 2026
    invoke-interface {v14, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    if-nez v3, :cond_4

    const/4 v9, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    if-eqz v9, :cond_6

    .line 2032
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1103
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1604
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 1605
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v0

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1103
    :goto_0
    const-string v1, "ItemTouchHelper"

    if-nez v0, :cond_1

    .line 1104
    const-string p1, "Start drag has been called but dragging is not enabled"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1107
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v2, :cond_2

    .line 1108
    const-string p1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 947
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 948
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 950
    :cond_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 1113
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    const/4 v0, 0x2

    .line 1114
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1150
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1615
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 1604
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 1605
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    .line 1616
    const-string v1, "ItemTouchHelper"

    if-eqz v0, :cond_2

    .line 1154
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v2, :cond_0

    .line 1155
    const-string p1, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 947
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 948
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 950
    :cond_1
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->t:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 1160
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    const/4 v0, 0x1

    .line 1161
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void

    .line 1151
    :cond_2
    const-string p1, "Start swipe has been called but swiping is not enabled"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
