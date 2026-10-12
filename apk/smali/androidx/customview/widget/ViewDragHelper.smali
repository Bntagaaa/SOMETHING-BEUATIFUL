.class public Landroidx/customview/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final x:Landroid/view/animation/Interpolator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:[F

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:I

.field public l:Landroid/view/VelocityTracker;

.field public final m:F

.field public n:F

.field public o:I

.field public final p:I

.field public q:I

.field public final r:Landroid/widget/OverScroller;

.field public final s:Landroidx/customview/widget/ViewDragHelper$Callback;

.field public t:Landroid/view/View;

.field public u:Z

.field public final v:Landroid/view/ViewGroup;

.field public final w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 334
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$a;

    invoke-direct {v0}, Landroidx/customview/widget/ViewDragHelper$a;-><init>()V

    sput-object v0, Landroidx/customview/widget/ViewDragHelper;->x:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V
    .locals 1

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    .line 342
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$b;

    invoke-direct {v0, p0}, Landroidx/customview/widget/ViewDragHelper$b;-><init>(Landroidx/customview/widget/ViewDragHelper;)V

    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->w:Ljava/lang/Runnable;

    if-eqz p3, :cond_0

    .line 393
    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    .line 394
    iput-object p3, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 396
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p3, p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 398
    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->p:I

    .line 399
    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->o:I

    .line 401
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    .line 402
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/customview/widget/ViewDragHelper;->m:F

    .line 403
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->n:F

    .line 404
    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Landroidx/customview/widget/ViewDragHelper;->x:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->r:Landroid/widget/OverScroller;

    return-void

    .line 390
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/customview/widget/ViewDragHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 371
    invoke-static {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p0

    .line 372
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    mul-float v0, v0, p2

    float-to-int p1, v0

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .locals 2
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/customview/widget/ViewDragHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 357
    new-instance v0, Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/customview/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method


# virtual methods
.method public final a(FIIF)Z
    .locals 3

    .line 1305
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1306
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 1308
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    aget v0, v0, p2

    and-int/2addr v0, p3

    const/4 v1, 0x0

    if-ne v0, p3, :cond_2

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->q:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->j:[I

    aget v0, v0, p2

    and-int/2addr v0, p3

    if-eq v0, p3, :cond_2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    aget v0, v0, p2

    and-int/2addr v0, p3

    if-eq v0, p3, :cond_2

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    int-to-float v0, v0

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p4, p4, v0

    cmpg-float p4, p1, p4

    if-gez p4, :cond_1

    .line 1314
    iget-object p4, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {p4, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1315
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->j:[I

    aget p4, p1, p2

    or-int/2addr p3, p4

    aput p3, p1, p2

    return v1

    .line 1318
    :cond_1
    iget-object p4, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    aget p2, p4, p2

    and-int/2addr p2, p3

    if-nez p2, :cond_2

    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public abort()V
    .locals 9

    .line 554
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 555
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 556
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    .line 557
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .line 558
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 559
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    .line 560
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    .line 561
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    sub-int v7, v5, v1

    sub-int v8, v6, v2

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual/range {v3 .. v8}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_0
    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->k(I)V

    return-void
.end method

.method public final b(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1335
    :cond_0
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1336
    :goto_0
    invoke-virtual {v1, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p3, p2

    .line 1339
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_3

    return v3

    :cond_3
    return v0

    :cond_4
    if-eqz v2, :cond_6

    .line 1341
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    return v3

    :cond_5
    return v0

    :cond_6
    if-eqz p1, :cond_7

    .line 1343
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    return v3

    :cond_7
    return v0
.end method

.method public final c(I)V
    .locals 2

    .line 833
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 836
    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 837
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    aput v1, v0, p1

    .line 838
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    aput v1, v0, p1

    .line 839
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    aput v1, v0, p1

    .line 840
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 841
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    aput v1, v0, p1

    .line 842
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->j:[I

    aput v1, v0, p1

    .line 843
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    :cond_1
    :goto_0
    return-void
.end method

.method public canScroll(Landroid/view/View;ZIIII)Z
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 962
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 963
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 964
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 965
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 966
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_1

    .line 971
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int v5, p5, v2

    .line 972
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lt v5, v7, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v5, v7, :cond_0

    add-int v7, p6, v3

    .line 973
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 974
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v10, v5, v8

    .line 975
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v11, v7, v5

    const/4 v7, 0x1

    move-object v5, p0

    move v8, p3

    move/from16 v9, p4

    .line 974
    invoke-virtual/range {v5 .. v11}, Landroidx/customview/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    neg-int p2, p3

    .line 981
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    if-nez p2, :cond_2

    move/from16 v9, p4

    neg-int p2, v9

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public cancel()V
    .locals 2

    const/4 v0, -0x1

    .line 540
    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    .line 819
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 822
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 823
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 824
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 825
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 826
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 827
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 828
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->j:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 829
    iput v1, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    .line 543
    :goto_0
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 545
    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 505
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    .line 506
    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    .line 507
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 508
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->k(I)V

    return-void

    .line 501
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkTouchSlop(I)Z
    .locals 4

    .line 1363
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1365
    invoke-virtual {p0, p1, v2}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public checkTouchSlop(II)Z
    .locals 6

    .line 1388
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1395
    :goto_1
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    aget v3, v3, p2

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    .line 1396
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    aget v4, v4, p2

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    aget p2, v5, p2

    sub-float/2addr v4, p2

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    mul-float v3, v3, v3

    mul-float v4, v4, v4

    add-float/2addr v4, v3

    .line 1399
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, v4, p1

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    if-eqz v0, :cond_6

    .line 1401
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    if-eqz p1, :cond_7

    .line 1403
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method public continueSettling(Z)Z
    .locals 10

    .line 764
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 765
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    .line 766
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v6

    .line 767
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v7

    .line 768
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v6, v4

    .line 769
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v7, v4

    if-eqz v8, :cond_0

    .line 772
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-static {v4, v8}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_0
    if-eqz v9, :cond_1

    .line 775
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-static {v4, v9}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_1
    if-nez v8, :cond_2

    if-eqz v9, :cond_3

    .line 779
    :cond_2
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual/range {v4 .. v9}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v3, :cond_4

    .line 782
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v6, v4, :cond_4

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    if-ne v7, v4, :cond_4

    .line 785
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v3, 0x0

    :cond_4
    if-nez v3, :cond_6

    if-eqz p1, :cond_5

    .line 791
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->w:Ljava/lang/Runnable;

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 793
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->k(I)V

    .line 798
    :cond_6
    :goto_0
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne p1, v2, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    return v1
.end method

.method public final d(III)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 671
    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 672
    div-int/lit8 v1, v0, 0x2

    .line 673
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    const v3, 0x3ef1463b

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 725
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr v2, v1

    .line 678
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    int-to-float p1, p2

    div-float/2addr v2, p1

    .line 680
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 682
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_0
    const/16 p2, 0x258

    .line 685
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final e(IIII)Z
    .locals 10

    .line 626
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 627
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v4, p1, v2

    sub-int v5, p2, v3

    .line 631
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->r:Landroid/widget/OverScroller;

    const/4 p1, 0x0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 633
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 634
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->k(I)V

    return p1

    .line 638
    :cond_0
    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    .line 646
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->n:F

    float-to-int v0, v0

    iget v6, p0, Landroidx/customview/widget/ViewDragHelper;->m:F

    float-to-int v6, v6

    .line 699
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v0, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    if-le v7, v6, :cond_3

    if-lez p3, :cond_2

    move p3, v6

    goto :goto_0

    :cond_2
    neg-int p3, v6

    .line 647
    :cond_3
    :goto_0
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->n:F

    float-to-int v0, v0

    .line 699
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v0, :cond_4

    const/4 p4, 0x0

    goto :goto_1

    :cond_4
    if-le v7, v6, :cond_6

    if-lez p4, :cond_5

    move p4, v6

    goto :goto_1

    :cond_5
    neg-int p4, v6

    .line 648
    :cond_6
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 649
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 650
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 651
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int v8, v6, v7

    add-int v9, p1, v0

    if-eqz p3, :cond_7

    int-to-float p1, v6

    int-to-float v6, v8

    :goto_2
    div-float/2addr p1, v6

    goto :goto_3

    :cond_7
    int-to-float p1, p1

    int-to-float v6, v9

    goto :goto_2

    :goto_3
    if-eqz p4, :cond_8

    int-to-float v0, v7

    int-to-float v6, v8

    :goto_4
    div-float/2addr v0, v6

    goto :goto_5

    :cond_8
    int-to-float v0, v0

    int-to-float v6, v9

    goto :goto_4

    .line 660
    :goto_5
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v6, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0, v4, p3, v7}, Landroidx/customview/widget/ViewDragHelper;->d(III)I

    move-result p3

    .line 661
    invoke-virtual {v6, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, v5, p4, p2}, Landroidx/customview/widget/ViewDragHelper;->d(III)I

    move-result p2

    int-to-float p3, p3

    mul-float p3, p3, p1

    int-to-float p1, p2

    mul-float p1, p1, v0

    add-float/2addr p1, p3

    float-to-int v6, p1

    .line 639
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 641
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->k(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final f(I)Z
    .locals 2

    .line 1539
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring pointerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewDragHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1516
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1518
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1519
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 1520
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public flingCapturedView(IIII)V
    .locals 10

    .line 739
    iget-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->u:Z

    if-eqz v0, :cond_0

    .line 744
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->r:Landroid/widget/OverScroller;

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v4, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    .line 745
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    .line 746
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v5, v0

    move v6, p1

    move v8, p2

    move v7, p3

    move v9, p4

    .line 744
    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    const/4 p1, 0x2

    .line 749
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->k(I)V

    return-void

    .line 740
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g()V
    .locals 6

    .line 1442
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->m:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1443
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    .line 1444
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->n:F

    .line 716
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v2, v3, v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v2, v3, v1

    if-lez v2, :cond_2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    neg-float v0, v1

    .line 1446
    :cond_2
    :goto_0
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    .line 1447
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->n:F

    .line 716
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v3, v5, v3

    if-gez v3, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    cmpl-float v3, v5, v1

    if-lez v3, :cond_5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    goto :goto_1

    :cond_4
    neg-float v1, v1

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    const/4 v2, 0x1

    .line 808
    iput-boolean v2, p0, Landroidx/customview/widget/ViewDragHelper;->u:Z

    .line 809
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v3, v4, v0, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    const/4 v0, 0x0

    .line 810
    iput-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->u:Z

    .line 812
    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v1, v2, :cond_6

    .line 814
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->k(I)V

    :cond_6
    return-void
.end method

.method public getActivePointerId()I
    .locals 1

    .line 524
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 516
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    return-object v0
.end method

.method public getDefaultEdgeSize()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 488
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->p:I

    return v0
.end method

.method public getEdgeSize()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 462
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->o:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .line 425
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->n:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 532
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->b:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .line 434
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    return v0
.end method

.method public final h(FFI)V
    .locals 2

    const/4 v0, 0x1

    .line 1285
    invoke-virtual {p0, p1, p3, v0, p2}, Landroidx/customview/widget/ViewDragHelper;->a(FIIF)Z

    move-result v0

    const/4 v1, 0x4

    .line 1288
    invoke-virtual {p0, p2, p3, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->a(FIIF)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    .line 1291
    invoke-virtual {p0, p1, p3, v1, p2}, Landroidx/customview/widget/ViewDragHelper;->a(FIIF)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    .line 1294
    invoke-virtual {p0, p2, p3, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->a(FIIF)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    .line 1299
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 1300
    iget-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {p1, v0, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    :cond_3
    return-void
.end method

.method public final i(FFI)V
    .locals 10

    .line 847
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-gt v2, p3, :cond_2

    :cond_0
    add-int/lit8 v2, p3, 0x1

    .line 848
    new-array v3, v2, [F

    .line 849
    new-array v4, v2, [F

    .line 850
    new-array v5, v2, [F

    .line 851
    new-array v6, v2, [F

    .line 852
    new-array v7, v2, [I

    .line 853
    new-array v8, v2, [I

    .line 854
    new-array v2, v2, [I

    if-eqz v0, :cond_1

    .line 857
    array-length v9, v0

    invoke-static {v0, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    array-length v9, v0

    invoke-static {v0, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    array-length v9, v0

    invoke-static {v0, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    array-length v9, v0

    invoke-static {v0, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 861
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    array-length v9, v0

    invoke-static {v0, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 862
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    array-length v9, v0

    invoke-static {v0, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->j:[I

    array-length v9, v0

    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 866
    :cond_1
    iput-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    .line 867
    iput-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    .line 868
    iput-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    .line 869
    iput-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    .line 870
    iput-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    .line 871
    iput-object v8, p0, Landroidx/customview/widget/ViewDragHelper;->i:[I

    .line 872
    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->j:[I

    .line 878
    :cond_2
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    aput p1, v2, p3

    aput p1, v0, p3

    .line 879
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    aput p2, v2, p3

    aput p2, v0, p3

    .line 880
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    float-to-int p1, p1

    float-to-int p2, p2

    .line 1530
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Landroidx/customview/widget/ViewDragHelper;->o:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    if-ge p1, v3, :cond_3

    const/4 v1, 0x1

    .line 1531
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->o:I

    add-int/2addr v3, v5

    if-ge p2, v3, :cond_4

    or-int/lit8 v1, v1, 0x4

    .line 1532
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->o:I

    sub-int/2addr v3, v5

    if-le p1, v3, :cond_5

    or-int/lit8 v1, v1, 0x2

    .line 1533
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->o:I

    sub-int/2addr p1, v2

    if-le p2, p1, :cond_6

    or-int/lit8 v1, v1, 0x8

    .line 880
    :cond_6
    aput v1, v0, p3

    .line 881
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    shl-int p2, v4, p3

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    return-void
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1

    .line 1484
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public isEdgeTouched(I)Z
    .locals 4

    .line 1418
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1420
    invoke-virtual {p0, p1, v2}, Landroidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isEdgeTouched(II)Z
    .locals 1

    .line 1438
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    aget p2, v0, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPointerDown(I)Z
    .locals 2

    .line 913
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->k:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1500
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1501
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1502
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    .line 1503
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final j(Landroid/view/MotionEvent;)V
    .locals 6

    .line 885
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 887
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 889
    invoke-virtual {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->f(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 892
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 893
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 894
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    aput v3, v5, v2

    .line 895
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    aput v4, v3, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k(I)V
    .locals 2

    .line 917
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->w:Ljava/lang/Runnable;

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->v:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 918
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-eq v0, p1, :cond_0

    .line 919
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    .line 920
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 921
    iget p1, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 922
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final l(ILandroid/view/View;)Z
    .locals 2

    .line 937
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 941
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p2, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    .line 943
    invoke-virtual {p0, p2, p1}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1126
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 1127
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_0

    .line 1132
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1135
    :cond_0
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 1136
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    .line 1138
    :cond_1
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x0

    .line 1140
    iget-object v5, v0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    if-eqz v2, :cond_18

    const/4 v6, 0x1

    if-eq v2, v6, :cond_16

    const/4 v7, 0x2

    if-eq v2, v7, :cond_b

    const/4 v7, 0x3

    if-eq v2, v7, :cond_9

    const/4 v7, 0x5

    if-eq v2, v7, :cond_7

    const/4 v5, 0x6

    if-eq v2, v5, :cond_2

    goto/16 :goto_6

    .line 1235
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1236
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v3, v6, :cond_6

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->c:I

    if-ne v2, v3, :cond_6

    .line 1239
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v3, :cond_5

    .line 1241
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 1242
    iget v7, v0, Landroidx/customview/widget/ViewDragHelper;->c:I

    if-ne v6, v7, :cond_3

    goto :goto_1

    .line 1247
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1248
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v7

    float-to-int v8, v8

    .line 1249
    invoke-virtual {v0, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    iget-object v8, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    if-ne v7, v8, :cond_4

    .line 1250
    invoke-virtual {v0, v6, v8}, Landroidx/customview/widget/ViewDragHelper;->l(ILandroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1251
    iget v1, v0, Landroidx/customview/widget/ViewDragHelper;->c:I

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, -0x1

    :goto_2
    if-ne v1, v5, :cond_6

    .line 1258
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->g()V

    .line 1261
    :cond_6
    invoke-virtual {v0, v2}, Landroidx/customview/widget/ViewDragHelper;->c(I)V

    return-void

    .line 1162
    :cond_7
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1163
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1164
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1166
    invoke-virtual {v0, v4, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->i(FFI)V

    .line 1169
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-nez v3, :cond_8

    float-to-int v3, v4

    float-to-int v1, v1

    .line 1172
    invoke-virtual {v0, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    .line 1173
    invoke-virtual {v0, v2, v1}, Landroidx/customview/widget/ViewDragHelper;->l(ILandroid/view/View;)Z

    .line 1175
    iget-object v1, v0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    aget v1, v1, v2

    .line 1176
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->q:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_19

    .line 1177
    invoke-virtual {v5, v1, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    return-void

    :cond_8
    float-to-int v3, v4

    float-to-int v1, v1

    .line 1179
    invoke-virtual {v0, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1184
    iget-object v1, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroidx/customview/widget/ViewDragHelper;->l(ILandroid/view/View;)Z

    return-void

    .line 1274
    :cond_9
    iget v1, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v1, v6, :cond_a

    .line 808
    iput-boolean v6, v0, Landroidx/customview/widget/ViewDragHelper;->u:Z

    .line 809
    iget-object v1, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 810
    iput-boolean v4, v0, Landroidx/customview/widget/ViewDragHelper;->u:Z

    .line 812
    iget v1, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v1, v6, :cond_a

    .line 814
    invoke-virtual {v0, v4}, Landroidx/customview/widget/ViewDragHelper;->k(I)V

    .line 1277
    :cond_a
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    return-void

    .line 1190
    :cond_b
    iget v2, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v2, v6, :cond_11

    .line 1192
    iget v2, v0, Landroidx/customview/widget/ViewDragHelper;->c:I

    invoke-virtual {v0, v2}, Landroidx/customview/widget/ViewDragHelper;->f(I)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_6

    .line 1194
    :cond_c
    iget v2, v0, Landroidx/customview/widget/ViewDragHelper;->c:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1195
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1196
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1197
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->f:[F

    iget v6, v0, Landroidx/customview/widget/ViewDragHelper;->c:I

    aget v4, v4, v6

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1198
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->g:[F

    aget v4, v4, v6

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 1200
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v6, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v2

    .line 1455
    iget-object v7, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1456
    iget-object v8, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    if-eqz v3, :cond_d

    .line 1458
    iget-object v9, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v5, v9, v4, v3}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v4

    .line 1459
    iget-object v9, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    sub-int v10, v4, v7

    invoke-static {v9, v10}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_d
    move v13, v4

    if-eqz v2, :cond_e

    .line 1462
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual {v5, v4, v6, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v6

    .line 1463
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    sub-int v5, v6, v8

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_e
    move v14, v6

    if-nez v3, :cond_f

    if-eqz v2, :cond_10

    :cond_f
    sub-int v15, v13, v7

    sub-int v16, v14, v8

    .line 1469
    iget-object v11, v0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v12, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    invoke-virtual/range {v11 .. v16}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1202
    :cond_10
    invoke-virtual/range {p0 .. p1}, Landroidx/customview/widget/ViewDragHelper;->j(Landroid/view/MotionEvent;)V

    return-void

    .line 1205
    :cond_11
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    :goto_3
    if-ge v4, v2, :cond_15

    .line 1207
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1210
    invoke-virtual {v0, v3}, Landroidx/customview/widget/ViewDragHelper;->f(I)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_4

    .line 1212
    :cond_12
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1213
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1214
    iget-object v8, v0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    aget v8, v8, v3

    sub-float v8, v5, v8

    .line 1215
    iget-object v9, v0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    aget v9, v9, v3

    sub-float v9, v7, v9

    .line 1217
    invoke-virtual {v0, v8, v9, v3}, Landroidx/customview/widget/ViewDragHelper;->h(FFI)V

    .line 1218
    iget v10, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v10, v6, :cond_13

    goto :goto_5

    :cond_13
    float-to-int v5, v5

    float-to-int v7, v7

    .line 1223
    invoke-virtual {v0, v5, v7}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 1224
    invoke-virtual {v0, v5, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->b(Landroid/view/View;FF)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1225
    invoke-virtual {v0, v3, v5}, Landroidx/customview/widget/ViewDragHelper;->l(ILandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_5

    :cond_14
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1229
    :cond_15
    :goto_5
    invoke-virtual/range {p0 .. p1}, Landroidx/customview/widget/ViewDragHelper;->j(Landroid/view/MotionEvent;)V

    return-void

    .line 1266
    :cond_16
    iget v1, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v1, v6, :cond_17

    .line 1267
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->g()V

    .line 1269
    :cond_17
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    return-void

    .line 1142
    :cond_18
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1143
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1144
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    float-to-int v4, v2

    float-to-int v6, v3

    .line 1145
    invoke-virtual {v0, v4, v6}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    .line 1147
    invoke-virtual {v0, v2, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->i(FFI)V

    .line 1152
    invoke-virtual {v0, v1, v4}, Landroidx/customview/widget/ViewDragHelper;->l(ILandroid/view/View;)Z

    .line 1154
    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    aget v2, v2, v1

    .line 1155
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->q:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    .line 1156
    invoke-virtual {v5, v2, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    :cond_19
    :goto_6
    return-void
.end method

.method public setEdgeSize(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 475
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->o:I

    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0

    .line 450
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->q:I

    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0

    .line 414
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->n:F

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3

    .line 606
    iget-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->u:Z

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    .line 612
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    .line 613
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 611
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->e(IIII)Z

    move-result p1

    return p1

    .line 607
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 992
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 993
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_0

    .line 998
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1001
    :cond_0
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 1002
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    .line 1004
    :cond_1
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 1006
    iget-object v7, v0, Landroidx/customview/widget/ViewDragHelper;->s:Landroidx/customview/widget/ViewDragHelper$Callback;

    if-eqz v2, :cond_f

    if-eq v2, v4, :cond_e

    if-eq v2, v5, :cond_5

    const/4 v8, 0x3

    if-eq v2, v8, :cond_e

    const/4 v8, 0x5

    if-eq v2, v8, :cond_3

    const/4 v5, 0x6

    if-eq v2, v5, :cond_2

    goto/16 :goto_4

    .line 1104
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1105
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->c(I)V

    goto/16 :goto_4

    .line 1028
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1029
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 1030
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1032
    invoke-virtual {v0, v8, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->i(FFI)V

    .line 1035
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-nez v3, :cond_4

    .line 1036
    iget-object v1, v0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    aget v1, v1, v2

    .line 1037
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->q:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_11

    .line 1038
    invoke-virtual {v7, v1, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_4

    :cond_4
    if-ne v3, v5, :cond_11

    float-to-int v3, v8

    float-to-int v1, v1

    .line 1042
    invoke-virtual {v0, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    .line 1043
    iget-object v3, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    if-ne v1, v3, :cond_11

    .line 1044
    invoke-virtual {v0, v2, v1}, Landroidx/customview/widget/ViewDragHelper;->l(ILandroid/view/View;)Z

    goto/16 :goto_4

    .line 1051
    :cond_5
    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    if-eqz v2, :cond_11

    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    if-nez v2, :cond_6

    goto/16 :goto_4

    .line 1054
    :cond_6
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_d

    .line 1056
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 1059
    invoke-virtual {v0, v5}, Landroidx/customview/widget/ViewDragHelper;->f(I)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    .line 1061
    :cond_7
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 1062
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 1063
    iget-object v10, v0, Landroidx/customview/widget/ViewDragHelper;->d:[F

    aget v10, v10, v5

    sub-float v10, v8, v10

    .line 1064
    iget-object v11, v0, Landroidx/customview/widget/ViewDragHelper;->e:[F

    aget v11, v11, v5

    sub-float v11, v9, v11

    float-to-int v8, v8

    float-to-int v9, v9

    .line 1066
    invoke-virtual {v0, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1067
    invoke-virtual {v0, v8, v10, v11}, Landroidx/customview/widget/ViewDragHelper;->b(Landroid/view/View;FF)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_1

    :cond_8
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_a

    .line 1074
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    float-to-int v13, v10

    add-int v14, v12, v13

    .line 1076
    invoke-virtual {v7, v8, v14, v13}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v13

    .line 1078
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v14

    float-to-int v15, v11

    add-int v6, v14, v15

    .line 1080
    invoke-virtual {v7, v8, v6, v15}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v6

    .line 1082
    invoke-virtual {v7, v8}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v15

    .line 1083
    invoke-virtual {v7, v8}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v17

    if-eqz v15, :cond_9

    if-lez v15, :cond_a

    if-ne v13, v12, :cond_a

    :cond_9
    if-eqz v17, :cond_d

    if-lez v17, :cond_a

    if-ne v6, v14, :cond_a

    goto :goto_3

    .line 1089
    :cond_a
    invoke-virtual {v0, v10, v11, v5}, Landroidx/customview/widget/ViewDragHelper;->h(FFI)V

    .line 1090
    iget v6, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v6, v4, :cond_b

    goto :goto_3

    :cond_b
    if-eqz v9, :cond_c

    .line 1095
    invoke-virtual {v0, v5, v8}, Landroidx/customview/widget/ViewDragHelper;->l(ILandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_3

    :cond_c
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1099
    :cond_d
    :goto_3
    invoke-virtual/range {p0 .. p1}, Landroidx/customview/widget/ViewDragHelper;->j(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 1111
    :cond_e
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    goto :goto_4

    .line 1008
    :cond_f
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1009
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v6, 0x0

    .line 1010
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1011
    invoke-virtual {v0, v2, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->i(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    .line 1013
    invoke-virtual {v0, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 1016
    iget-object v3, v0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    if-ne v2, v3, :cond_10

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v3, v5, :cond_10

    .line 1017
    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->l(ILandroid/view/View;)Z

    .line 1020
    :cond_10
    iget-object v2, v0, Landroidx/customview/widget/ViewDragHelper;->h:[I

    aget v2, v2, v1

    .line 1021
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->q:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 1022
    invoke-virtual {v7, v2, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1116
    :cond_11
    :goto_4
    iget v1, v0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-ne v1, v4, :cond_12

    return v4

    :cond_12
    const/16 v16, 0x0

    return v16
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 581
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    const/4 p1, -0x1

    .line 582
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->c:I

    const/4 p1, 0x0

    .line 584
    invoke-virtual {p0, p2, p3, p1, p1}, Landroidx/customview/widget/ViewDragHelper;->e(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    .line 585
    iget p2, p0, Landroidx/customview/widget/ViewDragHelper;->a:I

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 588
    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->t:Landroid/view/View;

    :cond_0
    return p1
.end method
