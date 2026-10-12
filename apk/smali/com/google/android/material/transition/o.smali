.class Lcom/google/android/material/transition/o;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public constructor <init>(Landroid/view/View;FF)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/android/material/transition/o;->a:Landroid/view/View;

    iput p2, p0, Lcom/google/android/material/transition/o;->b:F

    iput p3, p0, Lcom/google/android/material/transition/o;->c:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 185
    iget p1, p0, Lcom/google/android/material/transition/o;->b:F

    iget-object v0, p0, Lcom/google/android/material/transition/o;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 186
    iget p1, p0, Lcom/google/android/material/transition/o;->c:F

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
