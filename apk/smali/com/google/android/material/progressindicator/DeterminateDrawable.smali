.class public final Lcom/google/android/material/progressindicator/DeterminateDrawable;
.super Lcom/google/android/material/progressindicator/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
        ">",
        "Lcom/google/android/material/progressindicator/g;"
    }
.end annotation


# static fields
.field public static final q:Landroidx/dynamicanimation/animation/FloatPropertyCompat;


# instance fields
.field public final l:Lcom/google/android/material/progressindicator/h;

.field public final m:Landroidx/dynamicanimation/animation/SpringForce;

.field public final n:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public o:F

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 232
    new-instance v0, Lcom/google/android/material/progressindicator/DeterminateDrawable$a;

    .line 233
    const-string v1, "indicatorLevel"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    .line 232
    sput-object v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->q:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/h;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/g;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->p:Z

    .line 226
    iput-object p3, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->l:Lcom/google/android/material/progressindicator/h;

    .line 227
    invoke-virtual {p3, p0}, Lcom/google/android/material/progressindicator/h;->registerDrawable(Lcom/google/android/material/progressindicator/g;)V

    .line 56
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->m:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 58
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p3, 0x42480000    # 50.0f

    .line 59
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 61
    new-instance p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->q:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p3, p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p3, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->n:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 62
    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 401
    iget p1, p0, Lcom/google/android/material/progressindicator/g;->h:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 402
    iput p2, p0, Lcom/google/android/material/progressindicator/g;->h:F

    .line 403
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public static createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/DeterminateDrawable;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/DeterminateDrawable<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    new-instance v1, Lcom/google/android/material/progressindicator/a;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/a;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/h;)V

    return-object v0
.end method

.method public static createLinearDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/DeterminateDrawable;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/DeterminateDrawable<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    new-instance v1, Lcom/google/android/material/progressindicator/j;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/j;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/h;)V

    return-object v0
.end method


# virtual methods
.method public addSpringAnimationEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 1
    .param p1    # Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->n:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method public final c(ZZZ)Z
    .locals 0

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/g;->c(ZZZ)Z

    move-result p1

    .line 126
    iget-object p2, p0, Lcom/google/android/material/progressindicator/g;->c:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    iget-object p3, p0, Lcom/google/android/material/progressindicator/g;->a:Landroid/content/Context;

    .line 127
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    const/4 p2, 0x1

    .line 129
    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->p:Z

    return p1

    :cond_0
    const/4 p3, 0x0

    .line 131
    iput-boolean p3, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->p:Z

    const/high16 p3, 0x42480000    # 50.0f

    div-float/2addr p3, p2

    .line 132
    iget-object p2, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->m:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return p1
.end method

.method public bridge synthetic clearAnimationCallbacks()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->clearAnimationCallbacks()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 192
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 198
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->l:Lcom/google/android/material/progressindicator/h;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/g;->b()F

    move-result v1

    .line 90
    iget-object v2, v0, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 90
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->a()V

    .line 91
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/progressindicator/h;->adjustCanvas(Landroid/graphics/Canvas;F)V

    .line 201
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->l:Lcom/google/android/material/progressindicator/h;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/g;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/material/progressindicator/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->b:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v6

    .line 205
    iget-object v1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->l:Lcom/google/android/material/progressindicator/h;

    .line 212
    iget v5, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:F

    const/4 v4, 0x0

    move-object v2, p1

    .line 205
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/progressindicator/h;->fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    .line 206
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->l:Lcom/google/android/material/progressindicator/h;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/h;->getPreferredHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->l:Lcom/google/android/material/progressindicator/h;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/h;->getPreferredWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hideNow()Z
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->hideNow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isHiding()Z
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->isHiding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->isRunning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShowing()Z
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->isShowing()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->n:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 144
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    .line 216
    iput v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:F

    .line 217
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public onLevelChange(I)Z
    .locals 3

    .line 155
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->p:Z

    const v1, 0x461c4000    # 10000.0f

    iget-object v2, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->n:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 216
    iput p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:F

    .line 217
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 212
    :cond_0
    iget v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:F

    mul-float v0, v0, v1

    .line 159
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    int-to-float p1, p1

    .line 160
    invoke-virtual {v2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/g;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    return-void
.end method

.method public removeSpringAnimationEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 1
    .param p1    # Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->n:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/g;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/g;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/google/android/material/progressindicator/g;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setVisible(ZZZ)Z
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/g;->setVisible(ZZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->stop()V

    return-void
.end method

.method public bridge synthetic unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/g;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result p1

    return p1
.end method
