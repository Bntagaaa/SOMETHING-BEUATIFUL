.class Lcom/google/android/material/slider/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/slider/a;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/a;)V
    .locals 0

    .line 2094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/b;->a:Lcom/google/android/material/slider/a;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 2097
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 195
    iget-object v0, p0, Lcom/google/android/material/slider/b;->a:Lcom/google/android/material/slider/a;

    iget-object v1, v0, Lcom/google/android/material/slider/a;->k:Ljava/util/ArrayList;

    .line 2098
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 2099
    invoke-virtual {v2, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->setRevealFraction(F)V

    goto :goto_0

    .line 2102
    :cond_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
