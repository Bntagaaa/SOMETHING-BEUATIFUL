.class final Lcom/google/android/material/progressindicator/o;
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

.field public static final n:Landroid/util/Property;


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public e:Landroid/animation/ObjectAnimator;

.field public final f:[Landroid/view/animation/Interpolator;

.field public final g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

.field public h:I

.field public i:Z

.field public j:F

.field public k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x352

    const/16 v1, 0x2ee

    const/16 v2, 0x215

    const/16 v3, 0x237

    .line 47
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/o;->l:[I

    const/16 v0, 0x14d

    const/4 v1, 0x0

    const/16 v2, 0x4f3

    const/16 v3, 0x3e8

    .line 48
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/o;->m:[I

    .line 216
    new-instance v0, Lcom/google/android/material/progressindicator/o$a;

    .line 218
    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 216
    sput-object v0, Lcom/google/android/material/progressindicator/o;->n:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 66
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/i;-><init>(I)V

    const/4 v1, 0x0

    .line 59
    iput v1, p0, Lcom/google/android/material/progressindicator/o;->h:I

    const/4 v2, 0x0

    .line 62
    iput-object v2, p0, Lcom/google/android/material/progressindicator/o;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 68
    iput-object p2, p0, Lcom/google/android/material/progressindicator/o;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 70
    sget p2, Lcom/google/android/material/R$animator;->linear_indeterminate_line1_head_interpolator:I

    .line 72
    invoke-static {p1, p2}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    sget v2, Lcom/google/android/material/R$animator;->linear_indeterminate_line1_tail_interpolator:I

    .line 74
    invoke-static {p1, v2}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$animator;->linear_indeterminate_line2_head_interpolator:I

    .line 76
    invoke-static {p1, v3}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$animator;->linear_indeterminate_line2_tail_interpolator:I

    .line 78
    invoke-static {p1, v4}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/view/animation/Interpolator;

    aput-object p2, v4, v1

    const/4 p2, 0x1

    aput-object v2, v4, p2

    aput-object v3, v4, v0

    const/4 p2, 0x3

    aput-object p1, v4, p2

    iput-object v4, p0, Lcom/google/android/material/progressindicator/o;->f:[Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public cancelAnimatorImmediately()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/android/material/progressindicator/o;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public invalidateSpecValues()V
    .locals 3

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/google/android/material/progressindicator/o;->h:I

    .line 192
    iget-object v1, p0, Lcom/google/android/material/progressindicator/o;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 193
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v1

    .line 194
    iget-object v2, p0, Lcom/google/android/material/progressindicator/i;->c:[I

    aput v1, v2, v0

    const/4 v0, 0x1

    .line 195
    aput v1, v2, v0

    return-void
.end method

.method public registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 157
    iput-object p1, p0, Lcom/google/android/material/progressindicator/o;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method public requestCancelAnimatorAfterCurrentCycle()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/google/android/material/progressindicator/o;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/o;->cancelAnimatorImmediately()V

    .line 143
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/google/android/material/progressindicator/o;->e:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/google/android/material/progressindicator/o;->j:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 145
    iget-object v0, p0, Lcom/google/android/material/progressindicator/o;->e:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/google/android/material/progressindicator/o;->j:F

    sub-float/2addr v2, v1

    const/high16 v1, 0x44e10000    # 1800.0f

    mul-float v2, v2, v1

    float-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 146
    iget-object v0, p0, Lcom/google/android/material/progressindicator/o;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startAnimator()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    iget-object v2, p0, Lcom/google/android/material/progressindicator/o;->d:Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/google/android/material/progressindicator/o;->n:Landroid/util/Property;

    const/4 v4, 0x0

    const-wide/16 v5, 0x708

    if-nez v2, :cond_0

    const/4 v2, 0x2

    .line 96
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/progressindicator/o;->d:Landroid/animation/ObjectAnimator;

    .line 97
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    iget-object v2, p0, Lcom/google/android/material/progressindicator/o;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    iget-object v2, p0, Lcom/google/android/material/progressindicator/o;->d:Landroid/animation/ObjectAnimator;

    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 100
    iget-object v2, p0, Lcom/google/android/material/progressindicator/o;->d:Landroid/animation/ObjectAnimator;

    new-instance v7, Lcom/google/android/material/progressindicator/m;

    invoke-direct {v7, p0}, Lcom/google/android/material/progressindicator/m;-><init>(Lcom/google/android/material/progressindicator/o;)V

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/progressindicator/o;->e:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_1

    .line 111
    new-array v2, v1, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v2, v0

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/progressindicator/o;->e:Landroid/animation/ObjectAnimator;

    .line 112
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    iget-object v2, p0, Lcom/google/android/material/progressindicator/o;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    iget-object v2, p0, Lcom/google/android/material/progressindicator/o;->e:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/google/android/material/progressindicator/n;

    invoke-direct {v3, p0}, Lcom/google/android/material/progressindicator/n;-><init>(Lcom/google/android/material/progressindicator/o;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    :cond_1
    iput v0, p0, Lcom/google/android/material/progressindicator/o;->h:I

    .line 192
    iget-object v2, p0, Lcom/google/android/material/progressindicator/o;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 193
    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v2

    .line 194
    iget-object v3, p0, Lcom/google/android/material/progressindicator/i;->c:[I

    aput v2, v3, v0

    .line 195
    aput v2, v3, v1

    .line 90
    iget-object v0, p0, Lcom/google/android/material/progressindicator/o;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unregisterAnimatorsCompleteCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/google/android/material/progressindicator/o;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method
