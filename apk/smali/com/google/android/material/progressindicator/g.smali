.class abstract Lcom/google/android/material/progressindicator/g;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# static fields
.field public static final k:Landroid/util/Property;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

.field public c:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

.field public d:Landroid/animation/ObjectAnimator;

.field public e:Landroid/animation/ObjectAnimator;

.field public f:Ljava/util/ArrayList;

.field public g:Z

.field public h:F

.field public final i:Landroid/graphics/Paint;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 423
    new-instance v0, Lcom/google/android/material/progressindicator/g$a;

    .line 424
    const-class v1, Ljava/lang/Float;

    const-string v2, "growFraction"

    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 423
    sput-object v0, Lcom/google/android/material/progressindicator/g;->k:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/g;->i:Landroid/graphics/Paint;

    .line 84
    iput-object p1, p0, Lcom/google/android/material/progressindicator/g;->a:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/google/android/material/progressindicator/g;->b:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 86
    new-instance p1, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    invoke-direct {p1}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/g;->c:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    const/16 p1, 0xff

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/g;->setAlpha(I)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/progressindicator/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-super {p0, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    return-void
.end method


# virtual methods
.method public final b()F
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->b:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->isShowAnimationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->isHideAnimationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 397
    :cond_0
    iget v0, p0, Lcom/google/android/material/progressindicator/g;->h:F

    return v0
.end method

.method public c(ZZZ)Z
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v3, p0, Lcom/google/android/material/progressindicator/g;->d:Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/google/android/material/progressindicator/g;->k:Landroid/util/Property;

    const-wide/16 v5, 0x1f4

    if-nez v3, :cond_2

    .line 95
    new-array v3, v0, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/progressindicator/g;->d:Landroid/animation/ObjectAnimator;

    .line 96
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 97
    iget-object v3, p0, Lcom/google/android/material/progressindicator/g;->d:Landroid/animation/ObjectAnimator;

    sget-object v7, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    iget-object v3, p0, Lcom/google/android/material/progressindicator/g;->d:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_1

    .line 337
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set showAnimator while the current showAnimator is running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/google/android/material/progressindicator/g;->d:Landroid/animation/ObjectAnimator;

    .line 344
    new-instance v7, Lcom/google/android/material/progressindicator/e;

    invoke-direct {v7, p0}, Lcom/google/android/material/progressindicator/e;-><init>(Lcom/google/android/material/progressindicator/g;)V

    invoke-virtual {v3, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/progressindicator/g;->e:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_5

    .line 101
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/g;->e:Landroid/animation/ObjectAnimator;

    .line 102
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 103
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->e:Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 367
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 368
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set hideAnimator while the current hideAnimator is running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 372
    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/google/android/material/progressindicator/g;->e:Landroid/animation/ObjectAnimator;

    .line 375
    new-instance v3, Lcom/google/android/material/progressindicator/f;

    invoke-direct {v3, p0}, Lcom/google/android/material/progressindicator/f;-><init>(Lcom/google/android/material/progressindicator/g;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_7

    .line 259
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->d:Landroid/animation/ObjectAnimator;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->e:Landroid/animation/ObjectAnimator;

    :goto_2
    if-nez p3, :cond_9

    .line 262
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 263
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_3

    .line 266
    :cond_8
    new-array p2, v1, [Landroid/animation/ValueAnimator;

    aput-object v0, p2, v2

    .line 298
    iget-boolean p3, p0, Lcom/google/android/material/progressindicator/g;->g:Z

    .line 299
    iput-boolean v1, p0, Lcom/google/android/material/progressindicator/g;->g:Z

    .line 300
    aget-object p2, p2, v2

    .line 301
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->end()V

    .line 303
    iput-boolean p3, p0, Lcom/google/android/material/progressindicator/g;->g:Z

    .line 269
    :goto_3
    invoke-super {p0, p1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_9
    if-eqz p3, :cond_a

    .line 272
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_a

    :goto_4
    return v2

    :cond_a
    if-eqz p1, :cond_c

    .line 279
    invoke-super {p0, p1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_5

    :cond_b
    const/4 p3, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 p3, 0x1

    .line 281
    :goto_6
    iget-object v3, p0, Lcom/google/android/material/progressindicator/g;->b:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    if-eqz p1, :cond_d

    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->isShowAnimationEnabled()Z

    move-result p1

    goto :goto_7

    :cond_d
    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->isHideAnimationEnabled()Z

    move-result p1

    :goto_7
    if-nez p1, :cond_e

    .line 284
    new-array p1, v1, [Landroid/animation/ValueAnimator;

    aput-object v0, p1, v2

    .line 298
    iget-boolean p2, p0, Lcom/google/android/material/progressindicator/g;->g:Z

    .line 299
    iput-boolean v1, p0, Lcom/google/android/material/progressindicator/g;->g:Z

    .line 300
    aget-object p1, p1, v2

    .line 301
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 303
    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/g;->g:Z

    return p3

    :cond_e
    if-nez p2, :cond_10

    .line 288
    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_8

    .line 292
    :cond_f
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    return p3

    .line 290
    :cond_10
    :goto_8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return p3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public clearAnimationCallbacks()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/google/android/material/progressindicator/g;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 316
    iget v0, p0, Lcom/google/android/material/progressindicator/g;->j:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public hideNow()Z
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/material/progressindicator/g;->setVisible(ZZZ)Z

    move-result v0

    return v0
.end method

.method public isHiding()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/g;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/g;->isHiding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 1
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/g;->f:Ljava/util/ArrayList;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/google/android/material/progressindicator/g;->j:I

    .line 311
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 321
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 322
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/g;->setVisible(ZZZ)Z

    move-result p1

    return p1
.end method

.method public setVisible(ZZZ)Z
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->c:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/g;->a:Landroid/content/Context;

    .line 237
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F

    move-result v0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    cmpl-float p3, v0, p3

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 240
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/g;->c(ZZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0, v0, v0, v1}, Lcom/google/android/material/progressindicator/g;->c(ZZZ)Z

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 199
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/material/progressindicator/g;->c(ZZZ)Z

    return-void
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 1
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 138
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object p1, p0, Lcom/google/android/material/progressindicator/g;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/google/android/material/progressindicator/g;->f:Ljava/util/ArrayList;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
