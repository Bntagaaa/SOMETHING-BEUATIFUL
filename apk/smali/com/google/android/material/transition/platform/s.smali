.class Lcom/google/android/material/transition/platform/s;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:F


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/google/android/material/transition/platform/s;->a:Landroid/view/View;

    iput p2, p0, Lcom/google/android/material/transition/platform/s;->b:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 205
    iget-object p1, p0, Lcom/google/android/material/transition/platform/s;->a:Landroid/view/View;

    iget v0, p0, Lcom/google/android/material/transition/platform/s;->b:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
