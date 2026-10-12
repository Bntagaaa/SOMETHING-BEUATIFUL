.class Landroidx/core/view/GestureDetectorCompat$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/GestureDetectorCompat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/GestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/GestureDetectorCompat$b$a;
    }
.end annotation


# instance fields
.field public a:Landroid/view/GestureDetector$OnDoubleTapListener;

.field public b:Z

.field public c:Z

.field public d:Landroid/view/MotionEvent;

.field public e:Landroid/view/MotionEvent;

.field public f:Z

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:Z

.field public l:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 66
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 67
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    return-void
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$b;->k:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 234
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$b;->l:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 235
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/view/GestureDetectorCompat$b;->l:Landroid/view/VelocityTracker;

    .line 237
    :cond_0
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$b;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    .line 245
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v8, v6, :cond_4

    if-ne v5, v8, :cond_3

    goto :goto_3

    .line 248
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v9, v11

    .line 249
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    add-int/lit8 v4, v6, -0x1

    goto :goto_4

    :cond_5
    move v4, v6

    :goto_4
    int-to-float v4, v4

    div-float/2addr v9, v4

    div-float/2addr v10, v4

    const/4 v4, 0x0

    if-eqz v0, :cond_19

    const/16 v5, 0x3e8

    if-eq v0, v2, :cond_12

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    const/4 v2, 0x5

    if-eq v0, v2, :cond_9

    if-eq v0, v3, :cond_6

    goto/16 :goto_7

    .line 266
    :cond_6
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$b;->g:F

    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$b;->i:F

    .line 267
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$b;->h:F

    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$b;->j:F

    .line 271
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$b;->l:Landroid/view/VelocityTracker;

    int-to-float v2, v1

    invoke-virtual {v0, v5, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 273
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 274
    iget-object v3, p0, Landroidx/core/view/GestureDetectorCompat$b;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 275
    iget-object v4, p0, Landroidx/core/view/GestureDetectorCompat$b;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_10

    if-ne v4, v0, :cond_7

    goto :goto_6

    .line 279
    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 280
    iget-object v8, p0, Landroidx/core/view/GestureDetectorCompat$b;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    mul-float v8, v8, v3

    .line 281
    iget-object v9, p0, Landroidx/core/view/GestureDetectorCompat$b;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    mul-float v5, v5, v2

    add-float/2addr v5, v8

    cmpg-float v5, v5, v7

    if-gez v5, :cond_8

    .line 285
    iget-object p1, p0, Landroidx/core/view/GestureDetectorCompat$b;->l:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    return v1

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 259
    :cond_9
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$b;->g:F

    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$b;->i:F

    .line 260
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$b;->h:F

    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$b;->j:F

    .line 434
    throw v4

    .line 418
    :cond_a
    throw v4

    .line 333
    :cond_b
    iget-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$b;->b:Z

    if-eqz v0, :cond_c

    goto :goto_7

    .line 336
    :cond_c
    iget v0, p0, Landroidx/core/view/GestureDetectorCompat$b;->g:F

    sub-float/2addr v0, v9

    .line 337
    iget v2, p0, Landroidx/core/view/GestureDetectorCompat$b;->h:F

    sub-float/2addr v2, v10

    .line 338
    iget-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$b;->f:Z

    if-eqz v3, :cond_d

    .line 340
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$b;->a:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 341
    :cond_d
    iget-boolean p1, p0, Landroidx/core/view/GestureDetectorCompat$b;->c:Z

    if-eqz p1, :cond_f

    .line 342
    iget p1, p0, Landroidx/core/view/GestureDetectorCompat$b;->i:F

    sub-float/2addr v9, p1

    float-to-int p1, v9

    .line 343
    iget v0, p0, Landroidx/core/view/GestureDetectorCompat$b;->j:F

    sub-float/2addr v10, v0

    float-to-int v0, v10

    mul-int p1, p1, p1

    mul-int v0, v0, v0

    add-int/2addr v0, p1

    if-gtz v0, :cond_e

    return v1

    .line 346
    :cond_e
    throw v4

    .line 357
    :cond_f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-gez p1, :cond_11

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-gez p1, :cond_11

    :cond_10
    :goto_7
    return v1

    .line 358
    :cond_11
    throw v4

    .line 366
    :cond_12
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 367
    iget-boolean v2, p0, Landroidx/core/view/GestureDetectorCompat$b;->f:Z

    if-eqz v2, :cond_13

    .line 369
    iget-object v2, p0, Landroidx/core/view/GestureDetectorCompat$b;->a:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    goto :goto_8

    .line 370
    :cond_13
    iget-boolean v2, p0, Landroidx/core/view/GestureDetectorCompat$b;->b:Z

    if-nez v2, :cond_18

    .line 373
    iget-boolean v2, p0, Landroidx/core/view/GestureDetectorCompat$b;->c:Z

    if-nez v2, :cond_17

    .line 380
    iget-object v2, p0, Landroidx/core/view/GestureDetectorCompat$b;->l:Landroid/view/VelocityTracker;

    .line 381
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    int-to-float v3, v1

    .line 382
    invoke-virtual {v2, v5, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 383
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 384
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    .line 386
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_16

    .line 387
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_16

    .line 392
    :goto_8
    iget-object p1, p0, Landroidx/core/view/GestureDetectorCompat$b;->e:Landroid/view/MotionEvent;

    if-eqz p1, :cond_14

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 396
    :cond_14
    iput-object v0, p0, Landroidx/core/view/GestureDetectorCompat$b;->e:Landroid/view/MotionEvent;

    .line 397
    iget-object p1, p0, Landroidx/core/view/GestureDetectorCompat$b;->l:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_15

    .line 400
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 401
    iput-object v4, p0, Landroidx/core/view/GestureDetectorCompat$b;->l:Landroid/view/VelocityTracker;

    .line 403
    :cond_15
    iput-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$b;->f:Z

    .line 405
    throw v4

    .line 388
    :cond_16
    throw v4

    .line 374
    :cond_17
    throw v4

    .line 371
    :cond_18
    throw v4

    .line 292
    :cond_19
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$b;->a:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-nez v0, :cond_1c

    .line 310
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$b;->g:F

    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$b;->i:F

    .line 311
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$b;->h:F

    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$b;->j:F

    .line 312
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$b;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1a

    .line 313
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 315
    :cond_1a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/GestureDetectorCompat$b;->d:Landroid/view/MotionEvent;

    .line 316
    iput-boolean v2, p0, Landroidx/core/view/GestureDetectorCompat$b;->c:Z

    .line 319
    iput-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$b;->b:Z

    .line 322
    iget-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$b;->k:Z

    if-eqz v0, :cond_1b

    .line 323
    throw v4

    .line 328
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 327
    throw v4

    .line 293
    :cond_1c
    throw v4
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Landroidx/core/view/GestureDetectorCompat$b;->k:Z

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 196
    iput-object p1, p0, Landroidx/core/view/GestureDetectorCompat$b;->a:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method
