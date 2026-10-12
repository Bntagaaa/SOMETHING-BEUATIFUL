.class final Lcom/google/android/material/progressindicator/d;
.super Lcom/google/android/material/progressindicator/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/i<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:Landroid/util/Property;

.field public static final p:Landroid/util/Property;


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public e:Landroid/animation/ObjectAnimator;

.field public final f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field public final g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

.field public h:I

.field public i:F

.field public j:F

.field public k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa8c

    const/16 v1, 0xfd2

    const/4 v2, 0x0

    const/16 v3, 0x546

    .line 44
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/d;->l:[I

    const/16 v0, 0xd27

    const/16 v1, 0x126d

    const/16 v2, 0x29b

    const/16 v3, 0x7e1

    .line 45
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/d;->m:[I

    const/16 v0, 0xe74

    const/16 v1, 0x13ba

    const/16 v2, 0x3e8

    const/16 v3, 0x92e

    .line 46
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/d;->n:[I

    .line 238
    new-instance v0, Lcom/google/android/material/progressindicator/d$a;

    .line 239
    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 238
    sput-object v0, Lcom/google/android/material/progressindicator/d;->o:Landroid/util/Property;

    .line 252
    new-instance v0, Lcom/google/android/material/progressindicator/d$b;

    .line 254
    const-string v2, "completeEndFraction"

    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 252
    sput-object v0, Lcom/google/android/material/progressindicator/d;->p:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1
    .param p1    # Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/i;-><init>(I)V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/google/android/material/progressindicator/d;->h:I

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/google/android/material/progressindicator/d;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 69
    iput-object p1, p0, Lcom/google/android/material/progressindicator/d;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 71
    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/d;->f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    return-void
.end method


# virtual methods
.method public final cancelAnimatorImmediately()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public invalidateSpecValues()V
    .locals 3

    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lcom/google/android/material/progressindicator/d;->h:I

    .line 208
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 209
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/i;->c:[I

    aput v1, v2, v0

    const/4 v0, 0x0

    .line 210
    iput v0, p0, Lcom/google/android/material/progressindicator/d;->j:F

    return-void
.end method

.method public registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    iput-object p1, p0, Lcom/google/android/material/progressindicator/d;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method public final requestCancelAnimatorAfterCurrentCycle()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/d;->cancelAnimatorImmediately()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final startAnimator()V
    .locals 5

    const/4 v0, 0x2

    .line 85
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->d:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 87
    sget-object v1, Lcom/google/android/material/progressindicator/d;->o:Landroid/util/Property;

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/progressindicator/d;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x1518

    .line 88
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 89
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->d:Landroid/animation/ObjectAnimator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->d:Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 91
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->d:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/google/android/material/progressindicator/b;

    invoke-direct {v3, p0}, Lcom/google/android/material/progressindicator/b;-><init>(Lcom/google/android/material/progressindicator/d;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->e:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    .line 103
    sget-object v1, Lcom/google/android/material/progressindicator/d;->p:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/d;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x14d

    .line 104
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 105
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->e:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->e:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/c;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/c;-><init>(Lcom/google/android/material/progressindicator/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lcom/google/android/material/progressindicator/d;->h:I

    .line 208
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v1, v1, v0

    iget-object v3, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 209
    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/progressindicator/i;->c:[I

    aput v1, v3, v0

    .line 210
    iput v2, p0, Lcom/google/android/material/progressindicator/d;->j:F

    .line 81
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unregisterAnimatorsCompleteCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/google/android/material/progressindicator/d;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method
