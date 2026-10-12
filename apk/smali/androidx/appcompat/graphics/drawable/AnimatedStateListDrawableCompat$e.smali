.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;
.super Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Landroid/animation/ObjectAnimator;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .locals 9

    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$g;-><init>(I)V

    .line 392
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    if-eqz p2, :cond_0

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v3

    .line 395
    :goto_1
    new-instance v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;

    .line 734
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 739
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v5

    .line 740
    iput v5, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;->b:I

    .line 741
    iget-object v6, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;->a:[I

    if-eqz v6, :cond_2

    array-length v6, v6

    if-ge v6, v5, :cond_3

    .line 742
    :cond_2
    new-array v6, v5, [I

    iput-object v6, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;->a:[I

    .line 744
    :cond_3
    iget-object v6, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;->a:[I

    const/4 v7, 0x0

    :goto_2
    if-ge v0, v5, :cond_5

    if-eqz p2, :cond_4

    sub-int v8, v5, v0

    sub-int/2addr v8, v3

    goto :goto_3

    :cond_4
    move v8, v0

    .line 747
    :goto_3
    invoke-virtual {p1, v8}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v8

    .line 748
    aput v8, v6, v0

    add-int/2addr v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 751
    :cond_5
    iput v7, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;->c:I

    .line 397
    const-string p2, "currentIndex"

    filled-new-array {v2, v1}, [I

    move-result-object v0

    .line 398
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 400
    invoke-static {p1, v3}, Landroidx/appcompat/resources/Compatibility$Api18Impl;->setAutoCancel(Landroid/animation/ObjectAnimator;Z)V

    .line 756
    iget p2, v4, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;->c:I

    int-to-long v0, p2

    .line 402
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 403
    invoke-virtual {p1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->b:Z

    .line 405
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->a:Landroid/animation/ObjectAnimator;

    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->b:Z

    return v0
.end method

.method public reverse()V
    .locals 1

    .line 420
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 415
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 425
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    return-void
.end method
