.class abstract Lcom/google/android/material/floatingactionbutton/m$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "g"
.end annotation


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public final synthetic d:Lcom/google/android/material/floatingactionbutton/n;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/n;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/m$g;->d:Lcom/google/android/material/floatingactionbutton/n;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getTargetShadowSize()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 857
    iget p1, p0, Lcom/google/android/material/floatingactionbutton/m$g;->c:F

    float-to-int p1, p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/m$g;->d:Lcom/google/android/material/floatingactionbutton/n;

    .line 374
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    const/4 p1, 0x0

    .line 858
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/m$g;->a:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 843
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/m$g;->a:Z

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/m$g;->d:Lcom/google/android/material/floatingactionbutton/n;

    if-nez v0, :cond_1

    .line 844
    iget-object v0, v1, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/m$g;->b:F

    .line 845
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/m$g;->getTargetShadowSize()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/m$g;->c:F

    const/4 v0, 0x1

    .line 846
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/m$g;->a:Z

    .line 849
    :cond_1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/m$g;->b:F

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/m$g;->c:F

    sub-float/2addr v2, v0

    .line 852
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float p1, p1, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    .line 374
    iget-object v0, v1, Lcom/google/android/material/floatingactionbutton/m;->b:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_2

    .line 375
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_2
    return-void
.end method
