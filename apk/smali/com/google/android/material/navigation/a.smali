.class Lcom/google/android/material/navigation/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lcom/google/android/material/navigation/NavigationBarItemView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView;F)V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/navigation/a;->b:Lcom/google/android/material/navigation/NavigationBarItemView;

    iput p2, p0, Lcom/google/android/material/navigation/a;->a:F

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 356
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 357
    sget-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->C:[I

    .line 76
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->b:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 331
    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->j:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 332
    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->u:Lcom/google/android/material/navigation/NavigationBarItemView$c;

    iget v3, p0, Lcom/google/android/material/navigation/a;->a:F

    invoke-virtual {v2, p1, v3, v1}, Lcom/google/android/material/navigation/NavigationBarItemView$c;->updateForProgress(FFLandroid/view/View;)V

    .line 334
    :cond_0
    iput p1, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->v:F

    return-void
.end method
