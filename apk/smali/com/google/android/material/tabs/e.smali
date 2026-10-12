.class Lcom/google/android/material/tabs/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/google/android/material/tabs/TabLayout$c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout$c;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 3228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/e;->c:Lcom/google/android/material/tabs/TabLayout$c;

    iput-object p2, p0, Lcom/google/android/material/tabs/e;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/tabs/e;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3231
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sget v0, Lcom/google/android/material/tabs/TabLayout$c;->f:I

    .line 3008
    iget-object v0, p0, Lcom/google/android/material/tabs/e;->c:Lcom/google/android/material/tabs/TabLayout$c;

    iget-object v1, p0, Lcom/google/android/material/tabs/e;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/material/tabs/e;->b:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/tabs/TabLayout$c;->c(Landroid/view/View;Landroid/view/View;F)V

    return-void
.end method
