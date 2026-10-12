.class public abstract Landroidx/core/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/AutoScrollHelper$a;,
        Landroidx/core/widget/AutoScrollHelper$b;
    }
.end annotation


# static fields
.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F

.field public static final RELATIVE_UNSPECIFIED:F

.field public static final r:I


# instance fields
.field public final a:Landroidx/core/widget/AutoScrollHelper$a;

.field public final b:Landroid/view/animation/AccelerateInterpolator;

.field public final c:Landroid/view/View;

.field public d:Ljava/lang/Runnable;

.field public final e:[F

.field public final f:[F

.field public g:I

.field public h:I

.field public final i:[F

.field public final j:[F

.field public final k:[F

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/widget/AutoScrollHelper;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroidx/core/widget/AutoScrollHelper$a;

    invoke-direct {v0}, Landroidx/core/widget/AutoScrollHelper$a;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->a:Landroidx/core/widget/AutoScrollHelper$a;

    .line 141
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->b:Landroid/view/animation/AccelerateInterpolator;

    const/4 v0, 0x2

    .line 150
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->e:[F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 153
    new-array v2, v0, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->f:[F

    .line 162
    new-array v2, v0, [F

    fill-array-data v2, :array_2

    iput-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->i:[F

    .line 165
    new-array v2, v0, [F

    fill-array-data v2, :array_3

    iput-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->j:[F

    .line 168
    new-array v0, v0, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->k:[F

    .line 211
    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->c:Landroid/view/View;

    .line 213
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 214
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v0, 0x44c4e000    # 1575.0f

    mul-float v0, v0, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    const v3, 0x439d8000    # 315.0f

    mul-float p1, p1, v3

    add-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float v0, v0

    .line 216
    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    int-to-float p1, p1

    .line 217
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    const/4 p1, 0x1

    .line 219
    invoke-virtual {p0, p1}, Landroidx/core/widget/AutoScrollHelper;->setEdgeType(I)Landroidx/core/widget/AutoScrollHelper;

    .line 220
    invoke-virtual {p0, v1, v1}, Landroidx/core/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroidx/core/widget/AutoScrollHelper;

    const p1, 0x3e4ccccd    # 0.2f

    .line 221
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroidx/core/widget/AutoScrollHelper;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 222
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    .line 223
    sget p1, Landroidx/core/widget/AutoScrollHelper;->r:I

    invoke-virtual {p0, p1}, Landroidx/core/widget/AutoScrollHelper;->setActivationDelay(I)Landroidx/core/widget/AutoScrollHelper;

    const/16 p1, 0x1f4

    .line 224
    invoke-virtual {p0, p1}, Landroidx/core/widget/AutoScrollHelper;->setRampUpDuration(I)Landroidx/core/widget/AutoScrollHelper;

    .line 225
    invoke-virtual {p0, p1}, Landroidx/core/widget/AutoScrollHelper;->setRampDownDuration(I)Landroidx/core/widget/AutoScrollHelper;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method public static b(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public final a(FFFI)F
    .locals 3

    .line 549
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->e:[F

    aget v0, v0, p4

    .line 550
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->f:[F

    aget v1, v1, p4

    mul-float v0, v0, p2

    const/4 v2, 0x0

    .line 617
    invoke-static {v0, v2, v1}, Landroidx/core/widget/AutoScrollHelper;->b(FFF)F

    move-result v0

    .line 618
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/AutoScrollHelper;->c(FF)F

    move-result v1

    sub-float/2addr p2, p1

    .line 619
    invoke-virtual {p0, p2, v0}, Landroidx/core/widget/AutoScrollHelper;->c(FF)F

    move-result p1

    sub-float/2addr p1, v1

    .line 622
    iget-object p2, p0, Landroidx/core/widget/AutoScrollHelper;->b:Landroid/view/animation/AccelerateInterpolator;

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    neg-float p1, p1

    .line 623
    invoke-virtual {p2, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    neg-float p1, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    .line 625
    invoke-virtual {p2, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    :goto_0
    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 630
    invoke-static {p1, p2, v0}, Landroidx/core/widget/AutoScrollHelper;->b(FFF)F

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    cmpl-float p2, p1, v2

    if-nez p2, :cond_2

    return v2

    .line 557
    :cond_2
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->i:[F

    aget v0, v0, p4

    .line 558
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->j:[F

    aget v1, v1, p4

    .line 559
    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->k:[F

    aget p4, v2, p4

    mul-float v0, v0, p3

    if-lez p2, :cond_3

    mul-float p1, p1, v0

    .line 566
    invoke-static {p1, v1, p4}, Landroidx/core/widget/AutoScrollHelper;->b(FFF)F

    move-result p1

    return p1

    :cond_3
    neg-float p1, p1

    mul-float p1, p1, v0

    .line 568
    invoke-static {p1, v1, p4}, Landroidx/core/widget/AutoScrollHelper;->b(FFF)F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method public final c(FF)F
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    iget v1, p0, Landroidx/core/widget/AutoScrollHelper;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_2
    cmpg-float v3, p1, p2

    if-gez v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_3

    div-float/2addr p1, p2

    sub-float/2addr v3, p1

    return v3

    .line 645
    :cond_3
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->o:Z

    if-eqz p1, :cond_4

    if-ne v1, v2, :cond_4

    return v3

    :cond_4
    :goto_0
    return v0
.end method

.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method public final d()Z
    .locals 2

    .line 503
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->a:Landroidx/core/widget/AutoScrollHelper$a;

    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$a;->getVerticalDirection()I

    move-result v1

    .line 504
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$a;->getHorizontalDirection()I

    move-result v0

    if-eqz v1, :cond_0

    .line 506
    invoke-virtual {p0, v1}, Landroidx/core/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {p0, v0}, Landroidx/core/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->p:Z

    return v0
.end method

.method public isExclusive()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->q:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 466
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 470
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 471
    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->a:Landroidx/core/widget/AutoScrollHelper$a;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    .line 538
    :cond_1
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->m:Z

    if-eqz p1, :cond_2

    .line 541
    iput-boolean v1, p0, Landroidx/core/widget/AutoScrollHelper;->o:Z

    goto :goto_1

    .line 543
    :cond_2
    invoke-virtual {v2}, Landroidx/core/widget/AutoScrollHelper$a;->requestStop()V

    goto :goto_1

    .line 473
    :cond_3
    iput-boolean v3, p0, Landroidx/core/widget/AutoScrollHelper;->n:Z

    .line 474
    iput-boolean v1, p0, Landroidx/core/widget/AutoScrollHelper;->l:Z

    .line 478
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/core/widget/AutoScrollHelper;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 477
    invoke-virtual {p0, v0, v4, v6, v1}, Landroidx/core/widget/AutoScrollHelper;->a(FFFI)F

    move-result v0

    .line 480
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 479
    invoke-virtual {p0, p2, p1, v4, v3}, Landroidx/core/widget/AutoScrollHelper;->a(FFFI)F

    move-result p1

    .line 481
    invoke-virtual {v2, v0, p1}, Landroidx/core/widget/AutoScrollHelper$a;->setTargetVelocity(FF)V

    .line 485
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->o:Z

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroidx/core/widget/AutoScrollHelper;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 514
    iget-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->d:Ljava/lang/Runnable;

    if-nez p1, :cond_5

    .line 515
    new-instance p1, Landroidx/core/widget/AutoScrollHelper$b;

    invoke-direct {p1, p0}, Landroidx/core/widget/AutoScrollHelper$b;-><init>(Landroidx/core/widget/AutoScrollHelper;)V

    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->d:Ljava/lang/Runnable;

    .line 518
    :cond_5
    iput-boolean v3, p0, Landroidx/core/widget/AutoScrollHelper;->o:Z

    .line 519
    iput-boolean v3, p0, Landroidx/core/widget/AutoScrollHelper;->m:Z

    .line 521
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->l:Z

    if-nez p1, :cond_6

    iget p1, p0, Landroidx/core/widget/AutoScrollHelper;->h:I

    if-lez p1, :cond_6

    .line 522
    iget-object p2, p0, Landroidx/core/widget/AutoScrollHelper;->d:Ljava/lang/Runnable;

    int-to-long v6, p1

    invoke-static {v5, p2, v6, v7}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 524
    :cond_6
    iget-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->d:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 529
    :goto_0
    iput-boolean v3, p0, Landroidx/core/widget/AutoScrollHelper;->l:Z

    .line 495
    :cond_7
    :goto_1
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->q:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->o:Z

    if-eqz p1, :cond_8

    return v3

    :cond_8
    :goto_2
    return v1
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroidx/core/widget/AutoScrollHelper;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 420
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper;->h:I

    return-object p0
.end method

.method public setEdgeType(I)Landroidx/core/widget/AutoScrollHelper;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 359
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper;->g:I

    return-object p0
.end method

.method public setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;
    .locals 1

    .line 236
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->p:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 538
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 541
    iput-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->o:Z

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->a:Landroidx/core/widget/AutoScrollHelper$a;

    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$a;->requestStop()V

    .line 240
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->p:Z

    return-object p0
.end method

.method public setExclusive(Z)Landroidx/core/widget/AutoScrollHelper;
    .locals 0

    .line 264
    iput-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->q:Z

    return-object p0
.end method

.method public setMaximumEdges(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 402
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->f:[F

    aput p1, v1, v0

    const/4 p1, 0x1

    .line 403
    aput p2, v1, p1

    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 296
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->k:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    div-float/2addr p2, v0

    .line 297
    aput p2, v1, p1

    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 315
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->j:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    div-float/2addr p2, v0

    .line 316
    aput p2, v1, p1

    return-object p0
.end method

.method public setRampDownDuration(I)Landroidx/core/widget/AutoScrollHelper;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 452
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->a:Landroidx/core/widget/AutoScrollHelper$a;

    invoke-virtual {v0, p1}, Landroidx/core/widget/AutoScrollHelper$a;->setRampDownDuration(I)V

    return-object p0
.end method

.method public setRampUpDuration(I)Landroidx/core/widget/AutoScrollHelper;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 436
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->a:Landroidx/core/widget/AutoScrollHelper$a;

    invoke-virtual {v0, p1}, Landroidx/core/widget/AutoScrollHelper$a;->setRampUpDuration(I)V

    return-object p0
.end method

.method public setRelativeEdges(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 379
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->e:[F

    aput p1, v1, v0

    const/4 p1, 0x1

    .line 380
    aput p2, v1, p1

    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 337
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->i:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    div-float/2addr p2, v0

    .line 338
    aput p2, v1, p1

    return-object p0
.end method
