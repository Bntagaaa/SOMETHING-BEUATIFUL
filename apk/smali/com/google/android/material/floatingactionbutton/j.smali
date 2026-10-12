.class Lcom/google/android/material/floatingactionbutton/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:Landroid/graphics/Matrix;

.field public final synthetic i:Lcom/google/android/material/floatingactionbutton/m;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/m;FFFFFFFLandroid/graphics/Matrix;)V
    .locals 0

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/j;->i:Lcom/google/android/material/floatingactionbutton/m;

    iput p2, p0, Lcom/google/android/material/floatingactionbutton/j;->a:F

    iput p3, p0, Lcom/google/android/material/floatingactionbutton/j;->b:F

    iput p4, p0, Lcom/google/android/material/floatingactionbutton/j;->c:F

    iput p5, p0, Lcom/google/android/material/floatingactionbutton/j;->d:F

    iput p6, p0, Lcom/google/android/material/floatingactionbutton/j;->e:F

    iput p7, p0, Lcom/google/android/material/floatingactionbutton/j;->f:F

    iput p8, p0, Lcom/google/android/material/floatingactionbutton/j;->g:F

    iput-object p9, p0, Lcom/google/android/material/floatingactionbutton/j;->h:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 630
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 632
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/j;->i:Lcom/google/android/material/floatingactionbutton/m;

    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    iget v4, p0, Lcom/google/android/material/floatingactionbutton/j;->a:F

    iget v5, p0, Lcom/google/android/material/floatingactionbutton/j;->b:F

    invoke-static {v4, v5, v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 633
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/j;->c:F

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/j;->d:F

    invoke-static {v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 634
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/j;->e:F

    invoke-static {v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 636
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/j;->f:F

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/j;->g:F

    invoke-static {v1, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v3

    .line 68
    iput v3, v0, Lcom/google/android/material/floatingactionbutton/m;->p:F

    .line 638
    invoke-static {v1, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p1

    .line 68
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/j;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/floatingactionbutton/m;->a(FLandroid/graphics/Matrix;)V

    .line 639
    iget-object p1, v0, Lcom/google/android/material/floatingactionbutton/m;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
