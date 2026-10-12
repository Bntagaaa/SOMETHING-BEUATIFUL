.class final Lcom/google/android/material/progressindicator/l;
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
.field public static final j:Landroid/util/Property;


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public final e:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field public final f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

.field public g:I

.field public h:Z

.field public i:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 171
    new-instance v0, Lcom/google/android/material/progressindicator/l$a;

    .line 173
    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 171
    sput-object v0, Lcom/google/android/material/progressindicator/l;->j:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 1
    .param p1    # Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 55
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/i;-><init>(I)V

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/google/android/material/progressindicator/l;->g:I

    .line 57
    iput-object p1, p0, Lcom/google/android/material/progressindicator/l;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 59
    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/l;->e:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    return-void
.end method


# virtual methods
.method public cancelAnimatorImmediately()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public invalidateSpecValues()V
    .locals 2

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/l;->h:Z

    .line 147
    iput v0, p0, Lcom/google/android/material/progressindicator/l;->g:I

    .line 148
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 150
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public requestCancelAnimatorAfterCurrentCycle()V
    .locals 0

    return-void
.end method

.method public startAnimator()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->d:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/google/android/material/progressindicator/l;->j:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/l;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 79
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/k;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/k;-><init>(Lcom/google/android/material/progressindicator/l;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/l;->h:Z

    .line 147
    iput v0, p0, Lcom/google/android/material/progressindicator/l;->g:I

    .line 148
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 150
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 69
    iget-object v0, p0, Lcom/google/android/material/progressindicator/l;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unregisterAnimatorsCompleteCallback()V
    .locals 0

    return-void
.end method
