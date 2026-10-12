.class Lcom/google/android/material/timepicker/ClockHandView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;,
        Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public a:Landroid/animation/ValueAnimator;

.field public b:F

.field public c:F

.field public d:Z

.field public e:F

.field public f:Z

.field public g:D


# virtual methods
.method public final a(F)V
    .locals 2

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 182
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:F

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    .line 186
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:D

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 189
    iget-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 190
    iget-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    const/4 p1, 0x0

    .line 191
    throw p1
.end method

.method public getHandRotation()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 360.0
    .end annotation

    .line 218
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 223
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 233
    iget-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 234
    iget-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    const/4 p1, 0x0

    .line 237
    throw p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 120
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHandRotation()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    goto :goto_2

    .line 293
    :cond_0
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:F

    sub-float v0, v1, v0

    float-to-int v0, v0

    .line 294
    iget v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->c:F

    sub-float v4, p1, v4

    float-to-int v4, v4

    mul-int v0, v0, v0

    mul-int v4, v4, v4

    add-int/2addr v4, v0

    if-lez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 296
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->d:Z

    .line 299
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Z

    goto :goto_0

    .line 284
    :cond_2
    iput v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:F

    .line 285
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->c:F

    .line 286
    iput-boolean v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->d:Z

    .line 288
    iput-boolean v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Z

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 309
    :goto_2
    iget-boolean v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Z

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v6, v6

    sub-float/2addr v1, v6

    float-to-double v8, v1

    int-to-float v1, v7

    sub-float/2addr p1, v1

    float-to-double v6, p1

    .line 338
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-int p1, v6

    add-int/lit8 v1, p1, 0x5a

    if-gez v1, :cond_3

    add-int/lit16 v1, p1, 0x1c2

    .line 320
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHandRotation()F

    move-result p1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    if-nez p1, :cond_6

    if-eqz v0, :cond_7

    .line 326
    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V

    goto :goto_4

    :cond_7
    :goto_5
    or-int p1, v5, v3

    .line 309
    iput-boolean p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Z

    return v2
.end method

.method public setHandRotation(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V

    return-void
.end method

.method public setHandRotation(FZ)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param

    .line 130
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p2, :cond_3

    .line 161
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHandRotation()F

    move-result p2

    sub-float v0, p2, p1

    .line 166
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_1

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    add-float/2addr p1, v0

    :cond_1
    cmpg-float v2, p2, v1

    if-gez v2, :cond_2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    add-float/2addr p2, v0

    .line 176
    :cond_2
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->a:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/google/android/material/timepicker/ClockHandView$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/ClockHandView$a;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->a:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/google/android/material/timepicker/ClockHandView$b;

    .line 150
    invoke-direct {p2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 150
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 157
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 135
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->a(F)V

    const/4 p1, 0x0

    throw p1
.end method
