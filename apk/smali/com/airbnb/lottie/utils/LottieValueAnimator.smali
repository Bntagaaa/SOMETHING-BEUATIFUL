.class public Lcom/airbnb/lottie/utils/LottieValueAnimator;
.super Lcom/airbnb/lottie/utils/BaseLottieAnimator;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public c:F

.field public d:Z

.field public e:J

.field public f:F

.field public g:I

.field public h:F

.field public i:F

.field public j:Lcom/airbnb/lottie/LottieComposition;

.field protected running:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c:F

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->d:Z

    const-wide/16 v1, 0x0

    .line 23
    iput-wide v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->e:J

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    .line 25
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->g:I

    const/high16 v1, -0x31000000

    .line 26
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->h:F

    const/high16 v1, 0x4f000000

    .line 27
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->i:F

    .line 29
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 83
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    return-void
.end method

.method public clearComposition()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    const/high16 v0, -0x31000000

    .line 131
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->h:F

    const/high16 v0, 0x4f000000

    .line 132
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->i:F

    return-void
.end method

.method public doFrame(J)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 82
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 83
    iget-object v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    .line 87
    :cond_0
    const-string v2, "LottieValueAnimator#doFrame"

    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 89
    iget-wide v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->e:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    sub-long v5, p1, v3

    .line 123
    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    if-nez v3, :cond_2

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_2
    const v4, 0x4e6e6b28    # 1.0E9f

    .line 126
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getFrameRate()F

    move-result v3

    div-float/2addr v4, v3

    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v4, v3

    :goto_1
    long-to-float v4, v5

    div-float/2addr v4, v3

    .line 93
    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    neg-float v4, v4

    :cond_3
    add-float/2addr v3, v4

    iput v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    .line 94
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v4

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->contains(FFF)Z

    move-result v3

    .line 95
    iget v4, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v5

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    .line 97
    iput-wide p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->e:J

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->b()V

    if-nez v3, :cond_9

    .line 101
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->g:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v4

    if-lt v3, v4, :cond_5

    .line 102
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result p1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result p1

    :goto_2
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    .line 103
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 104
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->a(Z)V

    goto :goto_6

    .line 66
    :cond_5
    iget-object v3, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    .line 67
    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto :goto_3

    .line 107
    :cond_6
    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->g:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->g:I

    .line 108
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v3

    if-ne v3, v0, :cond_7

    .line 109
    iget-boolean v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->d:Z

    xor-int/2addr v3, v1

    iput-boolean v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->d:Z

    .line 110
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    goto :goto_5

    .line 112
    :cond_7
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v3

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v3

    :goto_4
    iput v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    .line 114
    :goto_5
    iput-wide p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->e:J

    .line 283
    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    if-nez p1, :cond_a

    goto :goto_7

    .line 286
    :cond_a
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    iget p2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->h:F

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_b

    iget p2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->i:F

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_b

    .line 119
    :goto_7
    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    .line 287
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    iget p2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->h:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iget v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->i:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    const-string p2, "Frame must be [%f,%f]. It is %f"

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_8
    return-void
.end method

.method public endAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 218
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->a(Z)V

    return-void
.end method

.method public getAnimatedFraction()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    :goto_0
    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    .line 65
    :cond_1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatedValueAbsolute()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v0

    iget-object v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public getDuration()J
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method

.method public getFrame()F
    .locals 1

    .line 74
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    return v0
.end method

.method public getMaxFrame()F
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 259
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->i:F

    const/high16 v2, 0x4f000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getMinFrame()F
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 252
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->h:F

    const/high16 v2, -0x31000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getSpeed()F
    .locals 1

    .line 194
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    return v0
.end method

.method public pauseAnimation()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    return-void
.end method

.method public playAnimation()V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 208
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c()Z

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 57
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 58
    invoke-static {v2, p0, v0}, Landroidx/core/graphics/b;->t(Landroid/animation/Animator$AnimatorListener;Lcom/airbnb/lottie/utils/LottieValueAnimator;Z)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    const-wide/16 v0, 0x0

    .line 210
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->e:J

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->g:I

    .line 212
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    return-void
.end method

.method public postFrameCallback()V
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    .line 265
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public removeFrameCallback()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 271
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    return-void
.end method

.method public removeFrameCallback(Z)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 276
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 278
    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 229
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    const-wide/16 v0, 0x0

    .line 230
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->e:J

    .line 231
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    :cond_1
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setSpeed(F)V

    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    iput-object p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_1

    .line 141
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->h:F

    .line 142
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->i:F

    .line 143
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 141
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 148
    :goto_1
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    float-to-int p1, p1

    int-to-float p1, p1

    .line 150
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 151
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->b()V

    return-void
.end method

.method public setFrame(F)V
    .locals 2

    .line 155
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    const-wide/16 v0, 0x0

    .line 159
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->e:J

    .line 160
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->b()V

    return-void
.end method

.method public setMaxFrame(F)V
    .locals 1

    .line 168
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->h:F

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setMinAndMaxFrames(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->j:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    .line 177
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->h:F

    .line 178
    invoke-static {p2, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->i:F

    .line 179
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->f:F

    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    return-void

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "minFrame ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ") must be <= maxFrame ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinFrame(I)V
    .locals 1

    int-to-float p1, p1

    .line 164
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->i:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 198
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 199
    iget-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 200
    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->d:Z

    .line 201
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c:F

    return-void
.end method
